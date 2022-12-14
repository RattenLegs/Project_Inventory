package com.myProject.myapp.repair.vo;

public class AddRepairVO {

	private String num;
	private String startDay;
	private String name;
	private String phoneNumber;
	private String design;
	private String text;
	private String promiseDay;
	private String endDay;
	private String etc;

	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getStartDay() {
		return startDay;
	}
	public void setStartDay(String startDay) {
		this.startDay = startDay;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getDesign() {
		return design;
	}
	public void setDesign(String design) {
		this.design = design;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getPromiseDay() {
		return promiseDay;
	}
	public void setPromiseDay(String promiseDay) {
		this.promiseDay = promiseDay;
	}
	public String getEndDay() {
		return endDay;
	}
	public void setEndDay(String endDay) {
		this.endDay = endDay;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}


	
	@Override
	public String toString() {
		return "AddRepairVO [num=" + num + ", startDay=" + startDay + ", name=" + name + ", phoneNumber=" + phoneNumber
				+ ", design=" + design + ", text=" + text + ", promiseDay=" + promiseDay + ", endDay=" + endDay
				+ ", etc=" + etc + "]";
	}
}
