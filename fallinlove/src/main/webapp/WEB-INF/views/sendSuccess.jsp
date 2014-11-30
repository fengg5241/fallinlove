<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE >
<html xmlns="http://www.w3.org/1999/xhtml" lang="en"><head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>发送成功_世纪佳缘交友网</title>
    <meta name="author" content="dell">
    <link rel="stylesheet" href="sendSuccess_files/base.css">
    <link rel="stylesheet" href="sendSuccess_files/sendok.css">
    <link rel="stylesheet" type="text/css" href="sendSuccess_files/word_2012.css">
    <script src="sendSuccess_files/beacon.js" async=""></script><script type="text/javascript" src="sendSuccess_files/jquery.js"></script>
    <script type="text/javascript" src="sendSuccess_files/JY_Alert.js"></script>
    <script type="text/javascript" src="sendSuccess_files/verify_phone.js"></script>
    <script src="sendSuccess_files/pv.js" type="text/javascript"></script>
    <script src="sendSuccess_files/MaskDiv.js"></script>
    <script type="text/javascript">document.domain = "jiayuan.com"; </script>
    <!--[if lte IE 6]>
    <script type="text/javascript" src="http://images.jiayuan.com/w4/msg/js/dd_belatedpng.js"></script>
    <script>DD_belatedPNG.fix('img,.set_top-1,span');</script>
    <![endif]-->
  </head>
  <body>
    <div id="wrapper" class="wrapper">
        
        <script type="text/javascript" src="sendSuccess_files/head_common.js"></script> 
        <script type="text/javascript" src="sendSuccess_files/head_red_simple.js"></script><script type="text/javascript" src="sendSuccess_files/head_pink.js"></script><script type="text/javascript">
