<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>阅读信件</title>
	<link href="../../resources/css/base.css" rel="stylesheet" type="text/css">
	<link href="../../resources/css/readLetterWord.css" rel="stylesheet" type="text/css">
	<script src="../../resources/js/beacon.js" async=""></script><script type="text/javascript" src="../../resources/js/jquery.js"></script>
	<script type="text/javascript" src="../../resources/js/word.js"></script>
	<script type="text/javascript" src="../../resources/js/popup.js"></script>
	<script src="../../resources/js/pv.js" type="text/javascript"></script>
	<!--[if lte IE 6]>
     <script type="text/javascript" src="http://images1.jyimg.com/w4/msg/j3/dd_belatedpng.js"></script>
        <script>
        DD_belatedPNG.fix('.heart,.pic-num,.star_cur,.star_gray');
        </script>
<![endif]-->
<script>try {  for(var lastpass_iter=0; lastpass_iter < document.forms.length; lastpass_iter++){    var lastpass_f = document.forms[lastpass_iter];    if(typeof(lastpass_f.lpsubmitorig)=="undefined"){      if (typeof(lastpass_f.submit) == "function") {        lastpass_f.lpsubmitorig = lastpass_f.submit;        lastpass_f.submit = function(){          var form = this;          try {            if (document.documentElement && 'createEvent' in document)            {              var forms = document.getElementsByTagName('form');              for (var i=0 ; i<forms.length ; ++i)                if (forms[i]==form)                {                  var element = document.createElement('lpformsubmitdataelement');                  element.setAttribute('formnum',i);                  element.setAttribute('from','submithook');                  document.documentElement.appendChild(element);                  var evt = document.createEvent('Events');                  evt.initEvent('lpformsubmit',true,false);                  element.dispatchEvent(evt);                  break;                }            }          } catch (e) {}          try {            form.lpsubmitorig();          } catch (e) {}        }      }    }  }} catch (e) {}</script></head>
<body>
<!--js公共头 s-->
<!-- <script type="text/javascript">document.domain = "jiayuan.com"; </script> -->
<!-- <script type="text/javascript" src="../../resources/js/head_common.js"></script>  -->
<!-- <script type="text/javascript" src="../../resources/js/head_red_simple.js"></script> -->
<!-- <script type="text/javascript" src="../../resources/js/head_pink.js"></script> -->
<script type="text/javascript">
//会员信息对象
window.HEAD_USER = {};
HEAD_USER.uid = 0;
//通用头功能函数对象
var jy_head_function = {};
jy_head_function.login_bar_enabled	= true;//通用底登录浮层默认启动
jy_head_function.webim_bar_enabled	= true;//通用底登录后WEBIM浮层默认启动
jy_head_function.layer_tpl			= '';//通用浮层灰色背景模板
jy_head_function.layer_tpl_id		= '';//通用浮层灰色背景模板ID
//判断各种IE浏览器
jy_head_function.is_ie = function(){//IE,只有IE支持ActiveXObject
return ("ActiveXObject" in window);
}
jy_head_function.is_ie6 = function(){//IE6,IE6是不支持window.XMLHttpRequest的
return jy_head_function.is_ie() && !window.XMLHttpRequest;
}
jy_head_function.is_ie8 = function(){//IE8,alert(!-[1,])//->IE678返回NaN 所以!NaN为true 标准浏览器返回-1 所以!-1为false
return jy_head_function.is_ie() && !-[1,] && document.documentMode;
}
jy_head_function.is_ie7 = function(){//IE7,只有IE8+才支持document.documentMode
return jy_head_function.is_ie() && window.XMLHttpRequest && !document.documentMode;
}
jy_head_function.in_array = function(array, value){//判断value是否在数组array中
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
if(this.in_array(domain_suffix, host_arr[i])){
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
var common_hash = this.get_cookie("COMMON_HASH");//登录状态
var profile = this.get_cookie("PROFILE");
if(common_hash && profile && profile.length > 11){
//说明：0,UID;1,昵称;2,性别;3,头像地址;4,头像标记;5,认证;6,空占位;7,头像图片名称;8,征友状态;9,俱乐部等级;10,金豆数;11,新旧会员标记
var arr = profile.split(":");
if(/^\d{7,10}$/.test(arr[0])){
HEAD_USER.uid = arr[0];//UID
HEAD_USER.nickname = decodeURIComponent(arr[1]);//昵称
HEAD_USER.sex = arr[2];//性别
HEAD_USER.avatar_flag = arr[4];//头像状态标记
HEAD_USER.avatar = "http://" + arr[3] + "/" + arr[7];//头像
HEAD_USER.certify = arr[5];//认证
HEAD_USER.status = arr[8];//征友状态
HEAD_USER.level = '';//俱乐部等级
HEAD_USER.bean = 0;//俱乐部金豆数
HEAD_USER.type = 0;
if(arr.length >= 11){
HEAD_USER.level = arr[9];
HEAD_USER.bean = arr[10];
HEAD_USER.type = arr[11];//新旧会员标记类型new_msg
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
jy_head_function.get_channel = function(){//获取频道标识，目前用于通用头的导航选中处理
host_name = location.hostname.toLowerCase();//当前域名
var channel_dir_array = Array('/usercp/','/msg/','/parties/wap_clients/','/9158/','/yindou/');//频道目录数组
var head_current_channel = host_name.split('.')[0];//获取二级子域名，处理当前头部选中链接样式
//域名转换标识
switch(head_current_channel){
case 'www':
case 'case':
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
case '/9158/':
head_current_channel = 'hd9158';
break;
case '/yindou/':
head_current_channel = 'yindou';
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
jy_head_function.hide_select = function(){//隐藏页面全部的select控件
var selects = document.getElementsByTagName("SELECT");
for(var i=0 ; i<selects.length; i++){
selects[i].style.display = "none";
}
};
jy_head_function.show_select = function(){//显示页面全部的select控件
var selects = document.getElementsByTagName("SELECT");
for(var i=0 ; i<selects.length; i++){
selects[i].style.display = "";
}
};
jy_head_function.is_show_layer = function(){//判断显示状态
if(document.getElementById('jy_common_bg_layer')){
if(document.getElementById('jy_common_bg_layer').style.display == "none"){
return false
}else{
return true;
}
}
};
jy_head_function.on_open_layer = function(){//显示过程中
};
jy_head_function.on_close_layer = function(){//关闭过程中
};
jy_head_function.hide_layer = function(){//隐藏通用背景
if(document.getElementById('jy_common_bg_layer')){
document.getElementById('jy_common_bg_layer').style.display = "none";
this.on_close_layer();
if(this.is_ie6()){this.show_select();}
document.body.onresize = function(){};
if(this.layer_tpl_id != ''){
if(document.getElementById(this.layer_tpl_id)){
document.getElementById(this.layer_tpl_id).innerHTML = this.layer_tpl;//恢复模板内容到原来的位置
this.layer_tpl_id = '';
this.layer_tpl = '';
}
document.getElementById('bg_layer_html').innerHTML = '';//清空弹层里的内容
}
}
return;
};
jy_head_function.show_layer = function(){//显示通用背景
if(document.getElementById('jy_common_bg_layer')){
var _this = this;
var obj_div = document.getElementById('jy_common_bg_layer');
this.layer_tpl_id = arguments[0] ? arguments[0] : '';//获取模板对象ID
if(!this.is_show_layer() && this.layer_tpl_id != ''){
if(document.getElementById(this.layer_tpl_id)){
this.layer_tpl = document.getElementById(this.layer_tpl_id).innerHTML;//将指定内容的模板复制到弹层里
document.getElementById(this.layer_tpl_id).innerHTML = '';//将模板源清空，避免内部代码冲突
}
}
document.getElementById('bg_layer_shade').onclick = function(){
_this.hide_layer();//点背景关闭浮层
};
document.body.onresize = function(){
_this.show_layer();//重新改变浮层
};
document.getElementById('bg_layer_html').innerHTML = this.layer_tpl;
obj_div.style.display = "block";
this.on_open_layer();
if(this.is_ie6()){this.hide_select();}
var layer_w	= document.getElementById('bg_layer_html').offsetWidth;//内容宽
var layer_h	= document.getElementById('bg_layer_html').offsetHeight;//内容高
var screen_w= document.documentElement.clientWidth;//可视宽
var screen_h= document.documentElement.clientHeight;//可视高
var layer_left = (screen_w / 2) - (layer_w / 2);
var layer_top = (screen_h /2) - (layer_h / 2);
document.getElementById('bg_layer_html').style.left = layer_left + "px";
document.getElementById('bg_layer_html').style.top = layer_top + "px";
}
return;
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
common_nav_array['hd9158_tag']	= "互动直播";
common_nav_array['hd9158_url']	= "http://www."+jy_top_domain+"/9158/";
common_nav_array['hd9158_css']	= "";
common_nav_array['hd9158_sta']	= "|head_navigation_hd9158|";
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

//兼容旧程序
var mydomain= "www." + jy_top_domain;//拼完整www域名
var profile	= HEAD_USER;
//兼容结束

var current_nav_flag = jy_head_function.get_channel() + '_css';
//设置当前频道导航选中样式
common_nav_array[current_nav_flag] = 'head_nav_cur';
</script>
<script type="text/javascript" src="../../resources/js/jiayuan_logo_config.js"></script>
<script type="text/javascript" src="../../resources/js/JY_Alert.js"></script>
<!--[if lte IE 6]>
<script type="text/javascript" src="http://images1.jyimg.com/w4/common/j/DD_belatedPNG_0.0.8a_IE6.js"></script>
<![endif]--> <style type="text/css">
@charset "utf-8";
#head_red_simple_css{background-color:#F03B6E;height:50px;margin:0;padding:0;width:100%}
#head_red_simple_css *{margin:0;padding:0}
#head_red_simple_css .headMain{margin:0 auto;width:970px;height:50px}
#head_red_simple_css .headMain a.logo{background:url(http://images1.jyimg.com/w4/common/i/head/logo_pink.jpg ) no-repeat;float:left;height:50px;margin:0 16px 0 0;width:132px}
#head_red_simple_css .headMain .logoBar{background:url(http://images1.jyimg.com/w4/common/i/head/bg_headLine1.jpg) no-repeat 0 9px;float:left;height:34px;padding:7px 0 0 16px}
#head_red_simple_css .headMain .pageTitle{color:#FFF;float:left;font:20px/34px "Microsoft Yahei";height:34px;padding:7px 16px 0 0;-moz-text-shadow:-1px 1px #A7072B;-webkit-text-shadow:-1px 1px #A7072B;text-shadow:-1px 1px #A7072B}
#head_red_simple_css .headNav{float:left;height:34px;padding:7px 0 0 0}
#head_red_simple_css .headNav a{color:#FFF;float:left;font:12px/34px arial;text-decoration:none;height:34px;padding-top:1px;*padding-top:3px}
#head_red_simple_css .headNav a:hover{text-decoration:underline}
#head_red_simple_css .headNav a.curr{font-weight:bold}
#head_red_simple_css .headNav span.sep{color:#FFF;float:left;font:12px/34px arial;padding:0 7px;height:34px}
#head_red_simple_css .headMain .headRight{color:#FFF;float:right;font:12px/50px arial;height:50px;text-align:right}
#head_red_simple_css .headMain .headRight .sep{margin:0 8px}
#head_red_simple_css .headMain .headRight a.link{color:#FFF;text-decoration:none;font-size:12px}
#head_red_simple_css .headMain .headRight a.link:hover{text-decoration:underline}
</style>
<div id="head_red_simple_css">
<div class="headMain">
<a class="logo"></a>
<div class="logoBar" id="head_logo_bar"></div>
<h1 class="pageTitle" id="head_red_simple" style="">阅读信件</h1>
<div class="headNav" id="head_red_simple_nav" style="display:none">
<a href="http://www.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_www|');" target="_blank">首页</a><span class="sep">|</span>
<a href="http://usercp.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_usercp|');" target="_blank">我的佳缘</a><span class="sep">|</span>
<a href="http://www.jiayuan.com/club/" onclick="jy_head_function.click_pv('|head_navigation_club|');" target="_blank">俱乐部</a><span class="sep">|</span>
<a href="http://search.jiayuan.com/v2/" onclick="jy_head_function.click_pv('|head_navigation_search|');" target="_blank">搜索</a><span class="sep">|</span>
<a href="http://search.jiayuan.com/v2/new.php" onclick="jy_head_function.click_pv('|head_navigation_new|');" target="_blank">新会员</a><span class="sep">|</span>
<a href="http://search.jiayuan.com/v2/online.php" onclick="jy_head_function.click_pv('|head_navigation_online|');" target="_blank">聊天</a><span class="sep">|</span>
<!--<a href="http://party.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_party|');" target="_blank">活动</a><span class="sep">|</span>
<a href="http://diary.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_diary|');" target="_blank">两性</a><span class="sep">|</span>-->
            <a href="http://www.jiayuan.com/9158/" onclick="jy_head_function.click_pv('|head_navigation_hd9158|');" target="_blank">互动直播</a><span class="sep">|</span>
<a href="http://game.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_game|');" target="_blank">游戏</a><span class="sep">|</span>
<a href="http://love.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_love|');" target="_blank">晒幸福</a><span class="sep">|</span>
<a href="http://vip.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_liehun|');" target="_blank">红娘一对一</a><span class="sep">|</span>
<a href="http://www.izhenxin.com/login/getSign/?url=http%3A%2F%2Fwww.jiayuan.com%2Fusercp%2Fiz_login.php%3Furl%3Dhttp%253A%252F%252Fwww.izhenxin.com%252F&amp;from=JYDH" onclick="jy_head_function.click_pv('|head_navigation_izhenxin|');" target="_blank">爱真心</a>
</div>
<div class="headRight" id="head_red_simple_user" style="display:none"><span>老公</span><span class="sep">|</span><a href="http://login.jiayuan.com/logout2.php" class="link">退出</a></div>
</div>
</div>
<script type="text/javascript">
document.getElementById('head_red_simple_nav').innerHTML = jy_head_function.format_tpl(document.getElementById('head_red_simple_nav').innerHTML);	//导航信息
if(HEAD_USER.uid > 0){
var loginstr= '<span>'+HEAD_USER.nickname+'</span><span class="sep">|</span><a href="'+common_nav_array['login_url']+'logout2.php" class="link">退出</a>';
}else{
var pre_url	= document.location.href;
var loginstr= '<a href="'+common_nav_array['login_url']+'?channel=200&position=203&pre_url='+encodeURIComponent(pre_url)+'" class="link" onclick="jy_head_function.click_pv(\'|head_navigation_login|\');">登录</a><span class="sep">|</span><a href="'+common_nav_array['reg_url']+'?bd=213" class="link" onclick="jy_head_function.click_pv(\'|head_navigation_reg|\');" target="_blank">注册</a>';
}
document.getElementById('head_red_simple_user').innerHTML = loginstr;	//会员登录信息
</script>
<!-- released time 2014-11-07 11:17:03 -->
 
<script type="text/javascript">
	document.getElementById('head_red_simple').innerHTML = '阅读信件';
	function str_trim(str){
		str = str.replace('<P>&nbsp;<\/P>', "");
		return str.replace(/(^\s*)|(\s*$)/g, "");
	}
</script>
<!--js公共头 e-->
<div id="container">
	<div class="dialog-area">
		<p class="tips"><i></i><span>开通钻石会员，让沟通更加畅通无阻，<a href="http://www.jiayuan.com/usercp/service/bmsg_tg2.php?cnm=usercp&amp;zs_from=4&amp;src_key=new_usercp_menu">马上开通</a>。</span></p>
		<div class="dialog-mod">
			<!--个人资料-->
			<div class="dialog-detail">
				<div class="avatar-pic">
										<a target="_blank" href="http://www.jiayuan.com/35307408?lt=msgbox" onmousedown="send_jy_pv2('|1015752_2|121261858');">
						<img src="../../resources/img/59064b09c_1_avatar_p.jpg" alt="">
												<span class="pic-num">2</span>
																	</a>
									</div>
				<div class="con-mod"> 
					<div class="specific">
						<a class="name" href="http://www.jiayuan.com/35307408?lt=msgbox" target="_blank" onmousedown="send_jy_pv2('|1015752_4|121261858');">天空</a>
						<span class="icon-box">
							 
						</span>
						<span class="time" onmousedown="send_jy_pv2('|1015752_6|');"><a onclick="send_jy_pv2('msg_kx_vipkj');send_jy_pv2('|vip_entry_zjdl_click|');" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_zjdl" target="_blank" class="a_blue12">最近登录时间：VIP会员可见</a></span>
					</div>
					<p class="data">${operatingUser.age}岁,${operatingUser.marriage},${operatingUser.height},${operatingUser.address},${operatingUser.education},${operatingUser.salary}</p>
					<div class="member-like clearfix">
						<div class="like"> 
							个人独白：一个人在外走得久了，总有种流浪的感觉。来到这里真的是偶然的，...
						</div>
						<div class="fun"> 
							<ul class="clearfix"> 
																<li class="attention"><a id="guanzhu" href="http://www.jiayuan.com/usercp/friendadd.php?uidhash=5459064b09c2200a149bd0294ad48718" onmousedown="send_jy_pv2('|1015752_7|');"><i></i>加关注</a></li>
																								<li class="stop"><a tag="1" id="zuzhi" href="javascript:;" onmousedown="send_jy_pv2('|1015752_8|');">阻止</a></li>
																<li class="report">
									<a target="_blank" href="http://www.jiayuan.com/complain/?old=1&amp;uid_hash=5459064b09c2200a149bd0294ad48718&amp;check=ts" onmousedown="send_jy_pv2('|1015752_9|');">举报<i></i></a>
									<div class="report-layer">
										<ul>
											<li><a target="_blank" href="http://www.jiayuan.com/complain/?old=1&amp;uid_hash=5459064b09c2200a149bd0294ad48718&amp;check=jq%3E" onmousedown="send_jy_pv2('|1015752_10|');">对方借钱</a></li>
											<li><a target="_blank" href="http://www.jiayuan.com/complain/?old=1&amp;uid_hash=5459064b09c2200a149bd0294ad48718&amp;check=gg" onmousedown="send_jy_pv2('|1015752_11|');">发广告</a></li>
											<li class="bd-none"><a target="_blank" href="http://www.jiayuan.com/complain/?old=1&amp;uid_hash=5459064b09c2200a149bd0294ad48718&amp;check=yyq" onmousedown="send_jy_pv2('|1015752_12|');">一夜情</a></li>
										</ul>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!--通信记录-->
			<div class="dialog-list">
				
				<p class="more-report" id="more">
									<a href="http://www.jiayuan.com/msg/v6/showmsg_more.php?obj_uid_disp=pueoV27mqnzNCyhipzWxTTBBaQw7SrBow4BjvjjF7U7Odxnuh12mEw..&amp;offset=3&amp;limit=10" onmousedown="send_jy_pv2('|1015752_13|121261858');"><i></i>更早之前的未读信</a>
								</p>
				
				<!--详细列表-->
						<div class="letter-detail" id="msg_list">
						<c:forEach var="letter" items="${historyLetters}" >
							<c:if test="${letter.fromUserId == operatingUser.userId}">  <!--对方的信-->
								<!--左-->
								<div class="item left clearfix">
									<div class="lt-face"><a target="_blank" href="http://www.jiayuan.com/35307408?lt=msgbox" onmousedown="send_jy_pv2('|1015752_15|121261858');"><img src="../../resources/img/59064b09c_1_avatar_s.jpg" alt=""></a></div>
									<div class="lt-detail">
										<div class="lt-time">${letter.createTime}</div>
										<div class="lt-txt-mod clearfix">
																			<div class="lt-txt">
												<span class="tarr" type=""></span>
												<p>${letter.content}</p>
												<a href="http://www.jiayuan.com/msg/inbox/delete.php?msgids=c5d10000002959a3&amp;box=_T&amp;out_encode=qIpULDAAhHdoY5at3D1ysLWDCQwonwEALFsEDa*GJXxKBzHLyrni6PewEZKO6yVkvODxYB1KfTegnk-4FA.." class="close" onmousedown="send_jy_pv2('|1015752_17|121261858');"></a>
											</div>
																												<div class="unread"><i class="point" title="未读"></i></div>
																											<div class="stars" msgid="c5d10000002959a3">
												<a class="star_gray" style="display: none;"></a>
												<a class="star_cur" style="display:none;"></a>
											</div>
										</div>
									</div>
								</div>
							</c:if>
							<c:if test="${letter.fromUserId != operatingUser.userId}">  <!--自己发的信-->
								<!--右-->
								<div class="item right clearfix">
									<div class="lt-face"><a target="_blank" href="http://www.jiayuan.com/122261858?lt=msgbox" onmousedown="send_jy_pv2('|1015752_15|121261858');"><img src="../../resources/img/zwzp_m_s.jpg" alt=""></a></div>
									<div class="lt-detail">
										<div class="lt-time">${letter.createTime}</div>
										<div class="lt-txt-mod clearfix">
											<div class="lt-txt">
												<span class="tarr"></span>
												<p>${letter.content}</p>
												<a href="http://www.jiayuan.com/msg/inbox/delete.php?msgids=c5d000000025b3b4&amp;box=_F&amp;out_encode=XaqD4gL3jtXGjVBPJeu3dw95BV7CgFS2V7O1V4dZUnkPeCXFBD82YxQDuWjlcM*PA1Mm4YX-ldHJzY1j6w.." class="close" onmousedown="send_jy_pv2('|1015752_17|121261858');"></a>
											</div>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
															


																				<!--左-->
<!-- 					<div class="item left clearfix"> -->
<!-- 						<div class="lt-face"><a target="_blank" href="http://www.jiayuan.com/35307408?lt=msgbox" onmousedown="send_jy_pv2('|1015752_15|121261858');"><img src="../../resources/img/59064b09c_1_avatar_s.jpg" alt=""></a></div> -->
<!-- 						<div class="lt-detail"> -->
<!-- 							<div class="lt-time">11月01日 21:17</div> -->
<!-- 							<div class="lt-txt-mod clearfix"> -->
<!-- 																<div class="lt-txt"> -->
<!-- 									<span class="tarr" type=""></span> -->
<!-- 									<p>能够与你在这里相遇即是缘分，希望能够携手同行。</p> -->
<!-- 									<a href="http://www.jiayuan.com/msg/inbox/delete.php?msgids=c5d1000000297b4e&amp;box=_T&amp;out_encode=WlOmuJcg37mGWTsrhu2mqVpoCyhypPsfqjznM2zR1KA3oq194*pyXwgRxZHJYq4-fs37nUHtCT1AGS29eQ.." class="close" onmousedown="send_jy_pv2('|1015752_17|121261858');"></a> -->
<!-- 								</div> -->
<!-- 																									<div class="unread"><i class="point" title="未读"></i></div> -->
<!-- 																								<div class="stars" msgid="c5d1000000297b4e"> -->
<!-- 									<a class="star_gray" style="display: none;"></a> -->
<!-- 									<a class="star_cur" style="display:none;"></a> -->
<!-- 								</div> -->
<!-- 															</div> -->
							
<!-- 													</div> -->
<!-- 					</div> -->
				</div>
								
			</div>
			<!--发信框-->
			<div class="replay-area">
				<div class="replay-mod">
					<div class="replay-function">
						<ul class="clearfix"> 
							<li class="topic selected">
								<a href="javascript:;" class="replay-icon" onmousedown="send_jy_pv2('|1015896_0|121261858');"><i></i>使用模板</a>

			
			<div style="display: block;" class="layer topic-layer">
										
									<p class="chat">
										<input class="moban_id" value="" type="hidden">
										<span class="pre_text">感谢您的来信！很高兴能和您相识。</span>
										<!--新增textarea begin-->
										<textarea class="modify_text" style="display:none;">感谢您的来信！很高兴能和您相识。</textarea>
										<span class="state1">											
											<a class="w_use" href="javascript:;">使用</a>
											<a class="w_modify" href="javascript:;">修改</a>
										</span>
										<span class="state2">
											(限100字内)
											<a class="w_save" href="javascript:;">保存</a>
											<a class="w_cancel" href="javascript:;">取消</a>
										</span>
										<!--新增textarea end-->
									</p>
										
									<p class="chat">
										<input class="moban_id" value="" type="hidden">
										<span class="pre_text">让我们保持联系吧，希望我是那个你一直在寻找的人。</span>
										<!--新增textarea begin-->
										<textarea class="modify_text" style="display:none;">让我们保持联系吧，希望我是那个你一直在寻找的人。</textarea>
										<span class="state1">											
											<a class="w_use" href="javascript:;">使用</a>
											<a class="w_modify" href="javascript:;">修改</a>
										</span>
										<span class="state2">
											(限100字内)
											<a class="w_save" href="javascript:;">保存</a>
											<a class="w_cancel" href="javascript:;">取消</a>
										</span>
										<!--新增textarea end-->
									</p>
										
									<p class="chat">
										<input class="moban_id" value="" type="hidden">
										<span class="pre_text">谢谢来信，可以介绍一些你的基本情况吗？如家庭、工作等等。</span>
										<!--新增textarea begin-->
										<textarea class="modify_text" style="display:none;">谢谢来信，可以介绍一些你的基本情况吗？如家庭、工作等等。</textarea>
										<span class="state1">											
											<a class="w_use" href="javascript:;">使用</a>
											<a class="w_modify" href="javascript:;">修改</a>
										</span>
										<span class="state2">
											(限100字内)
											<a class="w_save" href="javascript:;">保存</a>
											<a class="w_cancel" href="javascript:;">取消</a>
										</span>
										<!--新增textarea end-->
									</p>
					
			</div>
			
						</li>
							<li class="refusal">
								<a id="refuse" href="javascript:;" class="replay-icon" onmousedown="send_jy_pv2('|1015896_10|121261858');"><i></i>礼貌拒绝</a>
							</li>
							<li id="select_liwu" class="gift-mod">
								<a href="javascript:;" class="replay-icon" onmousedown="send_jy_pv2('|1015896_12|121261858');"><i></i>礼物</a>
								<div id="liwu_list" class="layer gift-layer-l">
									
								</div>					
								<div class="gift-layer-s">
									<div class="gift-s">
										<img src="../../resources/img/gift-s1.jpg">
										<span class="checked"></span>
									</div>
									<div class="choose"><a class="re-election" href="javascript:;" onmousedown="send_jy_pv2('|1015896_19|121261858');">重选</a><a class="cancel" href="javascript:;">取消</a></div>
									<span class="tarr-icon"></span>
								</div>
							</li>
							<li class="rate" onmousedown="send_jy_pv2('|1015896_23|');">
								<strong>我的回信率：<i class="pink">34%</i></strong>
							</li>
						</ul>
					</div>
				<form id="sendmsg" action="../send"  name="letter" method="post">
					<input name="toUserId" id="toUserId" value="${operatingUser.userId}" type="hidden">
					<input name="withStamp" id="withStamp" value="1" type="hidden">
					
<!-- 					<input name="cai_xin" id="cai_xin" value="0" type="hidden"> -->
<!-- 					<input name="liwu_nofree" id="liwu_nofree" value="0" type="hidden"> -->
<!-- 					<input name="reply_msgid" value="c5d1000000297b4e" type="hidden"> -->
<!-- 					<input name="liwu_nofree_id" id="liwu_nofree_id" value="0" type="hidden"> -->
<!-- 					<input name="to_hash" value="5459064b09c2200a149bd0294ad48718" type="hidden"> -->
<!-- 					<input name="uqjm_code" id="uqjm_code" value="df25e0bc3a34b4da228b62edca99a6fe" type="hidden"> -->
					<div class="replay-txt">
						<textarea id="txt" name="content" class="input-txt"></textarea>
					</div>
					<div class="replay-btn">
	<ul class="clearfix">
			<li id="liwu_anniu" style="display:none;">
			<a id="liwu" class="btn gift" href="javascript:;">礼物发信</a>
			<div class="replay-btn-layer width158">
				<span class="tarr-icon"></span>
				<p>赠送礼物，该信息将被置顶显示</p>
			</div>	
		</li>	
		<li class="mr0">
			<a id="free" class="btn free" href="javascript:;">免费回复</a>
		</li> 
</ul></div>				</form>
				</div>
				<div id="ad_pos_42"><div style="width:839px; height:22px; line-height:20px; color:#494949; padding:6px 0 4px 49px; background:#fefee6 url(http://images.jiayuan.com/w4/global/cms/uploadfile/2013/0814/20130814032133697.png) 20px 6px no-repeat; border:1px solid #e3e3be; margin-top:10px;">钻石会员免费看信，发信对方免费看。立减200元！<a href="http://www.jiayuan.com/advert/click.php?key=cG9zX2lkPTQyJm1yX2lkPTIyMTImYWRfaWQ9ODUxJm1faWQ9NzE5JnVzZXJpZD0xMjEyNjE4NTgmaXA9MTk0Njk5MzAyNSZ1cmw9aHR0cDovL3d3dy5qaWF5dWFuLmNvbS91c2VyY3Avc2VydmljZS9ibXNnX3RnMi5waHAmc3JjX2tleT1hZF8zMV80Ml84NTFfNzE5XzIyMTI=" style="color:#0066cc" target="_blank">查看详情&gt;&gt;</a></div></div>
			</div>
		</div>
	</div>
</div>
<!--快捷方式-->
<!-- shanf -->
<!-- <div class="shortcuts"> -->
<!-- 	<ul>  -->
<!-- 		<li><a href="http://www.jiayuan.com/msg/" onmousedown="send_jy_pv2('|1015896_31|121261858');"><i class="inbox"></i>收件箱</a></li> -->
<!-- 		<li><a id="prev" jump="1" href="" onmousedown="send_jy_pv2('|1015896_33|121261858');"><i class="upon"></i>上一位</a></li> -->
<!-- 		<li><a id="delete" href="javascript:;" onmousedown="send_jy_pv2('|1015896_35|121261858');"><i class="del"></i>删　除</a></li> -->
<!-- 		<li><a id="next" jump="1" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=aicZfAVHdOZLyXTTAgRTyGmbHyAzmsKDjXVOhobcAOzrYfzvUMjpWyw.&amp;page_index=&amp;box_type=outbox&amp;prev_next=prev&amp;sort=201&amp;other=" onmousedown="send_jy_pv2('|1015896_37|121261858');"><i class="underneath"></i>下一位</a></li> -->
<!-- 		<li class="refusal-letter"><a id="refused_next" jump="1" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=aicZfAVHdOZLyXTTAgRTyGmbHyAzmsKDjXVOhobcAOzrYfzvUMjpWyw.&amp;page_index=&amp;box_type=outbox&amp;prev_next=prev&amp;sort=201&amp;other=" onmousedown="send_jy_pv2('|1015896_39|121261858');"><i class="underneath"></i>拒绝并下一位</a></li> -->
<!-- 		<li style="display: none;" class="reply"><a href="javascript:;" onmousedown="send_jy_pv2('|1015896_41|121261858');"><i class="heart"></i>回复TA</a></li> -->
<!-- 	</ul> -->
<!-- </div> -->
<!--补贴邮票弹层 B-->
<div class="bg" id="bg"></div>
<div class="ly_subbg width570" id="popup_box" style="margin:0; width:495px;height:500px">
	<h4><a href="javascript:;" class="ly_close"></a></h4>
	<div class="ly-con fn-clear top:500px;">
		<div id="iframe_loading" style="margin:280px 110px"><img id="loading_focus" src="../../resources/img/loading.gif"></div>
	</div>
</div>
<div class="ly_subbg width570" name="iframe_box" id="iframe_box" style="margin:0; padding:0; width:495px;height:500px">
	<iframe src="" id="iframe_content" allowtransparency="true" name="popup_box" style="display:none;border:0;" frameborder="no" height="0" width="0"></iframe>
</div>
<input id="pop1" type="hidden">
<!--补贴邮票弹层 E-->
<script src="../../resources/js/verify_phone.js" type="text/javascript"></script>
<script>
var msg_sort = '201';

function shuaParent(){
	if(window.opener.parent && !window.opener.parent.closed){
		window.opener.parent.refresh();
	}
}
//加载更多
$("#more a").click(function(){
	var src = $(this).attr('href');
	$.post(src, {},function(data, status) {
		if(data.error === 0)
		{
			$("#msg_list").prepend(data.list_msg);
		
			load_star_msg();
			
			if(msg_sort=='301'){
				$(".star_email").show();//star
			}
		
			//修改ems信件混乱样式
			$(".lt-txt").find("div.text").attr("style","");
			if(data.link != '')
			{
				var noread_str = data.noread > 0 ? '<i></i>更早之前的未读信' : '<i></i>更多通信记录';
				$("#more a").attr('href',data.link).html(noread_str);
			}else{
				$("#more").remove();
			}
		}
	}, "json");
	return false;
});
//礼貌拒绝
$("#refuse").click(function(){
	$("#txt").val("非常感谢你的来信。很遗憾，我们的条件不太匹配，愿早日寻找到幸福！");
});
//点击发信，礼物，按钮操作及弹层逻辑
$("#mobile,#liwu,#free").click(function(){
	if(str_trim($("#txt").val()) == '')
	{
		JY_Alert('温馨提示',"您还没有填写任何信件内容，如果不知道如何开口，可以使用“使用模板”");
		return false;
	}
	var id = $(this).attr("id");

	if(id == 'mobile')
	{	
		var tanchu_url = "http://www.jiayuan.com/msg/draft.php?check_tanchu=1&tanchu_type=2&to_uid=34307408";
		$.ajax({
			url: tanchu_url,
			type: 'GET',
			async: false,
			success: function(data){
				if(data == '1')
				{
					do_tanchu();
					return false;
				}
			}
		});
		$("#cai_xin").val('1');
	}else if(id == 'liwu'){
		var liwu_nofree_id = $("#liwu_nofree_id").val();
		var tanchu_url = "http://www.jiayuan.com/msg/draft.php?check_tanchu=1&tanchu_type=3&to_uid=34307408&liwu_nofree_id="+liwu_nofree_id;
		$.ajax({
			url: tanchu_url,
			type: 'GET',
			async: false,
			success: function(data){
				if(data == 'BAD')
				{
					JY_Alert('温馨提示',"请选择礼物");
					return false;
				}else if(data == '1'){
					do_tanchu_liwu();
					return false;
				}
			}
		});
		$("#liwu_nofree").val('1');
	}else if(id == 'free'){
// 		$("#cai_xin").val('0');
// 		$("#liwu_nofree").val('0'); 
		$("#sendmsg").attr({'action':'../send',"target":"_self"});
	}

	$("#sendmsg").submit();
	return false;
	
});
//手机发信拦截层
function do_tanchu()
{
	var cx = $('#cai_xin').val();
	var src ='/msg/draft.php?fxtyp=1&setdomain=1&yz=121261858&fxly=&to_uid=34307408&is_hello=&cai_xin='+cx+'&if_click_mobile=1';
	$('#sendmsg').attr({'action':src,"target":"popup_box"}).submit();
	show_button(495,510);
	return true;
}
//发信礼物拦截层
function do_tanchu_liwu()
{
	var liwu_nofree_id = $("#liwu_nofree_id").val();
	var cx = $('#cai_xin').val();
	var src ='/msg/draft.php?fxtyp=1&setdomain=1&yz=121261858&liwu=1&liwu_nofree_id='+liwu_nofree_id+'&fxly=&to_uid=34307408&is_hello=&cai_xin='+cx+'&if_click_mobile=0';
	$('#sendmsg').attr({'action':src,"target":"popup_box"}).submit();
	show_button(495,640);
	return true;
}
//上一封下一封看信拦截层及操作
$("#prev,#next,#refused_next,#delete").click(function(){
	var jump = $(this).attr("jump");
	var get_id = $(this).attr('id');
	if(jump == 0)
	{
		//$(this).attr("target","_blank").click();
		var src = $(this).attr("href");
		$("#iframe_content").attr('src',src);
		show_button(654,800);
		return false;
	}
	//删除按人
	if(get_id == 'delete')
	{
		var refused_url = "http://www.jiayuan.com/msg/inbox/delete.php?uids=pueoV27mqnzNCyhipzWxTTBBaQw7SrBow4BjvjjF7U7Odxnuh12mEw..&box=all";
		$.ajax({
			url: refused_url,
			type: 'GET',
			async: false,
			success: function(data){
				if(data == '1')
				{
					JY_Alert('温馨提示','删除成功');
				}else{
					JY_Alert('温馨提示','删除失败');
					return false;
				}
				window.location.href = "http://www.jiayuan.com/msg/v6/delete_ok.php?zhuanti=0&send_ok=1&to=35307408";
			}
		});
	}
	//拒绝并下一封
	if(get_id == 'refused_next')
	{
		var refused_url = "http://www.jiayuan.com/msg/v6/showmsg_ajax.php?type=refused&obj_uid_disp=pueoV27mqnzNCyhipzWxTTBBaQw7SrBow4BjvjjF7U7Odxnuh12mEw..&reply_msgid=c5d1000000297b4e";
		$.ajax({
			url: refused_url,
			type: 'GET',
			async: false,
			success: function(data){
			}
		});
	}
	
	if($(this).attr('href') == '')
	{
		if(get_id == 'prev')
		{
			JY_Alert('温馨提示','无上一封信件');
		}else{
			JY_Alert('温馨提示','无下一封信件');
		}
		return false;
	}
	//return false;
});

//礼物列表ajax
$('.gift-mod .replay-icon').click(function(){
	var liwu_list_url = "http://www.jiayuan.com/msg/v6/showmsg_ajax.php?type=gift&p=1";
	get_liwu_list(liwu_list_url);
});
//礼物翻页
$('.page-mod a').live('click',function(){
	var href = $(this).attr('href');
	get_liwu_list(href);
	return false;
});
//ajax获取礼物函数
function get_liwu_list(liwu_list_url)
{
	$.get(liwu_list_url, {}, function(data) {
		$("#liwu_list").html(data);
	});
}
//重选,取消
$('.re-election,.cancel').live("click",function(){
	$("#liwu_nofree").val(0);
	$("#liwu_nofree_id").val(0);
	$("#liwu_anniu").hide();
	$("#mobile_anniu").show();
});
//选择礼物改变礼物input值
$('.gift-s').live('click',function(){
	$("#liwu_nofree").val(1);
	var g_id = $(this).attr('g_id');
	$("#liwu_nofree_id").val(g_id);
	$("#liwu_anniu").show();
	$("#mobile_anniu").hide();
});
//礼物 E

//删除单封信件
$('.close').live('click',function(){
	//效果
	$(this).parents('.item').hide();
	//请求
	var delete_url = $(this).attr('href');
	$.get(delete_url, {}, function(data) {
		//alert(data);
		/*if(data == '1')
		{
			JY_Alert('温馨提示','删除成功');
		}else{
			JY_Alert('温馨提示','删除失败');
		}*/
	});
	return false;
});

//我要自己写
$('.self_write').live("click",function(){
	if($(this).siblings('.sort-list').find('.checked').is(':visible')){
		$(this).parents('.layer').siblings('.gift-layer-s').show();
	}
	$(this).parents('.layer').hide().parents('li').removeClass('selected on');
	$('.layer .checked').css('display','none');
	return false;
});

//魅力值显示隐藏
$('.gift-s').live({
"mouseover":function(){
	$(this).find('.intro').css('display','block');
},"mouseout":function(){
	$(this).find('.intro').hide();
}
});

//礼物
$('.gift-icon').live({
"mouseover":function(){
	$(this).addClass('border-gift')
},"mouseout":function(){
	$(this).removeClass('border-gift')
}
});
	
//关注
$("#guanzhu").click(function(){
	var is_guanzhu = $(this).attr('g');
	if(is_guanzhu != '1')
	{
		var guanzhu_url = $(this).attr('href');
		$.get(guanzhu_url, {}, function(data) {
			//JY_Alert('温馨提示',data);
			$("#guanzhu").attr('g','1').html("<i></i>已关注").addClass('concerns');
		});
	}
	return false;
});

//阻止与取消阻止
$("#zuzhi").click(function(){
	var tag = $(this).attr('tag');
	if(tag != '2')	//阻止
	{
		$.get("http://www.jiayuan.com/usercp/blacklistadd.php?uidhash=5459064b09c2200a149bd0294ad48718&add_type=old", {}, function(data) {
			$("#zuzhi").attr('tag','2').html('取消阻止');
			$(".replay-area").hide();
		});
	}else{			//取消阻止
		$.get("http://www.jiayuan.com/usercp/blacklistdel.php?mode=0&uidhash=5459064b09c2200a149bd0294ad48718&del_type=old", {}, function(data) {
			$("#zuzhi").attr('tag','1').html('阻止');
			$(".replay-area").show();
		});
	}
});

//修改ems信件混乱样式
$(".lt-txt").find("div.text").attr("style","");

//公用拦截层
function show_button(width,height){
	var pop1 = $('#pop1').popup({ bgId : $('#bg'), openId : $('#popup_box'), autoOpen: true});
	var iframe = $('#iframe_content');
	//iframe.attr('src',src);
	iframe.attr('width',width);
	iframe.attr('height',height);
	iframe.load(function(){
		pop1.close();
		iframe.show();
		$('#pop1').popup({ bgId : $('#bg'),follow:false,openId : $('#iframe_box'), autoOpen: true});
	});
	return false;
}
send_jy_pv2("|1015752_0|121261858");
function closeMask(){
	$('#iframe_box, #bg').hide();
}
function closeMaskDiv(){
	$('#iframe_box, #bg').hide();
}

//聊天 s
function ImGetCookie(name)
{
	var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
	if (arr != null) return unescape(arr[2]);
	return '';
}
var im_root_url = (function()
	{
		var domain = document.location.host;
		if(domain == 'msn.jiayuan.com')
			return 'http://msn.jiayuan.com/';
		if(domain == 'msn.'+'miuu.cn')
			return 'http://msn.'+'miuu.cn/';
		if(/(^|\.)jiayuan\.com$/.test(domain))
			return "http://www.jiayuan.com/";
		if(/(^|\.)miuu\.cn$/.test(domain))
			return "http://www."+"miuu.cn/";
		
		return "http://"+domain + "/";
	})();

function GetPcClient()
{
	if($.browser.msie)
	{
		try
		{
			var obj = new ActiveXObject('Jyclient.msgr');
			obj.version();
			return obj;
		}
		catch(e)
		{
			return null;
		}
	}
	
	if(!navigator.mimeTypes) return false;
	var i;
	for(i=0; i<navigator.mimeTypes.length; i++)
	{
		if(navigator.mimeTypes[i].type == 'application/x-jymsgr')
		{
			try
			{
				var ctl_id = 'jyclient_'+Math.floor(Math.random()*1000000);
				document.write('<embed id="'+ctl_id+'" type="application/x-jymsgr" width="1" height="1"></embed>');
				var obj = $('#'+ctl_id)[0];
				obj.version();
				return obj;
			}
			catch(e)
			{
				return null;
			}
		}
	}
	return null;
}

try{var pcClient = GetPcClient();}catch(e){}

function OpenWebChat(uid, sex)
{
	var myuid = parseInt(ImGetCookie('PROFILE').split(':')[0])-1000000;
/*	if(uid == myuid)
	{
		alert('您不能和自己聊天！');
		return -1;
	}*/
	uid = "34307408";
	var mysex = ImGetCookie('mysex');
	if(sex == mysex)
	{
		alert("对不起，您不能和同性聊天，更多异性正在等您!");
		return  -1;
	}
	
	try
	{
		if(pcClient && pcClient.isLogined2(myuid))
		{
			pcClient.chatWith(uid);
			return;
		}
	}
	catch(e){}
	
	var win_name = ImGetCookie('IM_CT');
	if(!win_name) win_name = 'chat_0';
	var chats = win_name.substr(5).split('_');
	
	if(chats.length >= 5)
	{
		if((win_name+'_').indexOf('_'+uid+'_') == -1)
		{
			alert('最多与4个人同时聊天，请先关闭其他对话窗口！');
			return -1;
		}
	}
	
	uid = parseInt(uid) + 1000000;
	(window.open(im_root_url + 'webim/chat2.php#'+uid, win_name, 'height=650,width=880,resizable=yes')).focus();
	
	return 0;
}
//聊天 e

//马上验证手机
phone_verify = new phoneVerify(80, true,function(data){
	//alert(data['regcode']);
	if(data['regcode'] == 200)
	{
		phone_verify.closeDiv();
		send_jy_pv2('msg_kx_yzsj_ok');
		document.getElementById('mobile_tip_xxx').innerHTML = '恭喜您成功验证手机，可免费接收其他会员发给您手机短信。';
	}
});

$(function (){
	$('.replay-icon:eq(0)').click();//使用模块
});
</script>

<div class="footer">
	<!--底部公共JS-->
	 <script type="text/javascript" src="../../resources/js/w4-simple.js"></script><style type="text/css">
*{padding:0;margin:0}
.hf_wapper {width:950px;margin:0 auto;clear:both;font-family:SimSun,Arial,Helvetica,sans-serif}
.hf_wapper img, .hf_wapper img a{border:none}
#common_footer{width:950px;font-size:12px;padding:20px 0;text-align:center;line-height:2;color:#636363}
#common_footer p{text-align:center}
#common_footer p a{margin:0 8px;padding:0;color:#636363;text-decoration:none}
#common_footer p a:hover{margin:0 8px;color:#E7417F;text-decoration:underline}
#common_footer p .bot_link_none:hover{color:#636363;text-decoration:none}
#jy_common_bg_layer{width:100%;height:100%;z-index:9000;position:fixed;left:0;bottom:0;_position:absolute;_height:expression(documentElement.clientHeight);_top:expression(documentElement.scrollTop+documentElement.clientHeight-this.offsetHeight)}
#jy_common_bg_layer #bg_layer_shade{background:#000;width:100%;height:100%;margin:0;padding:0;opacity:.6;filter:alpha(opacity=60)}
#jy_common_bg_layer #bg_layer_html{position:absolute;z-index:9001;margin:0;padding:0;left:-9999px;top:-9999px}
</style>
<div id="jy_common_bg_layer" style="display:none">
<div id="bg_layer_shade"></div>
    <div id="bg_layer_html"></div>
</div>
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
/*
功能：未登录通用底浮层，引导登录与注册【登录前】
说明：使用前需要包含通用头或者至少要包含head_common.js通用头配置文件，jy_head_function.login_bar_enabled，默认true，显示未登录浮层；false，不显示浮层
作者：liujianfeng@jiayuan.com
版本：v 1.0
*/
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
        <a class="guide_zc" href="###" target="_blank"></a>
        <a class="guide_dl" href="###"></a>
    </div>
    <a class="fixPNG guide_close" href="javascript:void(0)"></a>
</div>
<script type="text/javascript">
if(typeof(HEAD_USER) != 'undefined' && HEAD_USER.uid == 0 && jy_head_function.login_bar_enabled){//包含通用头，并且未登录，才会开启浮层
var jy_foot_bar = {};
jy_foot_bar.is_layer_show = true;//默认开启底通条
jy_foot_bar.session_hash = jy_head_function.get_cookie('SESSION_HASH');
//配置底通浮层
jy_foot_bar.set_config = function(){
var hide_cfg = [];
}
//关闭底通浮层
jy_foot_bar.layer_close = function(){
if(document.getElementById('common_footer_guide')){
document.getElementById('common_footer_guide').style.display = 'none';//如果登录弹层打开，无论底通条什么状态，一律关闭
}
};
//判断登录层是否隐藏
jy_foot_bar.is_login_window_show = function(){
if(typeof(loginWindow) == 'undefined' ){
return false;
}else{
return loginWindow.isOpen();
}
};
//重写登录弹层的onOpen事件，实现底部条与登录层展示互斥
if(typeof(loginWindow) != 'undefined'){
loginWindow.onOpen = function(){
jy_foot_bar.layer_close();
};
}
//显示底部状态条
jy_foot_bar.common_guide = function(){
var common_footer_guide = jQuery('#common_footer_guide'),
win = $(window),
triggerScrollTop = 300,
set_footer_guide = function(){
if(win.scrollTop() > triggerScrollTop){
if(jy_foot_bar.is_layer_show && !jy_foot_bar.is_login_window_show()){
common_footer_guide.fadeIn();
}
}else{
common_footer_guide.fadeOut();
}
};
common_footer_guide.find('.guide_close').bind('click', function(){
jy_foot_bar.is_layer_show = false;
common_footer_guide.hide();
});
win.bind('load scroll resize', set_footer_guide);
url = encodeURI(window.location.href);
jQuery(".guide_qq").attr("href","http://www.jiayuan.com/general/t/?forward=qqAware&c=101&p=1&clubsign=1&cluboauthtype=1011&url="+url);
jQuery(".guide_wb").attr("href","http://www.jiayuan.com/general/t/?forward=sinaAware&c=101&p=2&clubsign=1&cluboauthtype=1012&url="+url);
jQuery(".guide_bd").attr("href","http://www.jiayuan.com/general/t/?forward=baiduOauth&c=101&p=3&clubsign=1&cluboauthtype=1013&url="+url);
jQuery(".guide_zf").attr("href","http://www.jiayuan.com/general/t/?forward=alipayOauth&c=101&p=4&clubsign=1&cluboauthtype=1014&url="+url);
jQuery(".guide_rr").attr("href","http://www.jiayuan.com/general/t/?forward=renrenAware&c=101&p=5&clubsign=1&cluboauthtype=1015&url="+url);
jQuery(".guide_kx").attr("href","http://www.jiayuan.com/general/t/?forward=kaixinAware&c=101&p=6&clubsign=1&cluboauthtype=1016&url="+url);
jQuery(".guide_dl").attr("href","http://login.jiayuan.com/?channel=1001&position=1001&pre_url="+url);
jQuery(".guide_zc").attr("href","http://reg.jiayuan.com/?bd=1001");
jQuery(".guide_qq").mousedown(function(){jy_head_function.click_pv('|common_footer_login_qq|'+jy_foot_bar.session_hash);});
jQuery(".guide_wb").mousedown(function(){jy_head_function.click_pv('|common_footer_login_wb|'+jy_foot_bar.session_hash);});
jQuery(".guide_bd").mousedown(function(){jy_head_function.click_pv('|common_footer_login_bd|'+jy_foot_bar.session_hash);});
jQuery(".guide_zf").mousedown(function(){jy_head_function.click_pv('|common_footer_login_zf|'+jy_foot_bar.session_hash);});
jQuery(".guide_rr").mousedown(function(){jy_head_function.click_pv('|common_footer_login_rr|'+jy_foot_bar.session_hash);});
jQuery(".guide_kx").mousedown(function(){jy_head_function.click_pv('|common_footer_login_kx|'+jy_foot_bar.session_hash);});
jQuery(".guide_dl").mousedown(function(){jy_head_function.click_pv('|common_footer_login_btn|'+jy_foot_bar.session_hash);});
jQuery(".guide_zc").mousedown(function(){jy_head_function.click_pv('|common_footer_reg_btn|'+jy_foot_bar.session_hash);});
jQuery(".guide_close").mousedown(function(){jy_head_function.click_pv('|common_footer_close_btn|'+jy_foot_bar.session_hash);});
};
//动态判断加载jQuery插件
if(typeof(jQuery) == 'undefined' || parseFloat(jQuery.fn.jquery) < 1.4){
jy_foot_bar.include_doc = document.getElementsByTagName('head')[0];
jy_foot_bar.include_js = document.createElement('script');
jy_foot_bar.include_js.setAttribute('type', 'text/javascript');
jy_foot_bar.include_js.setAttribute('src', "http://images1.jyimg.com/w4/common/j/jquery-1.7.2.min.js");
jy_foot_bar.include_doc.appendChild(jy_foot_bar.include_js);
if(document.all){//如果是IE
jy_foot_bar.include_js.onreadystatechange = function(){
if(jy_foot_bar.include_js.readyState == 'loaded' || jy_foot_bar.include_js.readyState == 'complete'){
jy_foot_bar.common_guide();
}
}
}else{
jy_foot_bar.include_js.onload = function(){
jy_foot_bar.common_guide();
}
}
}else{
jy_foot_bar.common_guide();
}
//==以下登录弹层相关==
if(typeof loginWindow != 'object'){
document.write('<script type="text\/javascript" src="http:\/\/images1.jyimg.com\/w4\/login\/j\/popupLogin_v2.js"><\/script>');
}
//usercp,msg,login,party相关页面不设置定时弹出登录层。
var login_window_not_allow_channel = ['www_index','usercp','usercp_o','msg','login','party'];
if(!jy_head_function.in_array(login_window_not_allow_channel, common_bot_sub_domain)){
var seed1 = 3000;	//第一次3秒
var seed2 = 10000;	//第二次10秒
if(location.href.indexOf("/master/") >0 || location.href.indexOf("/diary.") > 0){//小龙女频道 与 情感博客（两性） 弹出时间加长
seed1 = 900000;
seed2 = 900000;
}
window.setTimeout(function(){
var c2 = jy_head_function.get_cookie("poplogincount");	//取登录层弹出次数
var ispop = false;
c2 = parseInt(0 + c2);
if(c2 == 2 || c2 == 7 ){
ispop = true;
}else{
c2 = c2 + 1;
jy_head_function.set_cookie("poplogincount", c2, 1);
}
if(typeof loginWindow == "object" && !loginWindow.isLogin()){
loginWindow.loadResource('http://images1.jyimg.com/w4/login/c/popupLogin_20110321.css','css');
loginWindow.onClose = function(e){
jy_head_function.set_cookie("poplogincount", 3, 1);
loginWindow.taskRun(2, seed2, 15);
} 
if(ispop == true){
var c3 = jy_head_function.get_cookie("popup_count_15");
c3 = parseInt(0 + c3);
if(c3 < 2){
loginWindow.openTPL({tplconfig:{key:15},initForm:true});
}
}else{
loginWindow.taskRun(2, seed2, 15);
}
}
}, seed1);
}
//登录层打开方法
jy_foot_bar.show_login = function(bd){
if(isNaN(bd)){
bd = 15;
}
loginWindow.openTPL({tplconfig:{key:bd,callback:function(){
if(url == location.href || !url){
location.reload();
}else{
location.href = url;
}
}}, initForm:true});
}
}
</script><!--[if lte IE 6]>
<script>
DD_belatedPNG.fix('.fixPNG');
</script>
<![endif]-->
<!-- released time 2014-11-07 16:14:10 -->

</div>
<!-- <script type='text/javascript' src='http://ads.jiayuan.com/ad.php?pd_id=31'></script> -->
<script type="text/javascript">
<!--
var head = document.getElementsByTagName("head")[0];       
var js = document.createElement("script");       
// js.src = "http://ads.jiayuan.com/adajax.php?pd_id=31";       
// js.onload = js.onreadystatechange = function()       
// {       
//     if (!this.readyState || this.readyState == "loaded" || this.readyState == "complete")       
//     {   
//          head.removeChild(js);  
//     }       
// }       
// head.appendChild(js);  	

// load_star_msg();
//-->
</script>

</body></html>