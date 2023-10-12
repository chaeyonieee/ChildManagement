package com.example.demo.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("memberVO")
public class MemberVO {
	private int memberNo;
	private String type;
	private String id;
	private String password1;
	private String email;
	private String name;
	private String phone;
	private int zipCode;
	private String address;
	private String address_detail;
	private Date creDate;
	
	
	
	public int getMemberNo() {
		return memberNo;
	}



	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}



	public String getType() {
		return type;
	}



	public void setType(String type) {
		this.type = type;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getPassword1() {
		return password1;
	}



	public void setPassword1(String password1) {
		this.password1 = password1;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public int getZipCode() {
		return zipCode;
	}



	public void setZipCode(int zipCode) {
		this.zipCode = zipCode;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getAddress_detail() {
		return address_detail;
	}



	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}



	public Date getCreDate() {
		return creDate;
	}



	public void setCreDate(Date creDate) {
		this.creDate = creDate;
	}



	@Override
	public String toString() {
		return "MemberVO [memberNo=" + memberNo + ", type=" + type + ", id=" + id + ", password1=" + password1 + ", name=" + name
				+ ", email=" + email + ", phone=" + phone 
				+ ", zipCode=" + zipCode + ", address=" + address + ", address_detail=" + address_detail + ", creDate="
				+ creDate  + "]";
	}
	
	
}
