<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="layui/css/layui.css"  media="all">
<script type="text/javascript" src="js/jquery.min.js"></script>

<script>
/* 用途: 接收地直栏参数 取id=1 根据ID的值 */
urlinfo=window.location.href; //获取当前页面的url
len=urlinfo.length;//获取url的长度
offset=urlinfo.indexOf("?");//设置参数字符串开始的位置
newsidinfo=urlinfo.substr(offset,len)//取出参数字符串 这里会获得类似“id=1”这样的字符串
newsids=newsidinfo.split("=");//对获得的参数字符串按照“=”进行分割
newsid=newsids[1];//得到参数值
console.log(newsid);
newsname=newsids[0];//得到参数名字
console.log(newsname);

$(function(){  
	$.ajax({
	    //请求方式
	    type:'POST',
	    //发送请求的地址
	    url:'dealtimecontrol/showalldealinfo',
	    //服务器返回的数据类型
	    dataType:'json',
	    //发送到服务器的数据，对象必须为key/value的格式，jquery会自动转换为字符串格式
	    data:{reportid:newsid},
	    success:function(data){
	        //请求成功函数内容
	        $.each(data.deallist,function (index,item){
	        	$('#timeline').append(
	        			  "<li class='layui-timeline-item'>"+
	        			    "<i class='layui-icon layui-timeline-axis'>&#xe63f;</i>"+
	        			    "<div class='layui-timeline-content layui-text'>"+
	        			      "<h3 class='layui-timeline-title'>"+item.dealtime+"</h3>"+
	        			      "<p>处理人："+item.dealman+"<br>处理结果:"+item.dealend+"</p></div></li>"
	        	);
	        });
	    },
	    error:function(jqXHR){
	        //请求失败函数内容dd
	    }
	});
});  

</script>
</head>
<body>
<ul class="layui-timeline" id="timeline"></ul>
<script src="layui/layui.js" charset="utf-8"></script>
</body>
</html>