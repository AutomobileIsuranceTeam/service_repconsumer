<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basepath %>" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <title>进度处理</title>
    <!-- Bootstrap Core CSS -->
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
	<link rel="stylesheet" href="layui/css/layui.css"  media="all">
	
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>

<body>
    <!-- Preloader -->
    <div class="preloader">
        <div class="cssload-speeding-wheel"></div>
    </div>
    <div id="wrapper">
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" style="margin-bottom: 0">
            <div class="navbar-header"> <a class="navbar-toggle hidden-sm hidden-md hidden-lg " href="javascript:void(0)" data-toggle="collapse" data-target=".navbar-collapse"><i class="ti-menu"></i></a>
                <div class="top-left-part"><a class="logo" href="javascript:void(0)"><i class="glyphicon glyphicon-fire"></i>&nbsp;<span class="hidden-xs">报案中心</span></a></div>
                <ul class="nav navbar-top-links navbar-left hidden-xs">
                    <li><a href="javascript:void(0)" class="open-close hidden-xs hidden-lg waves-effect waves-light"><i class="ti-arrow-circle-left ti-menu"></i></a></li>
                </ul>
                <ul class="nav navbar-top-links navbar-right pull-right">
                    <li>
                        <form role="search" class="app-search hidden-xs">
                            <input type="text" placeholder="Search..." class="form-control">
                            <a href=""><i class="ti-search"></i></a>
                        </form>
                    </li>
                    <li>
                        <a class="profile-pic" href="#"> <img src="images/users/hritik.jpg" alt="user-img" width="36" class="img-circle"><b class="hidden-xs">${sessionScope.manager.h_name }</b> </a>
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
                                <button class="btn btn-default" type="button"><i class="ti-search"></i> </button>
                            </span>
                        </div>
                    </li>
                   <li>
                        <a href="gotopage/toreport" class="waves-effect"><i class="glyphicon glyphicon-fire fa-fw"></i>我要报案</a>
                    </li>
                    <li>
                        <a href="gotopage/toflash" class="waves-effect"><i class="ti-user fa-fw"></i>发起闪赔</a>
                    </li>
                    <li>
                        <a href="gotopage/touploss" class="waves-effect"><i class="ti-layout fa-fw"></i>提交定损</a>
                    </li>
                    <li>
                        <a href="javascript:void(0)" class="waves-effect"><i class="ti-face-smile fa-fw"></i>进度处理</a>
                    </li>
                </ul>
                
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-12">
                        <h4 class="page-title">进度处理</h4>
                        <ol class="breadcrumb">
                            <li><a href="#">报案中心</a></li>
                            <li class="active">进度处理</li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- row -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="white-box">
                            
                            <div class="demoTable">
							  搜索ID：
							  <div class="layui-inline">
							    <input class="layui-input" name="id" id="demoReload" autocomplete="off">
							  </div>
							  <button class="layui-btn" data-type="reload">搜索</button>
							</div>
							 
							<table class="layui-hide" id="LAY_table_user" lay-filter="user"></table> 
                            
                            
                            
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
        <footer class="footer text-center"> 2016 &copy; Myadmin brought to you by themedesigner.in </footer>
        <footer class="footer text-center"> 2016 &copy; Myadmin brought to you by themedesigner.in </footer>
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
</body>
<script src="layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use('table', function(){
  var table = layui.table;
  
  //方法级渲染
  table.render({
    elem: '#LAY_table_user'
    ,url: '/reportcontrol/showallreport'
    ,cols: [
    	[
        {checkbox: true, fixed: true}
        ,{field:'reportid', title: '报案号', width:160, sort: true,fixed:true}
        ,{field:'userphone', title: '手机号', width:160}
        ,{field:'address', title: '事故地点', width:160, sort: true}
        ,{field:'report_time', title: '报案时间', width:160,
        	templet :function (row){
                return myFunction(row.report_time);
           }  
        }
      ]
    ]
    ,id: 'testReload'
    ,page: true
    ,limit: 5//限制每一页的行数
    ,limits: [5,10,15]//表示每一页可显示的行数
    ,height: 310
    ,parseData: function(res){ //将原始数据解析成 table 组件所规定的数据，res为从url中get到的数据
        var result;
        console.log(this);
        console.log(JSON.stringify(res));
        if(this.page.curr){
            result = res.data.slice(this.limit*(this.page.curr-1),this.limit*this.page.curr);
        }
        else{
            result=res.data.slice(0,this.limit);
        }
        return {
            "code": res.code, //解析接口状态
            "msg": res.msg, //解析提示文本
            "count": res.count, //解析数据长度
            "data": result //解析数据列表
        };
    }
  });
  var $ = layui.$, active = {
		    reload: function(){
		      var demoReload = $('#demoReload');
		      
		      //执行重载
		      table.reload('testReload', {
		        page: {
		          curr: 1 //重新从第 1 页开始
		        }
		        ,where: {
		          reportid:demoReload.val()
		        }
		      }, 'data');
		    }
		  };
		  
		  $('.demoTable .layui-btn').on('click', function(){
		    var type = $(this).data('type');
		    active[type] ? active[type].call(this) : '';
		  });
});
</script>

<script type="text/javascript">
    function myFunction(date){
        var date= new Date(Date.parse(date));
    	var y = date.getFullYear();
    	var m = date.getMonth()+1;
    	var d = date.getDate();
    	return y+'-'+m+'-'+d;
    };
</script>

</html>
