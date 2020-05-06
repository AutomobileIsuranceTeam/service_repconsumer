package cn.sz.lh.controller;

import java.util.List;

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
	public List<Time_d> showalldealbyone(Time_d dealtable) {
		return dealfeign.showdealend(dealtable);
	}
	
	
}
