package com.fd.task.entity;

public class CollInfoWithBLOBs extends CollInfo {
	private String otherill;

	private String judge;

	private String otherexp;

	private String sampcolltime;

	private String linkid;

	private String remark;

	public String getOtherill() {
		return otherill;
	}

	public void setOtherill(String otherill) {
		this.otherill = otherill == null ? null : otherill.trim();
	}

	public String getJudge() {
		return judge;
	}

	public void setJudge(String judge) {
		this.judge = judge == null ? null : judge.trim();
	}

	public String getOtherexp() {
		return otherexp;
	}

	public void setOtherexp(String otherexp) {
		this.otherexp = otherexp == null ? null : otherexp.trim();
	}

	public String getSampcolltime() {
		return sampcolltime;
	}

	public void setSampcolltime(String sampcolltime) {
		this.sampcolltime = sampcolltime == null ? null : sampcolltime.trim();
	}

	public String getLinkid() {
		return linkid;
	}

	public void setLinkid(String linkid) {
		this.linkid = linkid == null ? null : linkid.trim();
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark == null ? null : remark.trim();
	}
}