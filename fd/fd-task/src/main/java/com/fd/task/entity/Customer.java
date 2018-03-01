package com.fd.task.entity;

public class Customer {
    private Integer customerid;

    private String customername;

    private String customeraccount;

    private String customerpassword;

    private String customertele;

    private String customercardid;

    public Integer getCustomerid() {
        return customerid;
    }

    public void setCustomerid(Integer customerid) {
        this.customerid = customerid;
    }

    public String getCustomername() {
        return customername;
    }

    public void setCustomername(String customername) {
        this.customername = customername == null ? null : customername.trim();
    }

    public String getCustomeraccount() {
        return customeraccount;
    }

    public void setCustomeraccount(String customeraccount) {
        this.customeraccount = customeraccount == null ? null : customeraccount.trim();
    }

    public String getCustomerpassword() {
        return customerpassword;
    }

    public void setCustomerpassword(String customerpassword) {
        this.customerpassword = customerpassword == null ? null : customerpassword.trim();
    }

    public String getCustomertele() {
        return customertele;
    }

    public void setCustomertele(String customertele) {
        this.customertele = customertele == null ? null : customertele.trim();
    }

    public String getCustomercardid() {
        return customercardid;
    }

    public void setCustomercardid(String customercardid) {
        this.customercardid = customercardid == null ? null : customercardid.trim();
    }
}