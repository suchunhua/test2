package com.fd.task.dao;

import java.util.List;

import com.fd.task.entity.Customer;

public interface CustomerMapper {
    int deleteByPrimaryKey(Integer customerid);

    int insert(Customer record);

    int insertSelective(Customer record);

    List<Customer> listCustomer();

    int updateByPrimaryKeySelective(Customer record);

    int updateByPrimaryKey(Customer record);
}