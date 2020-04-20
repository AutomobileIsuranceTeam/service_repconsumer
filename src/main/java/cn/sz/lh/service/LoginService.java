package cn.sz.lh.service;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import cn.sz.lh.pojo.Manager;

@FeignClient(value="ReportServer")
public interface LoginService {

	@PostMapping("/logincontrol/login")
	public Manager Login(@RequestBody Manager manager);
}
