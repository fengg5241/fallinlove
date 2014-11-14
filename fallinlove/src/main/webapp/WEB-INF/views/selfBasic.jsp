<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
<meta name="keywords" content="交友,交友网,征婚交友,网上交友,征婚,征婚网,征婚交友网,交友中心,婚恋交友">
<meta name="description" content="青春不常在，抓紧谈恋爱！缘分可遇也可求，该出手时就出手。世纪佳缘是严肃婚恋的交友平台，提供丰富多彩的交友征婚活动，1亿会员，让缘分千万里挑一！">
<title>基本资料_世纪佳缘交友网</title>
<link href="../../resources/css/style.css" type="text/css" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../../resources/css/jy_ad.css">



<script src="../../resources/js/beacon.js" async=""></script><script type="text/javascript" src="../../resources/js/jy_ad.js"></script>
<script src="../../resources/js/global.js" type="text/javascript"></script>
<script src="../../resources/js/pv.js" type="text/javascript"></script><!--统计-->
<script type="text/javascript" src="../../resources/js/JY.js"></script><!--佳缘桌面弹层开始--><link href="../../resources/css/layer.css" rel="stylesheet" type="text/css"><script src="../../resources/js/clickonce.js" type="text/javascript"></script><script src="../../resources/js/jquery-1.js" type="text/javascript"></script><style media="screen" type="text/css">#altContent {visibility:hidden}</style></head><body><div class="layerTable" id="layerTable" style="display:none;"><div class="layerTableTop"><a href="javascript:hidelayerTable(0)" class="layerTableClose"></a></div><div class="layerTableBody"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td><a href="javascript:hidelayerTable(2)" class="layerTableButton"></a></td><td><a href="javascript:hidelayerTable(1)" class="layerTableLink">查看详情</a></td><td><a href="javascript:hidelayerTable(0)" class="layerTableLink">以后再说</a></td></tr></tbody></table></div></div><script type="text/javascript">function hidelayerTable(butt){document.getElementById("layerTable").style.display="none";document.getElementById("header_login_pop_mask").style.display="none";location.href=JY.url.getChannelUrl("usercp");if(butt==1){window.open("http://webim.jiayuan.com/client/download.php");}if(butt==2){NavigateTo("jiayuan.com");}}</script><!--佳缘桌面弹层结束-->
<script type="text/javascript">
var ie = navigator.userAgent.toLowerCase().indexOf('msie');
var isChanged = false;


function initAjax()
{
    var ajax = false;
    if(window.XMLHttpRequest)
    {
        ajax = new XMLHttpRequest();
    }else{
        try{
            ajax = new ActiveXObject('Msxml2.XMLHTTP');
        }catch(e){
            ajax = new ActiveXObject('Microsoft.XMLHTTP');
        }
    }
    return ajax;
}

function show_category(_id){
	_obj = document.getElementById(_id);
	if(_obj.style.display == "none"){
		_obj.style.display = "";
	}else{
		_obj.style.display = "none";
	}
}

function openDiv(_id, _width, _height){
	var m = "mask";
	if(document.getElementById(m)) document.body.removeChild(document.getElementById(m));
	var newMask = document.createElement("div");
	newMask.id = m;
	newMask.style.position = "absolute";
	newMask.style.zIndex = "1";
	_scrollWidth = Math.max(document.body.scrollWidth,document.documentElement.scrollWidth);
	_scrollHeight = Math.max(document.body.scrollHeight,document.documentElement.scrollHeight);
	newMask.style.width = _scrollWidth + "px";
	newMask.style.height = _scrollHeight + "px";
	newMask.style.top = "0px";
	newMask.style.left = "0px";
	newMask.style.background = "#33393C";
	newMask.style.filter = "alpha(opacity=40)";
	newMask.style.opacity = "0.30";
	document.body.appendChild(newMask);

	_width = _width ? _width : 488;
	_height = _height ? _height : 314;
	showDiv = document.getElementById(_id);
	showDiv.style.display = "block";
	showDiv.style.position = "absolute";
	showDiv.style.zIndex = "9999";
	showDivWidth = _width;
	showDivHeight = _height;
	var scrollTop = document.documentElement.scrollTop || window.pageYOffset || 0;
	showDiv.style.top = String(scrollTop + document.documentElement.clientHeight/2 - showDivHeight/2) + "px";
	showDiv.style.left = (document.documentElement.scrollLeft + document.documentElement.clientWidth/2 -  showDivWidth/2) + "px";
}

function closeDiv(_id){
	document.getElementById("mask").style.display = "none";
	document.getElementById(_id).style.display = "none";
}

function select_changed(){
	isChanged = true;
}

function change(_num){
	isChanged = true;
}

function check_count(_obj, _num)
{
	var chks = document.getElementsByName(_obj.name);
	var count = 0;
	for(var i=0; i<chks.length; i++)
	{
		if(chks[i].checked == true)
		{
			count ++;
		}
		if(count > _num)
		{
			_obj.checked = false;
			alert('最多只能选择' + _num + '项');
			return false;
		}
	}
}
</script>
<script type="text/javascript" src="../../resources/js/love_location_array.js"></script>
<script type="text/javascript" src="../../resources/js/location.js"></script>
<script type="text/javascript" src="../../resources/js/validate.js"></script>
<script type="text/javascript">
var AJXhttp;
function build_second(first_value,second_id,second_array)
{
	document.getElementById(second_id).innerHTML = "";
	var k=1000;
	for( key in second_array[first_value]){
		var sOption = document.createElement("OPTION");
		sOption.text = second_array[first_value][key];
		sOption.value = key;
		document.getElementById(second_id).options.add(sOption,k);
	}
	k--;
}
function build_select(first_id,second_id,first_array,second_array,def_value)
{
	if(def_value == "" || def_value == "0")
	{
		var k=1000;
		for( key in first_array )       {
			var sOption = document.createElement("OPTION");
			sOption.text = first_array[key];
			sOption.value = key;
			document.getElementById(first_id).options.add(sOption,k);
			k--;
		}
	}
	else
	{
		pro_key = def_value.substr(0,2);
		var k=1000;
		for( key in first_array )
		{
			var sOption = document.createElement("OPTION");
			sOption.text = first_array[key];
			sOption.value = key;
			if(pro_key == key)
			{
				sOption.id = "sele_pro"+first_id;
			}
			document.getElementById(first_id).options.add(sOption,k);
			k--;
		}
		document.getElementById("sele_pro"+first_id).selected = true;
		var k=1000;
		for( key in second_array[pro_key] )     {
			var sOption = document.createElement("OPTION");
			sOption.text = second_array[pro_key][key];
			sOption.value = key;
			if(def_value == key)
			{
				sOption.id = "sele_city"+second_id;
			}
			document.getElementById(second_id).options.add(sOption,k);
		}
		k--;
		document.getElementById("sele_city"+second_id).selected = true;
	}
}

function show_info_div(_type, _id){
	var _info_div = document.getElementById(_id);
	var _info_div_content = document.getElementById(_id+"_content");
	if(ie > 0){
		var _info_div_top = 220;
	}else{
		var _info_div_top = 210;
	}
	var _info_div_left = 290;
	var _content = "";
	var _up_top = 0;

	switch(_type){
		case 1:
			if(ie > 0){
				_up_top = 30;
			}else{
				_up_top = 26;
			}
			_content = '<dt>为保证您的征友严肃性，您现在不能修改此项，可能的原因是：</dt><dd>1、您距离上次修改所在地未满6个月</dd><dd>2、您正在”光明榜“服务期内</dd>';
			break;
		case "usercp_profile_incometime":
			if(ie > 0){
				_up_top = 150;
			}else{
				_up_top = 150;
			}
			_content = '<dt>为保证您的征友严肃性，您现在不能修改此项，可能的原因是：</dt><dd>30天内只能向上调整一次月薪</dd>';
			break;
		case "usercp_profile_incometoomuch":
			if(ie > 0){
				_up_top = 150;
			}else{
				_up_top = 150;
			}
			_content = '<dt>为保证您的征友严肃性，您现在不能修改此项，可能的原因是：</dt><dd>每次只能向上调一个档次</dd>';
			break;
		case "usercp_profile_valueerr":
			if(ie > 0){
				_up_top = 150;
			}else{
				_up_top = 150;
			}
			_content = '<dt>为保证您的征友严肃性，您现在不能修改此项，可能的原因是：</dt><dd>错误的选项</dd>';
			break;
		case "idcard":
			if(ie > 0){
				_up_top = 555;
			}else{
				_up_top = 512;
			}
			_content = '<dt>为保证您的征友严肃性，您现在不能修改此项，可能的原因是：</dt><dd>'+alertmsg+'</dd>';
			break;
		case "mobile":
			if(ie > 0){
				_up_top = 615;
			}else{
				_up_top = 564;
			}
			_content = '<dt>为保证您的征友严肃性，您现在不能修改此项，可能的原因是：</dt><dd>请填写正确的手机号码</dd>';
			break;
		case "qq":
			if(ie > 0){
				_up_top = 675;
			}else{
				_up_top = 616;
			}
			_content = '<dt>为保证您的征友严肃性，您现在不能修改此项，可能的原因是：</dt><dd>请填写正确的qq</dd>';
			break;
		case "msn":
			if(ie > 0){
				_up_top = 705;
			}else{
				_up_top = 668;
			}
			_content = '<dt>为保证您的征友严肃性，您现在不能修改此项，可能的原因是：</dt><dd>请填写正确的msn</dd>';
			break;
		default:
			if(ie > 0){
				_up_top = 30;
			}else{
				_up_top = 26;
			}
			_content = '<dt>为保证您的征友严肃性，您现在不能修改此项，可能的原因是：</dt><dd>1、您距离上次修改所在地未满6个月</dd><dd>2、您正在”光明榜“服务期内</dd>';
	}
	
	_info_div.style.top = _info_div_top + _up_top + "px";
	_info_div.style.left = _info_div_left + "px";
	_info_div_content.innerHTML = _content;
	_info_div.style.display = "";
}

function validate(_id, _value){
	 AJXhttp = initAjax();

     AJXhttp.open("GET","profile_validate.php?type="+_id+"&value="+_value,true);
     AJXhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	 AJXhttp.onreadystatechange = function(){validate_callback(_id)};
     AJXhttp.send(null);
}

function validate_callback(_id){
	if(AJXhttp.readyState==4) {
		var text = AJXhttp.responseText;
		if (text != "success") {
			show_info_div(text, "info_div");
			document.getElementById(_id).value = 40;
		}
	}
}

function check_post(){
	var form_obj = document.getElementById("form_base");
	var can_form = false;
	if(document.getElementById("change_area_div").style.display != "none"){
		var radio_obj = document.getElementsByName("change_area_reason");
		for(var i=0; i<radio_obj.length; i++){
			if(radio_obj[i].checked == true){
				form_obj.change_area_reason.value = radio_obj[i].value;
				can_form = true;
			}
		}

		if(!can_form){
			alert("请选择变更原因");
			return false;
		}
	}

	if(sub_idcard == false){
		alert("请填写正确的身份证！");
		document.getElementById("id_card_id").focus();
		return false;
	}

	if(sub_mobile == false){
		alert("请填写正确的手机号码！");
		document.getElementById("mobile").focus();
		return false;
	}

	if(sub_qq == false){
		alert("请填写正确的qq！");
		document.getElementById("qq").focus();
		return false;
	}

	if(sub_msn == false){
		alert("请填写正确的msn！");
		document.getElementById("msn").focus();
		return false;
	}

	if(document.getElementById("profile_location").value == 0 || document.getElementById("profile_sublocation").value.substr(2,2) == 0){
		alert("请选择正确的所在地区！");
		document.getElementById("profile_location").focus();
		return false;
	}

	if(can_form){
		openDiv('to_change_match');
		return false;
	}
}

function skip(){
	if(isChanged){
		if(confirm("您尚有未保存的资料，确定要离开吗？")){
			location.href='note.php';
		}
	}else{
		location.href='note.php';
	}
}

function check_mobile(_input){
	if(_input == ""){
		return true;
	}

	var reg2 = /^((13[0-9]{9})|(14[0-9]{9})|(15[0-9]{9})|(18[0-9]{9}))$/;
	if(!_input.match(reg2))
	{
		return false;
	}
	return true;
}

function check_qq(_input){
	if(_input == ""){
		return true;
	}

	var reg2 = /[0-9]{5,11}/;
	if(!_input.match(reg2))
	{
		return false;
	}
	return true;
}

//检测email
function check_msn(_input)
{
	if(_input == ""){
		return true;
	}

 	var reg2 = /^[_a-zA-Z0-9\-\.]+@([\-_a-zA-Z0-9]+\.)+[a-zA-Z0-9]{2,3}$/;
	if(!_input.match(reg2))
	{
		return false;
	}
	return true;
}

var sub_idcard = true;
var sub_mobile = true;
var sub_qq = true;
var sub_msn = true;
function check_validate(_type, _input){
	switch(_type){
		case "idcard":
			if(!checkIdcard(_input, "yes")){
				show_info_div("idcard", "info_div");
				sub_idcard = false;
			}else{
				document.getElementById("info_div").style.display = "none";
				sub_idcard = true;
			}
			break;
		case "mobile":
			if(!check_mobile(_input)){
				show_info_div("mobile", "info_div");
				sub_mobile = false;
			}else{
				document.getElementById("info_div").style.display = "none";
				sub_mobile = true;
			}
			break;
		case "qq":
			if(!check_qq(_input)){
				show_info_div("qq", "info_div");
				sub_qq = false;
			}else{
				document.getElementById("info_div").style.display = "none";
				sub_qq = true;
			}
			break;
		case "msn":
			if(!check_msn(_input)){
				show_info_div("msn", "info_div");
				sub_msn = false;
			}else{
				document.getElementById("info_div").style.display = "none";
				sub_msn = true;
			}
			break;
	}
}

function form_submit(){
	closeDiv('to_change_match');
	document.getElementById('form_base').submit();
}
</script>




