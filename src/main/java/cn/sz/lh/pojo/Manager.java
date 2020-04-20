package cn.sz.lh.pojo;

import java.io.Serializable;

public class Manager implements Serializable {

	private Integer peopleid;
	private String h_name;
	private String h_pwd;
	private Integer deptid;
	private Integer d_rank;
	private String d_name;
	
	public Integer getPeopleid() {
		return peopleid;
	}
	public void setPeopleid(Integer peopleid) {
		this.peopleid = peopleid;
	}
	public String getH_name() {
		return h_name;
	}
	public void setH_name(String h_name) {
		this.h_name = h_name;
	}
	public String getH_pwd() {
		return h_pwd;
	}
	public void setH_pwd(String h_pwd) {
		this.h_pwd = h_pwd;
	}
	public Integer getDeptid() {
		return deptid;
	}
	public void setDeptid(Integer deptid) {
		this.deptid = deptid;
	}
	public Integer getD_rank() {
		return d_rank;
	}
	public void setD_rank(Integer d_rank) {
		this.d_rank = d_rank;
	}
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	
}
