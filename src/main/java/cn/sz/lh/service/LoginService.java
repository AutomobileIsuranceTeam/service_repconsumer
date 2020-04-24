package cn.sz.lh.service;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import cn.sz.lh.pojo.Car_Accident;
import cn.sz.lh.pojo.Insured;
import cn.sz.lh.pojo.Manager;
import cn.sz.lh.pojo.Rep_Info;

@FeignClient(value="ReportServer")
public interface LoginService {

	@PostMapping("/logincontrol/login")
	public Manager Login(@RequestBody Manager manager);//登录接口
	
	@PostMapping("/report/addonereport")
	public String addreportinfo(@RequestBody Rep_Info rep);//添加基本报案信息
	
	@PostMapping("/inscontrol/selectbyidcard")
	public Insured selectByIdcard(@RequestBody Insured ins);//根据身份证号查保险单号
	
	@PostMapping("/caraccident/isexistnull")
	public List<Car_Accident> checknull(@RequestBody Rep_Info rep);//根据报案号查看上传的照片数量
	
	@PostMapping("/caraccident/addcarphoto")
	public String addcarevent(@RequestBody Car_Accident caraccident,@RequestParam(value="num") Integer num);//上传图片
	
	@PostMapping("/report/showrepinfomethod")
	public Rep_Info showInforep(@RequestBody Rep_Info rep);//根据报案号查报案信息
	
	@PostMapping("/report/updatecarphoto")
	public String updateaccidentid(@RequestBody Rep_Info rep);//修改accidentid，关联报案信息和车辆事故表
}
