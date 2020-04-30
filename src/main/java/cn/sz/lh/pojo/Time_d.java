package cn.sz.lh.pojo;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Date;

public class Time_d implements Serializable {

	private BigInteger T_id;
	private BigInteger reportid;
	private String dealman;
	private Date dealtime;
	private String dealend;
	public BigInteger getT_id() {
		return T_id;
	}
	public void setT_id(BigInteger t_id) {
		T_id = t_id;
	}
	public BigInteger getReportid() {
		return reportid;
	}
	public void setReportid(BigInteger reportid) {
		this.reportid = reportid;
	}
	public String getDealman() {
		return dealman;
	}
	public void setDealman(String dealman) {
		this.dealman = dealman;
	}
	public Date getDealtime() {
		return dealtime;
	}
	public void setDealtime(Date dealtime) {
		this.dealtime = dealtime;
	}
	public String getDealend() {
		return dealend;
	}
	public void setDealend(String dealend) {
		this.dealend = dealend;
	}
	
}
