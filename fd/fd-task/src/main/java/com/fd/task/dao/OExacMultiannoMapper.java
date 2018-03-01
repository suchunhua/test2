package com.fd.task.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fd.task.entity.OExacMultiannoWithBLOBs;

public interface OExacMultiannoMapper {

    void saveListOExacMultiannoWithBLOBs(@Param("oExacMultiannoWithBLOBsList") List<OExacMultiannoWithBLOBs> oExacMultiannoWithBLOBsList);

}