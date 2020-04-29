package cn.sz.lh.controller;

import java.io.File;
import java.io.IOException;
import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.sz.lh.pojo.Rep_Info;
import cn.sz.lh.pojo.Up_Loss;
import cn.sz.lh.service.LoginService;

@Controller
@RequestMapping("/uplosscontrol")
public class UpLossControl {

	@Autowired
	private LoginService tocenterfeign;
	
	@ResponseBody
	@RequestMapping(value="/tocenter",method=RequestMethod.POST)
	public Object uplosstocenter(Rep_Info rep,@RequestParam(value="carloss",required = false) MultipartFile carfile,
			@RequestParam(value="peoloss",required = false) MultipartFile peofile,
			@RequestParam(value="accidentreport",required = false) MultipartFile accfile,
			@RequestParam(value="policeres",required = false) MultipartFile policefile,
			HttpServletRequest request) {
		System.out.println("reportid:"+rep.getReportid());
		Rep_Info repthis=tocenterfeign.showInforep(rep);
		Map<String,Object> map=new HashMap<String, Object>();
		if(repthis==null) {
			map.put("code", 400);//没有该报案号的报案信息
			return map;
		}
		if(!repthis.getReport_status().equals("已报案")) {
			map.put("code", 501);//已有其他处理，无需提交
			return map;
		}
		Up_Loss uploss =new Up_Loss();
		uploss.setReportid(rep.getReportid());//添加报案号
		
		SimpleDateFormat sdf=new SimpleDateFormat("HHmmss");
		String nowtime=sdf.format(new Date());
		Long lon=Long.valueOf(((rep.getReportid()+"").substring(0, 3)+nowtime));
    	BigInteger uplossid=BigInteger.valueOf(lon);//主键
    	System.out.println("uplossid:"+uplossid);
    	uploss.setLossid(uplossid);//添加uplossid
		
    	String folder=rep.getReportid()+"案件";//图片上级目录
		String uuid=UUID.randomUUID().toString();
		String uuid2=UUID.randomUUID().toString();
		String uuid3=UUID.randomUUID().toString();
		String uuid4=UUID.randomUUID().toString();
		System.out.println("realpath:"+request.getServletContext().getRealPath(folder));
		File  imageFolder= new File(request.getServletContext().getRealPath(folder));
		if(!imageFolder.exists()) {
    		imageFolder.mkdirs();
    	}
		File filecar = new File(imageFolder,uuid+".jpg");
		File filepeo=new File(imageFolder,uuid2+".jpg");
		File fileacc=new File(imageFolder, uuid3);
		File filepo=new File(imageFolder, uuid4);
    	System.out.println("allfilepath:"+imageFolder.getName()+"\\"+filecar.getName());
    	String pathcar= request.getServletContext().getRealPath(folder)+"\\"+filecar.getName();
    	String pathpeo=request.getServletContext().getRealPath(folder)+"\\"+filepeo.getName();
    	String pathacc=request.getServletContext().getRealPath(folder)+"\\"+fileacc.getName();
    	String pathpo=request.getServletContext().getRealPath(folder)+"\\"+filepo.getName();

    	uploss.setCar_photo(pathcar);
    	uploss.setPeople_photo(pathpeo);
    	uploss.setReport_info(pathacc);
    	uploss.setResponsibility(pathpo);
  		try {
			carfile.transferTo(filecar);
			peofile.transferTo(filepeo);
			accfile.transferTo(fileacc);
			policefile.transferTo(filepo);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
  		if(tocenterfeign.adduploss(uploss).equals("default")) {
  			map.put("code", 500);
  			return map;
  		}
  		repthis.setReport_status("提交定损");
  		tocenterfeign.updaterepstatus(repthis);
		map.put("code", 200);
		return map;
	}
}
