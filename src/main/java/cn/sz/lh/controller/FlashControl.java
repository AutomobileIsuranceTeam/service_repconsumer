package cn.sz.lh.controller;

import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.sz.lh.pojo.Flash_P;
import cn.sz.lh.pojo.Rep_Info;
import cn.sz.lh.service.LoginService;

@Controller
@RequestMapping("/flashcontrol")
public class FlashControl {

	@Autowired
	private LoginService flashfeign;
	
	@ResponseBody
	@RequestMapping(value="/uptocaiwu",method=RequestMethod.POST)
	public Object uptomoneyfromthis(Flash_P f) {
		
		Rep_Info rep=new Rep_Info();
		rep.setReportid(f.getReportid());
		rep.setReport_status("闪赔");
		
    	SimpleDateFormat sdf=new SimpleDateFormat("HHmmss");
		String nowtime=sdf.format(new Date());
		Long lon=Long.valueOf(((rep.getReportid()+"").substring(0, 3)+nowtime));
    	BigInteger flashid=BigInteger.valueOf(lon);//主键
    	f.setFlashid(flashid);
    	f.setFlash_p_m(0D);
    	f.setFlash_m(0D+f.getFlash_c_m());
    	Map<String,Object> map=new HashMap<String,Object>();
    	if(flashfeign.showInforep(rep)==null) {
    		map.put("code", 100);
    		return map;
    	}
    	if(flashfeign.showInforep(rep).getReport_status().equals("闪赔")) {
    		map.put("code", 500);
    		return map;
    	}
    	if(flashfeign.addflashinfo(f).equals("default")) {
    		map.put("code", 100);
    		return map;
    	}
    	flashfeign.updaterepstatus(rep);
		map.put("code", 0);
		return map;
	}
}
