package com.fd.task.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.fd.task.entity.CollInfoWithBLOBs;

public interface CollInfoMapper {

	List<Map<String, Object>> listCollInfoWithBLOBsBySQLServer();

	List<CollInfoWithBLOBs> listCollInfoWithBLOBs();

	int insertCollInfoBatch(@Param("collinfoList") List<CollInfoWithBLOBs> collinfoList);

	int updateCollInfoBatch(@Param("collinfoList") List<CollInfoWithBLOBs> collinfoList);
}