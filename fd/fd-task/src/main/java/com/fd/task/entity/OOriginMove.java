package com.fd.task.entity;

public class OOriginMove {
	private Long id;

	private Long collinfoid;

	private String originType;

	private Integer status;

	private String paths;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getCollinfoid() {
		return collinfoid;
	}

	public void setCollinfoid(Long collinfoid) {
		this.collinfoid = collinfoid;
	}

	public String getOriginType() {
		return originType;
	}

	public void setOriginType(String originType) {
		this.originType = originType == null ? null : originType.trim();
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getPaths() {
		return paths;
	}

	public void setPaths(String paths) {
		this.paths = paths == null ? null : paths.trim();
	}
}