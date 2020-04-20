package cn.sz.lh.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/gotopage")
public class GotopageControl {

	@RequestMapping(value="/toreport",method=RequestMethod.GET)
	public String wantreportmodel(HttpServletRequest request) {
		if(request.getSession().getAttribute("manager")==null) {
			return "login";
		}
		return "wantreport";
	}
	
	@RequestMapping(value="/toflash",method=RequestMethod.GET)
	public String gotoflash(HttpServletRequest request) {
		if(request.getSession().getAttribute("manager")==null) {
			return "login";
		}
		return "flashmoney";
	}
	
	@RequestMapping(value="/touploss",method=RequestMethod.GET)
	public String gotouploss(HttpServletRequest request) {
		if(request.getSession().getAttribute("manager")==null) {
			return "login";
		}
		return "uploss";
	}
	
	@RequestMapping(value="/todealtime", method=RequestMethod.GET)
	public String gotodealtime(HttpServletRequest request) {
		if(request.getSession().getAttribute("manager")==null) {
			return "login";
		}
		return "dealtime";
	}
}
