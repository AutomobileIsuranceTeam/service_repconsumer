package cn.sz.lh.pojo;

import java.io.Serializable;
import java.math.BigInteger;

public class Flash_P implements Serializable {

	private BigInteger flashid;
	private BigInteger reportid;
	private Double flash_c_m;
	private Double flash_p_m;
	private Double flash_m;
	public BigInteger getFlashid() {
		return flashid;
	}
	public void setFlashid(BigInteger flashid) {
		this.flashid = flashid;
	}
	public BigInteger getReportid() {
		return reportid;
	}
	public void setReportid(BigInteger reportid) {
		this.reportid = reportid;
	}
	public Double getFlash_c_m() {
		return flash_c_m;
	}
	public void setFlash_c_m(Double flash_c_m) {
		this.flash_c_m = flash_c_m;
	}
	public Double getFlash_p_m() {
		return flash_p_m;
	}
	public void setFlash_p_m(Double flash_p_m) {
		this.flash_p_m = flash_p_m;
	}
	public Double getFlash_m() {
		return flash_m;
	}
	public void setFlash_m(Double flash_m) {
		this.flash_m = flash_m;
	}
	
}
