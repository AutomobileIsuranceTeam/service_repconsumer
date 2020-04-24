package cn.sz.lh.pojo;

import java.io.Serializable;

public class Insured implements Serializable {

	private Integer insid;
	private String name;
	private String idcard;
	private String address;
	public Integer getInsid() {
		return insid;
	}
	public void setInsid(Integer insid) {
		this.insid = insid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}
