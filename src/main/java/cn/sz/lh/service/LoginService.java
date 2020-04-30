package cn.sz.lh.service;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import cn.sz.lh.pojo.Car_Accident;
import cn.sz.lh.pojo.Flash_P;
import cn.sz.lh.pojo.Insured;
import cn.sz.lh.pojo.Manager;
import cn.sz.lh.pojo.Rep_Info;
import cn.sz.lh.pojo.Time_d;
import cn.sz.lh.pojo.Up_Loss;

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
	
	@PostMapping("/report/showByPhone")
	public List<Rep_Info> showByPhone(@RequestBody Rep_Info rep);//根据手机号查报案号
	
	@PostMapping("/flashcontrol/addflashinfo")
	public String addflashinfo(Flash_P f);//添加闪赔表
	
	@PostMapping("/report/updaterepstatus")
	public String updaterepstatus(Rep_Info rep);//修改案件状态
	
	@PostMapping("/uplosscontrol/adduploss")
	public String adduploss(@RequestBody Up_Loss uploss);//提交定损表
	
	@PostMapping("/dealcontrol/adddealend")
	public String adddealend(@RequestBody Time_d dealtable);//添加处理信息
	
	@PostMapping("/dealcontrol/showdealend")
	public List<Time_d> showdealend(@RequestBody Time_d dealtable);//根据报案号，展示案件处理信息
	
	@PostMapping("/report/showallreport")
	public List<Rep_Info> showallreport();//查询所有案件信息
}
