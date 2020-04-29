<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basepath%>" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" type="image/png" sizes="16x16"
	href="images/favicon.png">
<title>我要报案</title>
<!-- Bootstrap Core CSS -->
<link href="bower_components/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Menu CSS -->
<link href="bower_components/metisMenu/dist/metisMenu.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="css/style.css" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" href="layui/css/layui.css" media="all">
<script src="layui/layui.js" charset="utf-8"></script>

<script type="text/javascript" src="js/jquery.min.js"></script>
</head>

<body>
	<!-- Preloader -->
	<div class="preloader">
		<div class="cssload-speeding-wheel"></div>
	</div>
	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<a class="navbar-toggle hidden-sm hidden-md hidden-lg "
					href="javascript:void(0)" data-toggle="collapse"
					data-target=".navbar-collapse"><i class="ti-menu"></i></a>
				<div class="top-left-part">
					<a class="logo" href="javascript:void(0)"><i
						class="glyphicon glyphicon-fire"></i>&nbsp;<span class="hidden-xs">报案中心</span></a>
				</div>
				<ul class="nav navbar-top-links navbar-left hidden-xs">
					<li><a href="javascript:void(0)"
						class="open-close hidden-xs hidden-lg waves-effect waves-light"><i
							class="ti-arrow-circle-left ti-menu"></i></a></li>
				</ul>
				<ul class="nav navbar-top-links navbar-right pull-right">
					<li>
						<form role="search" class="app-search hidden-xs">
							<input type="text" placeholder="Search..." class="form-control">
							<a href=""><i class="ti-search"></i></a>
						</form>
					</li>
					<li><a class="profile-pic" href="#"> <img
							src="images/users/hritik.jpg" alt="user-img" width="36"
							class="img-circle"><b class="hidden-xs">${sessionScope.manager.h_name }</b>
						</a>
					</li>
				</ul>
			</div>
			<!-- /.navbar-header -->
			<!-- /.navbar-top-links -->
			<!-- /.navbar-static-side -->
		</nav>
		<div class="navbar-default sidebar nicescroll" role="navigation">
			<div class="sidebar-nav navbar-collapse ">
				<ul class="nav" id="side-menu">
					<li class="sidebar-search hidden-sm hidden-md hidden-lg">
						<div class="input-group custom-search-form">
							<input type="text" class="form-control" placeholder="Search...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">
									<i class="ti-search"></i>
								</button>
							</span>
						</div>
					</li>
					<li><a href="javascript:void(0)" class="waves-effect"><i
							class="glyphicon glyphicon-fire fa-fw"></i>我要报案</a></li>
					<li><a href="gotopage/toflash" class="waves-effect"><i
							class="ti-user fa-fw"></i>发起闪赔</a></li>
					<li><a href="gotopage/touploss" class="waves-effect"><i
							class="ti-layout fa-fw"></i>提交定损</a></li>
					<li><a href="gotopage/todealtime" class="waves-effect"><i
							class="ti-face-smile fa-fw"></i>进度处理</a></li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row bg-title">
					<div class="col-lg-12">
						<h4 class="page-title">我要报案</h4>
						<ol class="breadcrumb">
							<li><a href="#">报案中心</a></li>
							<li class="active">我要报案</li>
						</ol>
					</div>
					<!-- /.col-lg-12 -->
				</div>

				<!-- 报案信息填写开始 -->
				<!-- 报案信息填写开始 -->
				<!-- 报案信息填写开始 -->
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="white-box">
							<div class="layui-tab">
								<ul class="layui-tab-title">
									<li class="layui-this">报案信息填写</li>
									<li>案件审核</li>
									<li>事故照片上传</li>
									<li>案件信息</li>
									<li>获取报案号</li>
								</ul>
								<!-- 报案信息 -->
								<div class="layui-tab-content">
									<div class="layui-tab-item layui-show" id="baoanxinxi">
										<form action="#" id="myrepinfo" method="post" onsubmit="return false">
											<div class="form-group">
												<label class="label-control">身份证号:</label> <input
													type="text" name="idcard" id="idcard"/>
											</div>
											<div class="form-group">
												<label class="label-control">报案人电话:</label> <input
													type="text" name="userphone" id="userphone" />
											</div>
											<div class="form-group">
												<label class="label-control">事故发生地:</label> <input
													type="text" name="address" id="address"/>
											</div>
											<div class="form-group">
												<label class="label-control" >事故发生时间:</label> <input
												type="text" name="report_time" id="accidenttime"  />
											</div>
											<div class="form-group">
												<label class="label-control">是否与人碰撞:</label> <select
													name="if_collision" id="if_collision">
													<option value="" selected="selected">请选择</option>
													<option value="是" >是</option>
													<option value="否">否</option>
												</select>
											</div>
											<div class="form-group">
												<label class="label-control">是否有人受伤：</label> <select
													name="if_injured" id="if_injured">
													<option value="" selected="selected">请选择</option>
													<option value="是" >是</option>
													<option value="否">否</option>
												</select>
											</div>
											<div class="form-group" id="endlow">
												<button type="button"  class="layui-btn" id="test1" onclick="addrepinfo()">提交</button>
											</div>
										</form>
									</div>
									<!-- 报案信息 -->
									<div class="layui-tab-item" id="accidentpicid">
									用户提交保单照片，查勘员进行审核
									</div>
									
									<!-- 事故照片上传 -->

									<div class="layui-tab-item" id="accidentpicid">
										<div class="form-group" id="report">
											<label class="label-control">当前报案号：</label> <input
												type="text"  id="reportid" name="reportid" >
										</div>
										<!-- 多张图片上传 -->
										<div class="layui-upload">
											  <button type="button" class="layui-btn layui-btn-normal" id="testList">选择多文件</button> 
											  <div class="layui-upload-list">
											    <table class="layui-table">
											      <thead>
											        <tr><th>文件名</th>
											        <th>大小</th>
											        <th>状态</th>
											        <th>操作</th>
											      </tr></thead>
											      <tbody id="demoList"></tbody>
											    </table>
											  </div>
											  <button type="button" class="layui-btn" id="testListAction">开始上传</button>
										</div> 
										<!-- 多张图片上传 -->
									</div>
									<!-- 事故照片上传 -->
									<!-- 案件信息查看 -->
									<div class="layui-tab-item">
										<form action="#" id="showrepinfo" method="post" onsubmit="return false">
											<div class="form-group">
														<label class="label-control">请输入要查看的案件的报案号：</label> <input
															type="text" name="reportid" id="reportid"/>
														<input type="button" id="showthisrep" onclick="showrepinfo()" value="查询"/>
											</div>
										</form>
										<div class="form-group">
												<label class="label-control">报案人电话:</label> <input
													type="text" readonly="readonly" name="userphoneshow" id="userphoneshow" />
											</div>
											<div class="form-group">
												<label class="label-control">事故发生地:</label> <input
													type="text" readonly="readonly" name="addressshow" id="addressshow"/>
											</div>
											<div class="form-group">
												<label class="label-control" >事故发生时间:</label> <input
												type="text" readonly="readonly" name="report_timeshow" id="accidenttimeshow"  />
											</div>
											<div class="form-group">
												<label class="label-control">是否与人碰撞:</label>
												<input type="text" readonly="readonly" id="if_collisionshow"/>
											</div>
											<div class="form-group">
												<label class="label-control">是否有人受伤：</label> <input
													name="if_injuredshow" readonly="readonly" id="if_injuredshow"/>
											</div>
											<div class="form-group" id="imagediv">
												
											</div>
											
									</div>
									
									<div class="layui-tab-item">
										<form action="#" id="byshowrepid" method="post" onsubmit="return false" >
								    	
								    		<div class="form-group">
										    <label class="label-control">请输入报案人电话：</label>
										    	<input type="text" name="userphone"/>
										    	<input type="button" value="查询" onclick="showrepidbyphone()"/>
										   	</div>
								      	</form>
								      	<div class="form-group">
								      		<table  id="wantedrepid" width="100%" border="1" cellspacing="0" cellpadding="0" >
								      		</table>
								      	</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /.row -->

	<!-- /.container-fluid -->

	<!-- /#page-wrapper -->
	<footer class="footer text-center"> 2016 &copy; Myadmin
		brought to you by themedesigner.in </footer>
	<footer class="footer text-center"> 2016 &copy; Myadmin
		brought to you by themedesigner.in </footer>

	<!-- /#wrapper -->
	<!-- jQuery -->
	<script src="bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- Menu Plugin JavaScript -->
	<script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>
	<!--Nice scroll JavaScript -->
	<script src="js/jquery.nicescroll.js"></script>
	<!--Wave Effects -->
	<script src="js/waves.js"></script>
	<!-- Custom Theme JavaScript -->
	<script src="js/myadmin.js"></script>
	<script>
		layui.use('element', function() {
			var $ = layui.jquery, element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

			//触发事件
			var active = {
				tabAdd : function() {
					//新增一个Tab项
					element.tabAdd('demo', {
						title : '新选项' + (Math.random() * 1000 | 0) //用于演示
						,
						content : '内容' + (Math.random() * 1000 | 0),
						id : new Date().getTime()
					//实际使用一般是规定好的id，这里以时间戳模拟下
					})
				},
				tabDelete : function(othis) {
					//删除指定Tab项
					element.tabDelete('demo', '44'); //删除：“商品管理”

					othis.addClass('layui-btn-disabled');
				},
				tabChange : function() {
					//切换到指定Tab项
					element.tabChange('demo', '22'); //切换到：用户管理
				}
			};

			$('.site-demo-active').on('click', function() {
				var othis = $(this), type = othis.data('type');
				active[type] ? active[type].call(this, othis) : '';
			});

			//Hash地址的定位
			var layid = location.hash.replace(/^#test=/, '');
			element.tabChange('test', layid);

			element.on('tab(test)', function(elem) {
				location.hash = 'test=' + $(this).attr('lay-id');
			});

		});
	</script>
	<!-- 报案信息提交js -->
<script type="text/javascript">
	function addrepinfo(){
		$.ajax({
			type: "POST",//方法类型
            dataType: "json",//预期服务器返回的数据类型
            url: "/reportcontrol/addrepinfo",//url
            data: $('#myrepinfo').serialize(),//+"&page="+page,
            success: function (data) {
                console.log(data);//打印服务端返回的数据(调试用)
                if(data.code>0){
                	return layer.msg('提交失败');
                }else{
                	$('#idcars').val('');
                	$('#userphone').val('');
                	$('#address').val('');
                	$('#accidenttime').val('');
                	$('#if_collision').find("option").eq(0).prop("selected", true);
                	$('#if_injured').find("option").eq(0).prop("selected", true);
                	$('#endlow').append(
                			"<br><label class='label-control'>报案号为：</label><input readonly='readonly' type='text' value='"+
                			data.reportid
                			+"'/>"
                	);
                	
                	return layer.msg('报案成功');
                	 }
            },
            error : function() {
                alert("异常！");
            }
		});
	}

</script>
<!-- layui日期控件js -->
<script>
layui.use('laydate', function(){
  var laydate = layui.laydate;
  
  //常规用法
  laydate.render({
    elem: '#accidenttime'
  });
});
  </script>
<script>
//多图片上传
layui.use('upload', function(){
  var $ = layui.jquery
  ,upload = layui.upload;
  var demoListView = $('#demoList')
  ,uploadListIns = upload.render({
    elem: '#testList'
    ,url: '/uppiturecontrol/upcarhead' //改成您自己的上传接口
    ,accept: 'file'
    ,multiple: true
    ,auto: false
    ,bindAction: '#testListAction'
    ,before: function(obj) {
        this.data={'reportid':$('#reportid').val()};//关键代码
     }
    ,choose: function(obj){   
      var files = this.files = obj.pushFile(); //将每次选择的文件追加到文件队列
      //读取本地文件
      obj.preview(function(index, file, result){
        var tr = $(['<tr id="upload-'+ index +'">'
          ,'<td>'+ file.name +'</td>'
          ,'<td>'+ (file.size/1024).toFixed(1) +'kb</td>'
          ,'<td>等待上传</td>'
          ,'<td>'
            ,'<button class="layui-btn layui-btn-xs demo-reload layui-hide">重传</button>'
            ,'<button class="layui-btn layui-btn-xs layui-btn-danger demo-delete">删除</button>'
          ,'</td>'
        ,'</tr>'].join(''));
        
        //单个重传
        tr.find('.demo-reload').on('click', function(){
          obj.upload(index, file);
        });
        
        //删除
        tr.find('.demo-delete').on('click', function(){
          delete files[index]; //删除对应的文件
          tr.remove();
          uploadListIns.config.elem.next()[0].value = ''; //清空 input file 值，以免删除后出现同名文件不可选
        });
        
        demoListView.append(tr);
    	  
      });
    }
    ,done: function(res, index, upload){
      if(res.code==200){ //上传成功
	        var tr = demoListView.find('tr#upload-'+ index)
	        ,tds = tr.children();
	        tds.eq(2).html('<span style="color: #5FB878;">上传成功</span>');
	        tds.eq(3).html(''); //清空操作
	        return delete this.files[index]; //删除文件队列已经上传成功的文件
      }else if(res.code==100){
    	  layer.msg('上传图片不能超过4张');
      }
      this.error(index, upload);
    }
    ,error: function(index, upload){
      var tr = demoListView.find('tr#upload-'+ index)
      ,tds = tr.children();
      tds.eq(2).html('<span style="color: #FF5722;">上传失败</span>');
      tds.eq(3).find('.demo-reload').removeClass('layui-hide'); //显示重传
    }
    
  });
});

  </script>
  <!-- 显示案件信息js -->
  <script type="text/javascript">
	function showrepinfo(){
		$.ajax({
			type: "POST",//方法类型
            dataType: "json",//预期服务器返回的数据类型
            url: "/reportcontrol/showrepinfo",//url
            data: $('#showrepinfo').serialize(),//+"&page="+page,
            success: function (data) {
                console.log(data);//打印服务端返回的数据(调试用)
                if(data.code>=400){
                	return layer.msg('无该案件，请输入正确的报案号！');
                }else if(data.code<=200){
                	$('#userphoneshow').val(data.repthis.userphone);
                	$('#addressshow').val(data.repthis.address);
                	$('#accidenttimeshow').val(data.repthis.accident_time);
                	$('#if_collisionshow').val(data.repthis.if_collision);
                	$('#if_injuredshow').val(data.repthis.if_injured);
                	console.log(data.carpic);
                	$.each(data.carpic,function (index,item){
                		$('#imagediv').append(
                				"<label class='label-control'>车辆损失图片：</label><img src='"+
                				item.carone
                				+"' alt='无上传图片' width='200px' height='200px' id='myimage"+index+"' class='layui-upload-img' onclick='mypreviewImg(this)'><br>"
                		);
                	});
                 }
            },
            error : function() {
                alert("异常！");
            }
		});
	}

</script>
<!-- 图片预览 -->
<script type="text/javascript">
function mypreviewImg(obj) {
	console.log(obj);
    var img = new Image();  
    img.src = obj.src;
    var height = img.height + 50; //获取图片高度
    var width = img.width; //获取图片宽度
    var imgHtml = "<img src='" + obj.src + "' />";  
    //弹出层
    layer.open({  
        type: 1,  
        shade: 0.8,
        offset: 'auto',
        area: [width + 'px',height+'px'],
        shadeClose:true,//点击外围关闭弹窗
        scrollbar: false,//不现实滚动条
        title:'图片预览',//不显示标题  
        content: imgHtml, //捕获的元素，注意：最好该指定的元素要存放在body最外层，否则可能被其它的相对元素所影响  
        cancel: function () {  
            //layer.msg('捕获就是从页面已经存在的元素上，包裹layer的结构', { time: 5000, icon: 6 });  
        }  
    }); 
}

</script>
<script type="text/javascript">
	//获取案件信息js
	function showrepidbyphone(){
		$.ajax({
			type: "POST",//方法类型
            dataType: "json",//预期服务器返回的数据类型
            url: "/reportcontrol/showByphonetorepid",//url
            data: $('#byshowrepid').serialize(),//+"&page="+page,
            success: function (data) {
                console.log(data);//打印服务端返回的数据(调试用)
                if(data.code>0){
                	return layer.msg('请输入正确的手机号或未报案');
                }else if(data.code<=0){
                	/* var testDate = new Date();
                	var testStr = testDate.format("YYYY年MM月dd日hh小时mm分ss秒");
                	
                	alert(testStr); */
                	
                	$.each(data.replist,function (index,item){
                		var geshi=myFunction(item.report_time);
	                	$('#wantedrepid').append(
	                			"<tr><td>报案号</td><td>报案日期</td><td>事故地点</td<td>案件状态</td></tr>"+
	                			"<tr><td>"+item.reportid+"</td><td>"+geshi+"</td><td>"+item.address+"</td><td>"+item.report_status+"</td></tr>"
	                		);
	                	});
                }
            },
            error : function() {
                alert("异常！");
            }
		});
	}
</script>
	<!-- 时间日期格式改变js -->
	<script type="text/javascript">
    function myFunction(date){
        var date= new Date(Date.parse(date));
    	var y = date.getFullYear();
    	var m = date.getMonth()+1;
    	var d = date.getDate();
    	return y+'-'+m+'-'+d;
    };
</script>

</body>

</html>
