package com.fd.task.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fd.task.entity.TOriginMoveMaternal;

public interface TOriginMoveMaternalMapper {

	void saveListTOriginMoveMaternal(
			@Param("tOriginMoveMaternalList") List<TOriginMoveMaternal> tOriginMoveMaternalList);

	void updateListTOriginMoveMaternal(
			@Param("tOriginMoveMaternalList") List<TOriginMoveMaternal> tOriginMoveMaternalList);
}