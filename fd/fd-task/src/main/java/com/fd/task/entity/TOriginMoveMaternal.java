package com.fd.task.entity;

public class TOriginMoveMaternal {
	private Long id;

	private Long collinfoId;

	private String showArea;

	private Integer status;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getCollinfoId() {
		return collinfoId;
	}

	public void setCollinfoId(Long collinfoId) {
		this.collinfoId = collinfoId;
	}

	public String getShowArea() {
		return showArea;
	}

	public void setShowArea(String showArea) {
		this.showArea = showArea == null ? null : showArea.trim();
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}