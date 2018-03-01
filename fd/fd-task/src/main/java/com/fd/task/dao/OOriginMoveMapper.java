package com.fd.task.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fd.task.entity.OOriginMove;

public interface OOriginMoveMapper {

	List<OOriginMove> listNeedImportOOriginMove();

	void saveArrayOOriginMove(@Param("oOriginMoveIds") Long[] oOriginMoveIds);

	int countOOriginMoveChange();

}