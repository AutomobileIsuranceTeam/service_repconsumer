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
<link rel="stylesheet" href="layui/css/layui.css"  media="all">
<script src="layui/layui.js" charset="utf-8"></script>
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
					</a></li>
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
						    <li class="layui-this" >报案信息填写</li>
						    <li>事故照片上传</li>
						    <li>人伤照片上传</li>
						  </ul>
						  <!-- 报案信息 -->
						  <div class="layui-tab-content">
						    <div class="layui-tab-item layui-show">
						     <form action="" method="post" >
								<div class="form-group">
									<label class="label-control">身份证号:</label>
									 <input type="text" name="idcard" />
								</div>
								<div class="form-group">
									 <label class="label-control">报案人电话:</label>
									 <input type="text" name="userphone" />
								</div>
								<div class="form-group">
									 <label class="label-control">事故发生地:</label>
									 <input type="text" name="address" />
								</div>
								<div class="form-group">
									 <label class="label-control">事故发生时间:</label>
									 <input type="text" name="report_time" />
								</div>
								<div class="form-group">
								<label class="label-control">是否与人碰撞:</label>
									<select name="If_Collision">
										<option selected="selected">是</option>
										<option>否</option>
									</select> 
								</div>
								<div class="form-group">
									<button type="submit" class="layui-btn" id="test1">提交</button>
								</div>
								</form>
						    </div>
						    <!-- 事故照片上传 -->
						    <div class="layui-tab-item">
						    
						    <div class="layui-upload">
								  <input type="button" class="layui-btn" name="carone" id="test1">上传图片</button>
								  <div class="layui-upload-list">
								    <img class="layui-upload-img" id="demo1">
								    <p id="demoText"></p>
								  </div>
								</div>  
						    </div>
						    <div class="layui-tab-item">内容3</div>
						    <div class="layui-tab-item">内容4</div>
						    
						  </div>
						</div>
						
						
						
						
							
							
								
								


							



						</div>
					</div>
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /#page-wrapper -->
		<footer class="footer text-center"> 2016 &copy; Myadmin
			brought to you by themedesigner.in </footer>
		<footer class="footer text-center"> 2016 &copy; Myadmin
			brought to you by themedesigner.in </footer>
	</div>
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
layui.use('element', function(){
  var $ = layui.jquery
  ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块
  
  //触发事件
  var active = {
    tabAdd: function(){
      //新增一个Tab项
      element.tabAdd('demo', {
        title: '新选项'+ (Math.random()*1000|0) //用于演示
        ,content: '内容'+ (Math.random()*1000|0)
        ,id: new Date().getTime() //实际使用一般是规定好的id，这里以时间戳模拟下
      })
    }
    ,tabDelete: function(othis){
      //删除指定Tab项
      element.tabDelete('demo', '44'); //删除：“商品管理”
      
      
      othis.addClass('layui-btn-disabled');
    }
    ,tabChange: function(){
      //切换到指定Tab项
      element.tabChange('demo', '22'); //切换到：用户管理
    }
  };
  
  $('.site-demo-active').on('click', function(){
    var othis = $(this), type = othis.data('type');
    active[type] ? active[type].call(this, othis) : '';
  });
  
  //Hash地址的定位
  var layid = location.hash.replace(/^#test=/, '');
  element.tabChange('test', layid);
  
  element.on('tab(test)', function(elem){
    location.hash = 'test='+ $(this).attr('lay-id');
  });
  
});
</script>
</body>

</html>