<!-- 标准头 开始 -->
<script type="text/javascript">
//会员信息对象
window.HEAD_USER = {};
HEAD_USER.uid = 0;
//通用头功能函数对象
var jy_head_function = {};
jy_head_function.in_arry = function(array, value){//判断value是否在数组array中
var i = array.length;
while(i--){
if(array[i] === value){
return true; 
}
}
return false;
}
jy_head_function.get_top_domain = function(){//获取顶级域名
var domain_suffix = ['com','cn','net'];//域名后缀验证配置，新后缀自行添加
var host_name= location.hostname.toLowerCase();
var host_arr = host_name.split('.');
var host_len = host_arr.length;
var head_top_domain = '';
for(var i=host_len-1; i>=0; i--){
if(this.in_arry(domain_suffix, host_arr[i])){
head_top_domain = '.' + host_arr[i] + head_top_domain;
}else{
head_top_domain = host_arr[i] + head_top_domain;
break;
}
}
return head_top_domain;
};
jy_head_function.get_userinfo = function(){//获取会员信息
HEAD_USER.ip_loc = this.get_cookie("ip_loc");//当前会员IP对应的地区
var profile = this.get_cookie("PROFILE");
if(profile && profile.length > 10){
//说明：0,UID;1,昵称;2,性别;3,头像地址;4,头像标记;5,认证;6,新旧会员标记;7,头像图片名称;8,征友状态;9,俱乐部等级;10,金豆数
var arr = profile.split(":");
if(/^\d{7,10}$/.test(arr[0])){
HEAD_USER.uid = arr[0];//UID
HEAD_USER.nickname = decodeURIComponent(arr[1]);//昵称
HEAD_USER.sex = arr[2];//性别
HEAD_USER.avatar_flag = arr[4];//头像状态标记
HEAD_USER.avatar = "http://" + arr[3] + "/" + arr[7];//头像
HEAD_USER.certify = arr[5];//认证
HEAD_USER.type = arr[6];//新旧会员标记类型new_msg
HEAD_USER.status = arr[8];//征友状态
HEAD_USER.level = '';//俱乐部等级
HEAD_USER.bean = 0;//俱乐部金豆数
if(arr.length >= 10){
HEAD_USER.level = arr[9];
HEAD_USER.bean = arr[10];
}
HEAD_USER.work_location = 0;
HEAD_USER.work_sublocation = 0;
work_loc = this.get_cookie("myloc");
if(work_loc && work_loc.length > 3){
work_loc = work_loc.split("|");
HEAD_USER.work_location = work_loc[0];//省
HEAD_USER.work_sublocation = work_loc[1];//市
}
HEAD_USER.age = this.get_cookie("myage");//年龄
HEAD_USER.income = this.get_cookie("myincome");//收入
HEAD_USER.last_login_time = this.get_cookie("last_login_time");//最后登录时间
}
}
return HEAD_USER;
};
jy_head_function.get_custom_avatar = function(avatar_url){//获取小尺寸的头像
sex = avatar_url.substr(-5);
sex = sex.substr(0, 1);	//获取头像后缀
var avatar_url_array = new Array();
if(sex == 'p'){	//有头像，获取其他尺寸
avatar_url_array['avatar_n'] = avatar_url.replace('_p.jpg', '_n.jpg');
avatar_url_array['avatar_s'] = avatar_url.replace('_p.jpg', '_s.jpg');
}else{
avatar_url_array['avatar_n'] = avatar_url.replace('_' + sex + '.jpg', '_' + sex + '_n.jpg');
avatar_url_array['avatar_s'] = avatar_url.replace('_' + sex + '.jpg', '_' + sex + '_s.jpg');
}
return avatar_url_array;
};
jy_head_function.get_channel = function(){//获取频道标识
host_name = location.hostname.toLowerCase();//当前域名
var channel_dir_array = Array('/usercp/','/msg/','/parties/wap_clients/');//频道目录数组
var head_current_channel = host_name.split('.')[0];//获取二级子域名，处理当前头部选中链接样式
//域名转换标识
switch(head_current_channel){
case 'www':
//首页，个人资料页，小龙女频道，爱情测试，我的佳缘（非我的佳缘首页），信件，手机频道
var head_href = window.location.href;		//获取当前URL
var ch_select = 0;							//频道选择标记
for(var ch_dir in channel_dir_array){
if(channel_dir_array.hasOwnProperty(ch_dir)){//遍历时限制只遍历自身属性
if(head_href.indexOf(channel_dir_array[ch_dir]) >= 0){		//根据当前的URL获取频道
ch_select = 1;
break;
}
}
}
if(ch_select == 1){
switch(channel_dir_array[ch_dir]){
case '/usercp/':
case '/msg/':
head_current_channel = 'usercp';
break;
case '/parties/wap_clients/':
head_current_channel = 'mobile';
break;
}
}
break;
case 'msg':
head_current_channel = 'usercp';
break;
case 'xingfu':
head_current_channel = 'love';
break;
}
return head_current_channel;
};
jy_head_function.get_cookie = function(c_name){//获取指定COOKIE内容
if(document.cookie.length > 0){
c_start = document.cookie.indexOf(c_name + "=");
if(c_start != -1){ 
c_start = c_start + c_name.length + 1;
c_end = document.cookie.indexOf(";", c_start);
if(c_end == -1){
c_end = document.cookie.length;
}
return decodeURIComponent(document.cookie.substring(c_start, c_end));
}
}
return null;
};
jy_head_function.set_cookie = function(c_name, value, hours){//写入COOKIE，单位为小时
var expire = "";
if(hours != null && !isNaN(hours)){
expire = new Date((new Date()).getTime() + hours * 3600 * 1000);
expire = "; expires=" + expire.toGMTString();
}
document.cookie = c_name + "=" + escape(value) + expire + "; domain=" + jy_head_function.get_top_domain() + "; path=/";
};
jy_head_function.format_tpl = function(tpl){//格式化替换输出导航信息
for(key in common_nav_array){
if(common_nav_array.hasOwnProperty(key)){
tpl = tpl.replace(eval("/\{"+key+"\}/g"), common_nav_array[key]);
}
}
return tpl;
};
jy_head_function.format_date = function(t){//时间戳转换标准日期格式
var t		= new Date(t * 1000);//JS时间戳是毫秒单位
var year	= t.getFullYear();
var month	= t.getMonth() + 1;
var date	= t.getDate();
var hour	= t.getHours();
var minute	= t.getMinutes();
var second	= t.getSeconds();
return year + "-" + month + "-" + date + " " + hour + ":" + minute + ":" + second;
};
jy_head_function.list = function(obj){//查看对象、数组所有的属性和方法
var properties = "" ;
for(var p in obj){	//开始遍历
if(obj.hasOwnProperty(p)){
if(typeof(obj[p]) == " function " ){
obj[p]();
}else{ //p为属性名称，obj[p]为对应属性的值
properties += p + " = " + obj[p] + "\r\n" ;
}
}
}
return properties;
};
jy_head_function.set_head_nav_link = function(v){//设置导航链接显示的状态
if(v == 'show' || v == 1){
if(document.getElementById('head_white_nav')){
document.getElementById('head_white_nav').style.display = "inline";
document.getElementById('head_white_logo').style.background = 'url('+common_nav_array['img_url']+'w4/common/i/head/jycm_zt_vline.png) no-repeat top right';
}else if(document.getElementById('head_red_simple_nav')){
document.getElementById('head_red_simple_nav').style.display = "";
}else if(document.getElementById('head_blue_simple_nav')){
document.getElementById('head_blue_simple_nav').style.display = "";
}
}else if(v == 'hide' || v == 0){
if(document.getElementById('head_white_nav')){
document.getElementById('head_white_nav').style.display = "none";
document.getElementById('head_white_logo').style.background = 'none';
}else if(document.getElementById('head_red_simple_nav')){
document.getElementById('head_red_simple_nav').style.display = "none";
}else if(document.getElementById('head_blue_simple_nav')){
document.getElementById('head_blue_simple_nav').style.display = "none";
}
}
};
jy_head_function.set_head_nav_user = function(v){//设置导航用户信息显示的状态
if(v == 'show' || v == 1){
if(document.getElementById('head_white_user')){
document.getElementById('head_white_user').style.display = "inline";
}else if(document.getElementById('head_red_simple_user')){
document.getElementById('head_red_simple_user').style.display = "";
}else if(document.getElementById('head_blue_simple_user')){
document.getElementById('head_blue_simple_user').style.display = "";
}
}else if(v == 'hide' || v == 0){
if(document.getElementById('head_white_user')){
document.getElementById('head_white_user').style.display = "none";
}else if(document.getElementById('head_red_simple_user')){
document.getElementById('head_red_simple_user').style.display = "none";
}else if(document.getElementById('head_blue_simple_user')){
document.getElementById('head_blue_simple_user').style.display = "none";
}
}
};
jy_head_function.set_head_title = function(title){//修改导航头部标题部分
if(document.getElementById('head_blue_simple')){
document.getElementById('head_blue_simple').innerHTML = title;
document.getElementById('head_blue_simple').style.display = "";
}else if(document.getElementById('head_red_simple')){
document.getElementById('head_red_simple').innerHTML = title;
document.getElementById('head_red_simple').style.display = "";
}
};
jy_head_function.strlen_ch = function(str){//返回字符串长度，英文1，汉字2
    var real_length = 0, len = str.length, char_code = -1;
    for(var i=0; i<len; i++){
        char_code = str.charCodeAt(i);
        if(char_code >= 0 && char_code <= 128) real_length += 1;
        else real_length += 2;
    }
    return real_length;
};
jy_head_function.substr_ch = function(str, cut_len){//截取指定长度的字符串，英文1，汉字2
var real_length = 0, s = "", len = str.length, char_code = -1;
for(var i=0; i<len; i++){
char_code = str.charCodeAt(i);
if(char_code >= 0 && char_code <= 128){
real_length++;
}else{ 
real_length += 2;
}
s += str.charAt(i);
if(real_length >= cut_len){
return s ;
}
}
return s;
};
jy_head_function.click_pv = function(head_nav_flag){//通用头自定义的小图片统计方法
var head_navf_url = "http://pv2.jyimg.com/any/";
var head_navArr = ["a","b","c","d","e","f","g","h","i","g","k","l","m","n","o","p","q","r","s","t","u","v","x","y","z"];
    var head_navn = Math.floor(Math.random() * head_navArr.length + 1) - 1;   
    var head_navurl = head_navf_url + head_navArr[head_navn] + ".gif?|" + head_nav_flag + "|" + new Date().getTime() + "|";
var head_navsender = new Image();
head_navsender.onload = function(){head_navclear(this);};
head_navsender.onerror = function(){head_navclear(this);};
head_navsender.onabort = function(){head_navclear(this);};
head_navsender.src = head_navurl;
function head_navclear(obj){
obj.onerror = null;
obj.onload = null;
obj.onabort = null;
obj = null;
}
};
//获取会员登录信息
jy_head_function.get_userinfo();

//导航配置
var jy_img_domain = 'mi'+'uu.'+'cn';//图片顶级域名
var jy_top_domain = jy_head_function.get_top_domain();//佳缘站全站顶级域名
var izx_top_domain= 'izhenxin.dev';//爱真心等级域名
if(jy_top_domain == '' || jy_top_domain == 'jiayuan.com'){
jy_top_domain = 'jiayuan.com';
jy_img_domain = 'jyimg.com';
izx_top_domain= 'izhenxin.com';
}
//配置域名链接
var common_nav_array = new Array();
common_nav_array['www_tag']		= "首页";								//标签名
common_nav_array['www_url']		= "http://www."+jy_top_domain+"/";		//链接
common_nav_array['www_css']		= "";									//指定样式
common_nav_array['www_sta']		= "|head_navigation_www|";				//点击统计标识
common_nav_array['usercp_tag']	= "我的佳缘";
common_nav_array['usercp_url']	= "http://usercp."+jy_top_domain+"/";
common_nav_array['usercp_css']	= "";
common_nav_array['usercp_sta']	= "|head_navigation_usercp|";
common_nav_array['club_tag']	= "俱乐部";
common_nav_array['club_url']	= "http://www."+jy_top_domain+"/club/";
common_nav_array['club_css']	= "";
common_nav_array['club_sta']	= "|head_navigation_club|";
common_nav_array['search_tag']	= "搜索";
common_nav_array['search_url']	= "http://search."+jy_top_domain+"/v2/";
common_nav_array['search_css']	= "";
common_nav_array['search_sta']	= "|head_navigation_search|";
common_nav_array['new_tag']		= "新会员";
common_nav_array['new_url']		= "http://search."+jy_top_domain+"/v2/new.php";
common_nav_array['new_css']		= "";
common_nav_array['new_sta']		= "|head_navigation_new|";
common_nav_array['online_tag']	= "聊天";
common_nav_array['online_url']	= "http://search."+jy_top_domain+"/v2/online.php";
common_nav_array['online_css']	= "";
common_nav_array['online_sta']	= "|head_navigation_online|";
common_nav_array['party_tag']	= "活动";
common_nav_array['party_url']	= "http://party."+jy_top_domain+"/";
common_nav_array['party_css']	= "";
common_nav_array['party_sta']	= "|head_navigation_party|";
common_nav_array['diary_tag']	= "两性";
common_nav_array['diary_url']	= "http://diary."+jy_top_domain+"/";
common_nav_array['diary_css']	= "";
common_nav_array['diary_sta']	= "|head_navigation_diary|";
common_nav_array['caipiao_tag']	= "彩票";
common_nav_array['caipiao_url']	= "http://caipiao."+jy_top_domain+"/";
common_nav_array['caipiao_css']	= "";
common_nav_array['caipiao_sta']	= "|head_navigation_caipiao|";
common_nav_array['game_tag']	= "游戏";
common_nav_array['game_url']	= "http://game."+jy_top_domain+"/";
common_nav_array['game_css']	= "";
common_nav_array['game_sta']	= "|head_navigation_game|";
common_nav_array['love_tag']	= "晒幸福";
common_nav_array['love_url']	= "http://love."+jy_top_domain+"/";
common_nav_array['love_css']	= "";
common_nav_array['love_sta']	= "|head_navigation_love|";
common_nav_array['paper_tag']	= "爱情测试";
common_nav_array['paper_url']	= "http://www."+jy_top_domain+"/paper/";
common_nav_array['paper_css']	= "";
common_nav_array['paper_sta']	= "|head_navigation_paper|";
common_nav_array['master_tag']	= "斑竹小龙女";
common_nav_array['master_url']	= "http://www."+jy_top_domain+"/master/";
common_nav_array['master_css']	= "";
common_nav_array['master_sta']	= "|head_navigation_master|";
common_nav_array['reg_tag']		= "注册";
common_nav_array['reg_url']		= "http://reg."+jy_top_domain+"/";
common_nav_array['reg_css']		= "";
common_nav_array['reg_sta']		= "|head_navigation_reg|";
common_nav_array['login_tag']	= "登录";
common_nav_array['login_url']	= "http://login."+jy_top_domain+"/";
common_nav_array['login_css']	= "";
common_nav_array['login_sta']	= "|head_navigation_login|";
common_nav_array['liehun_tag']	= "红娘一对一";
common_nav_array['liehun_url']	= "http://vip."+jy_top_domain+"/";
common_nav_array['liehun_css']	= "";
common_nav_array['liehun_sta']	= "|head_navigation_liehun|"; 
common_nav_array['izhenxin_tag']= "爱真心";
common_nav_array['izhenxin_url']= "http://www."+izx_top_domain+"/login/getSign/?url=http%3A%2F%2Fwww."+jy_top_domain+"%2Fusercp%2Fiz_login.php%3Furl%3Dhttp%253A%252F%252Fwww."+izx_top_domain+"%252F&from=JYDH";
common_nav_array['izhenxin_css']= "";
common_nav_array['izhenxin_sta']= "|head_navigation_izhenxin|";
common_nav_array['extend_tag']	= "爱真心";
common_nav_array['extend_url']	= "http://www."+izx_top_domain+"/login/getSign/?url=http%3A%2F%2Fwww."+jy_top_domain+"%2Fusercp%2Fiz_login.php%3Furl%3Dhttp%253A%252F%252Fwww."+izx_top_domain+"%252F&from=top"
common_nav_array['extend_url2']	= "http://www."+izx_top_domain+"/login/getSign/?url=http%3A%2F%2Fwww."+jy_top_domain+"/usercp/iz_login.php&from=top";
common_nav_array['extend_url3']	= "http://www."+izx_top_domain+"/register/landingpagetw";
common_nav_array['extend_css']	= "";
common_nav_array['extend_sta']	= "|head_navigation_mobile|";
common_nav_array['im_tag']		= "佳缘佳信";
common_nav_array['im_url']		= "http://im."+jy_top_domain+"/";
common_nav_array['im_css']		= "";
common_nav_array['im_sta']		= "|head_navigation_im|";
common_nav_array['img_url']		= "http://images1."+jy_img_domain+"/";

var mydomain = "www." + jy_top_domain;//拼完整www域名

