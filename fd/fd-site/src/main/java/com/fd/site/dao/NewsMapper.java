package com.fd.site.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fd.site.entity.News;

public interface NewsMapper {
	
	News getById(@Param("id") Integer id);
	
    List<News> listByNews(@Param("type") Byte type);
    
    List<News> list3News(@Param("type") Byte type);
}