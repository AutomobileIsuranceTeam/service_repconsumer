package cn.sz.lh.pojo;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Rep_Info implements Serializable {

	private BigInteger reportid;
	private Integer userid;
	private String userphone;
	private String address;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date report_time;
	private String if_collision;
	private String if_injured;
	private String report_status;
	private String remarks;
	private Integer accidentid;
	private Integer injuredid;
	private String report_info;
	
	public BigInteger getReportid() {
		return reportid;
	}
	public void setReportid(BigInteger reportid) {
		this.reportid = reportid;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getUserphone() {
		return userphone;
	}
	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getReport_time() {
		return report_time;
	}
	public void setReport_time(Date report_time) {
		this.report_time = report_time;
	}
	public String getIf_collision() {
		return if_collision;
	}
	public void setIf_collision(String if_collision) {
		this.if_collision = if_collision;
	}
	public String getIf_injured() {
		return if_injured;
	}
	public void setIf_injured(String if_injured) {
		this.if_injured = if_injured;
	}
	public String getReport_status() {
		return report_status;
	}
	public void setReport_status(String report_status) {
		this.report_status = report_status;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public Integer getAccidentid() {
		return accidentid;
	}
	public void setAccidentid(Integer accidentid) {
		this.accidentid = accidentid;
	}
	public Integer getInjuredid() {
		return injuredid;
	}
	public void setInjuredid(Integer injuredid) {
		this.injuredid = injuredid;
	}
	public String getReport_info() {
		return report_info;
	}
	public void setReport_info(String report_info) {
		this.report_info = report_info;
	}
}