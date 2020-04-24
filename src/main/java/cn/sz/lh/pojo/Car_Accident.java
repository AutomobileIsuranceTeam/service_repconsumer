package cn.sz.lh.pojo;

import java.io.Serializable;
import java.math.BigInteger;

public class Car_Accident implements Serializable {

	private BigInteger accidentid;
	private BigInteger reportid;
	private String carone;
	private String cartwo;
	private String carthree;
	private String carfour;
	
	public BigInteger getAccidentid() {
		return accidentid;
	}
	public void setAccidentid(BigInteger accidentid) {
		this.accidentid = accidentid;
	}
	public BigInteger getReportid() {
		return reportid;
	}
	public void setReportid(BigInteger reportid) {
		this.reportid = reportid;
	}
	public String getCarone() {
		return carone;
	}
	public void setCarone(String carone) {
		this.carone = carone;
	}
	public String getCartwo() {
		return cartwo;
	}
	public void setCartwo(String cartwo) {
		this.cartwo = cartwo;
	}
	public String getCarthree() {
		return carthree;
	}
	public void setCarthree(String carthree) {
		this.carthree = carthree;
	}
	public String getCarfour() {
		return carfour;
	}
	public void setCarfour(String carfour) {
		this.carfour = carfour;
	}
}
