package com.fd.task.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fd.task.dao.OOriginMoveMapper;
import com.fd.task.dao.TOriginMoveMaternalMapper;
import com.fd.task.dao.TOriginMovePaternalMapper;
import com.fd.task.entity.OOriginMove;
import com.fd.task.entity.TOriginMoveMaternal;
import com.fd.task.entity.TOriginMovePaternal;

@Service
public class TaskOriginMoveService {

	@Autowired
	private OOriginMoveMapper oOriginMoveMapper;

	@Autowired
	private TOriginMovePaternalMapper tOriginMovePaternalMapper;

	@Autowired
	private TOriginMoveMaternalMapper tOriginMoveMaternalMapper;

	@Scheduled(cron = "0 0/30 * * * ?")
	@Transactional(readOnly = false)
	public void listenTable() {
		syncOriginMoveFromMySQL();
	}
	
	public void syncOriginMoveFromMySQL(){
		if (oOriginMoveMapper.countOOriginMoveChange() > 0) {
			importAutoOriginMove();
		}
	}

	/**
	 * 定时将祖源迁徒的数据进行处理成web需要的数据
	 */
	// 每天晚上23：00触发
	/*
	 * @Scheduled(cron = "0 0 23 * * ?")
	 * 
	 * @Transactional(readOnly = false)
	 */
	public void importAutoOriginMove() {
		List<OOriginMove> oOriginMoveList = oOriginMoveMapper.listNeedImportOOriginMove();
		String[] pinArray = { "B", "Adam", "CT", "A", "E", "F", "K", "J1", "J2", "R1b", "I2", "R1a", "R1", "N", "I1",
				"Q1a", "Q1b", "G", "H", "R", "L", "P", "R2", "O2", "O", "D", "C2", "O1", "C5", "C4", "C1", "C3" };
		// 定义标记对应的图片数组
		String[][] mapArray = { { "X", "A", "B", "D", "C" }, // 7 map1
				{ "O", "S", "P", "M", "M14", "M15", "Q", "M29", "M28", "M27", "M24", "M42", "N", "N12", "N13", "N14" }, // 4
				// map2
				{ "N", "N1", "X", "A", "B", "U", "L0a", "L0f", "L0k", "L0d", "L1b", "L1c", "L5", "L2", "L6",
						"L4", "L3b", "L3f", "L3c", "L3d", "L3e", "L3i", "L3x", "L3h" }, // 6
																						// map3
				{ "B", "E", "M", "M1", "M19", "M23", "M32", "N", "N9a", "N10", "N11", "O", "N12", "N21", "N22" }, // 5
				// map4
				{ "N", "N2", "U", "R5", "R6", "R7", "R8", "M", "M2", "M3", "M4'67", "M5", "M6", "M31", "M32'56",
						"M34'57", "M10", "M18", "M33", "M34", "M35", "M37", "M38", "M39", "M4", "M40", "M41", "N1d",
						"I", "N5", "W" }, // 2
											// map5
				{ "Z", "N", "N1", "N2", "X", "H", "V", "J", "T", "U", "M", "M30", "N1b", "N1c", "N1a", "I", "N2a",
						"W" }, // 3
				// map8and9
				{ "B", "N", "N9", "A", "F", "R9b", "D", "G", "M", "M9a", "Z", "C", "M7", "M51", "M10", "M11", "M12",
						"M13", "M17", "M20", "M21", "M28", "M75", "M8", "M9", "N1a", "N8", "N9a", "N9b", "Y", "N10",
						"N11", "N22" }// 1
										// map10
		};
		if (oOriginMoveList != null && !oOriginMoveList.isEmpty()) {
			Long[] handledOOriginMoveIds = new Long[oOriginMoveList.size()];

			List<TOriginMovePaternal> addTOriginMovePaternalList = new ArrayList<TOriginMovePaternal>();
			List<TOriginMovePaternal> updateTOriginMovePaternalList = new ArrayList<TOriginMovePaternal>();
			List<TOriginMoveMaternal> addTOriginMoveMaternalList = new ArrayList<TOriginMoveMaternal>();
			List<TOriginMoveMaternal> updateTOriginMoveMaternalList = new ArrayList<TOriginMoveMaternal>();
			int handledIndex = 0;
			for (OOriginMove oOriginMove : oOriginMoveList) {
				handledOOriginMoveIds[handledIndex] = oOriginMove.getId();
				handledIndex++;
				// 将路径字符串分割为点数组
				String[] sq = oOriginMove.getPaths().replaceAll("(.*?)Path is  ->", "").split("->");
				// 父系祖源迁徒
				if ("Y".equals(oOriginMove.getOriginType())) {
					TOriginMovePaternal tOriginMovePaternal = new TOriginMovePaternal();
					tOriginMovePaternal.setCollinfoId(oOriginMove.getCollinfoid());
					// 得到需要标记的点adam ct f k
					String needSignPin = "";
					for (int i = 0; i < sq.length; i++) {
						for (String string : pinArray) {
							if (string.equals(sq[i].trim())) {
								needSignPin = needSignPin + "," + string;
								break;
							}
						}
					}
					needSignPin = (needSignPin != null && !"".equals(needSignPin))
							? needSignPin.substring(1, needSignPin.length()) : "";
					tOriginMovePaternal.setLineDescription(needSignPin);
					if (oOriginMove.getStatus() == 2) {
						updateTOriginMovePaternalList.add(tOriginMovePaternal);
					} else {
						addTOriginMovePaternalList.add(tOriginMovePaternal);
					}
				} else {
					// 母系祖源迁徒
					TOriginMoveMaternal tOriginMoveMaternal = new TOriginMoveMaternal();
					tOriginMoveMaternal.setCollinfoId(oOriginMove.getCollinfoid());
					String showArea = "";
					String[] statusMap = new String[mapArray.length];

					Boolean find = false;
					for (int i = sq.length - 1; i >= 0; i--) {
						String lastSqString = (sq[i].indexOf("'") >= 0) ? StringUtils.substringBefore(sq[i], "'")
								: sq[i];
						String[] sqLast = new String[lastSqString.length() - 1];
						for (int j = 0; j < sqLast.length; j++) {
							sqLast[j] = lastSqString.substring(0, j + 2).trim();
						}

						for (String string : sqLast) {
							if (find) {// 一旦找到则退出循环
								break;
							} else {
								for (int k = 0; k < mapArray.length; k++) {// 开始在地图上查找
									for (int l = 0; l < mapArray[k].length; l++) {
										if (string.equals(mapArray[k][l])) {
											if (k < 5) {
												statusMap[k] = ",map" + (k + 1);
											}
											if (k == 5) {
												statusMap[k] = ",map8,map9";
											}
											if (k == 6) {
												statusMap[k] = ",map10";
											}
											find = true;
											break;
										}
									}
								}
							}
						}
						for (String string : statusMap) {
							showArea = (string == null || "".equals(string) || showArea.indexOf(string) >= 0) ? showArea
									: showArea + string;
						}
					}
					showArea = (showArea != null && !"".equals(showArea)) ? showArea.substring(1, showArea.length())
							: "";
					tOriginMoveMaternal.setShowArea(showArea);
					if (oOriginMove.getStatus() == 2) {
						updateTOriginMoveMaternalList.add(tOriginMoveMaternal);
					} else {
						addTOriginMoveMaternalList.add(tOriginMoveMaternal);
					}
				}
			}

			// 将父系祖源新增的数据添加到数据库中
			if (addTOriginMovePaternalList != null && !addTOriginMovePaternalList.isEmpty()) {
				tOriginMovePaternalMapper.saveListTOriginMovePaternal(addTOriginMovePaternalList);
			}
			// 将父系修改的数据更新到数据库中
			if (updateTOriginMovePaternalList != null && !updateTOriginMovePaternalList.isEmpty()) {
				tOriginMovePaternalMapper.updateListTOriginMovePaternal(updateTOriginMovePaternalList);
			}
			// 将母系新增的数据添加到数据库中
			if (addTOriginMoveMaternalList != null && !addTOriginMoveMaternalList.isEmpty()) {
				tOriginMoveMaternalMapper.saveListTOriginMoveMaternal(addTOriginMoveMaternalList);
			}
			// 将母系修改的数据更新到数据库中
			if (updateTOriginMoveMaternalList != null && !updateTOriginMoveMaternalList.isEmpty()) {
				tOriginMoveMaternalMapper.updateListTOriginMoveMaternal(updateTOriginMoveMaternalList);
			}
			if (handledOOriginMoveIds != null && handledOOriginMoveIds.length > 0) {
				oOriginMoveMapper.saveArrayOOriginMove(handledOOriginMoveIds);
			}
		}
	}

}
