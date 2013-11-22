<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新都圣大会员积分系统</title>
<?php include_once 'common.php'; ?>
<script type="text/javascript" >

//加载内容区
function addCentFrm(src){
	contFrm.attr('src',src);
	contFrm.load();
	setTimeout("initframe()",1000);
}
var contPanel;
var contFrm;
$(document).ready(function(){
	// 初始对象
	contPanel = $('#main_layout').layout('panel','center');
	// iframe 对象
	contFrm = $('#contentFrm');
	// iframe 自适应
	contFrm.load(function() { 
		// 设置中间panel 标题
		contPanel.panel('setTitle',$(this).contents().find("body").attr("nav"));
	});
	$(".nav li").click(function(){
		$(this).siblings().css("background","");
		$(this).css("background","rgb(251,236,136)");
	});
});
function initframe(){
	// 设置中间panel 标题
	contPanel.panel('setTitle',$(this).contents().find("body").attr("nav"));
	contFrm.height(contFrm.height()-10);
}
</script>
</head>
<body id="main_layout" class="easyui-layout">
	<div data-options="region:'north',border:false" style="height:50px;line-height:50px;padding-left:6px;background:url(./images/beijing.png);font-size:20px;color:black;">
		欢迎  <?php echo $_SESSION['admin'];?>  登录新都圣大会员积分系统&nbsp;&nbsp;&nbsp;&nbsp;<a style="float:right;color:black;margin-right:20px;font-size:14px;" href="./login.php?action=logout">安全退出</a>
	</div>
	<div data-options="region:'west',split:true,title:'菜单'" style="width:150px;">
		<ul class="nav">
			<li style="background: rgb(251,236,136);"><a href="javascript:void(0)" onclick="addCentFrm('./shopgoods_list.php');" class="icon-gears">商品管理</a></li>
			<li><a href="javascript:void(0)" onclick="addCentFrm('./shopcategory_list.php');"  class="icon-gears">分类管理</a></li>
			<li><a href="javascript:void(0)" onclick="addCentFrm('./shopbrand_list.php');"  class="icon-gears">品牌管理</a></li>
			<li><a href="javascript:void(0)" onclick="addCentFrm('./shopsales_list.php');" class="icon-gears">活动管理</a></li>
			<li><a href="javascript:void(0)" onclick="addCentFrm('./shopinfo_list.php');" class="icon-gears">卖场管理</a></li>
			<li><a href="javascript:void(0)" onclick="addCentFrm('./member_list.php');" class="icon-gears">会员管理</a></li>
			<li><a href="javascript:void(0)" onclick="addCentFrm('./weibo_list.php');" class="icon-gears">微博管理</a></li>
			<li><a href="javascript:void(0)" onclick="addCentFrm('./homeimg.php');" class="icon-gears">首页图片</a></li>
			<li><a href="javascript:void(0)" onclick="addCentFrm('./admin_list.php');" class="icon-gears">管理人员</a></li>
		</ul>
	</div>
	<div data-options="region:'center',title:'首页',tools:'#mainTt'">
		<iframe id="contentFrm" style="border:0px;margin:0px;padding:0px;" frameborder=0 name='welcome' width="100%" height="100%" scrolling="yes" src="./shopgoods_list.php"></iframe>
	</div>
	<div id="mainTt">
		<a href="javascript:history.back(-1);" class="icon-back" style="margin-right: 5px;" title="返回"></a>
		<a href="javascript:void(0)" onclick="document.getElementById('contentFrm').contentWindow.location.reload(true);" class="icon-reload" style="margin-right: 5px;" title="刷新"></a>
	</div>
</body>
</html>