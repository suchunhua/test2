package com.fd.task.entity;

public class TOriginMovePaternal {
	private Long id;

	private Long collinfoId;

	private Boolean originType;

	private String lineTitle;

	private String lineSubtitle;

	private String lineDescription;

	private String lineImg1;

	private String lineImg2;

	private String lineImg3;

	private String updateName;

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

	public Boolean getOriginType() {
		return originType;
	}

	public void setOriginType(Boolean originType) {
		this.originType = originType;
	}

	public String getLineTitle() {
		return lineTitle;
	}

	public void setLineTitle(String lineTitle) {
		this.lineTitle = lineTitle == null ? null : lineTitle.trim();
	}

	public String getLineSubtitle() {
		return lineSubtitle;
	}

	public void setLineSubtitle(String lineSubtitle) {
		this.lineSubtitle = lineSubtitle == null ? null : lineSubtitle.trim();
	}

	public String getLineDescription() {
		return lineDescription;
	}

	public void setLineDescription(String lineDescription) {
		this.lineDescription = lineDescription == null ? null : lineDescription.trim();
	}

	public String getLineImg1() {
		return lineImg1;
	}

	public void setLineImg1(String lineImg1) {
		this.lineImg1 = lineImg1 == null ? null : lineImg1.trim();
	}

	public String getLineImg2() {
		return lineImg2;
	}

	public void setLineImg2(String lineImg2) {
		this.lineImg2 = lineImg2 == null ? null : lineImg2.trim();
	}

	public String getLineImg3() {
		return lineImg3;
	}

	public void setLineImg3(String lineImg3) {
		this.lineImg3 = lineImg3 == null ? null : lineImg3.trim();
	}

	public String getUpdateName() {
		return updateName;
	}

	public void setUpdateName(String updateName) {
		this.updateName = updateName == null ? null : updateName.trim();
	}
}