var current_nav_flag = jy_head_function.get_channel() + '_css';
//设置当前频道导航选中样式
common_nav_array[current_nav_flag] = 'head_nav_cur';
</script>
<script type="text/javascript" src="../../resources/js/jiayuan_logo_config.js"></script>
<script type="text/javascript" src="../../resources/js/JY_Alert.js"></script>
<!--[if lte IE 6]>
<script type="text/javascript" src="http://images1.jyimg.com/w4/common/j/DD_belatedPNG_0.0.8a_IE6.js"></script>
<![endif]--> <script type="text/javascript">
//获取登录信息和会员基本信息
if(HEAD_USER){
profile				= HEAD_USER;			//获取用户信息，兼容旧页面（页面中请不要继续使用）
head_user_uid		= HEAD_USER.uid;		//UID
head_user_nickname	= HEAD_USER.nickname;	//昵称
}else{
head_user_uid	= 0;
}
</script>
<style type="text/css">
/*common*/
*{margin:0;padding:0}
#jycm_top{font-size:12px}
#jycm_top input{outline:none}
#jycm_top a{font-size:12px;color:#fff;outline:none}
#jycm_top i,#jycm_top strong,#jycm_head i,#jycm_head strong{font-style:normal;font-weight:normal}
#jycm_top p, #jycm_top ul, #jycm_head p, #jycm_head ul{margin:0;padding:0}
#jycm_top img, #jycm_head img{border:0}
#jycm_top div.w1000, #jycm_head div.jycm_head_top, #jycm_head div.jycm_head_nav{text-align:left}
#jycm_top .va_middle{vertical-align:middle}
.fn-clear:before,.fn-clear:after{content:"";display:table}
.fn-clear:after{clear:both}
.fn-clear{zoom:1}
/*TOP*/
#jycm_top,#jycm_head{text-align:center;width:auto;width:100%;min-width:970px}
#jycm_top{background-color:#444;font-size:12px;color:#fff;position:relative;font-family:\5b8b\4f53,simsun,"宋体";z-index:9}
#jycm_top div,#jycm_top p{line-height:40px;color:#fff}
#jycm_top a.color_fff{color:#fff;text-decoration:underline;font-size:12px;margin-left:6px}
#jycm_top a.color_fff:hover{color:#fbb4bd;text-decoration:underline}
#jycm_top span.color_fff{color:#fff;font-size:12px}
#jycm_top .color_fff:hover span{color:#fbb4bd}
#jycm_top div.w1000{width:970px;margin:0 auto;height:40px;line-height:40px}
/*top-left*/
#jycm_top .jycm_top_wel{width:400px;height:40px;overflow:hidden}
#jycm_top .jycm_top_wel,#jycm_top .jycm_top_wel p{display:inline;float:left;font-size:12px;line-height:40px}
#jycm_top .jycm_top_wel p , .jycm_top_right p{clear:none}
#jycm_top .jycm_top_wel p{margin-right:25px;color:#fff}
#jycm_top .jycm_top_wel p#head_user_nickname{margin-right:25px;margin-left:10px}
#jycm_top .jycm_top_wel p#head_user_logout{margin-right:0}
#jycm_top .jycm_top_wel p#head_user_logout a.color_fff,#jycm_top .jycm_top_wel p#head_user_nickname a.color_fff{margin-left:0}
/*member*/
#jycm_top .jycm_top_wel .memberIcon{padding:12px 0 0 0;margin-right:8px}
#jycm_top .jycm_top_wel .memberIcon a{background:url(http://images1.jyimg.com/w4/club/i/bg_grade.gif) no-repeat 0 0;width:43px;height:16px;display:inline-block;line-height:999em;overflow:hidden}
#jycm_top .jycm_top_wel .iconS1 a{background-position:0 0}
#jycm_top .jycm_top_wel .iconS2 a{background-position:0 -20px}
#jycm_top .jycm_top_wel .iconS3 a{background-position:0 -40px}
#jycm_top .jycm_top_wel .iconS4 a{background-position:0 -60px}
#jycm_top .jycm_top_wel .iconS5 a{background-position:0 -80px}
/*top-right*/
#jycm_top .jycm_top_right,#jycm_top .jycm_top_right p,#jycm_top .jycm_top_izx{display:inline;float:right}
#jycm_top .jycm_top_right p{margin-right:25px;line-height:40px;color:#fff}
#jycm_top .jy_top_icon{background:url(http://images1.jyimg.com/w4/common/i/head/jy_top_icon.png) no-repeat 0 0;_background:url(http://images1.jyimg.com/w4/common/i/head/jy_top_icon.gif) no-repeat 0 0;float:left;width:16px;height:16px;vertical-align:middle;margin:12px 6px 0 0}
#jycm_top .jy_txt{display:inline-block}
#jycm_top span.jy_txt{vertical-align:middle;color:#fff;float:left;/*height:39px;line-height:40px;*/}
#jycm_top span.jy_txt span{color:#fff;margin-right:6px}
#jycm_top .jycm_top_right a.color_fff,#jycm_top .jycm_top_right a.color_fff:hover{margin-left:0;cursor:pointer;text-decoration:none}
/*红娘*/
#jycm_top .jycm_top_right p.jycm_top_zx{padding:0 0 0 10px;background-position:0 0;margin-right:25px}
#jycm_top .jycm_top_right p.jycm_top_zx strong{font-weight:normal;color:#fff}
#jycm_top .jycm_top_right p.jycm_top_zx span{line-height:40px}
/*收藏本站*/
#jycm_top .jycm_top_right .jycm_top_collect{margin-right:11px}
#jycm_top .jy_icon_collect{background-position:-21px 0;_background-position:-21px -1px}
.jycm_top_collect .va_middle,.jycm_top_jx .va_middle{line-height:40px}
/*佳缘佳信*/
#jycm_top .jy_icon_jiaxin{background-position:-80px 0}
/*城市*/
#jycm_head .jycm_head_clickCity{padding:0 2px}
/*head*/
#jycm_head{background-color:#fff;margin-bottom:10px}
#jycm_head a{outline:none}
#jycm_head .jycm_head_top{width:970px;height:70px;margin:0 auto;padding:6px 0}
#jycm_head .jycm_head_top h1.logo{display:inline;float:left;margin:0;padding:0;height:70px;overflow:hidden}
#jycm_head .jycm_head_top h1.logo a{vertical-align:top;display:inline-block}
#jycm_head .jycm_head_top #jy_head_city_select{display:inline;position:relative;float:left;width:60px;height:70px;margin:0 0 0 20px;padding:0;z-index:2}
#jycm_head .jycm_head_ad{text-align:right;height:70px;display:inline;float:right;overflow:hidden}
/*#jycm_head .jycm_head_ad #jycm_head_ad_left{width:470px;height:70px;float:left;overflow:hidden}*/
#jycm_head .jycm_head_ad #ad_pos_70{width:215px;height:70px;float:right;overflow:hidden}
/*nav*/
#jycm_head .jycm_head_navBg{border-bottom:1px solid #d9d9d9;background:#fff}
#jycm_head .jycm_head_nav{width:970px;height:36px;line-height:normal;margin:0 auto;font-size:14px;word-wrap:normal}
/*nav left*/
#jycm_head .jycm_head_nav ul{float:left;list-style-type:none}
#jycm_head .jycm_head_nav ul li{display:inline;float:left;line-height:normal;background:none;text-indent:0;overflow:visible;position:relative;margin-right:1px;padding:0}
#jycm_head .jycm_head_nav ul li a{color:#333;font-size:16px;text-decoration:none;font-family:"微软雅黑";padding:2px 10px 0;display:inline-block;height:32px;_float:left}
#jycm_head .jycm_head_nav ul li a:hover{text-decoration:none;border-bottom:3px solid #ff5b70}
#jycm_head .jycm_head_nav ul li  .jy_top_hot{position:absolute;right:2px;top:-13px}
#jycm_head .jycm_head_nav ul li.head_nav_cur a,#jycm_head .jycm_head_nav ul li.head_nav_cur a:hover{border-bottom:3px solid #ff5b70;color:#ff546a;font-weight:bold}
#jycm_head .jycm_head_nav ul li  .jy_top_hot a,#jycm_head .jycm_head_nav ul li  .jy_top_hot a:hover{padding:0;text-decoration:none;border:0}
#jycm_head .jycm_head_nav ul li .jy_top_hot a{font-size:0;height:auto}
/*nav right*/
#jycm_head .jycm_head_navOthor{display:inline;float:right;line-height:normal}
#jycm_head .jycm_head_navOthor a{color:#888;font-size:16px;font-family:"微软雅黑";text-decoration:none;padding:2px 10px 0;height:32px;float:left}
#jycm_head .jycm_head_navOthor a:hover{text-decoration:none;border-bottom:3px solid #ff5b70}
#jycm_head .jycm_head_navOthor a.jycm_head_nav_azx{margin:0}
#jycm_top .jycm_top_right .jycm_top_jx{margin-right:12px}
/*未登录*/
#jycm_top .jycm_top_form{margin:0;padding:0;display:inline;float:left}
#jycm_top .jycm_top_vline{display:inline;float:left;width:1px;height:40px;color:#dedede;background:url(http://images1.jyimg.com/w4/common/i/head/vline.png) no-repeat left center;_background:url(http://images1.jyimg.com/w4/common/i/head/vline.gif) no-repeat left center;margin:0px 10px}
#jycm_top .jycm_top_login{display:inline;float:left}
#jycm_top .jycm_top_login p{display:inline;float:left;margin:0;padding:0;height:40px;line-height:40px;padding:0 5px 0 0;color:#fff;clear:none}
#jycm_top .jycm_top_login p.jycm_top_zh{margin-left:15px}
#jycm_top .jycm_top_zh span, p.jycm_top_mm span{display:inline;float:left;color:#fff}
#jycm_top .jycm_top_zh input, p.jycm_top_mm input{margin:0;padding:0 0 0 5px;font-size:12px;width:95px;height:16px;line-height:16px;display:inline;float:left;border:2px solid #ededed;margin:10px 0 0 5px;color:#aaa;background-color:#ededed}
#jycm_top .jycm_top_zh input#jycm_focus, p.jycm_top_mm input#jycm_focus{border:2px solid #ffd6db;color:#888}
#jycm_top .jycm_top_login p.jycm_top_zddl{padding:0 5px 0 3px}
#jycm_top .jycm_top_zddl input{display:inline;float:left;margin:14px 6px 0 0;padding:0;*margin:10px 4px 0 0px;_margin:8px 0 0 0 }
#jycm_top .jycm_top_btn_dl{display:inline;float:left;margin:10px 0 0 0;width:50px;height:20px;line-height:21px;text-align:center;color:#fff;background:#0098c2 url(http://images1.jyimg.com/w4/common/i/head/jy_top_btn_dl.png) no-repeat 0 0;_background:#0098c2 url(http://images1.jyimg.com/w4/common/i/head/jy_top_btn_dl.gif) no-repeat 0 0;border:0;cursor:pointer}
#jycm_top .jycm_top_btn_dl:hover{background-position:0 -22px}
#jycm_top .jycm_top_reg{font-size:12px}
#jycm_top .jycm_top_reg a{color:#fff;text-decoration:underline;margin-left:20px}
#jycm_top .jycm_top_login p.jycm_top_login2{margin:0 0 0 20px;padding-right:0;height:40px;line-height:40px}
#jycm_top .jycm_top_login p.jycm_top_login2 .qita_login{vertical-align:middle;display:inline-block}
#jycm_top .jycm_top_login p.jycm_top_login2 a{font-size:0;line-height:normal;margin-left:5px;display:inline-block;width:16px;height:16px;vertical-align:middle;background:url(http://images.jiayuan.com/w4/register/i/qita_login.gif) no-repeat 0 0}
#jycm_top .jycm_top_login p.jycm_top_login2 .openid_qq{background-position:0 0}
#jycm_top .jycm_top_login p.jycm_top_login2 .openid_qq:hover{background-position:0 -16px}
#jycm_top .jycm_top_login p.jycm_top_login2 .openid_weibo{background-position:-16px 0}
#jycm_top .jycm_top_login p.jycm_top_login2 .openid_weibo:hover{background-position:-16px -16px}
#jycm_top .jycm_top_login p.jycm_top_login2 .openid_baidu{background-position:-32px 0}
#jycm_top .jycm_top_login p.jycm_top_login2 .openid_baidu:hover{background-position:-32px -16px}
#jycm_top .jycm_top_login p.jycm_top_login2 .openid_alipay{background-position:-48px 0}
#jycm_top .jycm_top_login p.jycm_top_login2 .openid_alipay:hover{background-position:-48px -16px}
/* 爱真心 */
#jycm_top .jycm_top_izx{margin-right:0;_width:70px;position:relative;*zoom:1}
#jycm_top .jycm_top_izx .jycm_top_izxTit{font-size:12px;padding:0px 12px;text-align:center;margin-right:11px;_width:60px;position:relative;top:1px;height:39px}
#jycm_top .jycm_top_izxTit a{display:block;color:#fff;text-decoration:none}
#jycm_top .jycm_top_izxTit a:hover{text-decoration:none}
#jycm_top .jycm_top_izxTit .icon_izx{background-position:-40px 0}
#jycm_top .jycm_top_izx .jycm_top_izxTit .jy_txt{line-height:38px}
#jycm_top .jycm_top_izx  #izx_point{display:none;position:absolute;top:9px;right:3px;width:10px;height:10px;background:url(http://images1.jyimg.com/w4/common/i/head/remind_b_point.gif) no-repeat}
#jycm_top .jycm_top_izxCn{display:none}
#jycm_top .jycm_top_izxCn li{background:none;text-indent:0}
#jycm_top .jycm_top_izxFocus .jycm_top_izxTit{z-index:9;background-color:#eee;height:39px}
#jycm_top .jycm_top_izxFocus .jycm_top_izxTit a{color:#333;text-decoration:none}
#jycm_top .jycm_top_izxFocus .jycm_top_izxTit .icon_izx{background-position:-60px 0}
#jycm_top .jycm_top_izxFocus .jycm_top_izxCn{display:block;position:absolute;top:40px;right:10px;_right:9px;width:112px;border:1px solid #bbb;border-top:0;z-index:9;padding:6px 0px;*padding:6px 0px 3px;_padding:6px 0px 3px;background:#fff}
#jycm_top .jycm_top_izxFocus .jycm_top_izxCn li{overflow:hidden;zoom:1;height:24px;line-height:24px;font-size:12px}
#jycm_top .jycm_top_izxFocus .jycm_top_izxCn li a{color:#666;padding:0px 8px;font-size:12px;display:inline-block;width:96px;text-decoration:none}
#jycm_top .jycm_top_izxFocus .jycm_top_izxCn li a:hover{background-color:#eee;text-decoration:none}
#jycm_top .jycm_top_izxFocus .jycm_top_izxCn .fl,#jycm_top .jycm_top_izxFocus .jycm_top_izxCn .fr{display:inline;float:left;color:#666;font-size:12px;cursor:pointer;_margin:2px 0;line-height:24px}
#jycm_top .jycm_top_izxFocus .jycm_top_izxCn .fr{float:right}
#jycm_top .jycm_top_izxFocus .jycm_top_izxCn .fr-num{width:30px;margin-top:5px;text-align:center;background:#ff546a;color:#fff;height:14px;line-height:14px;border-radius:10px}
#jycm_top  .jycm_top_izxFocus #izx_point{background:url(http://images1.jyimg.com/w4/common/i/head/remind_w_point.gif) no-repeat}
#jycm_top .jycm_top_izxFocus .color_fff span{color:#333}
#jycm_top .jycm_top_izxFocus .color_fff:hover span{_color:#333}
#jycm_top .jycm_top_izxCn2{display:none;position:absolute;top:40px;_top:42px;right:11px;width:112px;border:1px solid #bbb;border-top:0;z-index:8;padding:3px 0px;background:#fff}
#jycm_top .jycm_top_izxCn2 a{font-size:12px;color:#333}
#jycm_top .jycm_top_izxCn2 a span{padding-left:8px}
#jycm_top .jycm_top_izxCn2 a:hover,#jycm_top .jycm_top_izxCn2 a:hover span{color:#dd1764;font-size:12px}
#jycm_top .jycm_top_izxCn2 a.jycm_top_izxClose{position:absolute;top:5px;right:5px;width:9px;height:9px;font-size:2px;line-height:0px;text-align:left;text-indent:-99999em;background:url(http://images1.jyimg.com/w4/common/i/head/jycm_close.png) no-repeat;_background:url(http://images1.jyimg.com/w4/common/i/head/jycm_close.gif) no-repeat}
#jycm_top .jycm_top_izxCn2 i.point_top{position:absolute;width:12px;height:6px;top:-6px;right:30px;background:url(http://images1.jyimg.com/w4/common/i/head/jycm_head_pointTop.png) no-repeat;_ background:url(http://images1.jyimg.com/w4/common/i/head/jycm_head_pointTop.gif) no-repeat;font-size:0px}
/* 消息中心 */
#jycm_top .jycm_top_inform{position:relative;display:inline;float:right;width:76px;height:40px}
#jycm_top .jy_tixing{line-height:39px}
#jycm_top .jycm_top_inform .jycm_top_informIcon{width:52px;_width:55px;height:39px;padding:0 12px;position:relative;top:1px;z-index:9}
#jycm_top .jycm_top_inform .jycm_top_remind{font-size:12px;width:45px;height:40px;line-height:38px;text-align:center;display:inline}
#jycm_top .jycm_top_inform .jycm_top_remind .va_middle{line-height:40px}
#jycm_top .jy_icon_remind{background-position:-100px 0;margin-top:11px}
#jycm_top .jycm_top_inform #tips_point{display:none;position:absolute;top:9px;left:61px;_left:63px;width:10px;height:10px;background:url(http://images1.jyimg.com/w4/common/i/head/remind_b_point.gif) no-repeat;margin:0;padding:0}
#jycm_top .jycm_top_informFocus .jy_icon_remind{background-position:-120px 0}
#jycm_top .jycm_top_informFocus .jycm_top_informIcon{background-color:#eee}
#jycm_top .jycm_top_informFocus .color_fff,#jycm_top .jycm_top_informFocus .color_fff:hover{color:#333}
#jycm_top .jycm_top_informCn{display:none;position:absolute;top:40px;right:-1px;_right:-2px;width:104px;border:1px solid #bbbbbb;border-top:0;z-index:8;padding:6px 0px;*padding:6px 0px 3px;background:#fff}
#jycm_top .jycm_top_informCn li{overflow:hidden;zoom:1;height:24px;line-height:24px;font-size:12px;background:none;text-indent:0}
#jycm_top .jycm_top_informCn li a{color:#666;font-size:12px;display:inline-block;width:88px;padding:0px 8px;text-decoration:none}
#jycm_top .jycm_top_informCn li a:hover{background-color:#eee;color:#666;font-size:12px}
#jycm_top .jycm_top_informCn .fl,#jycm_top .jycm_top_informCn .fr{display:inline;float:left;color:#666;font-size:12px;cursor:pointer;_margin:2px 0;line-height:24px}
#jycm_top .jycm_top_informCn .fr{float:right}
#jycm_top .jycm_top_informCn span.fr_num{display:inline;float:right;width:30px;margin-top:4.5px;font-size:12px;text-align:center;background:#ff546a;color:#fff;height:14px;line-height:14px;border-radius:10px;_margin:5px 0}
#jycm_top .jycm_top_informFocus #tips_point{background:url(http://images1.jyimg.com/w4/common/i/head/remind_w_point.gif) no-repeat}
@-moz-document url-prefix(){#jycm_top .jycm_top_btn_dl{line-height:18px}}
</style>
<!--登录区域 start-->
<div id="jycm_top" class="jycm_top">
    <div class="w1000" id="head_login" style="">
        <div class="jycm_top_wel">
            <p id="head_user_nickname">Hi，<a class="color_fff" target="_blank" href="http://www.jiayuan.com/122261858">老公</a></p>
            <p class="memberIcon iconS1" id="head_user_level"><a onmousedown="jy_head_function.click_pv('|head_club_level|122261858');" title="S1会员" href="http://www.jiayuan.com/club/" target="_blank">S1会员</a></p>
            <p id="head_user_bean">金豆<a onmousedown="jy_head_function.click_pv('|head_club_bean|122261858');" href="http://www.jiayuan.com/club/" class="color_fff" target="_blank">600</a></p>
            <p id="head_user_uid">佳缘ID<a class="color_fff" target="_blank" href="http://www.jiayuan.com/122261858">122261858</a></p>
            <p id="head_user_logout"><a class="color_fff" href="../logout">退出</a></p>
        </div>
        <div class="jycm_top_right">
            <div id="jycm_top_inform" class="jycm_top_inform">
                <div id="jycm_top_informIcon" class="jycm_top_informIcon">
<div class="jycm_top_remind">
<span class="color_fff va_middle"><i class="jy_top_icon jy_icon_remind"></i><strong class="jy_tixing">提醒</strong><i style="display: inline;" id="tips_point"></i></span>
</div>
                </div>
                <div id="jycm_top_informCn" class="jycm_top_informCn" style="display:none">
                    <ul id="vip_center_all_notes">
                        <li id="visitor_new_num"><a target="_blank" href="http://www.jiayuan.com/usercp/clicked_new.php" onclick="jy_head_function.click_pv('|1013617_6|');"><strong class="fl">谁看过我</strong><span class="fr fr_num"> 30</span></a></li>
                        <li style="display: none;" id="praise_me_new_num"><a target="_blank" href="http://www.jiayuan.com/usercp/praiseme.php" onclick="jy_head_function.click_pv('|1013617_7|');"><strong class="fl">谁赞过我</strong></a></li>
                        <li id="fans_new_num"><a target="_blank" href="http://www.jiayuan.com/usercp/myfans.php" onclick="jy_head_function.click_pv('|1013617_8|');"><strong class="fl">谁关注我</strong><span class="fr fr_num"> 1</span></a></li>
                    </ul>
                </div>
            </div>
            <p class="jycm_top_jx ">
            	<script type="text/javascript">
//输出IM链接
document.write('<a class="color_fff va_middle" href="'+common_nav_array['im_url']+'" onclick="jy_head_function.click_pv(\'|head_navigation_im|\');" target="_blank"><i class="jy_top_icon jy_icon_jiaxin"></i>'+common_nav_array['im_tag']+'</a>');
                </script><a class="color_fff va_middle" href="http://im.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_im|');" target="_blank"><i class="jy_top_icon jy_icon_jiaxin"></i>佳缘佳信</a>
            </p>
            <div id="jycm_top_izx" class="jycm_top_izx">
                <div class="jycm_top_izxTit">
                	<script type="text/javascript">
//输出爱真心链接
                	document.write('<a id="jy_top_izhenxin_url" class="color_fff fn-clear" onclick="jy_head_function.click_pv(\'|head_navigation_mobile|\');" href="'+common_nav_array['extend_url3']+'" target="_blank"><i class="jy_top_icon icon_izx"></i><span class="jy_txt">'+common_nav_array['extend_tag']+'</span><i id="izx_point"></i></a>');
</script><a id="jy_top_izhenxin_url" class="color_fff fn-clear" onclick="jy_head_function.click_pv('|head_navigation_mobile|');" href="http://www.izhenxin.com/register/landingpagetw" target="_blank"><i class="jy_top_icon icon_izx"></i><span class="jy_txt">爱真心</span><i id="izx_point"></i></a>
                </div>
                <div class="jycm_top_izxCn">
                    <ul>
                    	<li id="jy_nav_izhenxin_url"></li>
                    </ul>
                </div>
                <div class="jycm_top_izxCn2" id="jy_top_izx_jihuo">
                	<script type="text/javascript">
//输出爱真心激活链接
                    document.write('<a href="'+common_nav_array['extend_url']+'" target="_blank" onclick="jy_head_function.click_pv(\'|1013850_9|'+head_user_uid+'\');"><span>激活爱真心帐号</span></a>');
</script><a href="http://www.izhenxin.com/login/getSign/?url=http%3A%2F%2Fwww.jiayuan.com%2Fusercp%2Fiz_login.php%3Furl%3Dhttp%253A%252F%252Fwww.izhenxin.com%252F&amp;from=top" target="_blank" onclick="jy_head_function.click_pv('|1013850_9|122261858');"><span>激活爱真心帐号</span></a>
                    <a class="jycm_top_izxClose" style="cursor:pointer">关闭</a><i class="point_top"></i>
                </div>
            </div>
            <p class="jycm_top_collect ">
            	<a id="jycm_top_collect_1" class="color_fff va_middle" onclick="jycm_addFav();" href="javascript:;"><i class="jy_top_icon jy_icon_collect"></i>收藏本站</a>
            </p>
            <p class="jycm_top_zx " id="vip_area_tel" style=""><i class="jy_top_icon jy_icon_tel"></i><span class="jy_txt"><span>红娘专线</span><strong>400-7701-520</strong></span></p>
        </div>
    </div>
    <div class="w1000" id="head_nologin" style="display:none">
        <div class="jycm_top_login">
            <iframe id="hder_hid_login_win" name="hder_hid_login_win" style="display:none" height="50" width="100%"></iframe>
            <form class="jycm_top_form" id="hder_login_form" target="hder_hid_login_win" action="" method="post">
                <input name="channel" value="200" type="hidden">
                <input name="position" value="201" type="hidden">
                <p class="jycm_top_zh"><span>帐号</span><input id="jycm_zh_input" name="name" value="邮箱/手机/ID" type="text"></p>
                <p class="jycm_top_mm"><span>密码</span><input id="jycm_pass_input" autocomplete="off" name="password" type="password"></p>
                <p class="jycm_top_zddl"><label><input onclick="head_login_save_me(this);" checked="checked" type="checkbox">自动登录</label></p>
                <input class="jycm_top_btn_dl" value="登录" type="submit">
                <p class="jycm_top_login2">
<span class="qita_login">其他登录</span><a target="_blank" class="openid_qq" href="http://www.jiayuan.com/general/t/?forward=qqAware&amp;c=10&amp;p=1"></a><a target="_blank" class="openid_weibo" href="http://www.jiayuan.com/general/t/?forward=sinaAware&amp;c=10&amp;p=2"></a><a target="_blank" class="openid_baidu" href="http://www.jiayuan.com/general/t/?forward=baiduOauth&amp;c=10&amp;p=5"></a><a target="_blank" class="openid_alipay" href="http://www.jiayuan.com/general/t/?forward=alipayOauth&amp;c=10&amp;p=7"></a>
</p>
                <p class="jycm_top_reg">
                	<script type="text/javascript">
//输出忘记密码和注册链接
                    document.write('<a class="color_fff" href="'+common_nav_array['login_url']+'validate.php" target="_blank">忘记密码</a><a class="color_fff" href="'+common_nav_array['reg_url']+'?bd=9528" onclick="jy_head_function.click_pv(\'|head_navigation_reg|\');" target="_blank">免费注册</a>');
</script><a class="color_fff" href="http://login.jiayuan.com/validate.php" target="_blank">忘记密码</a><a class="color_fff" href="http://reg.jiayuan.com/?bd=9528" onclick="jy_head_function.click_pv('|head_navigation_reg|');" target="_blank">免费注册</a>
                </p>
            </form>
        </div>
        <div class="jycm_top_right">
            <p class="jycm_top_collect ">
            	<a id="jycm_top_collect_2" class="color_fff va_middle" onclick="jycm_addFav();" href="javascript:;"><i class="jy_top_icon jy_icon_collect"></i>收藏本站</a>
            </p>
        </div>
    </div>
</div>
<!--登录区域 end-->
<div id="jycm_head" class="jycm_head fn-clear">
    <div class="jycm_head_top">
        <h1 class="logo">
        	<a id="jy_head_logo" style="" href="http://www.jiayuan.com/"><img src="../../resources/img/logo_new.png" alt="世纪佳缘" height="70"></a>
        </h1>
        <div id="jy_head_city_select"></div>
        <div class="jycm_head_ad">
        	<!--<div id="jycm_head_ad_left"></div>-->
        	<div id="ad_pos_70"><a target="_blank" href="http://www.jiayuan.com/advert/click.php?pos_id=70&amp;mr_id=5153&amp;ad_id=828&amp;m_id=707&amp;userid=60839512&amp;ip=2093072665&amp;url=http://www.jiayuan.com/usercp/service/do_package_service.php?rid=70&amp;src_key=ad_43_70_828_707_5153"><img id="jy_advert_707_img" src="../../resources/img/20140617110556574.gif" border="0" height="70" width="215"></a></div>
            <span style="clear:both"></span>
        </div>
        <span style="clear:both"></span>
    </div>
    <div id="jycm_head_nav" class="jycm_head_navBg">
        <div class="jycm_head_nav fn-clear" id="jycm_head_nav_links" style="">
            <ul>
                <li class="">
                    <a href="http://www.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_www|');" target="_blank">首页</a>
                </li>
                <li class="head_nav_cur">
                    <a href="http://usercp.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_usercp|');" target="_blank">我的佳缘</a>
                </li>
                <li class="">
                   <a href="http://www.jiayuan.com/club/" onclick="jy_head_function.click_pv('|head_navigation_club|');" target="_blank">俱乐部</a>
                </li>
                <li class="">
                    <a href="http://search.jiayuan.com/v2/" onclick="jy_head_function.click_pv('|head_navigation_search|');" target="_blank">搜索</a>
                </li>
                <li class="">
                    <a href="http://search.jiayuan.com/v2/new.php" onclick="jy_head_function.click_pv('|head_navigation_new|');" target="_blank">新会员</a>
                </li>
                <li class="">
                    <a href="http://search.jiayuan.com/v2/online.php" onclick="jy_head_function.click_pv('|head_navigation_online|');" target="_blank">聊天</a>
                </li>
                <li class="">
                    <a href="http://party.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_party|');" target="_blank">活动</a>
                </li>
                <li class="">
                    <a href="http://diary.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_diary|');" target="_blank">两性</a>
                </li>
                <li class="">
                    <a href="http://caipiao.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_caipiao|');" target="_blank">彩票</a>
                </li>
                <li class="">
                	<div class="jy_top_hot">
<a href="http://game.jiayuan.com/" target="_blank">
<img src="../../resources/img/jy_top_hot.gif" border="0" height="17" width="25">
</a>
</div>
                    <a href="http://game.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_game|');" target="_blank">游戏</a>
                </li>
                <li class="">
                    <a href="http://love.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_love|');" target="_blank">晒幸福</a>
                </li>
            </ul>
            <div class="jycm_head_navOthor fn-clear">
                <a href="http://vip.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_liehun|');" target="_blank">红娘一对一</a>
                <a class="jycm_head_nav_azx" href="http://www.izhenxin.com/login/getSign/?url=http%3A%2F%2Fwww.jiayuan.com%2Fusercp%2Fiz_login.php%3Furl%3Dhttp%253A%252F%252Fwww.izhenxin.com%252F&amp;from=JYDH" onclick="jy_head_function.click_pv('|head_navigation_izhenxin|');" target="_blank">爱真心</a>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
//头部计时调用
function head_wait(cond, exec){setTimeout(function(){if(!cond()){setTimeout(arguments.callee, 25);return;}exec();}, 0);}
//获取导航链接信息替换显示
document.getElementById('jycm_head_nav_links').innerHTML = jy_head_function.format_tpl(document.getElementById('jycm_head_nav_links').innerHTML);	//导航信息
document.getElementById('jycm_head_nav_links').style.display = "";
if(HEAD_USER.uid > 0){
//写登录信息
if(jy_head_function.strlen_ch(head_user_nickname) > 8){
head_user_nickname = jy_head_function.substr_ch(head_user_nickname, 6) + '...';
}
document.getElementById('head_user_uid').innerHTML = '佳缘ID<a class="color_fff" target="_blank" href="' + common_nav_array['www_url'] + head_user_uid + '">' + head_user_uid + '</a>';
document.getElementById('head_user_nickname').innerHTML = 'Hi，<a class="color_fff" target="_blank" href="' + common_nav_array['www_url'] + head_user_uid + '">' + head_user_nickname + '</a>';
document.getElementById('head_user_level').className = 'memberIcon iconS' + HEAD_USER.level;
document.getElementById('head_user_level').innerHTML = '<a onmousedown="jy_head_function.click_pv(\'|head_club_level|' + head_user_uid + '\');" title="S' + HEAD_USER.level + '会员" href="http://' + mydomain + '/club/" target="_blank">S' + HEAD_USER.level + '会员</a>';
document.getElementById('head_user_bean').innerHTML = '金豆<a onmousedown="jy_head_function.click_pv(\'|head_club_bean|' + head_user_uid + '\');" href="http://' + mydomain + '/club/" class="color_fff" target="_blank">' + HEAD_USER.bean + '</a>';
document.getElementById('head_user_logout').innerHTML = '<a class="color_fff" href="' + common_nav_array['login_url'] + 'logout2.php">退出</a>';
}
//去空格函数
String.prototype.trim = function()
{
return this.replace(/(^\s*)|(\s*$)/g, "");
}
//获取顶部数据
function get_jiayuan_contacts()
{
jQuery.ajax({
type : "GET",
url : "http://" + mydomain + "/usercp/dynmatch/ajax/get_contacts.php",
dataType : "jsonp",
jsonp : "jsoncallback",
jsonpCallback : "jy_jsonp",
success : function(ret){
if(typeof(ret) != 'undefined'){
if(ret['vip_tel']){
  jQuery("#vip_area_tel").html('<i class="jy_top_icon jy_icon_tel"></i>'+'<span class="jy_txt"><span>红娘专线</span><strong>' + ret['vip_tel'] + '</strong>');
  jQuery("#vip_area_tel").show();
  jQuery("#vip_area_tel_bar").show();
}
if(ret['jy_vip_center']){
set_vip_center_default(ret['jy_vip_center']['visitor_new_num'], ret['jy_vip_center']['praise_me_new_num'], ret['jy_vip_center']['fans_new_num']);
if(vip_center_all_num === 0){

}else{
//有信息，显示通知提示
jQuery('#tips_point').show();
//jQuery('#jycm_top_inform').addClass("jycm_top_informFocus");
//jQuery('#jycm_top_informCn').show();
}
//绑定鼠标事件
jQuery("#jycm_top_inform").mouseenter(function(){
//if(vip_center_all_num === 0){
jQuery('#jycm_top_informCn').show();							//显示下拉层
jQuery('#jycm_top_inform').addClass("jycm_top_informFocus");	//显示铃铛被选中的效果
//}
jQuery('#vip_center_all_notes > li').each(function(){
jQuery(this).show();
});
});
jQuery("#jycm_top_inform").mouseleave(function(){
//if(vip_center_all_num === 0){
jQuery('#jycm_top_informCn').hide();
jQuery('#jycm_top_inform').removeClass("jycm_top_informFocus");
//}else{
jQuery('#vip_center_all_notes > li').each(function(){
//if(ret['jy_vip_center'][jQuery(this).attr("id")] === 0){	//将没有数字的下拉项隐藏
jQuery(this).hide();
//}
});
//}
});
}
if(ret['izhenxin']){
if(ret['izhenxin']['is_bind'] == 1){
jQuery('a#jy_top_izhenxin_url').attr('href', common_nav_array['izhenxin_url']);
if(ret['izhenxin']['is_active'] == 1){
if(parseInt(ret['izhenxin']['msg_count']) > 0){
//jQuery('#jycm_top_izx').addClass('jycm_top_izxFocus');
jQuery('#izx_point').show();
jQuery('#jy_nav_izhenxin_url').html('<a  href="'+common_nav_array['extend_url2']+'" target="_blank" onclick="jy_head_function.click_pv(\'|1013850_3|'+head_user_uid+'\');"><span class="fl">消息</span><span class="fr fr-num">'+ret['izhenxin']['msg_count']+'</span></a>');
}else{
jQuery('#jy_nav_izhenxin_url').html('<a href="'+common_nav_array['extend_url2']+'" target="_blank" onclick="jy_head_function.click_pv(\'|1013850_1|'+head_user_uid+'\');"><span class="fl">消息</span><span class="fr">查看</span></a>');
jQuery('#jycm_top_izx').hover(
//function(){jQuery('#jycm_top_izx').addClass('jycm_top_izxFocus');},
function(){jQuery('#jycm_top_izx').removeClass('jycm_top_izxFocus');}
);
}
}else{
jQuery('.jycm_top_izxClose').click(function(){
jQuery('#jy_top_izx_jihuo').hide();
});
jQuery('#jy_top_izx_jihuo').show();
}
//绑定鼠标事件
jQuery("#jycm_top_izx").mouseenter(function(){
jQuery('#jycm_top_izxCn').show();							
jQuery('#jycm_top_izx').addClass("jycm_top_izxFocus");	
});
jQuery("#jycm_top_izx").mouseleave(function(){
jQuery('#jycm_top_izxCn').hide();
jQuery('#jycm_top_izx').removeClass("jycm_top_izxFocus");
});
}
}
}
}
  	});
}
function placeholder(inputId,inputType){
var oInput=document.getElementById(inputId);
var defaultValue=oInput.value;
oInput.onfocus=function(){
this.style.border='2px solid #ffd6db';
this.style.color='#888';
if(inputType=='defText'){
if(this.value==defaultValue){
this.value='';
}
}
};
oInput.onblur=function(){
this.style.border='2px solid #ededed';
this.style.color='#333';
if(inputType=='defText'){
if(this.value==''){
this.value=defaultValue;
this.style.color='#aaa';
}
}
}
}
placeholder('jycm_zh_input','defText');
placeholder('jycm_pass_input','defPass');
//设置VIP通知中心默认效果
function set_vip_center_default(visitor_new_num, praise_me_new_num, fans_new_num)
{
var vip_center_config = new Array();
vip_center_config['visitor_name'] = '谁看过我';
vip_center_config['visitor_url'] = common_nav_array['www_url'] + 'usercp/clicked_new.php';
vip_center_config['visitor_stat1'] = '\'|1013617_3|\'';
vip_center_config['visitor_stat2'] = '\'|1013617_0|\'';
vip_center_config['visitor_stat3'] = '\'|1013617_6|\'';
vip_center_config['praise_me_name'] = '谁赞过我';
vip_center_config['praise_me_url'] = common_nav_array['www_url'] + 'usercp/praiseme.php';
vip_center_config['praise_me_stat1'] = '\'|1013617_4|\'';
vip_center_config['praise_me_stat2'] = '\'|1013617_1|\'';
vip_center_config['praise_me_stat3'] = '\'|1013617_7|\'';
vip_center_config['fans_name'] = '谁关注我';
vip_center_config['fans_url'] = common_nav_array['www_url'] + 'usercp/myfans.php';
vip_center_config['fans_stat1'] = '\'|1013617_5|\'';
vip_center_config['fans_stat2'] = '\'|1013617_2|\'';
vip_center_config['fans_stat3'] = '\'|1013617_8|\'';
if(visitor_new_num == 0 && praise_me_new_num == 0 && fans_new_num == 0){
vip_center_all_num = 0;
//所有数字都为0
}
if(parseInt(visitor_new_num) > 0){
jQuery("#visitor_new_num").show();
str_visitor_num = '<span class="fr fr_num"> ' + visitor_new_num + '</span>';
}else{
jQuery("#visitor_new_num").hide();
str_visitor_num = '';
if(vip_center_all_num === 0){
str_visitor_num = '<span class="fr">查看</span>';
}
}
str_visitor_txt = '<a target="_blank" href="' + vip_center_config['visitor_url'] + '" ';
str_visitor_txt += 'onclick="jy_head_function.click_pv(' + vip_center_config['visitor_stat3'] + ');"><strong class="fl">'+vip_center_config['visitor_name']+'</strong>'+ str_visitor_num + '</a>';
jQuery("#visitor_new_num").html(str_visitor_txt);
if(parseInt(praise_me_new_num) > 0){
jQuery("#praise_me_new_num").show();
str_praise_me_num = '<span class="fr fr_num"> ' + praise_me_new_num + '</span>';		
}else{
jQuery("#praise_me_new_num").hide();
str_praise_me_num = '';
if(vip_center_all_num === 0){
str_praise_me_num = '<span class="fr">查看</span>';
}
}
str_praise_me_txt = '<a target="_blank" href="' + vip_center_config['praise_me_url'] + '" ';
str_praise_me_txt += 'onclick="jy_head_function.click_pv(' + vip_center_config['praise_me_stat3'] + ');"><strong class="fl">'+vip_center_config['praise_me_name']+'</strong>'+ str_praise_me_num + '</a>';
jQuery("#praise_me_new_num").html(str_praise_me_txt);
if(parseInt(fans_new_num) > 0){
jQuery("#fans_new_num").show();
str_fans_num = '<span class="fr fr_num"> ' + fans_new_num + '</span>';
}else{
jQuery("#fans_new_num").hide();
str_fans_num = '';
if(vip_center_all_num === 0){
str_fans_num = '<span class="fr">查看</span>';
}
}
str_fans_txt = '<a target="_blank" href="' + vip_center_config['fans_url'] + '" ';
str_fans_txt += 'onclick="jy_head_function.click_pv(' + vip_center_config['fans_stat3'] + ');"><strong class="fl">'+vip_center_config['fans_name']+'</strong>'+ str_fans_num + '</a>';
jQuery("#fans_new_num").html(str_fans_txt);
}

//VIP通知中心有数字，值为0表示所有分类一条新通知都没有
vip_center_all_num = 1;
//登录处理
head_wait(function(){return typeof JY != "undefined"}, function(){
//登录后回调函数
function header_login_call(user){
if(user && user['uid'] > 0){
if(user['errno'] == -5){
location.href = user['url'];
return false;
}else if(user['type'] == 20){//完善资料
location.href = user['url'];
return true;
}
//location.reload();
window.location = window.location;	//登录成功，不做跳转则刷新当前页面
}else if(user && user['errno'] == -1){
location.href = user['url'];
return false;
}else if(user && user['errno'] == -2){
alert('登录失败，该用户资料已关闭');
}else{
alert('密码错误，请核实您的登录密码');
}
}
if(JY.login.getUser().uid > 0){
document.getElementById("head_login").style.display = "none";
document.getElementById("head_nologin").style.display = "none";
//加载jquery-1.4.2.min.js，利用jquery来获取红娘服务电话
if(typeof(jQuery) == 'undefined' || parseFloat(jQuery.fn.jquery) < 1.4){
var jy_head_include_doc = document.getElementsByTagName('head')[0];
var jy_head_include_js = document.createElement('script');
jy_head_include_js.setAttribute('type', 'text/javascript');
jy_head_include_js.setAttribute('src', "http://images1.jyimg.com/w4/usercp/j/jquery-1.4.2.min.js");
jy_head_include_doc.appendChild(jy_head_include_js);
if(document.all){//如果是IE
jy_head_include_js.onreadystatechange = function(){
if(jy_head_include_js.readyState == 'loaded' || jy_head_include_js.readyState == 'complete'){
get_jiayuan_contacts();
}
}
}else{
jy_head_include_js.onload = function(){
get_jiayuan_contacts();
}
}
}else{
get_jiayuan_contacts();
}
document.getElementById("head_login").style.display = "";
}else{
document.getElementById("head_nologin").style.display = "";
document.getElementById("head_login").style.display = "none";
}
//登录表单，绑定提交事件
document.getElementById("hder_login_form").onsubmit = function(){
var login_name = hder_login_form.name;
var login_pass = hder_login_form.password;;
login_name.value = login_name.value.trim();
login_pass.value = login_pass.value.trim();
if(login_name.value == '' || login_name.value == '邮箱/ID/手机号'){
alert('请输入登录帐号！');
login_name.focus();
return false;
}
if(login_pass.value == ''){
alert('请输入登录密码！');
login_pass.focus();
return false;
}
this.action = common_nav_array['login_url']+'dologin.php';	//修改action提交地址
JY.login.submit(this, header_login_call);
return false;
};
});
//设置LOGO
function set_head_logo()
{
document.getElementById('jy_head_logo').href = common_nav_array['www_url'];	//给LOGO链接复制地址	
if(typeof head_logo_config != 'undefined'){
document.getElementById('jy_head_logo').innerHTML = '<img height="70" src="'+head_logo_config['main_logo']+'" alt="世纪佳缘" />';
document.getElementById('jy_head_logo').style.display = '';
}else{
//如果LOGO配置的JS文件没有加载完成或者没有加载成功，则动态加载
jy_head_include_doc = document.getElementsByTagName('head')[0];
jy_head_include_js = document.createElement('script');
jy_head_include_js.setAttribute('type', 'text/javascript');
jy_head_include_js.setAttribute('src', "http://images1.jyimg.com/w4/global/j/jiayuan_logo_config.js");
jy_head_include_doc.appendChild(jy_head_include_js);
if(document.all){//如果是IE
jy_head_include_js.onreadystatechange = function(){
if(jy_head_include_js.readyState == 'loaded' || jy_head_include_js.readyState == 'complete'){
document.getElementById('jy_head_logo').innerHTML = '<img height="70" src="'+head_logo_config['main_logo']+'" alt="世纪佳缘" />';
document.getElementById('jy_head_logo').style.display = '';
}
}
}else{
jy_head_include_js.onload = function(){
document.getElementById('jy_head_logo').innerHTML = '<img height="70" src="'+head_logo_config['main_logo']+'" alt="世纪佳缘" />';
document.getElementById('jy_head_logo').style.display = '';
}
}
}
}
//收藏
function jycm_addFav()
{
var a = "http://www.jiayuan.com/",b="世纪佳缘";
head_alert = [];
head_alert = document.all?window.alert:Window.prototype.alert;
document.all?window.external.AddFavorite(a,b):window.sidebar&&window.sidebar.addPanel?window.sidebar.addPanel(b,a,""):head_alert("对不起，您的浏览器不支持此操作!\n请您使用菜单栏或Ctrl+D收藏本站。");
}
</script>
<!-- released time 2014-09-30 12:06:08 -->
 
<!-- 标准头 结束 -->

<div class="my_infomation">
	<div class="navigation"><a href="http://www.jiayuan.com/usercp/" onmousedown="send_jy_pv2('editprofile|my_home|m|122261858');">我的佳缘</a>&nbsp;&gt;&nbsp;基本资料</div>
	<div class="borderbg"><img src="../../resources/img/border_top.jpg"></div>
	<div class="info_content">
		<!-- 左侧开始 -->
		<div class="info_left">
			<ul>
				<li class="on"><a href="javascript:;">基本资料</a></li>
				<li class="ok" onmousedown="send_jy_pv2('editprofile|category_note|m|122261858');"><a href="http://www.jiayuan.com/usercp/note.php">内心独白</a></li>
				<li onmousedown="send_jy_pv2('editprofile|category_photo|m|122261858');"><a href="../myphoto/1">我的照片</a></li>
				<li onmousedown="send_jy_pv2('editprofile|category_map|m|122261858');"><a href="http://www.jiayuan.com/usercp/profile.php?action=map">我的地图</a></li>
				<li onclick="show_category('detail_hidden');"><a href="javascript:;">详细资料</a></li>
				<li id="detail_hidden" class="hidden_li">
					<a href="http://www.jiayuan.com/usercp/profile.php?action=body" onmousedown="send_jy_pv2('editprofile|category_body|m|122261858');">外貌体型</a>
					<a href="http://www.jiayuan.com/usercp/profile.php?action=work" onmousedown="send_jy_pv2('editprofile|category_work|m|122261858');">工作学习</a>
					<a href="http://www.jiayuan.com/usercp/profile.php?action=life" onmousedown="send_jy_pv2('editprofile|category_life|m|122261858');">生活描述</a>
					<a href="http://www.jiayuan.com/usercp/profile.php?action=interest" onmousedown="send_jy_pv2('editprofile|category_interest|m|122261858');">兴趣爱好</a>
				</li>
				<li onclick="show_category('profile_hidden');"><a href="javascript:;">个性展示</a></li>
				<li id="profile_hidden" class="hidden_li">
					<a href="http://www.jiayuan.com/usercp/personal.php?action=1" onmousedown="send_jy_pv2('editprofile|category_personal_part1|m|122261858');">个性描述</a>
					<a href="http://www.jiayuan.com/usercp/personal.php?action=2" onmousedown="send_jy_pv2('editprofile|category_personal_part2|m|122261858');">生活习惯</a>
					<a href="http://www.jiayuan.com/usercp/personal.php?action=3" onmousedown="send_jy_pv2('editprofile|category_personal_part3|m|122261858');">爱情观点</a>
					<a href="http://www.jiayuan.com/usercp/personal.php?action=4" onmousedown="send_jy_pv2('editprofile|category_personal_part4|m|122261858');">约会类型</a>
					<a href="http://www.jiayuan.com/usercp/personal.php?action=5" onmousedown="send_jy_pv2('editprofile|category_personal_part5|m|122261858');">婚姻期望</a>
					<a href="http://www.jiayuan.com/usercp/personal.php?action=6" onmousedown="send_jy_pv2('editprofile|category_personal_part6|m|122261858');">婚后生活</a>
					<a href="http://www.jiayuan.com/usercp/personal.php?action=7" onmousedown="send_jy_pv2('editprofile|category_personal_part7|m|122261858');">理想对象</a>
				</li>
			</ul>
			<div class="return_index">
			<a class="return_jy" href="http://www.jiayuan.com/usercp/index.php" onmousedown="send_jy_pv2('editprofile|return_home|m|122261858');">返回我的佳缘</a>
			</div>
		</div>
		<!-- 左侧结束 -->
		<!-- 中间开始 -->
		<div class="info_center">
	<div class="title">
		<strong>基本资料</strong>
	</div>
	<div class="mid_border">
		<div class="base_infomation">
		<form id="form_base" name="form_base" action="profile_postdo.php?action=base" method="post" onsubmit="return check_post();">
			<!-- 基本资料 -->
			<div class="base_info">
				<h2>为保证资料真实有效，灰色字体信息不得随意修改，<a href="http://www.jiayuan.com/helpcenter/list.php?type1=1&amp;type2=1&amp;type3=17#art413" target="_blank">查看修改技巧</a>。<!--，如有需要，请<a href="http://www.jiayuan.com/helpcenter/postmail.php" target="_blank" onmousedown="send_jy_pv2('editprofile|contract_service|m|122261858');">联系客服</a>。--></h2>
				<table colspan="3" width="450" cellpadding="0" cellspacing="0">
					<tbody><tr>
						<td class="item">昵称：</td>
						<td>老公</td>
					</tr>
					<tr>
						<td class="item">性别：</td>
						<td>男</td>
					</tr>
					<tr>
						<td class="item">出生日期：</td>
						<td>1985-01-01</td>
					</tr>
					<tr>
						<td class="item">生肖：</td>
						<td>鼠</td>
					</tr>
					<tr>
						<td class="item">星座：</td>
						<td>魔羯座</td>
					</tr>
					<tr>
						<td class="item">身高：</td>
						<td><select style="" name="height" id="height" class="select1" onchange="select_changed()"><option label="130" value="130">130</option>
<option label="131" value="131">131</option>
<option label="132" value="132">132</option>
<option label="133" value="133">133</option>
<option label="134" value="134">134</option>
<option label="135" value="135">135</option>
<option label="136" value="136">136</option>
<option label="137" value="137">137</option>
<option label="138" value="138">138</option>
<option label="139" value="139">139</option>
<option label="140" value="140">140</option>
<option label="141" value="141">141</option>
<option label="142" value="142">142</option>
<option label="143" value="143">143</option>
<option label="144" value="144">144</option>
<option label="145" value="145">145</option>
<option label="146" value="146">146</option>
<option label="147" value="147">147</option>
<option label="148" value="148">148</option>
<option label="149" value="149">149</option>
<option label="150" value="150">150</option>
<option label="151" value="151">151</option>
<option label="152" value="152">152</option>
<option label="153" value="153">153</option>
<option label="154" value="154">154</option>
<option label="155" value="155">155</option>
<option label="156" value="156">156</option>
<option label="157" value="157">157</option>
<option label="158" value="158">158</option>
<option label="159" value="159">159</option>
<option label="160" value="160">160</option>
<option label="161" value="161">161</option>
<option label="162" value="162">162</option>
<option label="163" value="163">163</option>
<option label="164" value="164">164</option>
<option label="165" value="165">165</option>
<option label="166" value="166">166</option>
<option label="167" value="167">167</option>
<option label="168" value="168">168</option>
<option label="169" value="169">169</option>
<option label="170" value="170">170</option>
<option label="171" value="171">171</option>
<option label="172" value="172">172</option>
<option label="173" value="173">173</option>
<option label="174" value="174">174</option>
<option label="175" value="175">175</option>
<option label="176" value="176">176</option>
<option label="177" value="177">177</option>
<option label="178" value="178">178</option>
<option label="179" value="179">179</option>
<option label="180" value="180" selected="selected">180</option>
<option label="181" value="181">181</option>
<option label="182" value="182">182</option>
<option label="183" value="183">183</option>
<option label="184" value="184">184</option>
<option label="185" value="185">185</option>
<option label="186" value="186">186</option>
<option label="187" value="187">187</option>
<option label="188" value="188">188</option>
<option label="189" value="189">189</option>
<option label="190" value="190">190</option>
<option label="191" value="191">191</option>
<option label="192" value="192">192</option>
<option label="193" value="193">193</option>
<option label="194" value="194">194</option>
<option label="195" value="195">195</option>
<option label="196" value="196">196</option>
<option label="197" value="197">197</option>
<option label="198" value="198">198</option>
<option label="199" value="199">199</option>
<option label="200" value="200">200</option>
<option label="201" value="201">201</option>
<option label="202" value="202">202</option>
<option label="203" value="203">203</option>
<option label="204" value="204">204</option>
<option label="205" value="205">205</option>
<option label="206" value="206">206</option>
<option label="207" value="207">207</option>
<option label="208" value="208">208</option>
<option label="209" value="209">209</option>
<option label="210" value="210">210</option>
<option label="211" value="211">211</option>
<option label="212" value="212">212</option>
<option label="213" value="213">213</option>
<option label="214" value="214">214</option>
<option label="215" value="215">215</option>
<option label="216" value="216">216</option>
<option label="217" value="217">217</option>
<option label="218" value="218">218</option>
<option label="219" value="219">219</option>
<option label="220" value="220">220</option>
<option label="221" value="221">221</option>
<option label="222" value="222">222</option>
<option label="223" value="223">223</option>
<option label="224" value="224">224</option>
<option label="225" value="225">225</option>
<option label="226" value="226">226</option>
</select>&nbsp;厘米</td>
					</tr>
										<tr>
						<td class="item">学历：</td>
						<td>硕士</td>
					</tr>
					<tr>
						<td class="item">婚姻状况：</td>
												<td><select style="" name="marriage" id="marriage" onchange="select_changed()"><option label="未婚" value="1" selected="selected">未婚</option>
<option label="离异" value="2">离异</option>
<option label="丧偶" value="3">丧偶</option>
</select></td>
											</tr>
					<tr>
						<td class="item">有无子女：</td>
						<td><select style="" name="children" id="children" onchange="select_changed()"><option selected="selected" value="0">--请选择--</option><option label="无小孩" value="1">无小孩</option>
<option label="有小孩归自己" value="2">有小孩归自己</option>
<option label="有小孩归对方" value="3">有小孩归对方</option>
</select></td>
					</tr>
					<tr>
						<td class="item">所在地区：</td>
						<td><select style="" name="work_location" id="profile_location" class="select1" onchange="build_second(this.value,'profile_sublocation',LOK);select_changed();"><option value="0">--不限--</option><option value="11">北京</option><option value="12">天津</option><option value="13">河北</option><option value="14">山西</option><option value="15">内蒙古</option><option value="21">辽宁</option><option value="22">吉林</option><option value="23">黑龙江</option><option value="31">上海</option><option value="32">江苏</option><option value="33">浙江</option><option value="34">安徽</option><option value="35">福建</option><option value="36">江西</option><option value="37">山东</option><option value="41">河南</option><option value="42">湖北</option><option value="43">湖南</option><option value="44">广东</option><option value="45">广西</option><option value="46">海南</option><option value="50">重庆</option><option value="51">四川</option><option value="52">贵州</option><option value="53">云南</option><option value="54">西藏</option><option value="61">陕西</option><option value="62">甘肃</option><option value="63">青海</option><option value="64">宁夏</option><option value="65">新疆</option><option value="71">台湾</option><option value="81">香港</option><option value="82">澳门</option><option value="83">钓鱼岛</option><option value="98">美国</option><option selected="selected" value="99">其他国家</option></select>&nbsp;&nbsp;<select style="" name="work_sublocation" id="profile_sublocation" class="select2" onchange="document.getElementById('change_area_div').style.display='';select_changed()"><option value="9900">--不限--</option><option value="9902">澳大利亚</option><option value="9903">加拿大</option><option value="9904">英国</option><option value="9905">日本</option><option selected="selected" value="9906">新加坡</option><option value="9907">德国</option><option value="9908">法国</option><option value="9909">韩国</option><option value="9910">比利时</option><option value="9911">新西兰</option><option value="9912">瑞典</option><option value="9913">瑞士</option><option value="9914">荷兰</option><option value="9915">阿联酋</option><option value="9916">芬兰</option><option value="9917">丹麦</option><option value="9918">泰国</option><option value="9919">西班牙</option><option value="9921">意大利</option><option value="9922">挪威</option><option value="9924">奥地利</option><option value="9925">爱尔兰</option><option value="9926">马来西亚</option><option value="9927">尼日利亚</option><option value="9928">俄罗斯</option><option value="9929">巴西</option><option value="9930">南非</option><option value="9931">葡萄牙</option><option value="9932">墨西哥</option><option value="9933">印尼</option><option value="9934">越南</option><option value="9935">以色列</option><option value="9936">科威特</option><option value="9937">希腊</option><option value="9938">匈牙利</option><option value="9939">阿根廷</option><option value="9940">印度</option><option value="9941">柬埔寨</option><option value="9942">菲律宾</option><option value="9943">埃及</option><option value="9944">土耳其</option><option value="9999">其他</option></select></td>
						<script type="text/javascript">init_location(99, 9906, 'profile');</script>
					</tr>
					<tr>
						<td class="item">血型：</td>
						<td><select style="" name="bloodtype" id="bloodtype" onchange="select_changed()"><option selected="selected" value="0">--请选择--</option><option label="A型" value="1">A型</option>
<option label="B型" value="2">B型</option>
<option label="O型" value="3">O型</option>
<option label="AB型" value="4">AB型</option>
<option label="其它" value="5">其它</option>
<option label="保密" value="6">保密</option>
</select></td>
					</tr>
					<tr>
						<td class="item">民族：</td>
						<td><select style="" name="nation" id="nation" onchange="select_changed()"><option selected="selected" value="0">--请选择--</option><option label="汉族" value="1">汉族</option>
<option label="藏族" value="2">藏族</option>
<option label="朝鲜族" value="3">朝鲜族</option>
<option label="蒙古族" value="4">蒙古族</option>
<option label="回族" value="5">回族</option>
<option label="满族" value="6">满族</option>
<option label="维吾尔族" value="7">维吾尔族</option>
<option label="壮族" value="8">壮族</option>
<option label="彝族" value="9">彝族</option>
<option label="苗族" value="10">苗族</option>
<option label="其它民族" value="11">其它民族</option>
</select></td>
					</tr>
					<tr>
						<td class="item">职业：</td>
						<td><select style="" id="industry" name="industry" onchange="select_changed()"><option selected="selected" value="0">--请选择--</option><option label="在校学生" value="1">在校学生</option>
<option label="计算机/互联网/IT" value="2">计算机/互联网/IT</option>
<option label="电子/半导体/仪表仪器" value="3">电子/半导体/仪表仪器</option>
<option label="通信技术" value="4">通信技术</option>
<option label="销售" value="5">销售</option>
<option label="市场拓展" value="6">市场拓展</option>
<option label="公关/商务" value="7">公关/商务</option>
<option label="采购/贸易" value="8">采购/贸易</option>
<option label="客户服务/技术支持" value="9">客户服务/技术支持</option>
<option label="人力资源/行政/后勤" value="10">人力资源/行政/后勤</option>
<option label="高级管理" value="11">高级管理</option>
<option label="生产/加工/制造" value="12">生产/加工/制造</option>
<option label="质控/安检" value="13">质控/安检</option>
<option label="工程机械" value="14">工程机械</option>
<option label="技工" value="15">技工</option>
<option label="财会/审计/统计" value="16">财会/审计/统计</option>
<option label="金融/证券/投资/保险" value="17">金融/证券/投资/保险</option>
<option label="房地产/装修/物业" value="18">房地产/装修/物业</option>
<option label="仓储/物流" value="19">仓储/物流</option>
<option label="交通/运输" value="43">交通/运输</option>
<option label="普通劳动力/家政服务" value="20">普通劳动力/家政服务</option>
<option label="普通服务行业" value="21">普通服务行业</option>
<option label="航空服务业" value="22">航空服务业</option>
<option label="教育/培训" value="23">教育/培训</option>
<option label="咨询/顾问" value="24">咨询/顾问</option>
<option label="学术/科研" value="25">学术/科研</option>
<option label="法律" value="26">法律</option>
<option label="设计/创意" value="27">设计/创意</option>
<option label="文学/传媒/影视" value="28">文学/传媒/影视</option>
<option label="餐饮/旅游" value="29">餐饮/旅游</option>
<option label="化工" value="30">化工</option>
<option label="能源/地质勘查" value="31">能源/地质勘查</option>
<option label="医疗/护理" value="32">医疗/护理</option>
<option label="保健/美容" value="33">保健/美容</option>
<option label="生物/制药/医疗器械" value="34">生物/制药/医疗器械</option>
<option label="体育工作者" value="35">体育工作者</option>
<option label="翻译" value="36">翻译</option>
<option label="公务员/国家干部" value="37">公务员/国家干部</option>
<option label="私营业主" value="38">私营业主</option>
<option label="农/林/牧/渔业" value="39">农/林/牧/渔业</option>
<option label="警察/其它" value="40">警察/其它</option>
<option label="自由职业者" value="41">自由职业者</option>
<option label="其他" value="42">其他</option>
</select></td>
					</tr>
					<tr>
						<td class="item">月薪：</td>
						<td><select style="" id="income" name="income" onchange="validate('income', this.value)"><option label="2000元以下" value="10">2000元以下</option>
<option label="2000～5000元" value="20">2000～5000元</option>
<option label="5000～10000元" value="30">5000～10000元</option>
<option label="10000～20000元" value="40" selected="selected">10000～20000元</option>
<option label="20000元以上" value="50">20000元以上</option>
</select></td>
					</tr>
										<tr>
						<td class="item">居住情况：</td>
						<td><select style="" id="house" name="house" onchange="select_changed()"><option selected="selected" value="0">--请选择--</option><option label="暂未购房" value="1">暂未购房</option>
<option label="需要时购置" value="8">需要时购置</option>
<option label="已购住房" value="2">已购住房</option>
<option label="与人合租" value="3">与人合租</option>
<option label="独自租房" value="4">独自租房</option>
<option label="与父母同住" value="5">与父母同住</option>
<option label="住亲朋家" value="6">住亲朋家</option>
<option label="住单位房" value="7">住单位房</option>
</select></td>
					</tr>
					<tr>
						<td class="item">购车情况：</td>
						<td><select style="" id="auto" name="auto" onchange="select_changed()"><option selected="selected" value="0">--请选择--</option><option label="暂未购车" value="1">暂未购车</option>
<option label="已经购车" value="2">已经购车</option>
</select></td>
					</tr>
					<tr>
						<td class="item" valign="top">佳缘标签：</td>
						<td>
							<ul>
																	<li><label for="tag_1"><input onclick="javascript:check_count(this, 5)" name="tag[]" value="1" id="tag_1" onchange="select_changed()" type="checkbox">&nbsp;孝顺男</label></li>
																	<li><label for="tag_2"><input onclick="javascript:check_count(this, 5)" name="tag[]" value="2" id="tag_2" onchange="select_changed()" type="checkbox">&nbsp;酷男</label></li>
																	<li><label for="tag_3"><input onclick="javascript:check_count(this, 5)" name="tag[]" value="3" id="tag_3" onchange="select_changed()" type="checkbox">&nbsp;责任心</label></li>
																	<li><label for="tag_4"><input onclick="javascript:check_count(this, 5)" name="tag[]" value="4" id="tag_4" onchange="select_changed()" type="checkbox">&nbsp;经济适用男</label></li>
																	<li><label for="tag_5"><input onclick="javascript:check_count(this, 5)" name="tag[]" value="5" id="tag_5" onchange="select_changed()" type="checkbox">&nbsp;憨直</label></li>
																	<li><label for="tag_6"><input onclick="javascript:check_count(this, 5)" name="tag[]" value="6" id="tag_6" onchange="select_changed()" type="checkbox">&nbsp;感性男</label></li>
																	<li><label for="tag_7"><input onclick="javascript:check_count(this, 5)" name="tag[]" value="7" id="tag_7" onchange="select_changed()" type="checkbox">&nbsp;事业男</label></li>
																	<li><label for="tag_8"><input onclick="javascript:check_count(this, 5)" name="tag[]" value="8" id="tag_8" onchange="select_changed()" type="checkbox">&nbsp;睿智</label></li>
																	<li><label for="tag_9"><input onclick="javascript:check_count(this, 5)" name="tag[]" value="9" id="tag_9" onchange="select_changed()" type="checkbox">&nbsp;猥琐男</label></li>
																	<li><label for="tag_10"><input onclick="javascript:check_count(this, 5)" name="tag[]" value="10" id="tag_10" onchange="select_changed()" type="checkbox">&nbsp;幽默男</label></li>
																	<li><label for="tag_11"><input onclick="javascript:check_count(this, 5)" name="tag[]" value="11" id="tag_11" onchange="select_changed()" type="checkbox">&nbsp;爱旅行</label></li>
																	<li><label for="tag_12"><input onclick="javascript:check_count(this, 5)" name="tag[]" value="12" id="tag_12" onchange="select_changed()" type="checkbox">&nbsp;宅男</label></li>
																	<li><label for="tag_13"><input onclick="javascript:check_count(this, 5)" name="tag[]" value="13" id="tag_13" onchange="select_changed()" type="checkbox">&nbsp;体贴</label></li>
																	<li><label for="tag_14"><input onclick="javascript:check_count(this, 5)" name="tag[]" value="14" id="tag_14" onchange="select_changed()" type="checkbox">&nbsp;有魄力</label></li>
																	<li><label for="tag_15"><input onclick="javascript:check_count(this, 5)" name="tag[]" value="15" id="tag_15" onchange="select_changed()" type="checkbox">&nbsp;仗义</label></li>
																	<li><label for="tag_16"><input onclick="javascript:check_count(this, 5)" name="tag[]" value="16" id="tag_16" onchange="select_changed()" type="checkbox">&nbsp;经理人</label></li>
																	<li><label for="tag_17"><input onclick="javascript:check_count(this, 5)" name="tag[]" value="17" id="tag_17" onchange="select_changed()" type="checkbox">&nbsp;帅哥</label></li>
																	<li><label for="tag_18"><input onclick="javascript:check_count(this, 5)" name="tag[]" value="18" id="tag_18" onchange="select_changed()" type="checkbox">&nbsp;稳重</label></li>
															</ul>
						</td>
					</tr>
				</tbody></table>
			</div>
			<!-- 联系信息 -->
			<div class="contact">
				<h1>联系信息</h1>
				<h2>以下资料我们将为您保密，不会显示在您的个人资料页面上。</h2>
				<table width="450" cellpadding="0" cellspacing="0">
					<tbody><tr>
						<td class="item" width="70">真实姓名：</td>
						<td width="360">
															<input name="true_name" class="text" onchange="select_changed()" type="text">
													</td>
					</tr>
					<tr>
						<td class="item">身份证号：</td>
						<td>
															<input class="text" id="id_card_id" name="id_card" onchange="select_changed()" onblur="check_validate('idcard', this.value)" type="text">
													</td>
					</tr>
					<tr>
						<td class="item">邮箱：</td>
						<td>fengg_5241@163.com</td>
					</tr>
					<!--<tr>
						<td class="item">手机：</td>
						<td>
														<input type="text" class="text" id="mobile" name="mobile" value="" onChange="select_changed()" onblur="check_validate('mobile', this.value)" />
													</td>
					</tr>-->
					<!--<tr>
						<td class="item">电话号码：</td>
						<td><input type="text" class="text" name="phone" value="" onChange="select_changed()" /></td>
					</tr>-->
					<tr>
						<td class="item">QQ：</td>
						<td><input class="text" id="qq" name="qq" onchange="select_changed()" onblur="check_validate('qq', this.value)" type="text"></td>
					</tr>
					<tr>
						<td class="item">MSN：</td>
						<td><input class="text" id="msn" name="msn" onchange="select_changed()" onblur="check_validate('msn', this.value)" type="text"></td>
					</tr>
					<tr>
						<td class="item">通讯地址：</td>
						<td><input class="text" name="address" onchange="select_changed()" type="text"></td>
					</tr>
					<tr>
						<td class="item">邮政编码：</td>
						<td><input class="text" name="postcode" onchange="select_changed()" type="text"></td>
					</tr>
					<tr>
					  <td colspan="2"><div style="border-top:1px #DDE0E5 solid; margin:10px 0 0 0; padding:10px 0 0 0;"><b style="color:#000">分享资料</b><img src="../../resources/img/icon_rec.gif" align="absmiddle"></div></td>
				  </tr>
					<tr>
					  <td colspan="2" style="color:#999898; line-height:1.6">分享内容包括：昵称、所在城市、年龄、职业、内心独白。<br>
佳缘，爱建议：想爱，大声说出来！</td>
				   </tr>
					<tr>
					  <td class="item">您的选择：</td>
					  <td><input name="share" value="1" type="checkbox"> 同意分享</td>
				   </tr>
					<tr>
						<td>&nbsp;</td>
						<td><input class="save" value="保存并继续" onmousedown="send_jy_pv2('editprofile|save_base|m|122261858');" type="submit"><input value="跳过此页" class="skip" onclick="skip()" onmousedown="send_jy_pv2('editprofile|skip_base|m|122261858');" type="button"></td>
					</tr>
				</tbody></table>
			</div>
			<!-- 联系信息结束 -->
			<!-- 弹层开始 -->
			<div id="info_div" class="info_div" style="top:242px;*top:250px;left:283px;display:none;"><!-- 此处火狐的初始top是242像素，每个加28像素，IE的初始TOP是250像素，每个加30像素 -->
				<dl id="info_div_content">
					<dt>为保证您的征友严肃性，您现在不能修改此项，可能的原因是：</dt>
					<dd>1、您距离上次修改所在地未满6个月</dd>
					<dd>2、您正在”光明榜“服务期内</dd>
				</dl>
				<img id="info_div_close" src="../../resources/img/close2.jpg" alt="关闭" onclick="document.getElementById('info_div').style.display='none'">
			</div>
			<!-- 弹层结束 -->
			<!-- 弹层开始 -->
			<div id="change_area_div" class="info_div" style="top:250px;left:290px;display:none;">
				<dl id="info_div_content">
					<strong>请选择修改原因：</strong><br>
					<label for="change_area_reason1"><input name="change_area_reason" id="change_area_reason1" value="1" type="radio">工作地区变更</label><br>
					<label for="change_area_reason2"><input name="change_area_reason" id="change_area_reason2" value="2" type="radio">定居地区变更</label><br>
					<label for="change_area_reason3"><input name="change_area_reason" id="change_area_reason3" value="3" type="radio">求学地区变更</label><br>
					<label for="change_area_reason4"><input name="change_area_reason" id="change_area_reason4" value="4" type="radio">误操作导致地区填写错误</label><br>
					<p style="color:red;margin-top:3px;">温馨提示：为保证您的征友严肃性，所在地区仅支持每6个月修改一次。</p>
				</dl>
			</div>
			<!-- 弹层结束 -->
		</form>
		</div>
	</div>
</div>
<div class="popup" id="to_change_match" style="display:none">
	<h3><a href="javascript:;" onclick="form_submit();" class="closed">关闭</a>提示</h3>
	<p>您修改了所在地区，是否需要修改择友要求中的所在地区？</p>
	<a href="http://www.jiayuan.com/usercp/condition.php" target="_blank" onclick="form_submit();" class="modify"></a>
	<a href="javascript:;" onclick="form_submit();" class="later"></a>
	<span class="baseline1"></span>
	<div class="baseline2"><span class="baseline2_inner1"><span class="baseline2_inner2"></span></span></div>
</div>

		<!-- 中间结束 -->
		<!-- 右边开始 -->
		<div class="info_right">
			<h2>资料完整度：<span class="span101203_1">50分</span></h2>
			<div class="integrality"><div class="plan" style="width:50%;">&nbsp;</div></div>
			<div class="preview"><a href="http://www.jiayuan.com/122261858" onmousedown="send_jy_pv2('editprofile|my_profile|m|122261858');" target="_blank">预览资料</a></div>
			<div class="why">
				<h3>填写基本资料的重要性</h3>
<p> 您在注册过程中已经填写了大部分的基本资料，只需要将空白内容填写完整，就可以获得20%的资料完整度。完整的基本资料是会员搜索到您的重要保证，更是让异性能够初步了解您的基础。</p>
<p> 我们建议您将联系方式填写完整，这部分信息仅在世纪佳缘客服与您联系和邮寄礼品时使用，不会展示在任何公开页面上。</p>

			</div>
			<div class="whybg"></div>
						
		</div>
		<!-- 右边结束 -->
	</div>
	<div class="borderbg"><img src="../../resources/img/border_bottom.jpg"></div>
</div>



<script type="text/javascript" src="../../resources/js/foot.js"></script><script type="text/javascript" src="../../resources/js/w4-simple.js"></script><style type="text/css">
*{padding:0;margin:0}
.hf_wapper {width:950px;margin:0 auto;clear:both;font-family:SimSun,Arial,Helvetica,sans-serif}
.hf_wapper img, .hf_wapper img a{border:none}
#common_footer{width:950px;font-size:12px;padding:20px 0;text-align:center;line-height:2;color:#636363}
#common_footer p{text-align:center}
#common_footer p a{margin:0 8px;padding:0;color:#636363;text-decoration:none}
#common_footer p a:hover{margin:0 8px;color:#E7417F;text-decoration:underline}
#common_footer p .bot_link_none:hover{color:#636363;text-decoration:none}
</style>
<div class="hf_wapper">
    <div class="hf_foot" id="common_footer">
    <p id="bottom_nav_link">
<a name="foot_nav_link" href="http://www.jiayuan.com/helpcenter/postmail.php" target="_blank">联系客服</a>
<a name="foot_nav_link" href="http://www.jiayuan.com/bottom/index.html" target="_blank">关于我们</a>
<a name="foot_nav_link" href="http://www.jiayuan.com/bottom/connect.html" target="_blank">联系我们</a>
<a name="foot_nav_link" href="http://www.jiayuan.com/bottom/business.html" target="_blank">无线业务</a>
<a name="foot_nav_link" href="http://www.jiayuan.com/bottom/declare.html" target="_blank">注册条款</a>
<a name="foot_nav_link" href="http://www.jiayuan.com/bottom/links.php" target="_blank">友情链接</a>
<a name="foot_nav_link" href="http://www.jiayuan.com/bottom/jobs.html" target="_blank">招聘信息</a>
<a name="foot_nav_link" href="http://www.jiayuan.com/bottom/notice.html" target="_blank">交友信息</a>
<a name="foot_nav_link" href="http://www.jiayuan.com/bottom/private.html" target="_blank">隐私保护</a>
<a name="foot_nav_link" href="http://www.jiayuan.com/helpcenter/" target="_blank">帮助中心</a>
<a name="foot_nav_link" href="http://www.jiayuan.com/guard/" target="_blank">安全中心</a>
</p>
<p id="bottom_site_copyright" style="">
<a class="bot_link_none">中文实名：世纪佳缘</a>
<a class="bot_link_none">ICP证书：沪B2-20100074</a>
<a href="http://www.jiayuan.com/certificate/zengzhi.html" target="_blank">增值电信业务经营许可证：沪B2-20070313</a>
<a href="http://www.jiayuan.com/certificate/iso.html" target="_blank">ISO9001质量体系认证</a>
<a href="http://www.jiayuan.com/certificate/license.html" target="_blank">沪网文[2012]0720-106号</a>
</p>
<p>
©&nbsp;&nbsp;2003-2014&nbsp;版权所有&nbsp;&nbsp;&nbsp;&nbsp;京公网安备110105002124号&nbsp;&nbsp;&nbsp;&nbsp;不良和违法信息举报专线：010-57835066
</p>
<div id="page_bottom_info" style="text-align:center;margin-bottom:10px"></div>
<script type="text/javascript">
//Begin PV statistics
var common_bot_domain_array = new Array();	//参与统计的频道/栏目配置数组
common_bot_domain_array['www_index']= 1;	//佳缘站首页
common_bot_domain_array['www']		= 1;
common_bot_domain_array['msg']		= 1;
common_bot_domain_array['usercp']	= 1;	//我的佳缘首页
common_bot_domain_array['usercp_o']	= 1;	//我的佳缘其他页
common_bot_domain_array['profile']	= 1;
common_bot_domain_array['photo']	= 1;
common_bot_domain_array['search']	= 1;
common_bot_domain_array['diary']	= 1;
common_bot_domain_array['love']		= 1;
common_bot_domain_array['xingfu']	= 1;
common_bot_domain_array['party']	= 1;
common_bot_domain_array['gift']		= 1;
common_bot_domain_array['map']		= 1;
common_bot_domain_array['login']	= 1;
common_bot_domain_array['reg']		= 1;
common_bot_domain_array['game']		= 1;
common_bot_domain_array['caipiao']	= 1;
common_bot_domain_array['webim']	= 1;
common_bot_domain_array['show']		= 1;
common_bot_domain_array['book']		= 1;
common_bot_domain_array['case']		= 1;	//专题
common_bot_domain_array['guard']	= 1;
common_bot_domain_array['help']		= 1;
common_bot_domain_array['mobile']	= 1;	//手机交友
common_bot_domain_array['subject']	= 1;	//专题
common_bot_domain_array['vip']		= 1;	//红娘
common_bot_domain_array['club']		= 1;
common_bot_domain_array['meilistar']= 1;	//魅力之星
common_bot_domain_array['master']	= 1;
common_bot_domain_array['paper']	= 1;	//爱情测试
common_bot_domain_array['news']		= 1;
common_bot_domain_array['cooperation']= 1;	//对外合作

var bot_channel_str = '';					//通用底频道字符串
var jy_foot_statistics = {};
//随机数
jy_foot_statistics.rnd_num = function(d, u){
var rnd = parseInt(Math.random() * (u - d + 1) + d);
return rnd;
}
//获取频道标识
jy_foot_statistics.get_channel = function(){
//频道级别的目录配置数组，URL包含以下目录的单独统计
var bottom_channel_dir_array = Array(
'/usercp/?from=','/usercp/','/msg/','/club/','/meilistar/','/cooperation/','/helpcenter/','/guard/',
'/parties/wap_clients/','/parties/','/subject/','/master/','/paper/','/news/'
);
//获取二级域，做频道标识
var host_name = window.location.host.toLowerCase();		//获取域名
var bottom_current_channel = host_name.split('.')[0];
//针对特殊二级域名做细致拆分
switch(bottom_current_channel){
case 'www':
//将www二级域名里的首页、信件、我的佳缘和个人资料页等单独拿出
var bot_href = window.location.href.toLowerCase();	//获取当前URL
//当前如果是首页，就单独设置标记统计
if(bot_href == 'http://www.jiayuan.com/' || bot_href == 'http://www.jiayuan.com/index.html'){
bottom_current_channel = 'www_index';			//佳缘首页，单独处理首页
break;
}
if(bot_href == 'http://www.jiayuan.com/usercp/'){
bottom_current_channel = 'usercp';				//我的佳缘首页，单独处理特殊的我的佳缘首页访问方式
break;
}
var bottom_channel_select = 0;						//频道选择标记
for(var ch_dir = 0; ch_dir < bottom_channel_dir_array.length; ch_dir++){
if(bot_href.indexOf(bottom_channel_dir_array[ch_dir]) >= 0){		//用当前的URL循环匹配配置好的频道数组，用于判断当前应该属于那个频道（栏目）
bottom_channel_select = 1;
break;
}
}
if(bottom_channel_select == 1){
switch(bottom_channel_dir_array[ch_dir]){
case '/usercp/?from=':
bottom_current_channel = 'usercp';		//我的佳缘首页
break;
case '/usercp/':
bottom_current_channel = 'usercp_o';	//我的佳缘其他页面（除我的佳缘首页）
break;
case '/msg/':
bottom_current_channel = 'msg';			//信件
break;
case '/club/':
bottom_current_channel = 'club';		//俱乐部
break;
case '/meilistar/':
bottom_current_channel = 'meilistar';	//魅力之星
break;
case '/cooperation/':
bottom_current_channel = 'cooperation';	//对外合作
break;
case '/helpcenter/':
bottom_current_channel = 'help';		//帮助中心
break;
case '/guard/':
bottom_current_channel = 'guard';		//安全中心
break;
case '/parties/':
case '/subject/':
bottom_current_channel = 'case';		//专题
break;
case '/parties/wap_clients/':
bottom_current_channel = 'mobile';		//手机交友
break;
case '/vip/':
bottom_current_channel = 'vip';			//红娘
break;
case '/master/':
bottom_current_channel = 'master';		//小龙女频道
break;
case '/paper/':
bottom_current_channel = 'paper';		//爱情测试
break;
case '/news/':
bottom_current_channel = 'news';		//媒体
break;
}
}else{
if(/^(http\:\/\/www\.jiayuan\.com\/\d+\/?)([\?\#])?.*$/.test(bot_href) || /^(http\:\/\/www\.miuu\.cn\/\d+\/?)([\?\#])?.*$/.test(bot_href)){
bottom_current_channel = 'profile';			//个人资料页
}
}
break;
case 'xingfu':
bottom_current_channel = 'love';
break;
case 'subject':
bottom_current_channel = 'case';
break;
}
return bottom_current_channel;
}
//开始统计
jy_foot_statistics.run = function(){
//显示版权信息区域
document.getElementById("bottom_site_copyright").style.display = '';
var bot_host = window.location.host.toLowerCase();			//获取域名
bot_channel_str = jy_foot_statistics.get_channel(bot_host);	//获取二级域名（获取相应的频道/栏目标识）
var times = new Date().getTime();							//获取当前时间，配合随机数保证每一次访问小图片参数唯一
if(common_bot_domain_array[bot_channel_str] != 1){
bot_channel_str = 'other';								//其他域名
}
var uid = '';
if(typeof JY != "undefined"){								//判断是否有JY组件
uid = JY.login.getUser().uid;							//获取UID，用于UV统计
if(uid > 0){
uid = uid + '|'										//如果存在UID，拼接UID字符串
}
}
if(bot_channel_str != 'passport'){							//passport使用的是https协议，排除
document.write('<img src="http://pv2.jyimg.com/any/a.gif?||jy_site_all_pv|' + bot_channel_str + '|' + uid + '&t=' + times + jy_foot_statistics.rnd_num(10000, 99999) + '|" style="display:none" />');
}
}
jy_foot_statistics.run();
var common_bot_sub_domain = jy_foot_statistics.get_channel();
//End PV statistics

//Begin comScore Tag 以下，第三方监控代码
var _comscore = _comscore || []; 
_comscore.push({ c1: "2", c2: "15205083" }); 
(function() { 
var s = document.createElement("script"), el = document.getElementsByTagName("script")[0]; s.async = true; 
s.src = (document.location.protocol == "https:" ? "https://sb" : "http://b") + ".scorecardresearch.com/beacon.js"; 
el.parentNode.insertBefore(s, el); 
})(); 
</script><img src="../../resources/img/a.gif" style="display:none"> 
<noscript> 
<img src="http://b.scorecardresearch.com/p?c1=2&c2=15205083&cv=2.0&cj=1" /> 
</noscript> 
<!-- End comScore Tag -->     </div>
</div>
<style type="text/css">
*html{background-image:url(about:blank);background-attachment:fixed}
body{padding:0;margin:0}
#common_footer_guide{width:100%;height:60px;z-index:1001;position:fixed;left:0;bottom:0;_position:absolute;_top:expression(documentElement.scrollTop+documentElement.clientHeight-this.offsetHeight)}
#common_footer_guide .guide_shade{background:#000;width:100%;height:100%;margin:0;padding:0;opacity:.6;filter:alpha(opacity=60)}
#common_footer_guide .guide_layer{position:absolute;width:840px;left:50%;top:0;z-index:1020;margin:0;padding:0;margin-left:-420px;_margin-left:-418px;padding-top:15px}
#common_footer_guide .guide_layer a{diaplay:block;float:left;margin:0;padding:0;width:30px;height:30px;overflow:hidden;margin-left:18px;cursor:pointer;text-decoration:none}
#common_footer_guide .guide_layer .guide_bt{font-size:16px;color:#FFF;font-weight:bold;width:170px;padding-top:4px;height:26px;_padding-top:7px;_height:23px;cursor:text;margin-left:0}
#common_footer_guide .guide_layer .guide_qq{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat 0 0}
#common_footer_guide .guide_layer .guide_qq:hover{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat 0 -31px}
#common_footer_guide .guide_layer .guide_wb{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -31px 0}
#common_footer_guide .guide_layer .guide_wb:hover{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -31px -31px}
#common_footer_guide .guide_layer .guide_bd{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -62px 0}
#common_footer_guide .guide_layer .guide_bd:hover{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -62px -31px}
#common_footer_guide .guide_layer .guide_zf{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -93px 0}
#common_footer_guide .guide_layer .guide_zf:hover{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -93px -31px}
#common_footer_guide .guide_layer .guide_rr{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -124px 0}
#common_footer_guide .guide_layer .guide_rr:hover{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -124px -31px}
#common_footer_guide .guide_layer .guide_kx{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -155px 0}
#common_footer_guide .guide_layer .guide_kx:hover{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -155px -31px}
#common_footer_guide .guide_layer .guide_db{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -186px 0}
#common_footer_guide .guide_layer .guide_db:hover{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -186px -31px}
#common_footer_guide .guide_layer .guide_zc{margin-left:105px;width:128px;background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat 0 -62px}
#common_footer_guide .guide_layer .guide_zc:hover{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat 0 -92px}
#common_footer_guide .guide_layer .guide_dl{width:128px;background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat 0 -122px}
#common_footer_guide .guide_layer .guide_dl:hover{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat 0 -152px}
#common_footer_guide .guide_close{display:block;cursor:pointer;z-index:1010;position:absolute;right:15px;top:15px;width:28px;height:28px;background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat 0 -183px}
#common_footer_guide .guide_close{-webkit-transition:all 0.4s ease;-moz-transition:all 0.4s ease;-ms-transition:all 0.4s ease;-o-transition:all 0.4s ease;transition:all 0.4s ease;}
#common_footer_guide .guide_close:hover{-webkit-transform:rotate(180deg) scale(0.8);-moz-transform:rotate(180deg) scale(0.8);-ms-transform:rotate(180deg) scale(0.8);-o-transform:rotate(180deg) scale(0.8);transform:rotate(180deg) scale(0.8)}
</style>
<div id="common_footer_guide" style="display:none">
<div class="guide_shade"></div>
    <div class="guide_layer">
        <a class="fixPNG guide_bt">直接使用这些账号登录</a>
        <a class="fixPNG guide_qq" href="###"></a>
        <a class="fixPNG guide_wb" href="###"></a>
        <a class="fixPNG guide_bd" href="###"></a>
        <a class="fixPNG guide_zf" href="###"></a>
        <a class="fixPNG guide_rr" href="###"></a>
        <a class="fixPNG guide_kx" href="###"></a>
        <!--<a class="guide_db"></a>-->
        <a class="guide_zc" href="###" target="_blank"></a>
        <a class="guide_dl" href="###"></a>
    </div>
    <a class="fixPNG guide_close" href="javascript:void(0)"></a>
</div>
<script type="text/javascript">
//开启未登录底部状态条判断
if(typeof(HEAD_USER) != 'undefined' && HEAD_USER.uid == 0){
var jy_foot_layer = {};
jy_foot_layer.is_layer_show = true;		//默认开启底通条
jy_foot_layer.session_hash = jy_head_function.get_cookie('SESSION_HASH');
//配置底通浮层
jy_foot_layer.set_config = function(){
var hide_cfg = [];
}
//关闭底通浮层
jy_foot_layer.layer_close = function(){
if(document.getElementById('common_footer_guide')){
document.getElementById('common_footer_guide').style.display = 'none';//如果登录弹层打开，无论底通条什么状态，一律关闭
}
};
//判断登录层是否隐藏
jy_foot_layer.is_login_window_show = function(){
if(typeof(loginWindow) == 'undefined' ){
return false;
}else{
return loginWindow.isOpen();
}
};
//重写登录弹层的onOpen事件，实现底部条与登录层展示互斥
if(typeof(loginWindow) != 'undefined'){
loginWindow.onOpen = function(){
jy_foot_layer.layer_close();
};
}
//显示底部状态条
jy_foot_layer.common_guide = function(){
var common_footer_guide = jQuery('#common_footer_guide'),
win = $(window),
triggerScrollTop = 300,
set_footer_guide = function(){
if(win.scrollTop() > triggerScrollTop){
if(jy_foot_layer.is_layer_show && !jy_foot_layer.is_login_window_show()){
common_footer_guide.fadeIn();
}
}else{
common_footer_guide.fadeOut();
};
};
common_footer_guide.find('.guide_close').bind('click', function(){
jy_foot_layer.is_layer_show = false;
common_footer_guide.hide();
});
win.bind('load scroll resize', set_footer_guide);
url = encodeURI(window.location.href);
jQuery(".guide_qq").attr("href","http://www.jiayuan.com/general/t/?forward=qqAware&c=101&p=1&url="+url);
jQuery(".guide_wb").attr("href","http://www.jiayuan.com/general/t/?forward=sinaAware&c=101&p=2&url="+url);
jQuery(".guide_bd").attr("href","http://www.jiayuan.com/general/t/?forward=baiduOauth&c=101&p=3&url="+url);
jQuery(".guide_zf").attr("href","http://www.jiayuan.com/general/t/?forward=alipayOauth&c=101&p=4&url="+url);
jQuery(".guide_rr").attr("href","http://www.jiayuan.com/general/t/?forward=renrenAware&c=101&p=5&url="+url);
jQuery(".guide_kx").attr("href","http://www.jiayuan.com/general/t/?forward=kaixinAware&c=101&p=6&url="+url);
jQuery(".guide_dl").attr("href","http://login.jiayuan.com/?channel=1001&position=1001&pre_url="+url);
jQuery(".guide_zc").attr("href","http://reg.jiayuan.com/?bd=1001");
jQuery(".guide_qq").mousedown(function(){jy_head_function.click_pv('|common_footer_login_qq|'+jy_foot_layer.session_hash);});
jQuery(".guide_wb").mousedown(function(){jy_head_function.click_pv('|common_footer_login_wb|'+jy_foot_layer.session_hash);});
jQuery(".guide_bd").mousedown(function(){jy_head_function.click_pv('|common_footer_login_bd|'+jy_foot_layer.session_hash);});
jQuery(".guide_zf").mousedown(function(){jy_head_function.click_pv('|common_footer_login_zf|'+jy_foot_layer.session_hash);});
jQuery(".guide_rr").mousedown(function(){jy_head_function.click_pv('|common_footer_login_rr|'+jy_foot_layer.session_hash);});
jQuery(".guide_kx").mousedown(function(){jy_head_function.click_pv('|common_footer_login_kx|'+jy_foot_layer.session_hash);});
jQuery(".guide_dl").mousedown(function(){jy_head_function.click_pv('|common_footer_login_btn|'+jy_foot_layer.session_hash);});
jQuery(".guide_zc").mousedown(function(){jy_head_function.click_pv('|common_footer_reg_btn|'+jy_foot_layer.session_hash);});
jQuery(".guide_close").mousedown(function(){jy_head_function.click_pv('|common_footer_close_btn|'+jy_foot_layer.session_hash);});
};
if(typeof(jQuery) == 'undefined' || parseFloat(jQuery.fn.jquery) < 1.4){
//加载jquery
jy_foot_layer.include_doc = document.getElementsByTagName('head')[0];
jy_foot_layer.include_js = document.createElement('script');
jy_foot_layer.include_js.setAttribute('type', 'text/javascript');
jy_foot_layer.include_js.setAttribute('src', "http://images1.jyimg.com/w4/common/j/jquery-1.7.2.min.js");
jy_foot_layer.include_doc.appendChild(jy_foot_layer.include_js);
if(document.all){//如果是IE
jy_foot_layer.include_js.onreadystatechange = function(){
if(jy_foot_layer.include_js.readyState == 'loaded' || jy_foot_layer.include_js.readyState == 'complete'){
jy_foot_layer.common_guide();
}
}
}else{
jy_foot_layer.include_js.onload = function(){
jy_foot_layer.common_guide();
}
}
}else{
jy_foot_layer.common_guide();
}
}
</script>
<!--[if lte IE 6]>
<script>
DD_belatedPNG.fix('.fixPNG');
</script>
<![endif]-->
<!-- released time 2014-09-28 09:54:05 -->
	<style type="text/css"> 	*{margin:0;padding:0;}	.winpopfoot{width:284px;height:203px;overflow:hidden;word-wrap:break-word;word-break:break-all;font-size:12px;font-family:Arial,SimSun;color:#636363;}	.pngforsjjy{behavior:expression((T=this,T.runtimeStyle.behavior="none")&&(T.p?0:((T.runtimeStyle.backgroundImage = "none",T.runtimeStyle.filter ="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+T.src+"',sizingMethod='image')",T.src = "http://images.jiayuan.com/w3/global/i/bg.gif")),T.p=1));}	.winpopfoot em,.winpopfoot span,.winpopfoot strong{font-weight:normal;font-style:normal;font-size:12px;}	.winpopfoot_box{position:absolute;top:8px;left:10px;width:264px;height:192px;overflow:hidden;border-bottom:3px solid #E876B2;background:url(http://images1.jyimg.com/w4/index/i/bg100804_02.gif) repeat-x 0 -100px;}	.winpopfoot_t{width:264px;height:30px;overflow:hidden;}	.winpopfoot_t em{float:left;width:67px;height:25px;overflow:hidden;margin:5px 0 0 10px;cursor:pointer;}	.winpopfoot_t em strong{width:67px;height:25px;display:block;line-height:25px;font-weight:bold;text-align:center;}	.winpopfoot_t em strong.str2{position:relative;}	.winpopfoot_t em.on{background:url(http://images1.jyimg.com/w4/index/i/bg100804_01.gif) no-repeat 0 0;}	.winpopfoot_t em.on strong.str1{color:#DCDCDC;}	.winpopfoot_t em.on strong.str2{top:-26px;color:#444444;}	.winpopfoot_t em.over strong.str1{color:#C23174;}	.winpopfoot_t em.over strong.str2{top:-24px;color:#FFFFFF;}	.winpopfoot_t span{float:right;width:18px;height:18px;overflow:hidden;margin:7px 5px 0 0;cursor:pointer;background-image:url(http://images1.jyimg.com/w4/index/i/bg100804_01.gif);}	.winpopfoot_t span.sp1{background-position:-70px 0;}	.winpopfoot_t span.sp2{background-position:-90px 0;}	.winpopfoot_t span.sp3{background-position:-110px 0;}	.winpopfoot_c{width:258px;height:162px;overflow:hidden;margin:0 auto;background:#FFFDFD;}	.winpopfoot_c dl{width:228px;height:140px;margin:10px auto 0;overflow:hidden;line-height:20px;}	.winpopfoot_c dd{width:100%;text-align:left;}	.winpopfoot_c dd.martop15{margin-top:15px;}	.winpopfoot_c dd span{float:right;width:100%;text-align:right;}	.winpopfoot_c dd a,.winpopfoot_c dd a:hover{color:#BC0073;text-decoration:underline;}	.winpopfoot_c dd img{display:block;margin:0 auto;border:none;}	</style>		<div style="position: absolute; z-index: 99999; overflow: hidden; border-width: 0px; width: 280px; height: 0px; right: 0px; bottom: 0px; display: none; top: 1086px; left: 1263px;" id="bulletin"> 		<div class="winpopfoot" style="position:absolute;z-index:2;left:0;" id="pop_div"> 	<img src="../../resources/img/bg100804.png" class="pngforsjjy"> 	<div class="winpopfoot_box"> 	<div class="winpopfoot_t"> 	<span class="sp2" title="关闭" onclick="_close();" id="closeButton"></span> 	<span class="sp3" title="最大化" onclick="_mini();" id="switchButton"></span> 	<em id="div_1" class="on"><div><div style="color: rgb(255, 102, 0);" id="link_1"><strong class="str1">互动消息</strong><strong class="str2">互动消息</strong></div></div></em> 	<em id="div_3" class="over"><div><div id="link_3"><strong class="str1">最新活动</strong><strong class="str2">最新活动</strong></div></div></em> 	</div>	<div class="winpopfoot_c"> 	<dl> 	<dd style="" id="con_1" class="martop15"><img src="../../resources/img/logo_prompt.jpg"></dd> 	<dd style="display: none;" id="con_2" class="martop15"></dd> 	<dd style="display: none;" id="con_3"><img src="../../resources/img/logo_prompt.jpg"></dd> 	</dl> 	<iframe scrolling="no" id="run_fra" name="run_fra" src="" frameborder="0" height="0" width="0"></iframe> 	</div> 	 	</div> 	</div> 	 	</div> 	<script type="text/javascript" src="../../resources/js/pop.js"></script><div id="bgdiv_foot" style="position:absolute;display:none; left:0px; top:0px; width:100%; height:100%; filter:alpha(opacity=30); opacity:0.3; background-color:#000000; z-index:12000;"></div> <div class="dragdiv" id="bg_div_float_foot" style="z-index:12001;position:absolute;top:0px;left:0px;display:none"></div><script src="../../resources/js/pop_template.php"></script><script src="../../resources/js/jyim2.js"></script><link href="../../resources/css/jyim3.css" type="text/css" rel="stylesheet"><audio preload="auto" id="audio_139388"><div class="im_bar_min" style="display: block;" id="im_bar"><div t="#im_friend" id="contact" class="im_btn fr im_btn_last oneCity pr im_attached_pop"><a class="im_inner_btn">联系人</a><span style="display: none;" class="amount fl"><span class="amount_leftBg fl"></span><span class="amount_centerBg fl">0</span><span class="amount_rightBg fl"></span></span><div id="im_friend" class="im_win im_samecity_div"><div class="pr im_win_title webimTop"><ul><li class="oning">初次联系</li><li>关注</li><li>好友</li></ul><div class="im_t_close webimClose"></div></div><div class="im_list"><div class="webimZaixian"><div class="webimZaixianRS">在线（<span></span><span></span><span></span>）</div><div class="webimCakanquanbu"><a href="###">查看全部&gt;&gt;</a></div></div><div class="webimList"><ul></ul><ul></ul><ul></ul></div><div class="im_loading"><table><tbody><tr><td><img src="../../resources/img/loading.gif"><span>正在加载，请稍候</span></td></tr></tbody></table></div><div class="webimListAnzhuang"><a href="#">安装佳缘佳信3.0，与她免费视频聊天</a></div></div></div></div><div t="#im_chatx" id="onlineTalk" class="im_btn fr im_btn_second onlineTalk pr im_attached_pop"><a class="im_inner_btn">聊天</a><span style="display: none;" class="amount fl"><span class="amount_leftBg fl"></span><span class="amount_centerBg fl">0</span><span class="amount_rightBg fl"></span></span><div id="im_chatx" class="im_win onlineTalk_content"><div class="pr im_win_title onlineTalk_content_title"><div class="title_leftBg fl"></div><h1 class="title_centerBg">聊天</h1><div class="title_rightBg fl"><a class="pr im_t_close"></a><a target="_blank" href="http://webim.jiayuan.com/messages.php" class="notes">查看全部聊天记录</a></div></div><div class="im_list"><div id="im_rec_chat_con"><span class="im_list_no_chat">暂无未读消息</span><div class="im_rec_chat"><img><span>和我聊天</span></div><div class="im_rec_chat"><img><span>和我聊天</span></div><div class="im_rec_chat"><img><span>和我聊天</span></div></div></div></div></div><div t="#im_msgx" class="im_btn fr im_btn_first message pr im_attached_pop"><a class="im_inner_btn">消息</a><span style="display: none;" class="amount fl"><span class="amount_leftBg fl"></span><span class="amount_centerBg fl">0</span><span class="amount_rightBg fl"></span></span><div id="im_msgx" class="im_win message_content"><div class="pr im_win_title message_content_title"><div class="title_leftBg fl"></div><h1 class="title_centerBg">消息</h1><div class="title_rightBg fl"><a class="pr im_t_close"></a></div></div><div class="im_list"><img class="im_jy_logo" src="../../resources/img/logo_prompt_002.jpg"></div></div></div><div class="im_btn fr letter"><a class="im_inner_btn">收件箱</a><span style="display: inline;" class="amount fl"><span class="amount_leftBg fl"></span><span class="amount_centerBg fl">11</span><span class="amount_rightBg fl"></span></span></div><div style="display: none;" id="im_pop_win" class="pa im_win"><div class="im_title"><div class="im_t_tab">互动消息</div><div class="im_t_tab">交友活动</div><div class="title_rightBg fr im_t_close"></div></div><div class="im_pop_content"><img src="../../resources/img/logo_prompt_002.jpg"></div><div class="im_pop_content"><img src="../../resources/img/logo_prompt_002.jpg"></div></div><div style="display: none;" class="im_yfms_tpl0" id="im_yfms"></div><div style="display: none;" id="im_chat_pop_win" class="pa im_win"><div class="im_chat_win_title"><div class="im_chat_win_nick"></div><div class="fr im_t_close"></div></div><div class="im_chat_win_content  im_pop_content"><div><span></span><span><a class="im_tosee_chatmsg">查看详情</a></span></div></div></div><div style="display: none;" id="im_zhuanti"></div><div style="display: none;" id="im_profile_pop_win"><div class="dzhLayer"><div class="dzhLayer_top"><a href="javascript:void(0);" class="im_t_close dzhLayer_close">&nbsp;</a><div class="dzhLayer_set"><a href="javascript:void(0);" class="dzhLayer_bxs" style="display: none;">今日不再提醒</a></div></div><div class="dzhLayer_text"><p>对方在线，和TA聊聊吧</p></div><div class="dzhLayer_icon"><div class="dzhLayer_iconImg"><a href="javascript:void(0);" class="hi"><span></span><div class="tishilayer1"><p class="tishilayer_hi">想了解你更多,可以聊聊么?</p></div></a><a href="javascript:void(0);" class="face"><span></span><div class="tishilayer2"><p class="tishilayer_face">想了解你更多,可以聊聊么?</p></div></a><a href="javascript:void(0);" class="flower"><span></span><div class="tishilayer3"><p class="tishilayer_flower">想了解你更多,可以聊聊么?</p></div></a><a href="javascript:void(0);" class="heart"><span></span><div class="tishilayer4"><p class="tishilayer_xin">想了解你更多,可以聊聊么?</p></div></a></div><div class="dzhLayer_loading"><img src="../../resources/img/jx3_loading.gif">发送中...</div><div class="dzhLayer_loaded"><img src="../../resources/img/send_ok.gif">发送成功</div></div></div></div><div style="display: none;" id="im_jiaxin_pop_win"><div class="jx3_0_1_adv jx3_0_1_adv1"><div class="jx3_0_1_advTop"><a href="javascript:void(0);" class="im_t_close jx3_0_1_advClose">&nbsp;</a></div><div class="jx3_0_1_advBody"><a href="http://im.jiayuan.com/?from=rightbottom" target="_blank" class="jx3_0_1_advButton">&nbsp;</a></div></div></div><div t="#im_myjy" class="im_btn fl myJiayuan pr im_attached_pop"><a class="im_inner_btn">我的服务</a><div id="im_myjy" class="im_win myjiayuan_content"><div class="pr im_win_title myjiayuan_content_title"><div class="title_leftBg fl"></div><h1 class="title_centerBg">我的服务</h1><div class="title_rightBg fl"><a class="pr im_t_close"></a></div></div><div class="im_list"></div></div></div><ul class="fl im_service_list" id="service_list"><li class="jystamp" title="佳缘邮票"><a target="_blank" href="http://www.jiayuan.com/usercp/center/index.php">佳缘邮票</a></li><li class="speedpost" title="特快专递"><a target="_blank" href="http://www.jiayuan.com/msgapp/ems/?a=info">特快专递</a></li><li class="diamond_g" title="钻石会员"><a target="_blank" href="http://www.jiayuan.com/usercp/service/bmsg_tg2.php">钻石会员</a></li><li class="vip_g" title="VIP会员"><a target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php">VIP会员</a></li><li class="readmail_g" title="看信包月"><a target="_blank" href="http://www.jiayuan.com/usercp/service/bmsg.php">看信包月</a></li><li class="forground_g" title="排名提前"><a target="_blank" href="http://www.jiayuan.com/usercp/service/priority.php">排名提前</a></li><li class="express_g" title="超级聚光灯"><a target="_blank" href="http://www.jiayuan.com/usercp/fate_express.php">超级聚光灯</a></li></ul><div t="#im_jyapp" class="im_btn fl jiayuanCenter pr im_attached_pop"><a class="im_inner_btn">佳缘应用</a><div id="im_jyapp" class="im_win jiayuanCenter_content"><div class="pr im_win_title jiayuanCenter_content_title"><div class="title_leftBg fl"></div><h1 class="title_centerBg">佳缘应用</h1><div class="title_rightBg fl"><a class="pr im_t_close"></a></div></div><div class="im_list"></div></div></div><div style="display: none;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">专享特惠--钻石会员立减200元！仅298元/年！马上开通&gt;&gt;</a></div><div style="display: block;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">亲，教你淘最佳配偶！试下“超级聚光灯”</a></div><div style="display: none;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">做大富翁，赢大奖！</a></div><div style="display: none;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">选对“真像”，爱情“不在囧途”</a></div><div style="display: none;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">帮你快速精准锁定心仪异性，快来看看！</a></div></div><script type="text/javascript" src="../../resources/js/pop_freq.js"></script><script type="text/javascript" src="../../resources/js/popupLogin_v2.js"></script>




<!-- <div style="position: absolute; width: 1px; height: 1px;" id="typeAContainer"> -->
<!-- <object data="selfBasicInfo_files/typeA4.swf" id="typeA" type="application/x-shockwave-flash" height="1" width="1"><param value="false" name="menu"><param value="noScale" name="scale"><param value="true" name="allowFullscreen"><param value="always" name="allowScriptAccess"><param value="#FFFFFF" name="bgcolor"></object></div> -->

<div id="pop_bg" style="position: absolute; display: none; top: 0px; left: 0px; width: 1263px; opacity: 0.1; background: none repeat scroll 0% 0% rgb(0, 0, 0); z-index: 1000001; height: 1456px;"></div><div id="pop_open_window" style="position: absolute; z-index: 1000002; top: 97px; left: 295.5px; display: none;"><div style="position:absolute; left:0px;"><div id="pop_open_window_content">
<!-- shanf -->
<!-- <iframe style="height: 504px; width: 672px;" src="../../resources/html/bm_show.htm" id="pop_open_window_iframe" scrolling="no" allowtransparency="true" frameborder="0" height="504" width="672"></iframe> -->
</div></div></div></body></html>