package cn.sz.lh.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;



@Controller
@RequestMapping("/uppiturecontrol")
public class UpPitctureControl {

	@ResponseBody
	@RequestMapping(value="/upcarhead", method=RequestMethod.POST)
	public Object upcarhead(@RequestParam(value="file",required=false) MultipartFile image, String reportid,HttpServletRequest request) {
		/*System.out.println("reportid:"+reportid);
		
		String temp=request.getParameter("reportid");
		System.out.println("temp:"+temp);
		
		BigInteger reportid1=BigInteger.valueOf(Long.valueOf(temp));
		System.out.println("reportid:"+reportid1);*/
		String remake=request.getParameter("remake");
		System.out.println("remake:"+remake);
		String folder="img";
		String uuid=UUID.randomUUID().toString();
		System.out.println("realpath:"+request.getServletContext().getRealPath(folder));
		File  imageFolder= new File(request.getServletContext().getRealPath(folder));
		 File file = new File(imageFolder,uuid+".jpg");
		 String fileName = file.getName();
		 if(!file.getParentFile().exists())
	            file.getParentFile().mkdirs();
	        try {
	            image.transferTo(file);
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
		 System.out.println(file.exists());
		 System.out.println("filename:"+fileName);
	        Map<String,Object> map=new HashMap<>();
	        map.put("code",0);
	        map.put("msg","");
	        return map;
	}
	
	
}
