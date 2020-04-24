package cn.sz.lh.controller;

import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.sz.lh.pojo.Car_Accident;
import cn.sz.lh.pojo.Insured;
import cn.sz.lh.pojo.Rep_Info;
import cn.sz.lh.service.LoginService;

@Controller
@RequestMapping("/reportcontrol")
public class ReportContol {

	@Autowired
	private LoginService reportfeign;
	//填写报案信息control
	@ResponseBody
	@RequestMapping(value="/addrepinfo",method=RequestMethod.POST)
	public Object addreportinfo(Rep_Info rep,Insured ins) {
		/*Insured insured=reportfeign.selectByIdcard(ins);
		rep.setUserid(insured.getInsid());*/
		rep.setUserid(1232392);
		rep.setReport_status("已报案");
		System.out.println("rep1:"+rep.getAddress()+"rep2:"+rep.getIf_collision());
		Date nowdate =new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
		String nowtime=sdf.format(nowdate);
		BigInteger t=BigInteger.valueOf(Long.valueOf(nowtime));
		System.out.println("time:"+t);
		rep.setReportid(t);
		Map<String,Object> map=new HashMap<>();
		if(reportfeign.addreportinfo(rep).equals("default")) {
			 map.put("code", 1);
			 return map;
		}
        map.put("code",0);
        map.put("reportid", t);
        return map;
	}
	
	@ResponseBody
	@RequestMapping(value="/showrepinfo",method=RequestMethod.POST)
	public Object showonerepinfo(Rep_Info rep) {
		
		System.out.println("reportid:"+rep.getReportid());
		Rep_Info repthis=reportfeign.showInforep(rep);
		if(repthis==null) {
			Map<String,Object> map=new HashMap<String,Object>();
			map.put("code", 400);
			return map;
		}
		List<Car_Accident> carpic=reportfeign.checknull(rep);
		for (Car_Accident carp : carpic) {
			String onepath=carp.getCarone();
			String newpath=onepath.substring(43);
			System.out.println("newpath:"+newpath);
			carp.setCarone(newpath);
		}
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("repthis", repthis);
		map.put("carpic", carpic);
		map.put("code", 200);
		return map;
	}
}
