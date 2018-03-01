package com.fd.task.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fd.task.entity.TOriginMovePaternal;

public interface TOriginMovePaternalMapper {

	void saveListTOriginMovePaternal(
			@Param("tOriginMovePaternalList") List<TOriginMovePaternal> tOriginMovePaternalList);

	void updateListTOriginMovePaternal(
			@Param("tOriginMovePaternalList") List<TOriginMovePaternal> tOriginMovePaternalList);

}