package cn.sz.lh.controller;

import java.io.File;
import java.io.IOException;
import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
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

import cn.sz.lh.pojo.Car_Accident;
import cn.sz.lh.pojo.Rep_Info;
import cn.sz.lh.service.LoginService;



@Controller
@RequestMapping("/uppiturecontrol")
public class UpPitctureControl {

	@Autowired
	private LoginService uppicfeign;
	
	@ResponseBody
	@RequestMapping(value="/upcarhead", method=RequestMethod.POST)
	public Object upcarhead(@RequestParam(value="file",required=false) MultipartFile image1,
			Rep_Info rep,HttpServletRequest request) {
		System.out.println("reportid:"+rep.getReportid());
		Car_Accident caraccident=new Car_Accident();
		List<Car_Accident> carlist=uppicfeign.checknull(rep);
		Integer carsize=0;
		if(carlist!=null) {
			carsize=carlist.size();
		}
		//没有上传过的操作
		if(carsize>=4) {
			Map<String,Object> map=new HashMap<>();
			map.put("code", 100);
			return map;
		}
		String folder="imgmore";//图片上级目录
		String uuid=UUID.randomUUID().toString();
		System.out.println("realpath:"+request.getServletContext().getRealPath(folder));
		File  imageFolder= new File(request.getServletContext().getRealPath(folder));
		Map<String,Object> map=new HashMap<>();
	        try {
	        	if(!imageFolder.exists()) {
	        		imageFolder.mkdirs();
	        	}
	        	caraccident.setReportid(rep.getReportid());//添加报案号
	        	SimpleDateFormat sdf=new SimpleDateFormat("HHmmss");
	    		String nowtime=sdf.format(new Date());
	    		Long lon=Long.valueOf(((rep.getReportid()+"").substring(0, 3)+nowtime+(++carsize)));
	        	BigInteger accidentid=BigInteger.valueOf(lon);//主键
	        	System.out.println("accidentid:"+accidentid);
	        	caraccident.setAccidentid(accidentid);
	        	File file1 = new File(imageFolder,uuid+".jpg");
	        	System.out.println("allfilepath:"+imageFolder.getName()+"\\"+file1.getName());
	        	String path= request.getServletContext().getRealPath(folder)+"\\"+file1.getName();
	        	caraccident.setCarone(path);
          		image1.transferTo(file1);//执行上传
	            map.put("code",200);
	            String flag=uppicfeign.addcarevent(caraccident,1);
	            map.put("msg",flag);
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	        return map;
	}
}