//会员信息对象
window.HEAD_USER = {};
HEAD_USER.uid = 0;
//通用头功能函数对象
var jy_head_function = {};
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
var profile = this.get_cookie("PROFILE");
if(profile && profile.length > 11){
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
jy_head_function.get_channel = function(){//获取频道标识
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
common_nav_array['yindou_tag']	= "理财";
common_nav_array['yindou_url']	= "http://case."+jy_top_domain+"/yindou/";
common_nav_array['yindou_css']	= "";
common_nav_array['yindou_sta']	= "|head_navigation_yindou|";
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
<script type="text/javascript" src="sendSuccess_files/jiayuan_logo_config.js"></script>
<script type="text/javascript" src="sendSuccess_files/JY_Alert.js"></script>
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
<h1 class="pageTitle" id="head_red_simple" style="">给她写信</h1>
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
            <a href="http://case.jiayuan.com/yindou/" onclick="jy_head_function.click_pv('|head_navigation_yindou|');" target="_blank">理财</a><span class="sep">|</span>
<a href="http://vip.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_liehun|');" target="_blank">红娘一对一</a><span class="sep">|</span>
<a href="http://www.izhenxin.com/login/getSign/?url=http%3A%2F%2Fwww.jiayuan.com%2Fusercp%2Fiz_login.php%3Furl%3Dhttp%253A%252F%252Fwww.izhenxin.com%252F&amp;from=JYDH" onclick="jy_head_function.click_pv('|head_navigation_izhenxin|');" target="_blank">爱真心</a>
</div>
<div class="headRight" id="head_red_simple_user" style="display:none"><span>${loginUser.nickname}</span><span class="sep">|</span><a href="../logout" class="link">退出</a></div>
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
<!-- released time 2014-10-22 15:04:56 -->
 
        <script type="text/javascript">
            document.getElementById('head_red_simple').innerHTML = '给她写信';
        </script>
      
      <div class="w">
        <div class="main cf">
          <div class="succBox">
            <p>
              <strong>发送成功！</strong>
                          </p>
          </div>
                    <div>
            <br>
            <p id="mobile_tip">
              验证手机可免费查看异性发来的手机情书，随时随地收获缘分。<a href="#" style="color:#2b81d4; text-decoration:underline;" onclick="phone_verify.begin(0,600);" onmousedown="send_jy_pv2('msg_fxcg_yzsj');">马上验证手机</a>
            </p>
          </div>
                     
          <div class="tips">
            <p>
              上传一张照片，即可将信件被读几率提升到<b>24%</b>！<a href="http://www.jiayuan.com/usercp/photo.php?no_photo=1&amp;from_type=sendok" onmousedown="send_jy_pv2('|send_ok_button|121261858')" target="_blank">立即上传</a>
            </p>
          </div>
                    <div class="uList">
            <div class="z_loading" id="loading" style="display:none;"></div>
            <div class="tit">
              <h2>您可能也会喜欢的人</h2><a class="hiAll" href="javascript:;" onclick="say_hello_all();">全部打招呼</a><a class="change" href="javascript:;" onmousedown="send_jy_pv2('msg_fxcg_hyz');" onclick="next_page();">换一组</a>
            </div>
            <div class="con cf">
              <ul>
                                <li uid_disp="96059450" alg="personalmatch_send_ok_c">
                  <div class="uHead">
                    <a target="_blank" href="http://www.jiayuan.com/96059450?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=15">
                        <img src="sendSuccess_files/yzphykj_f.jpg">
                    </a>
                                      </div>
                  <div class="uName">
                                        <a target="_blank" href="http://www.jiayuan.com/96059450?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=15">夜猫子</a>
                  </div>
                  <div class="uInfo">
                    24，其他国家新加坡
                  </div>
                  <div class="uAppr">
                    <p>
                      独白真诚，既然都很忙绝不谈着玩
                    </p>
                  </div>
                  <div id="cnm_p_96059450" style="text-align:center;">
                  <a class="btnSayHi" onmousedown="send_jy_pv2('msg_fxcg_dzh');" href="javascript:;" onclick="check_content('10', '95059450', '4a1ed547aca70ffe052070d3a68e8663', 'personalmatch_send_ok_c','tj-ymtj-fxcgytj');">打招呼</a>
                  </div>
                </li>
                                <li uid_disp="65298177" alg="personalmatch_send_ok_c">
                  <div class="uHead">
                    <a target="_blank" href="http://www.jiayuan.com/65298177?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=91">
                        <img src="sendSuccess_files/f52bf9f9d_avatar_p.jpg">
                    </a>
                                      </div>
                  <div class="uName">
                                        <a target="_blank" href="http://www.jiayuan.com/65298177?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=91">valen</a>
                  </div>
                  <div class="uInfo">
                    30，其他国家澳大利亚
                  </div>
                  <div class="uAppr">
                    <p>
                      入职名企前途不错，素质很好
                    </p>
                  </div>
                  <div id="cnm_p_65298177" style="text-align:center;">
                  <a class="btnSayHi" onmousedown="send_jy_pv2('msg_fxcg_dzh');" href="javascript:;" onclick="check_content('6', '64298177', 'a7f52bf9f9d6735dd8f20ee6be17d0a7', 'personalmatch_send_ok_c','tj-ymtj-fxcgytj');">打招呼</a>
                  </div>
                </li>
                                <li uid_disp="28769131" alg="personalmatch_send_ok_c">
                  <div class="uHead">
                    <a target="_blank" href="http://www.jiayuan.com/28769131?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=8">
                        <img src="sendSuccess_files/a73e56afc_10_avatar_p.jpg">
                    </a>
                                      </div>
                  <div class="uName">
                                        <a target="_blank" href="http://www.jiayuan.com/28769131?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=8">彩蝶儿</a>
                  </div>
                  <div class="uInfo">
                    30，其他国家新加坡
                  </div>
                  <div class="uAppr">
                    <p>
                      TA在努力看信中，快让TA认出你吧
                    </p>
                  </div>
                  <div id="cnm_p_28769131" style="text-align:center;">
                  <a class="btnSayHi" onmousedown="send_jy_pv2('msg_fxcg_dzh');" href="javascript:;" onclick="check_content('7', '27769131', 'e6a73e56afc87b271fbffc9dbc87d2b3', 'personalmatch_send_ok_c','tj-ymtj-fxcgytj');">打招呼</a>
                  </div>
                </li>
                                <li uid_disp="44755190" alg="personalmatch_send_ok_c">
                  <div class="uHead">
                    <a target="_blank" href="http://www.jiayuan.com/44755190?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=15">
                        <img src="sendSuccess_files/20073d05c_2_avatar_p.jpg">
                    </a>
                                      </div>
                  <div class="uName">
                    <img title="手机来信提醒" src="sendSuccess_files/mobile_icon.png">                    <a target="_blank" href="http://www.jiayuan.com/44755190?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=15">hotmail</a>
                  </div>
                  <div class="uInfo">
                    32，其他国家新加坡
                  </div>
                  <div class="uAppr">
                    <p>
                      独白真诚，既然都很忙绝不谈着玩
                    </p>
                  </div>
                  <div id="cnm_p_44755190" style="text-align:center;">
                  <a class="btnSayHi" onmousedown="send_jy_pv2('msg_fxcg_dzh');" href="javascript:;" onclick="check_content('4', '43755190', '1d20073d05cf5046eb3e55484af965ef', 'personalmatch_send_ok_c','tj-ymtj-fxcgytj');">打招呼</a>
                  </div>
                </li>
                                <li uid_disp="33015166" alg="personalmatch_send_ok_c">
                  <div class="uHead">
                    <a target="_blank" href="http://www.jiayuan.com/33015166?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=15">
                        <img src="sendSuccess_files/689d90908_4_avatar_p.jpg">
                    </a>
                                      </div>
                  <div class="uName">
                                        <a target="_blank" href="http://www.jiayuan.com/33015166?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=15">婉琴</a>
                  </div>
                  <div class="uInfo">
                    27，其他国家加拿大
                  </div>
                  <div class="uAppr">
                    <p>
                      独白真诚，既然都很忙绝不谈着玩
                    </p>
                  </div>
                  <div id="cnm_p_33015166" style="text-align:center;">
                  <a class="btnSayHi" onmousedown="send_jy_pv2('msg_fxcg_dzh');" href="javascript:;" onclick="check_content('8', '32015166', 'd9689d90908e0ab3ce073bd0ec5d30d3', 'personalmatch_send_ok_c','tj-ymtj-fxcgytj');">打招呼</a>
                  </div>
                </li>
                                <li uid_disp="123124786" alg="personalmatch_send_ok_c">
                  <div class="uHead">
                    <a target="_blank" href="http://www.jiayuan.com/123124786?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=29">
                        <img src="sendSuccess_files/231928e14_1_avatar_p.jpg">
                    </a>
                                      </div>
                  <div class="uName">
                                        <a target="_blank" href="http://www.jiayuan.com/123124786?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=29">简 爱</a>
                  </div>
                  <div class="uInfo">
                    32，其他国家新加坡
                  </div>
                  <div class="uAppr">
                    <p>
                      不吸烟不喝酒的女人适合当老婆
                    </p>
                  </div>
                  <div id="cnm_p_123124786" style="text-align:center;">
                  <a class="btnSayHi" onmousedown="send_jy_pv2('msg_fxcg_dzh');" href="javascript:;" onclick="check_content('1', '122124786', '37231928e149a5786e2254d122b61331', 'personalmatch_send_ok_c','tj-ymtj-fxcgytj');">打招呼</a>
                  </div>
                </li>
                                <li uid_disp="122185731" alg="personalmatch_send_ok_c">
                  <div class="uHead">
                    <a target="_blank" href="http://www.jiayuan.com/122185731?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=98">
                        <img src="sendSuccess_files/570286c1b_1_avatar_p.jpg">
                    </a>
                                      </div>
                  <div class="uName">
                    <img title="手机验证" src="sendSuccess_files/mobile.png">                    <a target="_blank" href="http://www.jiayuan.com/122185731?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=98">逆思维</a>
                  </div>
                  <div class="uInfo">
                    29，其他国家其他
                  </div>
                  <div class="uAppr">
                    <p>
                      从属相上看很合适，喜欢就带走吧
                    </p>
                  </div>
                  <div id="cnm_p_122185731" style="text-align:center;">
                  <a class="btnSayHi" onmousedown="send_jy_pv2('msg_fxcg_dzh');" href="javascript:;" onclick="check_content('0', '121185731', 'd8570286c1b1cb4b154b2a7157a52230', 'personalmatch_send_ok_c','tj-ymtj-fxcgytj');">打招呼</a>
                  </div>
                </li>
                                <li uid_disp="86607695" alg="personalmatch_send_ok_c">
                  <div class="uHead">
                    <a target="_blank" href="http://www.jiayuan.com/86607695?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=15">
                        <img src="sendSuccess_files/89879873f_2_avatar_p.jpg">
                    </a>
                                      </div>
                  <div class="uName">
                                        <a target="_blank" href="http://www.jiayuan.com/86607695?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=15">taoqurufei</a>
                  </div>
                  <div class="uInfo">
                    27，其他国家新加坡
                  </div>
                  <div class="uAppr">
                    <p>
                      独白真诚，既然都很忙绝不谈着玩
                    </p>
                  </div>
                  <div id="cnm_p_86607695" style="text-align:center;">
                  <a class="btnSayHi" onmousedown="send_jy_pv2('msg_fxcg_dzh');" href="javascript:;" onclick="check_content('5', '85607695', '3e89879873fa57abf40262c64370d1c9', 'personalmatch_send_ok_c','tj-ymtj-fxcgytj');">打招呼</a>
                  </div>
                </li>
                                <li uid_disp="27140624" alg="personalmatch_send_ok_c">
                  <div class="uHead">
                    <a target="_blank" href="http://www.jiayuan.com/27140624?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=28">
                        <img src="sendSuccess_files/3df090b74_1_avatar_p.jpg">
                    </a>
                                      </div>
                  <div class="uName">
                    <img title="手机验证" src="sendSuccess_files/mobile.png">                    <a target="_blank" href="http://www.jiayuan.com/27140624?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=28">岩宝</a>
                  </div>
                  <div class="uInfo">
                    30，其他国家韩国
                  </div>
                  <div class="uAppr">
                    <p>
                      不吸烟不喝酒，她是乖乖女
                    </p>
                  </div>
                  <div id="cnm_p_27140624" style="text-align:center;">
                  <a class="btnSayHi" onmousedown="send_jy_pv2('msg_fxcg_dzh');" href="javascript:;" onclick="check_content('2', '26140624', 'd53df090b746b9e8ac1ad145b019ef6b', 'personalmatch_send_ok_c','tj-ymtj-fxcgytj');">打招呼</a>
                  </div>
                </li>
                                <li uid_disp="91500547" alg="personalmatch_send_ok_c">
                  <div class="uHead">
                    <a target="_blank" href="http://www.jiayuan.com/91500547?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=15">
                        <img src="sendSuccess_files/d7c7de141_8_avatar_p.jpg">
                    </a>
                                      </div>
                  <div class="uName">
                    <img title="VIP会员" src="sendSuccess_files/senior_member_icon.png">                    <a target="_blank" href="http://www.jiayuan.com/91500547?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=15">雨源</a>
                  </div>
                  <div class="uInfo">
                    26，其他国家韩国
                  </div>
                  <div class="uAppr">
                    <p>
                      独白真诚，既然都很忙绝不谈着玩
                    </p>
                  </div>
                  <div id="cnm_p_91500547" style="text-align:center;">
                  <a class="btnSayHi" onmousedown="send_jy_pv2('msg_fxcg_dzh');" href="javascript:;" onclick="check_content('3', '90500547', 'e7d7c7de1412e8143572ebd45563b798', 'personalmatch_send_ok_c','tj-ymtj-fxcgytj');">打招呼</a>
                  </div>
                </li>
                                <li uid_disp="106357843" alg="personalmatch_send_ok_c">
                  <div class="uHead">
                    <a target="_blank" href="http://www.jiayuan.com/106357843?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=98">
                        <img src="sendSuccess_files/2e658726b_avatar_p.jpg">
                    </a>
                                      </div>
                  <div class="uName">
                    <img title="钻石会员" src="sendSuccess_files/diamond_icon.png">                    <a target="_blank" href="http://www.jiayuan.com/106357843?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=98">kei</a>
                  </div>
                  <div class="uInfo">
                    26，其他国家日本
                  </div>
                  <div class="uAppr">
                    <p>
                      从属相上看很合适，喜欢就带走吧
                    </p>
                  </div>
                  <div id="cnm_p_106357843" style="text-align:center;">
                  <a class="btnSayHi" onmousedown="send_jy_pv2('msg_fxcg_dzh');" href="javascript:;" onclick="check_content('13', '105357843', '6b2e658726b633c9007ce3ffd97548c3', 'personalmatch_send_ok_c','tj-ymtj-fxcgytj');">打招呼</a>
                  </div>
                </li>
                                <li uid_disp="28181916" alg="personalmatch_send_ok_c">
                  <div class="uHead">
                    <a target="_blank" href="http://www.jiayuan.com/28181916?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=91">
                        <img src="sendSuccess_files/yzphykj_f.jpg">
                    </a>
                                      </div>
                  <div class="uName">
                                        <a target="_blank" href="http://www.jiayuan.com/28181916?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=91">Lira</a>
                  </div>
                  <div class="uInfo">
                    31，其他国家新加坡
                  </div>
                  <div class="uAppr">
                    <p>
                      入职名企前途不错，素质很好
                    </p>
                  </div>
                  <div id="cnm_p_28181916" style="text-align:center;">
                  <a class="btnSayHi" onmousedown="send_jy_pv2('msg_fxcg_dzh');" href="javascript:;" onclick="check_content('12', '27181916', '77f26b962cd94822959896e3c856a4b8', 'personalmatch_send_ok_c','tj-ymtj-fxcgytj');">打招呼</a>
                  </div>
                </li>
                                <li uid_disp="85876892" alg="personalmatch_send_ok_c">
                  <div class="uHead">
                    <a target="_blank" href="http://www.jiayuan.com/85876892?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=22">
                        <img src="sendSuccess_files/191c64cd9_1_avatar_p.jpg">
                    </a>
                                      </div>
                  <div class="uName">
                                        <a target="_blank" href="http://www.jiayuan.com/85876892?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=22">觅2</a>
                  </div>
                  <div class="uInfo">
                    30，其他国家新加坡
                  </div>
                  <div class="uAppr">
                    <p>
                      你们在同一个城市，不用异地恋！
                    </p>
                  </div>
                  <div id="cnm_p_85876892" style="text-align:center;">
                  <a class="btnSayHi" onmousedown="send_jy_pv2('msg_fxcg_dzh');" href="javascript:;" onclick="check_content('9', '84876892', '7f191c64cd91ae4f2b2c1339c55295ef', 'personalmatch_send_ok_c','tj-ymtj-fxcgytj');">打招呼</a>
                  </div>
                </li>
                                <li uid_disp="75184447" alg="personalmatch_send_ok_c">
                  <div class="uHead">
                    <a target="_blank" href="http://www.jiayuan.com/75184447?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=12">
                        <img src="sendSuccess_files/e4c4cb961_1_avatar_p.jpg">
                    </a>
                                      </div>
                  <div class="uName">
                    <img title="手机验证" src="sendSuccess_files/mobile.png">                    <a target="_blank" href="http://www.jiayuan.com/75184447?lchang=gwxx&amp;src=personalmatch_send_ok_c&amp;fxly=tj-ymtj-fxcgytj&amp;tid=12">Crystal~~le</a>
                  </div>
                  <div class="uInfo">
                    25，其他国家英国
                  </div>
                  <div class="uAppr">
                    <p>
                      TA是佳缘最受欢迎的会员之一哦
                    </p>
                  </div>
                  <div id="cnm_p_75184447" style="text-align:center;">
                  <a class="btnSayHi" onmousedown="send_jy_pv2('msg_fxcg_dzh');" href="javascript:;" onclick="check_content('11', '74184447', '4ee4c4cb961889a5728688edbf35072a', 'personalmatch_send_ok_c','tj-ymtj-fxcgytj');">打招呼</a>
                  </div>
                </li>
                              </ul>
              <div class="btnsBox">
                <a class="hiAll" href="javascript:;" onclick="say_hello_all();">全部打招呼</a><a class="change" href="javascript:;" onmousedown="send_jy_pv2('msg_fxcg_hyz');" onclick="next_page();">换一组</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="footer">
        <script type="text/javascript" src="sendSuccess_files/w4-simple.js"></script><style type="text/css">
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
</script><img src="sendSuccess_files/a.gif" style="display:none"> 
<noscript> 
<img src="http://b.scorecardresearch.com/p?c1=2&c2=15205083&cv=2.0&cj=1" /> 
</noscript> 
<!-- End comScore Tag -->     </div>
</div>
<style type="text/css">
/*
功能：未登录通用底浮层，引导登录与注册【登录前】
说明：使用前需要包含通用头或者至少要包含head_common.js通用头配置文件
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
if(typeof(HEAD_USER) != 'undefined' && HEAD_USER.uid == 0){//包含通用头，并且未登录，才会开启浮层
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
// if(typeof loginWindow != 'object'){
// document.write('<script type="text\/javascript" src="http:\/\/images1.jyimg.com\/w4\/login\/j\/popupLogin_v2.js"><\/script>');
// }
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
<!-- released time 2014-10-20 18:24:31 -->

    </div>
    <script type="text/javascript">
    
    //遮罩层
    var _scrollWidth = Math.max(document.body.scrollWidth,document.documentElement.scrollWidth);
    var _scrollHeight = Math.max(document.body.scrollHeight,document.documentElement.scrollHeight);
    document.write('<div id="bgdiv" style="position:absolute;display:none; left:0px; top:0px; width:'+_scrollWidth+'px; height:'+_scrollHeight+'px; filter:alpha(opacity=30); opacity:0.3; background-color:#000000; z-index:1000;"></div>');

    //iframe容器
    document.write('<div class="dragdiv" id="bg_div_float" style="z-index:1001;position:absolute;top:0px;left:0px;display:none"></div>');  

    //设定容器层位置居中
    </script><div id="bgdiv" style="position:absolute;display:none; left:0px; top:0px; width:1263px; height:1106px; filter:alpha(opacity=30); opacity:0.3; background-color:#000000; z-index:1000;"></div><div class="dragdiv" id="bg_div_float" style="z-index:1001;position:absolute;top:0px;left:0px;display:none"></div>
    <script type="text/javascript">
        
        send_jy_pv2('msg_xinban_send_ok_pv');
        send_jy_pv2('zhuanti_0_1');
        var cupid = 0;
        var uid = 121261858;
        if(cupid==2) send_jy_pv2('cupid_mffx_ip|'+uid);
        if(cupid==1) send_jy_pv2('cupid_fffx_ip|'+uid);
 
        
        phone_verify = new phoneVerify(80, true,function(data){
            if(data['regcode'] == 200){
                phone_verify.closeDiv();
                send_jy_pv2('msg_fxcg_yzsj_ok');
                document.getElementById('mobile_tip').innerHTML = '恭喜您成功验证手机，可免费接收其他会员发给您手机短信。';
            }
        });
        phone_verify.showDivHeight = 2;

        function get_id(objId)
        {
            if(document.getElementById)
            {
                return eval('document.getElementById("'+objId+'")')
            }
            else
            {
                return eval('document.all.'+objId)
            }
        }

        function check_content(i, to_uid, to_uid_hash, src,fxly) 
        {
            popup_bgdiv('http://www.jiayuan.com/msg/hello.php?randomfrom=3&type=20&uhash='+to_uid_hash+'&cnj=profile2&src='+src+'&fxly='+fxly,'',1, 610, 600, 1);
            return true;
        }

        function popup_bgdiv(url, msg, flag, _width, _height, type)
        { 
            if(!_width){
                _width = 435;
            }

            if(!_height){
                _height = 900;
            }

            //设定容器层高度居中
            var scrolltop = document.documentElement.scrollTop || window.pageYOffset || 0; //for webkit
            var __scroll = (scrolltop + 30) + "px";

            if(url != '')
            {
                get_id('bg_div_float').innerHTML = '<iframe id="bg_div_iframe" scrolling="no" width="'+_width+'" height="'+_height+'" allowTransparency="true" frameborder="0"></iframe>';
                get_id('bg_div_iframe').src = url; 
            }
            else if(msg != '')
            {
                get_id('bg_div_float').innerHTML = msg;
            }
            else
            {
                alert('参数错误');
                return false;
            }
            get_id('bgdiv').style.display = '';   
            get_id('bg_div_float').style.top  = __scroll; 
            get_id('bg_div_float').style.left = (document.body.clientWidth/2-_width/2) + "px";
            get_id('bg_div_float').style.display = '';
            
        }
        //关闭弹出窗 清空iframe的url    
        function close_popup(flag)
        {
            
            get_id('bgdiv').style.display = 'none';   
            get_id('bg_div_float').style.display = 'none';
            if(!flag)
            {
                get_id('bg_div_iframe').src = ''; 
            }
            window.onscroll = ''; 
        }

        function next_page(){
            var next_group = "http://www.jiayuan.com/msg/dosend_ok.php?zhuanti=0&send_ok=1&to=105784980&page=1";
            window.location.href=next_group;
            window.event.returnValue = false;
        }

        //全部打招呼
        function say_hello_all()
        {
            var c_uids = c_algs = '';
            $(".uList li").each(function(){
               c_uids += $(this).attr("uid_disp") + '|';
               c_algs += $(this).attr("alg") + '|';
            });
            
            $.ajax({
                url:'say_hello_all.php',
                dataType:'json',
                type:'post',
                data: "uids="+c_uids+"&fxly=tj-ymtj-fxcgytj"+"&algs="+c_algs,
                beforeSend:function(xhr){ 
                    $("#loading").show();
                    $(".hiAll").attr("onclick",'javascript:;');
                    $(".hiAll").text('正在打招呼...');
                },
                success:function(data){
                    $("#loading").hide();
                    $(".hiAll").attr("onclick",'say_hello_all()');
                    $(".hiAll").text('全部打招呼');
                    var data_length = data.data.length;
                    for(var i=0; i<data_length; i++){
                        var status = data.data[i].status;
                        var disp_uid = data.data[i].disp_uid;
                        if(status == 1)
                        {
                            var avatar_class = "ok_ico";
                        }else{
                            var avatar_class = "no_ico"; 
                        }
                        $("#cnm_p_"+disp_uid).addClass(avatar_class).html("");
                    }
                    if(data.is_all == 1){
                        setTimeout("next_page()",1000);
                    }else if(data.is_all == 2){
                        alert("世纪佳缘不提倡广种薄收的策略，每天只能和200个会员建立联系关系,已经联系过的会员不在此限制。");
                    }
                }
            });
        }
    </script>
  
</body></html>