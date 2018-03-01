package com.fd.weixin.vo;

public class HeaderVo {

	/** * 功能 */
	private String function;

	/** * 左边图标 */
	private String leftIcon;

	/** * 右边图标 */
	private String rightIcon;

	/** * 右边图标的功能 */
	private String rightIconFunc;

	/** * 标题字体颜色 */
	private String titleColor;

	/** * 标题 */
	private String titleInfo;

	/** * 菜单开关 */
	private boolean menuSwitch;

	public String getRightIconFunc() {
		return rightIconFunc;
	}

	public void setRightIconFunc(String rightIconFunc) {
		this.rightIconFunc = rightIconFunc;
	}

	public String getTitleColor() {
		return titleColor;
	}

	public void setTitleColor(String titleColor) {
		this.titleColor = titleColor;
	}

	public String getTitleInfo() {
		return titleInfo;
	}

	public void setTitleInfo(String titleInfo) {
		this.titleInfo = titleInfo;
	}

	public String getFunction() {
		return function;
	}

	public void setFunction(String function) {
		this.function = function;
	}

	public String getLeftIcon() {
		return leftIcon;
	}

	public void setLeftIcon(String leftIcon) {
		this.leftIcon = leftIcon;
	}

	public String getRightIcon() {
		return rightIcon;
	}

	public void setRightIcon(String rightIcon) {
		this.rightIcon = rightIcon;
	}

	public boolean isMenuSwitch() {
		return menuSwitch;
	}

	public void setMenuSwitch(boolean menuSwitch) {
		this.menuSwitch = menuSwitch;
	}

	/**
	 * @param function
	 *            功能
	 * @param rightIcon
	 *            右边的图标
	 * @param titleInfo
	 *            标题
	 */
	public HeaderVo(String function, String rightIcon, String rightIconFunc) {
		super();
		this.function = function;
		this.rightIcon = rightIcon;
		this.rightIconFunc = rightIconFunc;
	}

	/**
	 * @param function
	 *            功能eg：title red-bg
	 * @param rightIcon
	 *            右边的图标eg:icon-fd-menu-white
	 * @param rightIconFunc
	 *            右边图标对应的Func eg:eaderMenuSwitch()
	 * @param titleInfo
	 *            标题eg:基本信息
	 * @param menuSwitch
	 *            头部菜单开关eg:true
	 */
	public HeaderVo(String function, String rightIcon, String rightIconFunc, String titleInfo, boolean menuSwitch) {
		super();
		this.function = function;
		this.rightIcon = rightIcon;
		this.rightIconFunc = rightIconFunc;
		this.titleInfo = titleInfo;
		this.menuSwitch = menuSwitch;
	}

}
