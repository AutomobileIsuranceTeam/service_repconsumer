package cn.sz.lh.controller;

import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.sz.lh.pojo.Time_d;
import cn.sz.lh.service.LoginService;

@Controller
@RequestMapping("/dealtimecontrol")
public class DealtimeControl {

	@Autowired
	private LoginService dealfeign;
	
	@ResponseBody
	@RequestMapping(value="/showalldealinfo",method=RequestMethod.POST)
	public Object showalldealbyone(BigInteger reportid) {
		System.out.println(111l);
		Time_d dealtable=new Time_d();
		dealtable.setReportid(reportid);
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("deallist",dealfeign.showdealend(dealtable));
		return map;
	}
	
	
}
