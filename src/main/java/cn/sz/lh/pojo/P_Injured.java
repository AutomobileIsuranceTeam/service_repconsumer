package cn.sz.lh.pojo;

import java.io.Serializable;
import java.math.BigInteger;

public class P_Injured implements Serializable {

	private Integer injuredid;
	private BigInteger reportid;
	private String photo_one;
	private String photo_two;
	private String photo_three;
	private String photo_four;
	public Integer getInjuredid() {
		return injuredid;
	}
	public void setInjuredid(Integer injuredid) {
		this.injuredid = injuredid;
	}
	public BigInteger getReportid() {
		return reportid;
	}
	public void setReportid(BigInteger reportid) {
		this.reportid = reportid;
	}
	public String getPhoto_one() {
		return photo_one;
	}
	public void setPhoto_one(String photo_one) {
		this.photo_one = photo_one;
	}
	public String getPhoto_two() {
		return photo_two;
	}
	public void setPhoto_two(String photo_two) {
		this.photo_two = photo_two;
	}
	public String getPhoto_three() {
		return photo_three;
	}
	public void setPhoto_three(String photo_three) {
		this.photo_three = photo_three;
	}
	public String getPhoto_four() {
		return photo_four;
	}
	public void setPhoto_four(String photo_four) {
		this.photo_four = photo_four;
	}
}
