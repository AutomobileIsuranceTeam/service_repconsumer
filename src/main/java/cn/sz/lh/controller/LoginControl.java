package cn.sz.lh.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.sz.lh.pojo.Manager;
import cn.sz.lh.service.LoginService;

@Controller
@RequestMapping("/logincontrol")
public class LoginControl {

	@Autowired
	private LoginService loginService;
	
	
	@RequestMapping(value="/logincheck",method=RequestMethod.POST)
	public String loginchecke(Manager manager,HttpServletRequest request,HttpServletResponse response) {
		Manager nowmanager=loginService.Login(manager);
		if(nowmanager==null) {
				return "login";
		}
		System.out.println(manager.getD_name());
		request.getSession().setAttribute("manager", nowmanager);
		
		return "First";
	}
	
	
}
