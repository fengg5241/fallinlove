<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html><head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>收件箱_世纪佳缘交友网</title> 
<meta name="keywords" content="交友,交友网,征婚交友,网上交友,征婚,征婚网,征婚交友网,交友中心,婚恋交友"> 
<meta name="description" content="青春不常在，抓紧谈恋爱！缘分可遇也可求，该出手时就出手。世纪佳缘是严肃婚恋的交友平台，提供丰富多彩的交友征婚活动，1亿会员，让缘分千万里挑一！"> 
<link href="../resources/css/reset.css" rel="stylesheet" type="text/css"> 
<style> 
.b1{ background:#fff;} 
.myseve0113{float:left;width:250px;margin-bottom:10px;background:#fff;} 
.myseve0113 .content{ float:left; width:248px; border-right: 1px solid #DDE0E6; border-left: 1px solid #DDE0E6;} 

/*== 右侧 我的服务 佳缘邮票 ==*/ 
.myseve0113 h2{ float:left; width:233px; padding-left:15px; line-height:30px; font-weight:bold; background:#F3F3F3;} 
.myseve0113 h2 strong{ float:right; width:20px;padding-right:10px; padding-top:6px;} 
.myseve0113 h2 span.span1{ float:left; width:110px; text-align:left;} 
.myseve0113 h2 span.span2{ float:left; width:90px; text-align:center;} 
.myseve0113 table{ width:218px; margin:0 auto;} 
.myseve0113 td{ line-height:26px; border-bottom:1px dashed #999999;} 
.myseve0113 td.td1{ width:140px; text-align:left;} 
.myseve0113 td.td2{ width:88px; text-align:left;} 
.myseve0113 td.td2 span{ color:#E8006D;} 
.myseve0113 td.td2 a{ color:#014391; text-decoration:underline;} 
.myseve0113 td.td2 a:hover{ color:#014391; text-decoration:underline;} 

/*****右边开始****/ 
.myseve0113 .span2 {font-weight:normal;} 
.myseve0113 .span2 em {color:#E6006C;font-weight:bold;} 
.myseve0113 .services {padding:15px;padding-top:5px;width:218px;} 
.myseve0113 .services li {padding:5px;border-bottom:1px dotted #999999;width:208px;float:left;} 
.myseve0113 .services li span {float:left;} 
.myseve0113 .services li strong {float:right;} 
.myseve0113 .services li strong.red {color:#EB006E;} 
.myseve0113 .services li strong a {color:#004491;text-decoration:underline;} 
.myseve0113 h2 a {float:right;color:#004491;font-weight:normal;text-decoration:underline;} 

.myseve0113 .sub_nav {width:248px;float:left;border-top:1px solid #CDDCF1;} 
.myseve0113 .sub_nav span {width:82px;float:left;line-height:21px;background:url(http://images1.jyimg.com/w4/service/gaojihuiyuan/images/right_span.jpg) repeat-x;border-right:1px solid #CDDCF1;text-align:center;cursor:pointer;} 
.myseve0113 .sub_nav span.on {background:#fff;} 
.myseve0113 .right_zhifu {width:228px;float:left;padding:10px;} 
.myseve0113 .right_zhifu .mobile_pay {width:225px;float:left;} 
.myseve0113 .right_zhifu .mobile_pay td {border-bottom:0;} 
.myseve0113 .right_zhifu .mobile_pay td label {padding-left:18px;background:url(http://images1.jyimg.com/w4/service/gaojihuiyuan/images/new_img2.jpg) no-repeat;padding-top:3px;} 
.myseve0113 .right_zhifu .mobile_pay td input[type="radio"] {margin-top:3px;margin-right:2px;*margin-right:0px;} 
.myseve0113 .right_zhifu .mobile_pay td label.label2 {background:url(http://images1.jyimg.com/w4/service/gaojihuiyuan/images/new_img3.jpg) no-repeat;} 
.myseve0113 .right_zhifu .mobile_pay td .pay_text {width:220px;height:20px;line-height:20px;color:#AAAAAA;} 
.myseve0113 td .pay_next {width:73px;height:22px;background:url(http://images1.jyimg.com/w4/service/gaojihuiyuan/images/next_step.jpg) no-repeat;border:0;cursor:pointer;} 

.myseve0113 .ali_pay td {padding:10px 0;} 
.myseve0113 .ali_pay .youpiao {width:30px;} 
.myseve0113 .ali_pay strong {font-weight:bold;} 
.myseve0113 .ali_pay strong span {color:#F6830C;} 

.myseve0113 .ebank_pay td {padding:5px 0;} 
.myseve0113 .ebank_pay .youpiao {width:30px;} 
.myseve0113 .ebank_pay strong {font-weight:bold;} 
.myseve0113 .ebank_pay strong span {color:#F6830C;} 
.myseve0113 .ebank_pay select {width:140px;} 

.myseve0113 .tuijian {width:228px;float:left;padding:10px;} 
.myseve0113 .tuijian .t_title {width:180px;background:url(http://images1.jyimg.com/w4/service/gaojihuiyuan/images/zuanshihuiyuan.jpg) no-repeat;padding-top:10px;padding-left:35px;padding-bottom:5px;clear:both;height:20px;} 
.myseve0113 .tuijian .t_title strong {float:left;font-size:14px;font-weight:bold;color:#AB3281;} 
.myseve0113 .tuijian .t_title a {float:right;color:#01438F !important;} 
.myseve0113 .tuijian h3 {background:url(http://images1.jyimg.com/w4/service/gaojihuiyuan/images/zuanshihuiyuan.jpg) no-repeat -8px -38px;text-indent:10px;line-height:24px;font-weight:normal;} 
.myseve0113 .tuijian td {border-bottom:0;} 
.myseve0113 .tuijian td span {font-weight:bold;color:#E7006D;} 
.myseve0113 .tuijian table {border-top:1px dotted #B5B5B5;} 

.myseve0113 .xj_add {text-align: center;} 
/*******充值流程弹出层*******/ 
.buy_notice {width:226px;height:158px;} 
.buy_notice iframe {border:none;margin:0px;padding:0px;width:226px;height:158px;position:relative;top:-158px;left:0px;z-index:-1;} 
.buy_notice .notice_title {width:226px;float:left;background:url(http://images1.jyimg.com/w4/service/gaojihuiyuan/images/div2.jpg) repeat-x;line-height:28px;} 
.buy_notice .notice_title strong {padding-left:30px;background:url(http://images1.jyimg.com/w4/service/gaojihuiyuan/images/div1.jpg) no-repeat 10px 2px;font-size:12px;color:#374496;float:left;font-weight:bold;} 
.buy_notice .notice_content {background-color:#fff;width:206px;float:left;padding:10px;line-height:22px;} 
</style> 
<link type="text/css" href="../resources/css/jy_msg.css" rel="stylesheet" media="all">
<link type="text/css" href="../resources/css/letter.css" rel="stylesheet" media="all"> 
 
<script src="../resources/js/beacon.js" async=""></script><script src="../resources/js/pv.js" type="text/javascript"></script><!--统计--> 
<script src="../resources/js/global.js" type="text/javascript"></script> 
<script type="text/javascript" src="../resources/js/JY.js"></script><!--佳缘桌面弹层开始--><link href="../resources/css/layer.css" rel="stylesheet" type="text/css"><script src="../resources/js/clickonce.js" type="text/javascript"></script>
<!-- shanf -->
<!-- <script src="../resources/js/adajax.htm"></script> -->
<style media="screen" type="text/css">#altContent {visibility:hidden}</style></head><body><div class="layerTable" id="layerTable" style="display:none;"><div class="layerTableTop"><a href="javascript:hidelayerTable(0)" class="layerTableClose"></a></div><div class="layerTableBody"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td><a href="javascript:hidelayerTable(2)" class="layerTableButton"></a></td><td><a href="javascript:hidelayerTable(1)" class="layerTableLink">查看详情</a></td><td><a href="javascript:hidelayerTable(0)" class="layerTableLink">以后再说</a></td></tr></tbody></table></div></div><script type="text/javascript">function hidelayerTable(butt){document.getElementById("layerTable").style.display="none";document.getElementById("header_login_pop_mask").style.display="none";location.href=JY.url.getChannelUrl("usercp");if(butt==1){window.open("http://webim.jiayuan.com/client/download.php");}if(butt==2){NavigateTo("jiayuan.com");}}</script><!--佳缘桌面弹层结束--> 
<script type="text/javascript" src="../resources/js/head_common.js"></script> 
<link type="text/css" rel="stylesheet" href="../resources/css/jy_ad.css"> 
<script type="text/javascript" src="../resources/js/jy_ad.js"></script> 
<!-- <script type="text/javascript">document.domain = "jiayuan.com"; </script> -->
<script type="text/javascript" src="../resources/js/jquery.js"></script>
<script type="text/javascript" src="../resources/js/letter.js"></script>
<script type="text/javascript" src="../resources/js/popup.js"></script>
 
 
 

<!-- 标准头 开始--> 
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

//兼容旧程序
var mydomain= "www." + jy_top_domain;//拼完整www域名
var profile	= HEAD_USER;
//兼容结束

var current_nav_flag = jy_head_function.get_channel() + '_css';
//设置当前频道导航选中样式
common_nav_array[current_nav_flag] = 'head_nav_cur';
</script>
<script type="text/javascript" src="../resources/js/jiayuan_logo_config.js"></script>
<script type="text/javascript" src="../resources/js/JY_Alert.js"></script>
<!--[if lte IE 6]>
<script type="text/javascript" src="http://images1.jyimg.com/w4/common/j/DD_belatedPNG_0.0.8a_IE6.js"></script>
<![endif]--> <script type="text/javascript">
//获取登录信息和会员基本信息
if(HEAD_USER){
profile				= HEAD_USER;			//获取用户信息，兼容旧页面（页面中请不要继续使用）
head_user_uid		= HEAD_USER.uid;		//UID
head_user_nickname	= HEAD_USER.nickname;	//昵称
}else{
profile				= {};
profile.uid			= 0;
head_user_uid		= 0;
head_user_nickname	= '';
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
            <p id="head_user_nickname">Hi，<a class="color_fff" target="_blank" href="user/selfBasic/${loginUser.userId}">${loginUser.nickname}</a></p>
<!--             <p class="memberIcon iconS1" id="head_user_level"><a onmousedown="jy_head_function.click_pv('|head_club_level|122261858');" title="S1会员" href="http://www.jiayuan.com/club/" target="_blank">S1会员</a></p> -->
<!--             <p id="head_user_bean">金豆<a onmousedown="jy_head_function.click_pv('|head_club_bean|122261858');" href="http://www.jiayuan.com/club/" class="color_fff" target="_blank">600</a></p> -->
            <p id="head_user_uid">佳缘ID<a class="color_fff" target="_blank" href="user/selfBasic/${loginUser.userId}">${loginUser.userId}</a></p>
            <p id="head_user_logout"><a class="color_fff" href="../logout">退出</a></p>
        </div>
        <div class="jycm_top_right">
            <div id="jycm_top_inform" class="jycm_top_inform">
                <div id="jycm_top_informIcon" class="jycm_top_informIcon">
<div class="jycm_top_remind">
<!-- <span class="color_fff va_middle"><i class="jy_top_icon jy_icon_remind"></i><strong class="jy_tixing">提醒</strong><i style="display: inline;" id="tips_point"></i></span> -->
</div>
                </div>
                <div id="jycm_top_informCn" class="jycm_top_informCn" style="display:none">
                    <ul id="vip_center_all_notes">
                        <li id="visitor_new_num"><a target="_blank" href="http://www.jiayuan.com/usercp/clicked_new.php" onclick="jy_head_function.click_pv('|1013617_6|');"><strong class="fl">谁看过我</strong><span class="fr fr_num"> 45</span></a></li>
<!--                         <li style="display: none;" id="praise_me_new_num"><a target="_blank" href="http://www.jiayuan.com/usercp/praiseme.php" onclick="jy_head_function.click_pv('|1013617_7|');"><strong class="fl">谁赞过我</strong></a></li> -->
<!--                         <li id="fans_new_num"><a target="_blank" href="http://www.jiayuan.com/usercp/myfans.php" onclick="jy_head_function.click_pv('|1013617_8|');"><strong class="fl">谁关注我</strong><span class="fr fr_num"> 1</span></a></li> -->
                    </ul>
                </div>
            </div>
            <p class="jycm_top_jx ">
<!-- 输出IM链接 -->
<!-- <a class="color_fff va_middle" href="http://im.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_im|');" target="_blank"><i class="jy_top_icon jy_icon_jiaxin"></i>佳缘佳信</a>  -->
            </p>
            <div id="jycm_top_izx" class="jycm_top_izx">
                <div class="jycm_top_izxTit">
<a id="jy_top_izhenxin_url" class="color_fff fn-clear" onclick="jy_head_function.click_pv('|head_navigation_mobile|');" href="http://www.izhenxin.com/register/landingpagetw" target="_blank"><i class="jy_top_icon icon_izx"></i><span class="jy_txt">爱真心</span><i id="izx_point"></i></a> -->
                </div>
                <div class="jycm_top_izxCn">
                    <ul>
                    	<li id="jy_nav_izhenxin_url"></li>
                    </ul>
                </div>
                <div class="jycm_top_izxCn2" id="jy_top_izx_jihuo">
<a href="http://www.izhenxin.com/login/getSign/?url=http%3A%2F%2Fwww.jiayuan.com%2Fusercp%2Fiz_login.php%3Furl%3Dhttp%253A%252F%252Fwww.izhenxin.com%252F&amp;from=top" target="_blank" onclick="jy_head_function.click_pv('|1013850_9|122261858');"><span>激活爱真心帐号</span></a> -->
                    <a class="jycm_top_izxClose" style="cursor:pointer">关闭</a><i class="point_top"></i>
                </div>
            </div>
            <p class="jycm_top_collect ">
            	<a id="jycm_top_collect_1" class="color_fff va_middle" onclick="jycm_addFav();" href="javascript:;"><i class="jy_top_icon jy_icon_collect"></i>收藏本站</a>
            </p>
            <p class="jycm_top_zx " id="vip_area_tel" style=""><i class="jy_top_icon jy_icon_tel"></i><span class="jy_txt"><span>红娘专线</span><strong>400-7701-520</strong></span></p>
        </div>
    </div>
</div>
<!--登录区域 end-->
<div id="jycm_head" class="jycm_head fn-clear">
    <div class="jycm_head_top">
        <h1 class="logo">
        	<a id="jy_head_logo" style="" href="http://www.jiayuan.com/"><img src="../resources/img/logo_new.png" alt="世纪佳缘" height="70"></a>
        </h1>
        <div id="jy_head_city_select"></div>
        <div class="jycm_head_ad">
        	<!--<div id="jycm_head_ad_left"></div>-->
        	<div id="ad_pos_70"><a target="_blank" href="http://www.jiayuan.com/advert/click.php?key=cG9zX2lkPTcwJm1yX2lkPTYzMTAmYWRfaWQ9ODI4Jm1faWQ9NzA3JnVzZXJpZD04NjQ3NTUxNyZpcD0yMDkzMDcyNjY1JnVybD1odHRwOi8vY2FzZS5qaWF5dWFuLmNvbS95aXhpbi8mc3JjX2tleT1hZF80M183MF84MjhfNzA3XzYzMTA="><img id="jy_advert_707_img" src="../resources/img/20141010093719185.jpg" border="0" height="70" width="215"></a></div>
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
<img src="../resources/img/jy_top_hot.gif" border="0" height="17" width="25">
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
// jQuery.ajax({
// type : "GET",
// url : "http://" + mydomain + "/usercp/dynmatch/ajax/get_contacts.php",
// dataType : "jsonp",
// jsonp : "jsoncallback",
// jsonpCallback : "jy_jsonp",
// success : function(ret){
// if(typeof(ret) != 'undefined'){
// if(ret['vip_tel']){
//   jQuery("#vip_area_tel").html('<i class="jy_top_icon jy_icon_tel"></i>'+'<span class="jy_txt"><span>红娘专线</span><strong>' + ret['vip_tel'] + '</strong>');
//   jQuery("#vip_area_tel").show();
//   jQuery("#vip_area_tel_bar").show();
// }
// if(ret['jy_vip_center']){
// set_vip_center_default(ret['jy_vip_center']['visitor_new_num'], ret['jy_vip_center']['praise_me_new_num'], ret['jy_vip_center']['fans_new_num']);
// if(vip_center_all_num === 0){

// }else{
// //有信息，显示通知提示
// jQuery('#tips_point').show();
// //jQuery('#jycm_top_inform').addClass("jycm_top_informFocus");
// //jQuery('#jycm_top_informCn').show();
// }
// //绑定鼠标事件
// jQuery("#jycm_top_inform").mouseenter(function(){
// //if(vip_center_all_num === 0){
// jQuery('#jycm_top_informCn').show();							//显示下拉层
// jQuery('#jycm_top_inform').addClass("jycm_top_informFocus");	//显示铃铛被选中的效果
// //}
// jQuery('#vip_center_all_notes > li').each(function(){
// jQuery(this).show();
// });
// });
// jQuery("#jycm_top_inform").mouseleave(function(){
// //if(vip_center_all_num === 0){
// jQuery('#jycm_top_informCn').hide();
// jQuery('#jycm_top_inform').removeClass("jycm_top_informFocus");
// //}else{
// jQuery('#vip_center_all_notes > li').each(function(){
// //if(ret['jy_vip_center'][jQuery(this).attr("id")] === 0){	//将没有数字的下拉项隐藏
// jQuery(this).hide();
// //}
// });
// //}
// });
// }
// if(ret['izhenxin']){
// if(ret['izhenxin']['is_bind'] == 1){
// jQuery('a#jy_top_izhenxin_url').attr('href', common_nav_array['izhenxin_url']);
// if(ret['izhenxin']['is_active'] == 0 && parseInt('0'+ret['izhenxin']['msg_count']) == 0){//没激活且没信息，显示激活链接
// jQuery('.jycm_top_izxClose').click(function(){
// jQuery('#jy_top_izx_jihuo').hide();
// });
// jQuery('#jy_top_izx_jihuo').show();
// }else{
// if(parseInt(ret['izhenxin']['msg_count']) > 0){
// //jQuery('#jycm_top_izx').addClass('jycm_top_izxFocus');
// jQuery('#izx_point').show();
// jQuery('#jy_nav_izhenxin_url').html('<a  href="'+common_nav_array['extend_url2']+'" target="_blank" onclick="jy_head_function.click_pv(\'|1013850_3|'+head_user_uid+'\');"><span class="fl">消息</span><span class="fr fr-num">'+ret['izhenxin']['msg_count']+'</span></a>');
// }else{
// jQuery('#jy_nav_izhenxin_url').html('<a href="'+common_nav_array['extend_url2']+'" target="_blank" onclick="jy_head_function.click_pv(\'|1013850_1|'+head_user_uid+'\');"><span class="fl">消息</span><span class="fr">查看</span></a>');
// jQuery('#jycm_top_izx').hover(
// //function(){jQuery('#jycm_top_izx').addClass('jycm_top_izxFocus');},
// function(){jQuery('#jycm_top_izx').removeClass('jycm_top_izxFocus');}
// );
// }
// //绑定鼠标事件
// jQuery("#jycm_top_izx").mouseenter(function(){
// jQuery('#jycm_top_izxCn').show();							
// jQuery('#jycm_top_izx').addClass("jycm_top_izxFocus");	
// });
// jQuery("#jycm_top_izx").mouseleave(function(){
// jQuery('#jycm_top_izxCn').hide();
// jQuery('#jycm_top_izx').removeClass("jycm_top_izxFocus");
// });
// }
// }
// }
// }
// }
//   	});
}
function placeholder(inputId,inputType){
// var oInput=document.getElementById(inputId);
// var defaultValue=oInput.value;
// oInput.onfocus=function(){
// this.style.border='2px solid #ffd6db';
// this.style.color='#888';
// if(inputType=='defText'){
// if(this.value==defaultValue){
// this.value='';
// }
// }
// };
// oInput.onblur=function(){
// this.style.border='2px solid #ededed';
// this.style.color='#333';
// if(inputType=='defText'){
// if(this.value==''){
// this.value=defaultValue;
// this.style.color='#aaa';
// }
// }
// }
}
placeholder('jycm_zh_input','defText');
placeholder('jycm_pass_input','defPass');
//设置VIP通知中心默认效果
function set_vip_center_default(visitor_new_num, praise_me_new_num, fans_new_num)
{
// var vip_center_config = new Array();
// vip_center_config['visitor_name'] = '谁看过我';
// vip_center_config['visitor_url'] = common_nav_array['www_url'] + 'usercp/clicked_new.php';
// vip_center_config['visitor_stat1'] = '\'|1013617_3|\'';
// vip_center_config['visitor_stat2'] = '\'|1013617_0|\'';
// vip_center_config['visitor_stat3'] = '\'|1013617_6|\'';
// vip_center_config['praise_me_name'] = '谁赞过我';
// vip_center_config['praise_me_url'] = common_nav_array['www_url'] + 'usercp/praiseme.php';
// vip_center_config['praise_me_stat1'] = '\'|1013617_4|\'';
// vip_center_config['praise_me_stat2'] = '\'|1013617_1|\'';
// vip_center_config['praise_me_stat3'] = '\'|1013617_7|\'';
// vip_center_config['fans_name'] = '谁关注我';
// vip_center_config['fans_url'] = common_nav_array['www_url'] + 'usercp/myfans.php';
// vip_center_config['fans_stat1'] = '\'|1013617_5|\'';
// vip_center_config['fans_stat2'] = '\'|1013617_2|\'';
// vip_center_config['fans_stat3'] = '\'|1013617_8|\'';
// if(visitor_new_num == 0 && praise_me_new_num == 0 && fans_new_num == 0){
// vip_center_all_num = 0;
// //所有数字都为0
// }
// if(parseInt(visitor_new_num) > 0){
// jQuery("#visitor_new_num").show();
// str_visitor_num = '<span class="fr fr_num"> ' + visitor_new_num + '</span>';
// }else{
// jQuery("#visitor_new_num").hide();
// str_visitor_num = '';
// if(vip_center_all_num === 0){
// str_visitor_num = '<span class="fr">查看</span>';
// }
// }
// str_visitor_txt = '<a target="_blank" href="' + vip_center_config['visitor_url'] + '" ';
// str_visitor_txt += 'onclick="jy_head_function.click_pv(' + vip_center_config['visitor_stat3'] + ');"><strong class="fl">'+vip_center_config['visitor_name']+'</strong>'+ str_visitor_num + '</a>';
// jQuery("#visitor_new_num").html(str_visitor_txt);
// if(parseInt(praise_me_new_num) > 0){
// jQuery("#praise_me_new_num").show();
// str_praise_me_num = '<span class="fr fr_num"> ' + praise_me_new_num + '</span>';		
// }else{
// jQuery("#praise_me_new_num").hide();
// str_praise_me_num = '';
// if(vip_center_all_num === 0){
// str_praise_me_num = '<span class="fr">查看</span>';
// }
// }
// str_praise_me_txt = '<a target="_blank" href="' + vip_center_config['praise_me_url'] + '" ';
// str_praise_me_txt += 'onclick="jy_head_function.click_pv(' + vip_center_config['praise_me_stat3'] + ');"><strong class="fl">'+vip_center_config['praise_me_name']+'</strong>'+ str_praise_me_num + '</a>';
// jQuery("#praise_me_new_num").html(str_praise_me_txt);
// if(parseInt(fans_new_num) > 0){
// jQuery("#fans_new_num").show();
// str_fans_num = '<span class="fr fr_num"> ' + fans_new_num + '</span>';
// }else{
// jQuery("#fans_new_num").hide();
// str_fans_num = '';
// if(vip_center_all_num === 0){
// str_fans_num = '<span class="fr">查看</span>';
// }
// }
// str_fans_txt = '<a target="_blank" href="' + vip_center_config['fans_url'] + '" ';
// str_fans_txt += 'onclick="jy_head_function.click_pv(' + vip_center_config['fans_stat3'] + ');"><strong class="fl">'+vip_center_config['fans_name']+'</strong>'+ str_fans_num + '</a>';
// jQuery("#fans_new_num").html(str_fans_txt);
}

//VIP通知中心有数字，值为0表示所有分类一条新通知都没有
vip_center_all_num = 1;
//登录处理
head_wait(function(){return typeof JY != "undefined"}, function(){
// //登录后回调函数
// function header_login_call(user){
// if(user && user['uid'] > 0){
// if(user['errno'] == -5){
// location.href = user['url'];
// return false;
// }else if(user['type'] == 20){//完善资料
// location.href = user['url'];
// return true;
// }
// //location.reload();
// window.location = window.location;	//登录成功，不做跳转则刷新当前页面
// }else if(user && user['errno'] == -1){
// location.href = user['url'];
// return false;
// }else if(user && user['errno'] == -2){
// alert('登录失败，该用户资料已关闭');
// }else{
// alert('密码错误，请核实您的登录密码');
// }
// }
// if(JY.login.getUser().uid > 0){
// document.getElementById("head_login").style.display = "none";
// document.getElementById("head_nologin").style.display = "none";
// //加载jquery-1.4.2.min.js，利用jquery来获取红娘服务电话
// if(typeof(jQuery) == 'undefined' || parseFloat(jQuery.fn.jquery) < 1.4){
// var jy_head_include_doc = document.getElementsByTagName('head')[0];
// var jy_head_include_js = document.createElement('script');
// jy_head_include_js.setAttribute('type', 'text/javascript');
// jy_head_include_js.setAttribute('src', "http://images1.jyimg.com/w4/usercp/j/jquery-1.4.2.min.js");
// jy_head_include_doc.appendChild(jy_head_include_js);
// if(document.all){//如果是IE
// jy_head_include_js.onreadystatechange = function(){
// if(jy_head_include_js.readyState == 'loaded' || jy_head_include_js.readyState == 'complete'){
// //get_jiayuan_contacts();
// }
// }
// }else{
// jy_head_include_js.onload = function(){
// get_jiayuan_contacts();
// }
// }
// }else{
// get_jiayuan_contacts();
// }
// document.getElementById("head_login").style.display = "";
// }else{
// document.getElementById("head_nologin").style.display = "";
// document.getElementById("head_login").style.display = "none";
// }
// //登录表单，绑定提交事件
// document.getElementById("hder_login_form").onsubmit = function(){
// var login_name = hder_login_form.name;
// var login_pass = hder_login_form.password;;
// login_name.value = login_name.value.trim();
// login_pass.value = login_pass.value.trim();
// if(login_name.value == '' || login_name.value == '邮箱/ID/手机号'){
// alert('请输入登录帐号！');
// login_name.focus();
// return false;
// }
// if(login_pass.value == ''){
// alert('请输入登录密码！');
// login_pass.focus();
// return false;
// }
// this.action = common_nav_array['login_url']+'dologin.php';	//修改action提交地址
// JY.login.submit(this, header_login_call);
// return false;
// };
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
<!-- released time 2014-10-10 14:49:30 -->
 
<!-- 标准头 结束--> 

<!-- 主体 开始 two div--> 
<div class="doc980"> 

    <!--广告 B-->
    <div class="ad-mod" id="ad_pos_66"><div id="jy_ad_703">
    <ul><li style="display: none;"><a href="http://www.jiayuan.com/advert/click.php?pos_id=66&amp;mr_id=6258&amp;ad_id=795&amp;m_id=703&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/usercp/service/do_package_service.php?rid=70&amp;src_key=ad_41_66_795_703_6258" target="_blank"><img src="../resources/img/20140925054943777.jpg" alt=""></a></li>
    <li style="display: block;"><a href="http://www.jiayuan.com/advert/click.php?pos_id=66&amp;mr_id=6259&amp;ad_id=795&amp;m_id=703&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/parties/2012/dafuweng/index.php&amp;src_key=ad_41_66_795_703_6259" target="_blank">
    	<img src="../resources/img/20140613111332980.gif" alt=""></a></li><li style="display: none;"><a href="http://www.jiayuan.com/advert/click.php?pos_id=66&amp;mr_id=6260&amp;ad_id=795&amp;m_id=703&amp;userid=121261858&amp;ip=1951866301&amp;url=http://case.jiayuan.com/2012/fishingjoy/&amp;src_key=ad_41_66_795_703_6260" target="_blank"><img src="../resources/img/20140528100430449.gif" alt=""></a></li></ul></div>
<!--     	shanf -->
<!--     	<script>new jy_ad("#jy_ad_703");</script> -->
    </div>
    <!--广告 B-->

<div> 
<!-- 左侧菜单 开始--> 
<style type="text/css">
/* 在不引入重置样式文件下保持样式正确兼容 */
.cp-menu,.cp-menu div,.cp-menu p,.cp-menu a,.cp-menu li,.cp-menu span,.cp-menu strong,.cp-menu i{font-family:\5b8b\4f53,simsun,'宋体','Hiragino Sans GB',Arial, Helvetica, sans-serif}
.cp-menu{width:170px;float:left;margin:10px 0 15px;}
.cp-menu li,.cp-menu ul{margin:0;padding:0}
.cp-menu ol,.cp-menu ul{list-style:none}
.cp-menu img{border:0}
.cp-menu a:link,
.cp-menu a:hover,
.cp-menu a:visited,
.cp-menu a:active{outline:none}
.cp-menu .fn-clear:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0}
.cp-menu .fn-clear{zoom:1}
.cp-menu .fn-hide{display:none}
.cp-menu .fn-left{float:left}
.cp-menu .fn-right{float:right}
.cp-menu .menu-clear{clear:both;height:0;line-height:0;font-size:0}
/*圆角*/
.cp-menu-radius{width:auto;overflow:visible;font-size:12px;height:14px;line-height:14px;cursor:pointer;
background-image:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-radius.png);
_background-image:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-radius.gif);
background-position:right -15px;
background-repeat:no-repeat}
.cp-menu-radius .cp-menu-radius-num{padding-left:7px;margin-right:6px;color:#fff;white-space:nowrap;text-align:center;line-height:14px;_line-height:15px;font-size:12px;min-width:6px;max-width:48px;
background-image:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-radius.png);
background-image:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-radius.gif)\9;
background-position:0 0;
background-repeat:no-repeat}
/*小ICON，new hot 人气 箭头 奖 灯泡*/
.cp-menu-ico-new{width:9px;height:16px;display:block;font-size:0;line-height:0;overflow:hidden;background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-left-icon-new.gif) 0 0 no-repeat}
.cp-menu-ico-hot{width:9px;height:12px;display:block;font-size:0;line-height:0;overflow:hidden;background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-left-icon-2.gif) 0 -270px no-repeat}
.cp-menu-ico-popularity{width:23px;height:17px;display:block;font-size:0;line-height:0;overflow:hidden;background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/popularity.gif) 0 0 no-repeat}
.cp-menu-ico-specials {width:23px;height:17px;display:block;font-size:0;line-height:0;overflow:hidden;background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/specials.gif) 0 0 no-repeat}
.cp-menu-ico-bulb{width:15px;height:17px;display:block;font-size:0;line-height:0;overflow:hidden;background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-left-icon-2.png) 0 -303px no-repeat;_background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-left-icon-2.gif) 0 -303px no-repeat}
.cp-menu-ico-arrow{width:7px;height:13px;font-size:0;line-height:12px;overflow:hidden;background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-left-icon-2.png) 0 -139px no-repeat;_background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-left-icon-2.gif) 0 -139px no-repeat}
/*服务图标*/
.cp-menu-service-ico{width:30px;height:25px;display:block;cursor:pointer;
background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-left-icon.png) no-repeat 0 0;_background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-left-icon.jpg) no-repeat 0 0}
.cp-menu-ico-zuanshi{background-position:0 0}/*钻石会员*/
.cp-menu-ico-kanxin{background-position:0 -25px}/*看信包月*/
.cp-menu-ico-juguang{background-position:0 -50px}/*聚光灯*/
.cp-menu-ico-paiming{background-position:0 -75px}/*排名提前*/
.cp-menu-ico-vip{background-position:0 -100px}/*VIP会员*/
.cp-menu-ico-gift{background-position:0 -125px}/*礼物商城*/
.cp-menu-ico-paycenter{background-position:0 -150px}/*购买邮票*/
.cp-menu-ico-account{background-position:0 -175px}/*邮票账户*/
.cp-menu-ico-paoxue{background-position:0 -200px}/*恋爱课堂*/
.cp-menu-ico-more{background-position:0 -225px}/*更多应用*/
/*卡片区：头像*/
.cp-menu-card-user{border:solid 1px #d9d9d9;background:#fff;margin-bottom:15px;font:12px/1.5 tahoma,arial,\5b8b\4f53;padding-top:20px}
.cp-menu-card-user .menu-avatar{width:168px;height:168px;overflow:hidden;position:relative;margin:0 auto 7px}
.cp-menu-card-user .menu-avatar .menu-avatar-mask{width:168px;height:35px;background:#000;-moz-opacity:0.5;opacity:.50;filter:alpha(opacity=50);position:absolute;left:0;bottom:0;z-index:10}
.cp-menu-card-user .menu-avatar-110x168{width:110px;height:135px}
.cp-menu-card-user .menu-avatar-110x168 .menu-avatar-mask{width:110px;height:24px}
.cp-menu-card-user .menu-avatar a.modify-infos:link,
.cp-menu-card-user .menu-avatar a.modify-infos:hover,
.cp-menu-card-user .menu-avatar a.modify-infos:visited,
.cp-menu-card-user .menu-avatar a.modify-infos:active{width:110px;height:24px;line-height:24px;text-align:center;text-decoration:none;color:#aaa;display:block;position:absolute;left:0;bottom:0;z-index:11}
.cp-menu-card-user .menu-avatar a.modify-infos:hover{color:#fff}
/*卡片区：链接*/
.cp-menu-card-link{color:#2c81d6;line-height:26px;text-align:left;margin-bottom:14px;padding-left:27px}
.cp-menu-card-link a.menu:link,
.cp-menu-card-link a.menu:hover,
.cp-menu-card-link a.menu:visited,
.cp-menu-card-link a.menu:active{color:#2c81d6;text-decoration:none;display:inline-block;height:26px;line-height:26px}
.cp-menu-card-link a.menu:hover{text-decoration:underline}
.cp-menu-card-link a.cp-menu-ico-jiang:link,
.cp-menu-card-link a.cp-menu-ico-jiang:hover,
.cp-menu-card-link a.cp-menu-ico-jiang:visited,
.cp-menu-card-link a.cp-menu-ico-jiang:active{background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/my-jiayuan-left-icon-jiang.gif) 97px 6px no-repeat;display:block}
.menu-status{display:inline-block;color:#666}
/*卡片区：收件箱谁看过我*/
.cp-menu-card-mail{position:relative}
.cp-menu-card-mail span{font-family:Microsoft YaHei;font-size:14px;color:#fff;line-height:36px}
.cp-menu-card-mail a.menu:link,
.cp-menu-card-mail a.menu:hover,
.cp-menu-card-mail a.menu:visited,
.cp-menu-card-mail a.menu:active{display:block;background:#0098c2;height:36px;font-family:Microsoft YaHei;font-size:14px;color:#fff;line-height:36px;text-align:center;text-decoration:none;position:relative}
.cp-menu-card-mail a.menu:hover{background:#008BB1;text-decoration:none}
.cp-menu-card-mail a.menu-left{width:83px;float:left}
.cp-menu-card-mail a.menu-right{width:84px;float:right}
.cp-menu-card-mail .menu-bulb{width:15px;height:17px;position:absolute;cursor:pointer;left:5px;top:-10px;line-height:0}/*灯泡*/
.cp-menu-card-mail .msglayer{background:url(http://images2.jyimg.com/w4/usercp_new/i/sxLayerBg.png) no-repeat 0 0;width:139px;height:86px;position:absolute;top:-90px;left:0px;z-index:31;display:none}/*引导弹层*/
.cp-menu-card-mail .msglayer .sxLayer{width:139px;height:86px;display:inline-block;background:none}
.cp-menu-card-mail .msglayer .sxLayerClose{cursor:pointer;position:absolute;top:3px;right:14px;width:20px;height:20px;background:none;z-index:50}
.cp-menu-card-mail .number{font-family:\5b8b\4f53,simsun,'宋体','Hiragino Sans GB';font-size:12px;height:14px;line-height:14px;position:absolute;right:0;top:-7px;cursor:pointer}
/*我的佳缘左侧栏目导航*/
.cp-menus{border:solid 1px #d9d9d9;background:#fff;padding-bottom:10px;font-family:\5b8b\4f53,simsun,'宋体','Hiragino Sans GB',Arial, Helvetica, sans-serif}/*菜单外框*/
/*菜单头，我的佳缘首页链接*/
.cp-menu-index{height:40px;border-bottom:solid 1px #d9d9d9;margin-bottom:9px}
.cp-menu-index a.menu:link,
.cp-menu-index a.menu:hover,
.cp-menu-index a.menu:visited,
.cp-menu-index a.menu:active{height:40px;display:block;font-family:Microsoft YaHei;font-size:14px;line-height:40px;color:#333;padding:0 0 0 55px;text-decoration:none;background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-left-icon-2.gif) 29px -48px no-repeat}
.cp-menu-index a.menu:hover{background-position:29px -88px;color:#ff546a}
/*顶级菜单样式*/
.cp-menu-items .cp-menu-title{display:block;height:34px}
.cp-menu-items .cp-menu-title a.menu:link,
.cp-menu-items .cp-menu-title a.menu:hover,
.cp-menu-items .cp-menu-title a.menu:visited,
.cp-menu-items .cp-menu-title a.menu:active{display:block;height:34px;color:#333;text-decoration:none}
.cp-menu-items .cp-menu-title a.menu:hover{background:#eee}
.cp-menu-items .cp-menu-title span.menuname{padding-left:24px;height:34px;float:left;display:inline-block;font-size:14px;line-height:34px;color:#333;font-weight:bold;font-family:Microsoft YaHei}
.cp-menu-items .cp-menu-title span.namecur{cursor:pointer}
.cp-menus .cp-menu-title a.menu .cp-menu-ico-arrow{display:inline-block;margin:11px 0 0 8px;_margin-top:10px}
/*二级菜单样式，默认效果（文本类型）*/
.cp-menu-items{padding-top:10px;margin-bottom:8px}
.cp-menu-items li{float:left;width:168px;height:32px;font-size:12px;line-height:32px}
.cp-menu-items li.oning{background:#e5e5e5}
.cp-menu-items li a.menu:link,
.cp-menu-items li a.menu:hover,
.cp-menu-items li a.menu:visited,
.cp-menu-items li a.menu:active{height:32px;line-height:32px;display:block;padding:0 10px 0 24px;color:#666;position:relative;text-decoration:none}
.cp-menu-items li a.menu:hover{background:#eee}
.cp-menu-items li .cp-menu-item-name{font-size:12px;height:32px;line-height:32px;text-align:left;color:#666;cursor:pointer}
.cp-menu-items li .cp-menu-link-place{position:absolute;bottom:15px;right:147px;z-index:10}
.cp-menu-items li .cp-menu-item-name{font-size:12px;height:32px;line-height:32px;text-align:left;color:#666;cursor:pointer;_padding-top:3px;_height:29px;_line-height:29px}
.cp-menu-items li .cp-menu-link-place{position:absolute;bottom:15px;right:147px;z-index:10;cursor:pointer}
.cp-menu-items li .cp-menu-item-number{font-family:\5b8b\4f53,simsun,'宋体','Hiragino Sans GB';font-size:12px;height:14px;line-height:14px;position:absolute;right:10px;top:9px;cursor:pointer}
/*二级菜单样式，图片类型*/
.cp-menu-items ul.cp-menu-image{float:left;padding:0 12px}
.cp-menu-items li.cp-menu-service-img{width:72px;height:43px;text-align:center;background-color:#fff;padding:7px 0}
.cp-menu-items li.cp-menu-service-img a.menu:link,
.cp-menu-items li.cp-menu-service-img a.menu:hover,
.cp-menu-items li.cp-menu-service-img a.menu:visited,
.cp-menu-items li.cp-menu-service-img a.menu:active{height:43px;line-height:18px;width:50px;margin:0 auto;padding-left:0;padding-right:0}
.cp-menu-items li.cp-menu-service-img a.menu:hover{background:#fff}
.cp-menu-items li.cp-menu-service-img i.cp-menu-service-ico{display:block;margin:0 auto;cursor:pointer}
.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-zuanshi{background-position:-30px 0}
.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-kanxin{background-position:-30px -25px}
.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-juguang{background-position:-30px -50px}
.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-paiming{background-position:-30px -75px}
.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-vip{background-position:-30px -100px}
.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-gift{background-position:-30px -125px}
.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-paycenter{background-position:-30px -150px}
.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-account{background-position:-30px -175px}
.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-paoxue{background-position:-30px -200px}
.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-more{background-position:-30px -225px}
.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-zuanshi{background-position:-60px 0}
.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-kanxin{background-position:-60px -25px}
.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-juguang{background-position:-60px -50px}
.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-paiming{background-position:-60px -75px}
.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-vip{background-position:-60px -100px}
.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-gift{background-position:-60px -125px}
.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-paycenter{background-position:-60px -150px}
.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-account{background-position:-60px -175px}
.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-paoxue{background-position:-60px -200px}
.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-more{background-position:-60px -225px}
.cp-menu-items li.cp-menu-service-img .cp-menu-item-name{width:50px;font-size:12px;height:18px;line-height:18px;text-align:center;color:#666;margin:0 auto;cursor:pointer}
.cp-menu-items li.cp-menu-service-img .cp-menu-link-place{position:absolute;top:-8px;left:-4px;z-index:10;cursor:pointer}
.cp-menu-items li.cp-menu-service-img .cp-menu-item-number{font-family:\5b8b\4f53,simsun,'宋体','Hiragino Sans GB';font-size:12px;height:14px;line-height:14px;position:absolute;right:0px;top:-9px;cursor:pointer;display:none}
/*左侧样式代码结束*/
</style>
<script type="text/javascript" src="../resources/js/jy_app_tc.js"></script>
<script type="text/javascript">
//定义佳缘聚合页的弹层对象
function pop_app()
{
	var apps_pop_url = get_ajax_path() + 'dynmatch/pop/application_tc.php?tt=' + get_jy_domain();
	app_test = new jy_COW(637, 488, apps_pop_url, 9999, 50);
	app_test.begin();
	//alert(document.domain);
}
//获取域
function get_jy_domain()
{
	var domain = document.domain;
	tmp_arr = domain.split('.');
	tmp_arr_len = tmp_arr.length;
	if(parseInt(tmp_arr_len) > 2){
		return 0;	//未设置域
	}else{
		return 1	//设置了域
	}
}
//get_jy_domain();
//初始化Ajax对象
function initAjax()
{
	var ajax = false;
	if(window.XMLHttpRequest){
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
//获取Ajax文件的路径
function get_ajax_path()
{
	var path = window.location.pathname;
	var path_array = new Array();
	var path_length = path.split("/").length;
	var paths = './';
	if(path_length > 3){
		paths = '';
		for(var i=0;i<path_length-3;i++){
			paths += '../'
		}
	}
	return paths;
}
//应用统计数据
function get_app_num()
{
	var xmlHttp = initAjax();
	if(typeof(xmlHttp)!="object"){
		return;
	}
	var url = get_ajax_path() + "dynmatch/ajax/get_app_num.php";
	xmlHttp.onreadystatechange = function()
	{
		//shanf
// 		if(xmlHttp.readyState==4 && xmlHttp.status==200){
// 			var datas = xmlHttp.responseText;
// 			if(datas != ''){
// 				var objData = eval("(" + datas + ")");	//接收返回的数据
// 				var top_lookedme = 0;					//初始化谁看过我数据
// 				for(var key in objData){
// 					if(document.getElementById(objData[key].id)){
// 						if(objData[key].hasOwnProperty('tips')){	//存在提示KEY就将提示信息显示在数字前
// 							document.getElementById(objData[key].id).innerHTML = objData[key].tips + objData[key].val;
// 						}else{
// 							document.getElementById(objData[key].id).innerHTML = objData[key].val;
// 						}
// 						document.getElementById(objData[key].id).style.display = '';
// 						if(objData[key].id == 'visitor_new' || objData[key].id == 'praise_me_new' || objData[key].id == 'fans_new'){
// 							top_lookedme += objData[key].val;	//累加谁看过我，关注我等
// 						}
// 						document.getElementById('menu_looked_me').innerHTML = top_lookedme;
// 						document.getElementById('menu_looked_me_box').style.display = '';
// 					}
// 				}
// 			}
// 		}
	}
	//xmlHttp.open("GET", url, true);
	//xmlHttp.send(null);
}
</script>
<script type="text/javascript">
//收信量弹层
window.onload=function(){
	if(JY.tool.cookie.get("photo_scyd_122261858") != 'yes'){
		var cookies_time = 30*24*60;	//一个月过期，JY.tool.cookie.get，使用的时间单位是分钟
		JY.tool.cookie.set('photo_scyd_122261858', 'yes', cookies_time);
		document.getElementById('photo_scyd_fc').style.display = 'block';
	}
}
</script>
<!--[if lte IE 6]>
<script type="text/javascript" src="http://images.jiayuan.com/w4/msg/js/dd_belatedpng.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix(".fix-png");
</script>
<![endif]-->
<!--左侧栏目 开始-->
<div class="cp-menu">
		<!--会员介绍-->
    <div class="cp-menu-card-user">
        <div class="menu-avatar menu-avatar-110x168">
                        	<a href="uploadHeadPic" target="_blank"><img src="../resources/img/lksczp_m.jpg" id="user_avatar" height="135" width="110"></a>
                    </div>
        <div class="cp-menu-card-link">
            <a class="menu" href="http://www.jiayuan.com/122261858#cp_kpd" title="立刻提升" target="_blank" onmousedown="send_jy_pv2('|cp_menu_card_kpd|122261858');">靠谱度综合评分:2.4分</a>
            <a class="menu cp-menu-ico-jiang" href="http://www.jiayuan.com/wenda/?from=ucp" target="_blank" onclick="send_jy_pv2('|cp_menu_card_wenda|122261858')">婚恋个性匹配问答</a>
                            <a class="menu" href="http://www.jiayuan.com/usercp/profile.php?action=base" onmousedown="send_jy_pv2('|cp_menu_card_mdy|122261858');" target="_blank">我的资料50分</a>
                [<a class="menu" href="user/selfBasic/${loginUser.userId}" onmousedown="send_jy_pv2('|cp_menu_card_pre|122261858');" target="_blank">预览</a>]
                    </div>
        <div class="cp-menu-card-mail fn-clear">
        	<a class="menu menu-left" href="../msg/notRead" title="未读信件">
                <span>收件箱</span>
                <div class="cp-menu-radius number fn-right">
                	<div class="cp-menu-radius-num"></div>
                </div>
            </a>
            <a class="menu menu-right" href="http://www.jiayuan.com/usercp/clicked_new.php" onmousedown="send_jy_pv2('|cp_menu_area_lookedme|122261858');">
                <span>谁看过我</span>
                <div class="cp-menu-radius number" id="menu_looked_me_box" style="">
                	<div class="cp-menu-radius-num" id="menu_looked_me">46</div>
                </div>
            </a>
            <div class="menu-clear"></div>
                        <div class="menu-bulb"><i class="cp-menu-ico-bulb fix-png"></i></div>
            <div class="msglayer fix-png" id="photo_scyd_fc">
                <a class="sxLayer" onmousedown="send_jy_pv2('|cp_menu_area_guide|122261858');" href="http://www.jiayuan.com/usercp/photo.php?no_photo=1&amp;from_type=usercp" target="_blank"></a>
                <a class="sxLayerClose" onclick="javascript:document.getElementById('photo_scyd_fc').style.display='none';" title="关闭"></a>
            </div>
                    </div>
    </div>
	<!--会员介绍 结束-->
	      
    <div class="cp-menus">
        <div class="cp-menu-index"><a class="menu" href="http://usercp.jiayuan.com/" onmousedown="send_jy_pv2('|cp_menus_index|');">我的佳缘首页</a></div>
        
                	                        
            <div class="cp-menu-items fn-clear">
                <div class="cp-menu-title fn-clear">
                	                        <a class="menu" href="http://www.jiayuan.com/usercp/service/servicenew.php" target="_blank" onmousedown="send_jy_pv2('Usercpn_service_0');">
                            <span class="menuname namecur">服务中心</span>
                            <i class="cp-menu-ico-arrow"></i>
                        </a>
                                    </div>
                
                                
                <ul class="cp-menu-image">
                                                                    	   
                 	                    	                        	        
                	                        
                            		                                          
                  						                                                
        <li class=" cp-menu-service-img fn-left">
                                <a class="menu" id="service_1_a_1" target="_blank" href="http://www.jiayuan.com/usercp/service/bmsg_tg2.php?cnm=usercp&amp;zs_from=4&amp;src_key=new_usercp_menu" onmousedown="send_jy_pv2('Usercpn_service_0_0');">
                                	<i class="cp-menu-service-ico cp-menu-ico-zuanshi"></i>	                                    <div class="cp-menu-item-name">钻石会员</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="s41" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                            <i class="cp-menu-ico-specials cp-menu-link-place"></i>		                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" cp-menu-service-img fn-left">
                                <a class="menu" id="service_1_a_2" target="_blank" href="http://www.jiayuan.com/usercp/service/bmsg.php?cnm=usercp&amp;src_key=new_usercp_menu" onmousedown="send_jy_pv2('Usercpn_service_0_1');">
                                	<i class="cp-menu-service-ico cp-menu-ico-kanxin"></i>	                                    <div class="cp-menu-item-name">看信包月</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="s37" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" cp-menu-service-img fn-left">
                                <a class="menu" id="service_4" target="_blank" href="http://www.jiayuan.com/usercp/fate_express.php" onmousedown="send_jy_pv2('|1000136_0|');">
                                	<i class="cp-menu-service-ico cp-menu-ico-juguang"></i>	                                    <div class="cp-menu-item-name"><cite style="padding-right:6px">聚</cite><cite style="padding-right:6px">光</cite><cite>灯</cite></div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="fate" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" cp-menu-service-img fn-left">
                                <a class="menu" id="service_1_a_4" target="_blank" href="http://www.jiayuan.com/usercp/service/priority.php" onmousedown="send_jy_pv2('Usercpn_service_3_5');">
                                	<i class="cp-menu-service-ico cp-menu-ico-paiming"></i>	                                    <div class="cp-menu-item-name">排名提前</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="s5" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" cp-menu-service-img fn-left">
                                <a class="menu" id="service_1_a_3" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?from=menu&amp;src_key=new_usercp_menu" onmousedown="send_jy_pv2('Usercpn_service_0_2');">
                                	<i class="cp-menu-service-ico cp-menu-ico-vip"></i>	                                    <div class="cp-menu-item-name">VIP 会员</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="s31" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" cp-menu-service-img fn-left">
                                <a class="menu" id="service_3" target="_blank" href="http://gift.jiayuan.com/" onmousedown="send_jy_pv2('Usercpn_service_2');">
                                	<i class="cp-menu-service-ico cp-menu-ico-gift"></i>	                                    <div class="cp-menu-item-name">礼物商城</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="giftmall" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" cp-menu-service-img fn-left">
                                <a class="menu" id="service_1_a_6" target="_blank" href="http://www.jiayuan.com/usercp/center/charge.php?from=menu&amp;src_key=new_usercp_menu#author_wp" onmousedown="send_jy_pv2('Usercpn_service_0_3');">
                                	<i class="cp-menu-service-ico cp-menu-ico-paycenter"></i>	                                    <div class="cp-menu-item-name">购买邮票</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="23" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" cp-menu-service-img fn-left">
                                <a class="menu" id="service_2" target="_blank" href="http://www.jiayuan.com/usercp/center/index.php?from=menu" onmousedown="send_jy_pv2('Usercpn_service_1');">
                                	<i class="cp-menu-service-ico cp-menu-ico-account"></i>	                                    <div class="cp-menu-item-name">邮票账户</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="stamps" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                                                
        <li class=" cp-menu-service-img fn-left">
                                <a class="menu" id="paoxue" target="_blank" href="http://case.jiayuan.com/paoxue/" onmousedown="send_jy_pv2('|Usercpn_paoxue|');">
                                	<i class="cp-menu-service-ico cp-menu-ico-paoxue"></i>	                                    <div class="cp-menu-item-name">恋爱秘籍</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="paoxue_id" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                            <i class="cp-menu-ico-popularity cp-menu-link-place"></i>		                                                                    </a>
                            </li>
                        
                                                            				                                                	<li class="cp-menu-service-img fn-left">
                    	<a class="menu" href="http://www.jiayuan.com/usercp/service/servicenew.php" target="_blank" onmousedown="send_jy_pv2('Usercpn_service_0');">
	                        <i class="cp-menu-service-ico cp-menu-ico-more"></i>
                        </a>
                    </li>
                                </ul>
                
                                
            </div>
            
        	                	                        
            <div class="cp-menu-items fn-clear">
                <div class="cp-menu-title fn-clear">
                	                        <a class="menu" href="javascript:pop_app();" target="" onmousedown="send_jy_pv2('|Usercp_app_pop|');">
                            <span class="menuname namecur">佳缘应用</span>
                            <i class="cp-menu-ico-arrow"></i>
                        </a>
                                    </div>
                
                                
                <ul>
                                                                    	   
                 	                    	                        	        
                	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="jy_club_id" target="_blank" href="http://www.jiayuan.com/club" onmousedown="send_jy_pv2('|Usercp_app_club|');">
                                		                                    <div class="cp-menu-item-name">佳缘俱乐部</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="mission_gold" class="cp-menu-radius-num" style="">金豆600</div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                                                
        <li class=" ">
                                <a class="menu" id="menu_id_wenda" target="_blank" href="http://www.jiayuan.com/wenda/" onmousedown="send_jy_pv2('|Usercp_app_wenda|');">
                                		                                    <div class="cp-menu-item-name">个性匹配问答</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="app_id_wenda" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                            <i class="cp-menu-ico-new cp-menu-link-place"></i>		                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                                                
        <li class=" ">
                                <a class="menu" id="app_yfsp_id" target="_blank" href="http://www.jiayuan.com/parties/app/yfsp/" onmousedown="send_jy_pv2('|Usercp_app_yfsp|');">
                                		                                    <div class="cp-menu-item-name">谁最养眼？</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="app_yfsp" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                            <i class="cp-menu-ico-new cp-menu-link-place"></i>		                                                                    </a>
                            </li>
                        
                                                                        
        	                                                        	      
              	                    	                        	           
             	                        
                            		                                          
                  						                                                
        <li class=" ">
                                <a class="menu" id="dafuweng_m" target="_blank" href="http://www.jiayuan.com/parties/2012/dafuweng/index.php" onmousedown="send_jy_pv2('|Usercp_app_dafuweng|');">
                                		                                    <div class="cp-menu-item-name">爱情大富翁</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="dafuweng_flag" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                            <i class="cp-menu-ico-hot cp-menu-link-place"></i>		                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                                                
        <li class=" ">
                                <a class="menu" id="zt2012_zhanbu_id" target="_blank" href="http://www.jiayuan.com/parties/2012/zhanbu/" onmousedown="send_jy_pv2('|Usercp_app_zt2012_travel|');">
                                		                                    <div class="cp-menu-item-name">星座占卜屋</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="zt2012_zhanbu" class="cp-menu-radius-num" style="">22</div>
                                        </div>
                                    </div>
                                                                            <i class="cp-menu-ico-new cp-menu-link-place"></i>		                                                                    </a>
                            </li>
                        
                                                                        
        	                                                        	      
              	                    	                        	           
             	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="usercp_case2013_bubble" target="_blank" href="http://case.jiayuan.com/2013/bubble/" onmousedown="send_jy_pv2('|Usercp_app_peach|');">
                                		                                    <div class="cp-menu-item-name">泡泡大拯救</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="case2013_bubble" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="app_fishingjoy" target="_blank" href="http://case.jiayuan.com/2012/fishingjoy/" onmousedown="send_jy_pv2('|Usercp_app_fishingjoy|');">
                                		                                    <div class="cp-menu-item-name">捕鱼寻缘 </div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="app_fishingjoy_id" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="app_11" target="_blank" href="http://www.jiayuan.com/parties/2012/zadan/index.php" onmousedown="send_jy_pv2('|Usercpn_app_11|');">
                                		                                    <div class="cp-menu-item-name">暴走的金蛋</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="app11" class="cp-menu-radius-num" style="">3</div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                						                                                  
                                      <li class=" ">
                                <a class="menu" id="app_0" target="_blank" href="http://www.jiayuan.com/map/result.php" onmousedown="send_jy_pv2('Usercpn_app_0');">
                                		                                    <div class="cp-menu-item-name">地图搜索</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="app0" class="cp-menu-radius-num">新版</div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="app_1" target="_blank" href="http://www.jiayuan.com/parties/2012/telepathy/index.php" onmousedown="send_jy_pv2('|222372_31| ');">
                                		                                    <div class="cp-menu-item-name">心电感应</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="app1" class="cp-menu-radius-num" style="">60</div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="app_4" target="_blank" href="http://www.jiayuan.com/parties/2011/yjzq/" onmousedown="send_jy_pv2('Usercpn_app_4');">
                                		                                    <div class="cp-menu-item-name">一键钟情</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="app4" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                                                
        <li class=" ">
                                <a class="menu" id="Usercp_app_flowerball" target="_blank" href="http://www.jiayuan.com/parties/app/guesslike/" onmousedown="send_jy_pv2('|Usercp_app_guesslike|');">
                                		                                    <div class="cp-menu-item-name">猜你喜欢</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="Usercp_apps_guesslike" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                            <i class="cp-menu-ico-new cp-menu-link-place"></i>		                                                                    </a>
                            </li>
                        
                                                            				                                                </ul>
                
                                
            </div>
            
        	                	                        
            <div class="cp-menu-items fn-clear">
                <div class="cp-menu-title fn-clear">
                							<span class="menuname">交友记录</span>
                                    </div>
                
                                
                <ul>
                                                                    	   
                 	                    	                        	        
                	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="friends_1" target="_self" href="http://www.jiayuan.com/usercp/friends.php?from=menu" onmousedown="send_jy_pv2('Usercpn_friends_0');">
                                		                                    <div class="cp-menu-item-name">好友与联系人</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="friends" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="visitor_new_id" target="_self" href="http://www.jiayuan.com/usercp/clicked_new.php" onmousedown="send_jy_pv2('|1012380_0| ');">
                                		                                    <div class="cp-menu-item-name">谁看过我</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="visitor_new" class="cp-menu-radius-num" style="">45</div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="click_new_id" target="_self" href="http://www.jiayuan.com/usercp/ilooked.php" onmousedown="send_jy_pv2('|1012380_3| ');">
                                		                                    <div class="cp-menu-item-name">我看过谁</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="click_new" class="cp-menu-radius-num" style="">7</div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="praise_me_new_id" target="_self" href="http://www.jiayuan.com/usercp/praiseme.php" onmousedown="send_jy_pv2('|1012380_1| ');">
                                		                                    <div class="cp-menu-item-name">谁赞过我</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="praise_me_new" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="fans_new_id" target="_self" href="http://www.jiayuan.com/usercp/myfans.php" onmousedown="send_jy_pv2('|1012380_2| ');">
                                		                                    <div class="cp-menu-item-name">谁关注我</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="fans_new" class="cp-menu-radius-num" style="">1</div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                            				                                                </ul>
                
                                
            </div>
            
        	                	                        
            <div class="cp-menu-items fn-clear">
                <div class="cp-menu-title fn-clear">
                							<span class="menuname">完善资料</span>
                                    </div>
                
                                
                <ul>
                                                                    	   
                 	                    	                        	        
                	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="info_1" target="_blank" href="http://www.jiayuan.com/usercp/profile.php?action=base" onmousedown="send_jy_pv2('Usercpn_info_0');">
                                		                                    <div class="cp-menu-item-name">我的资料</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="0" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="info_1_1" target="_blank" href="http://www.jiayuan.com/usercp/photo.php?from=menu" onmousedown="send_jy_pv2('Usercpn_info_0_0');">
                                		                                    <div class="cp-menu-item-name">我的相册</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="0" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="info_1_2" target="_self" href="http://www.jiayuan.com/usercp/article.php?from=menu" onmousedown="send_jy_pv2('Usercpn_info_0_2');">
                                		                                    <div class="cp-menu-item-name">我的博客</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="111" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="info_2" target="_self" href="http://www.jiayuan.com/usercp/validateemail/certificate.php" onmousedown="send_jy_pv2('Usercpn_info_1');">
                                		                                    <div class="cp-menu-item-name">身份验证</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="12" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                						                                                  
                                      <li class=" ">
                                <a class="menu" id="info_2_1" target="_self" href="http://www.jiayuan.com/usercp/validateemail/certificate.php?menu=4" onmousedown="send_jy_pv2('Usercpn_info_1_0');">
                                		                                    <div class="cp-menu-item-name">手机验证</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="s121" class="cp-menu-radius-num">有奖</div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="info_2_2" target="_self" href="http://www.jiayuan.com/usercp/validateemail/certificate.php?menu=5" onmousedown="send_jy_pv2('Usercpn_info_1_1');">
                                		                                    <div class="cp-menu-item-name">邮箱认证</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="s122" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="info_3" target="_self" href="http://www.jiayuan.com/usercp/condition.php?from=menu" onmousedown="send_jy_pv2('Usercpn_info_2');">
                                		                                    <div class="cp-menu-item-name">修改择友条件</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="13" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="info_4" target="_self" href="http://www.jiayuan.com/story/space_create.php?LeftNav=1&amp;from=menu" onmousedown="send_jy_pv2('Usercpn_info_3');">
                                		                                    <div class="cp-menu-item-name">发表成功故事</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="15" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                            				                                                </ul>
                
                                
            </div>
            
        	                	                        
            <div class="cp-menu-items fn-clear">
                <div class="cp-menu-title fn-clear">
                							<span class="menuname">我的账号</span>
                                    </div>
                
                                
                <ul>
                                                                    	   
                 	                    	                        	        
                	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="account_1" target="_self" href="http://www.jiayuan.com/usercp/dingyue.php?from=menu" onmousedown="send_jy_pv2('Usercpn_wddy');">
                                		                                    <div class="cp-menu-item-name">我的订阅</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="100" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="account_2" target="_self" href="http://www.jiayuan.com/usercp/password.php?from=menu" onmousedown="send_jy_pv2('Usercpn_xgmm');">
                                		                                    <div class="cp-menu-item-name">账号安全</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="password" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="account_4" target="_self" href="http://www.jiayuan.com/usercp/share.php?from=menu" onmousedown="send_jy_pv2('Usercpn_fxzl');">
                                		                                    <div class="cp-menu-item-name">分享资料</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="share" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                            				                                                </ul>
                
                                
            </div>
            
        	                
    </div>
</div>
<script type="text/javascript">
/*
*/
//get_app_num();	//获取佳缘应用的数字
</script>
<!--左侧栏目 结束--> 
<!-- 左侧菜单 结束--> 

<!-- 中 右 内容开始 --> 
<div class="grid790right"> 
<!-- ==============================框架内内容========================================= --> 

	<!--右侧开始-->
    <div class="floatright">
		<!--信件导航 B-->
				<div class="letter-nav">
			<ul class="fn-clear">
				<li class="selected"><a>未读信<i class="number"></i></a></li>
				<li><a href="inbox" >已读信<i class="number"></i></a></li>
				<li><a href="outbox" >已发信<i class="number"></i></a></li>
<!-- 				<li><a href="http://www.jiayuan.com/msg/recover">信件后悔药<i class="number"></i></a></li> -->
<!-- 				<li><a href="http://www.jiayuan.com/msg/admin">管理员信<i class="number">1</i></a></li> -->
<!-- 				<li><a href="http://www.jiayuan.com/helpcenter/postmail2.php?refresh=1&amp;pid=249" target="_blank">我要反馈<i class="number"></i></a></li> -->
			</ul>
		</div>		<!--信件导航 E-->
		<!--信件 B-->
		<div class="letter-mod">
						<!--分类导航shanf-->
			<div class="sort-nav fn-clear">
<!-- 				<div class="sort-area fn-clear"> -->
<!-- 					<ul class="sort-mod fn-clear"> -->
<!-- 						<li class="selected"><a href="javascript:;" onclick="get_list(1, 1);" onmousedown="send_jy_pv2('|1015897_5|121261858');">全部</a></li> -->
<!-- 						<li> <a href="javascript:;" onclick="get_list(3, 1);" onmousedown="send_jy_pv2('|1015897_7|121261858');">多次来信</a></li> -->
<!-- 						<li> <a href="javascript:;" onclick="get_list(4, 1);" onmousedown="send_jy_pv2('|1015897_9|121261858');">免费信</a></li> -->
<!-- 						<li> <a href="javascript:;" onclick="get_list(5, 1);" onmousedown="send_jy_pv2('|1015897_11|121261858');">按时间</a></li> -->
<!-- 						<li class="condition bdr-none">  -->
<!-- 							<a href="javascript:;" onmousedown="send_jy_pv2('|1015897_13|121261858');">按条件<i class="icon"></i></a> -->
<!-- 						</li> -->
<!-- 					</ul> -->
<!-- 					<div class="search"> -->
<!-- 						<a class="search-btn" href="javascript:;" onclick="get_list(7, 1);" onmousedown="send_jy_pv2('|1015897_15|121261858');"></a> -->
<!-- 						<input class="search-txt" value="请输入对方昵称或ID" type="text"> -->
						
<!-- 					</div> -->
<!-- 				</div> -->
				<div class="line"></div>
				<!--条件搜索 B-->
<!-- 								<div class="condition-layer"> -->
<!-- 					<a class="ly-close" href="javascript:;"></a> -->
<!-- 					<div class="spotlightSelect"> -->
<!-- 						<ul class="fn-clear" style="position:relative;z-index:9;"> -->
<!-- 							<li> -->
<!-- 								<a class="lightWidth" href="javascript:;"><span>其他国家</span><i class="triangle"></i></a> -->
<!-- 								<div style="display: none;" class="selectPopups"> -->
<!-- 									<p>请选择所在地</p> -->
<!-- 									<div class="mt12"> -->
<!-- 										<select id="work_location" class="work_location"> -->
<!-- 											<option value="0">不限</option> -->
<!-- 																						<option value="11">北京</option> -->
<!-- 																						<option value="12">天津</option> -->
<!-- 																						<option value="13">河北</option> -->
<!-- 																						<option value="14">山西</option> -->
<!-- 																						<option value="15">内蒙古</option> -->
<!-- 																						<option value="21">辽宁</option> -->
<!-- 																						<option value="22">吉林</option> -->
<!-- 																						<option value="23">黑龙江</option> -->
<!-- 																						<option value="31">上海</option> -->
<!-- 																						<option value="32">江苏</option> -->
<!-- 																						<option value="33">浙江</option> -->
<!-- 																						<option value="34">安徽</option> -->
<!-- 																						<option value="35">福建</option> -->
<!-- 																						<option value="36">江西</option> -->
<!-- 																						<option value="37">山东</option> -->
<!-- 																						<option value="41">河南</option> -->
<!-- 																						<option value="42">湖北</option> -->
<!-- 																						<option value="43">湖南</option> -->
<!-- 																						<option value="44">广东</option> -->
<!-- 																						<option value="45">广西</option> -->
<!-- 																						<option value="46">海南</option> -->
<!-- 																						<option value="50">重庆</option> -->
<!-- 																						<option value="51">四川</option> -->
<!-- 																						<option value="52">贵州</option> -->
<!-- 																						<option value="53">云南</option> -->
<!-- 																						<option value="54">西藏</option> -->
<!-- 																						<option value="61">陕西</option> -->
<!-- 																						<option value="62">甘肃</option> -->
<!-- 																						<option value="63">青海</option> -->
<!-- 																						<option value="64">宁夏</option> -->
<!-- 																						<option value="65">新疆</option> -->
<!-- 																						<option value="71">台湾</option> -->
<!-- 																						<option value="81">香港</option> -->
<!-- 																						<option value="82">澳门</option> -->
<!-- 																						<option value="83">钓鱼岛</option> -->
<!-- 																						<option value="98">美国</option> -->
<!-- 																						<option value="99" selected="selected">其他国家</option> -->
<!-- 																					</select> -->
<!-- 									</div> -->
<!-- 									<div class="lySure"><a href="javascript:;">确认</a></div> -->
<!-- 								</div> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a class="lightWidth" href="javascript:;"><span>婚史：不限</span><i class="triangle"></i></a> -->
<!-- 								<div style="display: none;" class="selectPopups"> -->
<!-- 									<p>请选择婚史</p> -->
<!-- 									<div class="mt12"> -->
<!-- 										<select id="marriage" class="marriage"> -->
<!-- 											<option value="0" selected="selected">不限</option> -->
<!-- 											<option value="1">未婚</option> -->
<!-- 										</select> -->
<!-- 									</div> -->
<!-- 									<div class="lySure"><a href="javascript:;">确认</a></div> -->
<!-- 								</div> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a class="lightWidth width68" href="javascript:;"><span>19至29岁</span><i class="triangle"></i></a> -->
<!-- 								<div style="display: none;" class="selectPopups agePopups"> -->
<!-- 									<p>请选择年龄</p> -->
<!-- 										<div class="mt12"> -->
<!-- 											<select id="min_age" class="min_age"> -->
<!-- 												<option value="18">18岁</option> -->
<!-- 												<option value="19" selected="selected">19岁</option> -->
<!-- 												<option value="20">20岁</option> -->
<!-- 												<option value="21">21岁</option> -->
<!-- 												<option value="22">22岁</option> -->
<!-- 												<option value="23">23岁</option> -->
<!-- 												<option value="24">24岁</option> -->
<!-- 												<option value="25">25岁</option> -->
<!-- 												<option value="26">26岁</option> -->
<!-- 												<option value="27">27岁</option> -->
<!-- 												<option value="28">28岁</option> -->
<!-- 												<option value="29">29岁</option> -->
<!-- 												<option value="30">30岁</option> -->
<!-- 												<option value="31">31岁</option> -->
<!-- 												<option value="32">32岁</option> -->
<!-- 												<option value="33">33岁</option> -->
<!-- 												<option value="34">34岁</option> -->
<!-- 												<option value="35">35岁</option> -->
<!-- 												<option value="36">36岁</option> -->
<!-- 												<option value="37">37岁</option> -->
<!-- 												<option value="38">38岁</option> -->
<!-- 												<option value="39">39岁</option> -->
<!-- 												<option value="40">40岁</option> -->
<!-- 												<option value="41">41岁</option> -->
<!-- 												<option value="42">42岁</option> -->
<!-- 												<option value="43">43岁</option> -->
<!-- 												<option value="44">44岁</option> -->
<!-- 												<option value="45">45岁</option> -->
<!-- 												<option value="46">46岁</option> -->
<!-- 												<option value="47">47岁</option> -->
<!-- 												<option value="48">48岁</option> -->
<!-- 												<option value="49">49岁</option> -->
<!-- 												<option value="50">50岁</option> -->
<!-- 												<option value="51">51岁</option> -->
<!-- 												<option value="52">52岁</option> -->
<!-- 												<option value="53">53岁</option> -->
<!-- 												<option value="54">54岁</option> -->
<!-- 												<option value="55">55岁</option> -->
<!-- 												<option value="56">56岁</option> -->
<!-- 												<option value="57">57岁</option> -->
<!-- 												<option value="58">58岁</option> -->
<!-- 												<option value="59">59岁</option> -->
<!-- 												<option value="60">60岁</option> -->
<!-- 												<option value="61">61岁</option> -->
<!-- 												<option value="62">62岁</option> -->
<!-- 												<option value="63">63岁</option> -->
<!-- 												<option value="64">64岁</option> -->
<!-- 												<option value="65">65岁</option> -->
<!-- 												<option value="66">66岁</option> -->
<!-- 												<option value="67">67岁</option> -->
<!-- 												<option value="68">68岁</option> -->
<!-- 												<option value="69">69岁</option> -->
<!-- 												<option value="70">70岁</option> -->
<!-- 												<option value="71">71岁</option> -->
<!-- 												<option value="72">72岁</option> -->
<!-- 												<option value="73">73岁</option> -->
<!-- 												<option value="74">74岁</option> -->
<!-- 												<option value="75">75岁</option> -->
<!-- 												<option value="76">76岁</option> -->
<!-- 												<option value="77">77岁</option> -->
<!-- 												<option value="78">78岁</option> -->
<!-- 												<option value="79">79岁</option> -->
<!-- 												<option value="80">80岁</option> -->
<!-- 												<option value="81">81岁</option> -->
<!-- 												<option value="82">82岁</option> -->
<!-- 												<option value="83">83岁</option> -->
<!-- 												<option value="84">84岁</option> -->
<!-- 												<option value="85">85岁</option> -->
<!-- 												<option value="86">86岁</option> -->
<!-- 												<option value="87">87岁</option> -->
<!-- 												<option value="88">88岁</option> -->
<!-- 												<option value="89">89岁</option> -->
<!-- 												<option value="90">90岁</option> -->
<!-- 												<option value="91">91岁</option> -->
<!-- 												<option value="92">92岁</option> -->
<!-- 												<option value="93">93岁</option> -->
<!-- 												<option value="94">94岁</option> -->
<!-- 												<option value="95">95岁</option> -->
<!-- 												<option value="96">96岁</option> -->
<!-- 												<option value="97">97岁</option> -->
<!-- 												<option value="98">98岁</option> -->
<!-- 												<option value="99">99岁</option> -->
<!-- 											</select> -->
<!-- 											<span class="until">至</span> -->
<!-- 											<select id="max_age" class="max_age"> -->
<!-- 												<option value="29" selected="selected">29岁</option> -->
<!-- 												<option value="30">30岁</option> -->
<!-- 												<option value="31">31岁</option> -->
<!-- 												<option value="32">32岁</option> -->
<!-- 												<option value="33">33岁</option> -->
<!-- 												<option value="34">34岁</option> -->
<!-- 												<option value="35">35岁</option> -->
<!-- 												<option value="36">36岁</option> -->
<!-- 												<option value="37">37岁</option> -->
<!-- 												<option value="38">38岁</option> -->
<!-- 												<option value="39">39岁</option> -->
<!-- 												<option value="40">40岁</option> -->
<!-- 												<option value="41">41岁</option> -->
<!-- 												<option value="42">42岁</option> -->
<!-- 												<option value="43">43岁</option> -->
<!-- 												<option value="44">44岁</option> -->
<!-- 												<option value="45">45岁</option> -->
<!-- 												<option value="46">46岁</option> -->
<!-- 												<option value="47">47岁</option> -->
<!-- 												<option value="48">48岁</option> -->
<!-- 												<option value="49">49岁</option> -->
<!-- 												<option value="50">50岁</option> -->
<!-- 												<option value="51">51岁</option> -->
<!-- 												<option value="52">52岁</option> -->
<!-- 												<option value="53">53岁</option> -->
<!-- 												<option value="54">54岁</option> -->
<!-- 												<option value="55">55岁</option> -->
<!-- 												<option value="56">56岁</option> -->
<!-- 												<option value="57">57岁</option> -->
<!-- 												<option value="58">58岁</option> -->
<!-- 												<option value="59">59岁</option> -->
<!-- 												<option value="60">60岁</option> -->
<!-- 												<option value="61">61岁</option> -->
<!-- 												<option value="62">62岁</option> -->
<!-- 												<option value="63">63岁</option> -->
<!-- 												<option value="64">64岁</option> -->
<!-- 												<option value="65">65岁</option> -->
<!-- 												<option value="66">66岁</option> -->
<!-- 												<option value="67">67岁</option> -->
<!-- 												<option value="68">68岁</option> -->
<!-- 												<option value="69">69岁</option> -->
<!-- 												<option value="70">70岁</option> -->
<!-- 												<option value="71">71岁</option> -->
<!-- 												<option value="72">72岁</option> -->
<!-- 												<option value="73">73岁</option> -->
<!-- 												<option value="74">74岁</option> -->
<!-- 												<option value="75">75岁</option> -->
<!-- 												<option value="76">76岁</option> -->
<!-- 												<option value="77">77岁</option> -->
<!-- 												<option value="78">78岁</option> -->
<!-- 												<option value="79">79岁</option> -->
<!-- 												<option value="80">80岁</option> -->
<!-- 												<option value="81">81岁</option> -->
<!-- 												<option value="82">82岁</option> -->
<!-- 												<option value="83">83岁</option> -->
<!-- 												<option value="84">84岁</option> -->
<!-- 												<option value="85">85岁</option> -->
<!-- 												<option value="86">86岁</option> -->
<!-- 												<option value="87">87岁</option> -->
<!-- 												<option value="88">88岁</option> -->
<!-- 												<option value="89">89岁</option> -->
<!-- 												<option value="90">90岁</option> -->
<!-- 												<option value="91">91岁</option> -->
<!-- 												<option value="92">92岁</option> -->
<!-- 												<option value="93">93岁</option> -->
<!-- 												<option value="94">94岁</option> -->
<!-- 												<option value="95">95岁</option> -->
<!-- 												<option value="96">96岁</option> -->
<!-- 												<option value="97">97岁</option> -->
<!-- 												<option value="98">98岁</option> -->
<!-- 												<option value="99">99岁</option> -->
<!-- 											</select> -->
<!-- 										</div> -->
<!-- 									<div class="lySure"><a href="javascript:;">确认</a></div> -->
<!-- 								</div> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a class="lightWidth width94" href="javascript:;" onmousedown="send_jy_pv2('|1014108_16|89251048')"><span>155至180厘米</span><i class="triangle"></i></a> -->
<!-- 								<div style="display: none;" class="selectPopups heightPopups"> -->
<!-- 									<p>请选择身高</p> -->
<!-- 									<div class="mt12"> -->
<!-- 										<select id="min_height" class="min_height"> -->
<!-- 											<option value="140">140厘米</option> -->
<!-- 			                                <option value="141">141厘米</option> -->
<!-- 			                                <option value="142">142厘米</option> -->
<!-- 			                                <option value="143">143厘米</option> -->
<!-- 			                                <option value="144">144厘米</option> -->
<!-- 			                                <option value="145">145厘米</option> -->
<!-- 			                                <option value="146">146厘米</option> -->
<!-- 			                                <option value="147">147厘米</option> -->
<!-- 			                                <option value="148">148厘米</option> -->
<!-- 			                                <option value="149">149厘米</option> -->
<!-- 			                                <option value="150">150厘米</option> -->
<!-- 			                                <option value="151">151厘米</option> -->
<!-- 			                                <option value="152">152厘米</option> -->
<!-- 			                                <option value="153">153厘米</option> -->
<!-- 			                                <option value="154">154厘米</option> -->
<!-- 			                                <option selected="selected" value="155">155厘米</option> -->
<!-- 			                                <option value="156">156厘米</option> -->
<!-- 			                                <option value="157">157厘米</option> -->
<!-- 			                                <option value="158">158厘米</option> -->
<!-- 			                                <option value="159">159厘米</option> -->
<!-- 			                                <option value="160">160厘米</option> -->
<!-- 			                                <option value="161">161厘米</option> -->
<!-- 			                                <option value="162">162厘米</option> -->
<!-- 			                                <option value="163">163厘米</option> -->
<!-- 			                                <option value="164">164厘米</option> -->
<!-- 			                                <option value="165">165厘米</option> -->
<!-- 			                                <option value="166">166厘米</option> -->
<!-- 			                                <option value="167">167厘米</option> -->
<!-- 			                                <option value="168">168厘米</option> -->
<!-- 			                                <option value="169">169厘米</option> -->
<!-- 			                                <option value="170">170厘米</option> -->
<!-- 			                                <option value="171">171厘米</option> -->
<!-- 			                                <option value="172">172厘米</option> -->
<!-- 			                                <option value="173">173厘米</option> -->
<!-- 			                                <option value="174">174厘米</option> -->
<!-- 			                                <option value="175">175厘米</option> -->
<!-- 			                                <option value="176">176厘米</option> -->
<!-- 			                                <option value="177">177厘米</option> -->
<!-- 			                                <option value="178">178厘米</option> -->
<!-- 			                                <option value="179">179厘米</option> -->
<!-- 			                                <option value="180">180厘米</option> -->
<!-- 			                                <option value="181">181厘米</option> -->
<!-- 			                                <option value="182">182厘米</option> -->
<!-- 			                                <option value="183">183厘米</option> -->
<!-- 			                                <option value="184">184厘米</option> -->
<!-- 			                                <option value="185">185厘米</option> -->
<!-- 			                                <option value="186">186厘米</option> -->
<!-- 			                                <option value="187">187厘米</option> -->
<!-- 			                                <option value="188">188厘米</option> -->
<!-- 			                                <option value="189">189厘米</option> -->
<!-- 			                                <option value="190">190厘米</option> -->
<!-- 			                                <option value="191">191厘米</option> -->
<!-- 			                                <option value="192">192厘米</option> -->
<!-- 			                                <option value="193">193厘米</option> -->
<!-- 			                                <option value="194">194厘米</option> -->
<!-- 			                                <option value="195">195厘米</option> -->
<!-- 			                                <option value="196">196厘米</option> -->
<!-- 			                                <option value="197">197厘米</option> -->
<!-- 			                                <option value="198">198厘米</option> -->
<!-- 			                                <option value="199">199厘米</option> -->
<!-- 			                                <option value="200">200厘米</option> -->
<!-- 			                                <option value="201">201厘米</option> -->
<!-- 			                                <option value="202">202厘米</option> -->
<!-- 			                                <option value="203">203厘米</option> -->
<!-- 			                                <option value="204">204厘米</option> -->
<!-- 			                                <option value="205">205厘米</option> -->
<!-- 			                                <option value="206">206厘米</option> -->
<!-- 			                                <option value="207">207厘米</option> -->
<!-- 			                                <option value="208">208厘米</option> -->
<!-- 			                                <option value="209">209厘米</option> -->
<!-- 			                                <option value="210">210厘米</option> -->
<!-- 			                                <option value="211">211厘米</option> -->
<!-- 			                                <option value="212">212厘米</option> -->
<!-- 			                                <option value="213">213厘米</option> -->
<!-- 			                                <option value="214">214厘米</option> -->
<!-- 			                                <option value="215">215厘米</option> -->
<!-- 			                                <option value="216">216厘米</option> -->
<!-- 			                                <option value="217">217厘米</option> -->
<!-- 			                                <option value="218">218厘米</option> -->
<!-- 			                                <option value="219">219厘米</option> -->
<!-- 			                                <option value="220">220厘米</option> -->
<!-- 										</select> -->

<!-- 										<span class="until">至</span> -->
<!-- 										<select id="max_height" class="max_height"> -->
<!-- 			                                <option value="155">155厘米</option> -->
<!-- 			                                <option value="156">156厘米</option> -->
<!-- 			                                <option value="157">157厘米</option> -->
<!-- 			                                <option value="158">158厘米</option> -->
<!-- 			                                <option value="159">159厘米</option> -->
<!-- 			                                <option value="160">160厘米</option> -->
<!-- 			                                <option value="161">161厘米</option> -->
<!-- 			                                <option value="162">162厘米</option> -->
<!-- 			                                <option value="163">163厘米</option> -->
<!-- 			                                <option value="164">164厘米</option> -->
<!-- 			                                <option value="165">165厘米</option> -->
<!-- 			                                <option value="166">166厘米</option> -->
<!-- 			                                <option value="167">167厘米</option> -->
<!-- 			                                <option value="168">168厘米</option> -->
<!-- 			                                <option value="169">169厘米</option> -->
<!-- 			                                <option value="170">170厘米</option> -->
<!-- 			                                <option value="171">171厘米</option> -->
<!-- 			                                <option value="172">172厘米</option> -->
<!-- 			                                <option value="173">173厘米</option> -->
<!-- 			                                <option value="174">174厘米</option> -->
<!-- 			                                <option value="175">175厘米</option> -->
<!-- 			                                <option value="176">176厘米</option> -->
<!-- 			                                <option value="177">177厘米</option> -->
<!-- 			                                <option value="178">178厘米</option> -->
<!-- 			                                <option value="179">179厘米</option> -->
<!-- 			                                <option selected="selected" value="180">180厘米</option> -->
<!-- 			                                <option value="181">181厘米</option> -->
<!-- 			                                <option value="182">182厘米</option> -->
<!-- 			                                <option value="183">183厘米</option> -->
<!-- 			                                <option value="184">184厘米</option> -->
<!-- 			                                <option value="185">185厘米</option> -->
<!-- 			                                <option value="186">186厘米</option> -->
<!-- 			                                <option value="187">187厘米</option> -->
<!-- 			                                <option value="188">188厘米</option> -->
<!-- 			                                <option value="189">189厘米</option> -->
<!-- 			                                <option value="190">190厘米</option> -->
<!-- 			                                <option value="191">191厘米</option> -->
<!-- 			                                <option value="192">192厘米</option> -->
<!-- 			                                <option value="193">193厘米</option> -->
<!-- 			                                <option value="194">194厘米</option> -->
<!-- 			                                <option value="195">195厘米</option> -->
<!-- 			                                <option value="196">196厘米</option> -->
<!-- 			                                <option value="197">197厘米</option> -->
<!-- 			                                <option value="198">198厘米</option> -->
<!-- 			                                <option value="199">199厘米</option> -->
<!-- 			                                <option value="200">200厘米</option> -->
<!-- 			                                <option value="201">201厘米</option> -->
<!-- 			                                <option value="202">202厘米</option> -->
<!-- 			                                <option value="203">203厘米</option> -->
<!-- 			                                <option value="204">204厘米</option> -->
<!-- 			                                <option value="205">205厘米</option> -->
<!-- 			                                <option value="206">206厘米</option> -->
<!-- 			                                <option value="207">207厘米</option> -->
<!-- 			                                <option value="208">208厘米</option> -->
<!-- 			                                <option value="209">209厘米</option> -->
<!-- 			                                <option value="210">210厘米</option> -->
<!-- 			                                <option value="211">211厘米</option> -->
<!-- 			                                <option value="212">212厘米</option> -->
<!-- 			                                <option value="213">213厘米</option> -->
<!-- 			                                <option value="214">214厘米</option> -->
<!-- 			                                <option value="215">215厘米</option> -->
<!-- 			                                <option value="216">216厘米</option> -->
<!-- 			                                <option value="217">217厘米</option> -->
<!-- 			                                <option value="218">218厘米</option> -->
<!-- 			                                <option value="219">219厘米</option> -->
<!-- 			                                <option value="220">220厘米</option> -->
<!-- 										</select> -->
<!-- 									</div> -->
<!-- 									<div class="lySure"><a href="javascript:;">确认</a></div> -->
<!-- 								</div> -->
<!-- 							</li>							 -->
<!-- 							<li> -->
<!-- 								<a class="lightWidth width83" href="javascript:;"><span>本科及以上</span><i class="triangle"></i></a> -->
<!-- 								<div style="display: none;" class="selectPopups eduPopups"> -->
<!-- 									<p>请选择学历</p> -->
<!-- 									<div class="mt12"> -->
<!-- 										<select id="education" class="education"> -->
<!-- 											<option value="10">中专相当学历及以上</option> -->
<!-- 											<option value="20">大专及以上</option> -->
<!-- 											<option value="30" selected="selected">本科及以上</option> -->
<!-- 											<option value="50">硕士及以上</option> -->
<!-- 											<option value="60">博士及以上</option> -->
<!-- 										</select> -->
<!-- 									</div> -->
<!-- 									<div class="lySure"><a href="javascript:;">确认</a></div> -->
<!-- 								</div> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a class="lightWidth width112" href="javascript:;"><span>2000～5000元</span><i class="triangle"></i></a> -->
<!-- 								<div style="display: none;" class="selectPopups salaryPopups"> -->
<!-- 									<p>请选择月薪</p> -->
<!-- 									<div class="mt12"> -->
<!-- 										<select id="salary" class="income"> -->
<!-- 											<option value="10">2000元以下</option> -->
<!-- 											<option value="20" selected="selected">2000～5000元</option> -->
<!-- 											<option value="30">5000～10000元</option> -->
<!-- 											<option value="40">10000～20000元</option> -->
<!-- 											<option value="50">20000元以上</option> -->
<!-- 										</select> -->
<!-- 										<label class="above"><input name="income_more_than" id="select-sal" class="income_more_than" checked="checked" type="checkbox"><span>以上</span> -->
<!-- 										</label> -->
<!-- 									</div> -->
<!-- 									<div class="lySure"><a href="javascript:;">确认</a></div> -->
<!-- 								</div> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a class="lightWidth" href="javascript:;"><span>购房：不限</span><i class="triangle"></i></a> -->
<!-- 								<div class="selectPopups" style="display:none"> -->
<!-- 									<p>请选择购房情况</p> -->
<!-- 									<div class="mt12"> -->
<!-- 										<select class="house"> -->
<!-- 											<option value="0" selected="selected">不限</option> -->
<!-- 											<option value="2">已购房</option> -->
<!-- 										</select> -->
<!-- 									</div> -->
<!-- 									<div class="lySure"><a href="javascript:;">确认</a></div> -->
<!-- 								</div> -->
<!-- 							</li> -->
<!-- 							<li> -->
<!-- 								<a class="lightWidth" href="javascript:;"><span>购车：不限</span><i class="triangle"></i></a> -->
<!-- 								<div style="display: none;" class="selectPopups"> -->
<!-- 									<p>请选择购车情况</p> -->
<!-- 									<div class="mt12"> -->
<!-- 										<select class="auto"> -->
<!-- 											<option value="0" selected="selected">不限</option> -->
<!-- 											<option value="2">已购车</option> -->
<!-- 										</select> -->
<!-- 									</div> -->
<!-- 									<div class="lySure"><a href="javascript:;">确认</a></div> -->
<!-- 								</div> -->
<!-- 							</li> -->
						
<!-- 						</ul> -->
<!-- 					</div> -->
<!-- 					<div class="ly-btn-mod"> -->
<!-- 						<a class="ly-con-btn condition-btn" href="javascript:;" onmousedown="send_jy_pv2('|1015925_8|');">按以上条件看信</a> -->
<!-- 						<span class="ly-tips" style="display:none">提示：开通<a class="blue" href="http://www.jiayuan.com/usercp/service/bmsg_tg2.php" target="_blank">钻石会员</a>，马上使用本功能</span> -->
<!-- 					</div> -->
<!-- 				</div> -->

				<script type="text/javascript">
				$(function (){
				
					$('.lySure a').click(function(){
						
						var $obj_name = $(this).parent().prev().find('select:eq(0)').attr('class');
						var $obj_txt = '';

						//收入、学历、所在地
						if($obj_name == 'income' || $obj_name == 'education' || $obj_name == 'work_location'){
							$obj_txt = $(this).parent().prev().find('select option:selected').text();
							$(this).parent().parent().prev().find('span').text($obj_txt);
						}

						//购车
						if($obj_name == 'auto'){
							$obj_txt = $(this).parent().prev().find('select').val() == 2 ? '已购车' : '购车：不限';
							$(this).parent().parent().prev().find('span').text($obj_txt);
						}

						//购房
						if($obj_name == 'house'){
							$obj_txt = $(this).parent().prev().find('select').val() == 2 ? '已购房' : '购房：不限';
							$(this).parent().parent().prev().find('span').text($obj_txt);
						}

						//婚史
						if($obj_name == 'marriage'){
							$obj_txt = $(this).parent().prev().find('select').val() == 1 ? '未婚' : '婚史：不限';
							$(this).parent().parent().prev().find('span').text($obj_txt);
						}

						//年龄
						if($obj_name == 'min_age'){
							var $min_age = $(this).parent().prev().find('select:eq(0)').val();
							var $max_age = $(this).parent().prev().find('select:eq(1)').val();
							$obj_txt = $min_age+'至'+$max_age+'岁';
							$(this).parent().parent().prev().find('span').text($obj_txt);
						}

						//身高
						if($obj_name == 'min_height'){
							var $min_height = $(this).parent().prev().find('select:eq(0)').val();
							var $max_height = $(this).parent().prev().find('select:eq(1)').val();
							$obj_txt = $min_height+'至'+$max_height+'厘米';
							$(this).parent().parent().prev().find('span').text($obj_txt);
						}
					});

					$('#min_age').change(function(){
						$('#max_age').html('');
						for (var i = $('#min_age').val(); i <= 99; i++) {
							$('#max_age').append('<option value="'+i+'">'+i+'岁</option>');
						};
						$('#max_age option').eq(5).attr('selected', 'selected');
					});

					$('#min_height').change(function(){
						$('#max_height').html('');
						for (var i = $('#min_height').val(); i <= 220; i++) {
							$('#max_height').append('<option value="'+i+'">'+i+'厘米</option>');
						};
						$('#max_height option').eq(5).attr('selected', 'selected');
					});

					$('#salary').change(function(){
						if($('#salary').val() > 10 && $('#salary').val() < 50){
							$('#select-sal').attr('checked', true);
							$('.above').removeClass('hidden');
						}
						else{
							$('#select-sal').attr('checked', false);
							$('.above').addClass('hidden');
						}
					});

				});
			</script>				<!--条件搜索 E-->
			</div>
			<!--营销-->
<!-- 			<div id="ad_pos_67"><div class="item promotions fn-clear"><div class="avatar-pic"><a href="http://www.jiayuan.com/advert/click.php?pos_id=67&amp;mr_id=6098&amp;ad_id=807&amp;m_id=701&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/advert/click.php?pos_id=67&amp;mr_id=6099&amp;ad_id=807&amp;m_id=701&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/advert/click.php?pos_id=67&amp;mr_id=6100&amp;ad_id=807&amp;m_id=701&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/advert/click.php?pos_id=67&amp;mr_id=&amp;ad_id=807&amp;m_id=701&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/usercp/service/bmsg_tg2.php&amp;src_key=ad_42_67_807_701_&amp;src_key=ad_42_67_807_701_6100&amp;src_key=ad_42_67_807_701_6099&amp;src_key=ad_42_67_807_701_6098"><img src="../resources/img/20140822095125625.gif" alt=""></a></div><div class="con-mod"><h3 class="msg-title"><a href="http://www.jiayuan.com/advert/click.php?pos_id=67&amp;mr_id=6098&amp;ad_id=807&amp;m_id=701&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/advert/click.php?pos_id=67&amp;mr_id=6099&amp;ad_id=807&amp;m_id=701&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/advert/click.php?pos_id=67&amp;mr_id=6100&amp;ad_id=807&amp;m_id=701&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/advert/click.php?pos_id=67&amp;mr_id=&amp;ad_id=807&amp;m_id=701&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/usercp/service/bmsg_tg2.php&amp;src_key=ad_42_67_807_701_&amp;src_key=ad_42_67_807_701_6100&amp;src_key=ad_42_67_807_701_6099&amp;src_key=ad_42_67_807_701_6098" target="_blank">专享钻石仅需25元/月！</a></h3><p class="msg-txt"><a href="http://www.jiayuan.com/advert/click.php?pos_id=67&amp;mr_id=6098&amp;ad_id=807&amp;m_id=701&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/advert/click.php?pos_id=67&amp;mr_id=6099&amp;ad_id=807&amp;m_id=701&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/advert/click.php?pos_id=67&amp;mr_id=6100&amp;ad_id=807&amp;m_id=701&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/advert/click.php?pos_id=67&amp;mr_id=&amp;ad_id=807&amp;m_id=701&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/usercp/service/bmsg_tg2.php&amp;src_key=ad_42_67_807_701_&amp;src_key=ad_42_67_807_701_6100&amp;src_key=ad_42_67_807_701_6099&amp;src_key=ad_42_67_807_701_6098" target="_blank">钻石会员12个月直减200！无限量看信，发信被免费看，送VIP会员12个月！</a></p></div><div class="msg-btn"><a href="http://www.jiayuan.com/advert/click.php?pos_id=67&amp;mr_id=6098&amp;ad_id=807&amp;m_id=701&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/advert/click.php?pos_id=67&amp;mr_id=6099&amp;ad_id=807&amp;m_id=701&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/advert/click.php?pos_id=67&amp;mr_id=6100&amp;ad_id=807&amp;m_id=701&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/advert/click.php?pos_id=67&amp;mr_id=&amp;ad_id=807&amp;m_id=701&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/usercp/service/bmsg_tg2.php&amp;src_key=ad_42_67_807_701_&amp;src_key=ad_42_67_807_701_6100&amp;src_key=ad_42_67_807_701_6099&amp;src_key=ad_42_67_807_701_6098" target="_blank">查看详情</a></div></div> -->
<!-- 			</div> -->
			<!--信件列表-->
			<div id="letter-list" class="letter-list">
			<c:forEach var="letter" items="${notReadLetters}" >
<%-- 			<div class="item fn-clear" jump="1"><div class="input-mod"><input admin="0" msg_type="" class="m-input" value="${letter.seqId} }" type="checkbox"></div><div class="avatar-pic more-pic"><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=sIg65rYI2a5UoSSvQCKjrCpPFLi9YdkPp4frT8-PFMi9IWdnpT0QKw..&amp;page_index=x/1/10/1/2&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_17|121261858');"><img src="../resources/img/fvip_clicked_new_f_s.jpg" alt=""><span class="pic-num" title="对方有真实照片，诚意征友">1</span></a></div><div class="con-mod"><div class="specific"><a class="name pay_btn" target="_blank" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=sIg65rYI2a5UoSSvQCKjrCpPFLi9YdkPp4frT8-PFMi9IWdnpT0QKw..&amp;page_index=x/1/10/1/2&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_19|121261858');">她</a><span class="icon-box"></span> <a target="_blank" class="data pay_btn" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=sIg65rYI2a5UoSSvQCKjrCpPFLi9YdkPp4frT8-PFMi9IWdnpT0QKw..&amp;page_index=x/1/10/1/2&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_21|121261858');">27岁，未婚，其他国家，10000～20000元，政府机...</a></div><div class="reason"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=sIg65rYI2a5UoSSvQCKjrCpPFLi9YdkPp4frT8-PFMi9IWdnpT0QKw..&amp;page_index=x/1/10/1/2&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_23|121261858');"><i></i>看信理由：不吸烟不喝酒，她是乖乖女</a></div><div class="time"><i></i><span>前天 21:31</span></div></div><div class="msg"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=sIg65rYI2a5UoSSvQCKjrCpPFLi9YdkPp4frT8-PFMi9IWdnpT0QKw..&amp;page_index=x/1/10/1/2&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_25|121261858');"><strong class="red">1封未读</strong>|<span hx="1">共1封</span></a></div><div class="msg-btn orange"><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=sIg65rYI2a5UoSSvQCKjrCpPFLi9YdkPp4frT8-PFMi9IWdnpT0QKw..&amp;page_index=x/1/10/1/2&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_29|121261858');">看信</a><div class="replay-btn-layer"><span class="tarr-icon"></span><p>仅需1张邮票</p><p>与她通信全免费</p></div></div></div> --%>
				<c:if test="${letter.letter.type == 1}"> <!-- 	普通的信，需要邮票 -->
					<div class="item fn-clear" jump="1">
						<div class="input-mod">
							<input admin="0" msg_type="" class="m-input"
								value="${letter.letter.seqId}" type="checkbox">
						</div>
						<div class="avatar-pic more-pic">
							<a class="pay_btn" target="_blank"
								href="readUnReadPayLetter/${letter.fromUser.userId}"><img
								src="../resources/img/fvip_clicked_new_f_s.jpg" alt=""><span
								class="pic-num" title="对方有真实照片，诚意征友">1</span></a>
						</div>
						<div class="con-mod">
							<div class="specific">
								<a class="name pay_btn" target="_blank"
									href="readUnReadPayLetter/${letter.fromUser.userId}">${letter.fromUser.nickname}</a><span
									class="icon-box"></span> <a target="_blank"
									class="data pay_btn"
									href="readUnReadPayLetter/${letter.fromUser.userId}"
									>${letter.fromUser.age}岁,${letter.fromUser.marriage},${letter.fromUser.address},${letter.fromUser.education},${letter.fromUser.salary}</a>
							</div>
							<div class="reason">
								<a target="_blank" class="pay_btn"
									href="readUnReadPayLetter/${letter.fromUser.userId}"><i></i>看信理由：也许这是一次缘分</a>
							</div>
							<div class="time">
								<i></i><span>${letter.letter.createTime}</span>
							</div>
						</div>
						<div class="msg">
							<a target="_blank" class="pay_btn"
								href="readUnReadPayLetter/${letter.fromUser.userId}"><strong
								class="red">1封未读</strong>|<span hx="1">共1封</span></a>
						</div>
						<div class="msg-btn orange">
							<a class="pay_btn" target="_blank"
								href="readUnReadPayLetter/${letter.fromUser.userId}"
								>看信</a>
							<div class="replay-btn-layer">
								<span class="tarr-icon"></span>
								<p>仅需1张邮票</p>
								<p>与她通信全免费</p>
							</div>
						</div>
					</div>
								</c:if>
				<c:if test="${letter.letter.type == 2}"><!-- 	已经有邮票了，可以免费看信 -->
					<div class="item fn-clear" jump="1">
						<div class="input-mod">
							<input 	admin="1" msg_type="2675287" class="m-input"
								value="${letter.letter.seqId}" type="checkbox">
						</div>
						<div class="avatar-pic ">
							<a class="pay_btn" target="_blank"
								href="readUnReadFreeLetter/${letter.fromUser.userId}"
								><img src="../resources/img/touxiang_da.jpg" alt=""></a>
						</div>
						<div class="con-mod">
							<div class="specific">
								<a class="name pay_btn" target="_blank"
									href="readUnReadFreeLetter/${letter.fromUser.userId}"
									>${letter.fromUser.nickname}</a><span
									class="icon-box"></span> <a target="_blank"
									class="data pay_btn"
									href="readUnReadFreeLetter/${letter.fromUser.userId}"
									>${letter.fromUser.age}岁,${letter.fromUser.marriage},${letter.fromUser.address},${letter.fromUser.education},${letter.fromUser.salary}</a>
							</div>
							<div class="reason">
								<a target="_blank" class="pay_btn"
									href="readUnReadFreeLetter/${letter.fromUser.userId}"
									>看信理由：也许这是一次缘分</a>
							</div>
							<div class="time">
								<i></i><span>${letter.letter.createTime}</span>
							</div>
						</div>
						<div class="msg">
							<a target="_blank" class="pay_btn"
								href="readUnReadFreeLetter/${letter.fromUser.userId}"
								><strong
								class="red">1封未读</strong>|<span hx="1">共1封</span></a>
						</div>
						<div class="msg-btn ">
							<a class="pay_btn" target="_blank"
								href="readUnReadFreeLetter/${letter.fromUser.userId}"
								>免费看信</a>
						</div>
					</div>
								</c:if>
			</c:forEach>
			
			
<!-- 			<div class="item fn-clear" jump="1"><div class="input-mod"><input onmousedown="send_jy_pv2('|1015897_33|121261858');" admin="1" msg_type="2667700" class="m-input" value="c5d200000028b4b4" type="checkbox"></div><div class="avatar-pic "><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d200000028b4b4&amp;page_index=x/1/10/1/4&amp;sort=101" onmousedown="send_jy_pv2('|1015897_17|121261858');"><img src="../resources/img/touxiang_da.jpg" alt=""></a></div><div class="con-mod"><div class="specific"><a class="name pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d200000028b4b4&amp;page_index=x/1/10/1/4&amp;sort=101" onmousedown="send_jy_pv2('|1015897_19|121261858');">世纪佳缘</a><span class="icon-box"></span> <a target="_blank" class="data pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d200000028b4b4&amp;page_index=x/1/10/1/4&amp;sort=101" onmousedown="send_jy_pv2('|1015897_21|121261858');"></a></div><div class="reason"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d200000028b4b4&amp;page_index=x/1/10/1/4&amp;sort=101" onmousedown="send_jy_pv2('|1015897_23|121261858');">欢度国庆，长假畅游！</a></div><div class="time"><i></i><span>10月06日 11:33</span></div></div><div class="msg"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d200000028b4b4&amp;page_index=x/1/10/1/4&amp;sort=101" onmousedown="send_jy_pv2('|1015897_25|121261858');"><strong class="red">1封未读</strong>|<span hx="1">共1封</span></a></div><div class="msg-btn "><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d200000028b4b4&amp;page_index=x/1/10/1/4&amp;sort=101" onmousedown="send_jy_pv2('|1015897_27|121261858');">免费看信</a></div></div><div class="item fn-clear" jump="1"><div class="input-mod"><input onmousedown="send_jy_pv2('|1015897_33|121261858');" admin="1" msg_type="2663807" class="m-input" value="c5d200000028a57f" type="checkbox"></div><div class="avatar-pic "><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d200000028a57f&amp;page_index=x/1/10/1/5&amp;sort=101" onmousedown="send_jy_pv2('|1015897_17|121261858');"><img src="../resources/img/touxiang_da.jpg" alt=""></a></div><div class="con-mod"><div class="specific"><a class="name pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d200000028a57f&amp;page_index=x/1/10/1/5&amp;sort=101" onmousedown="send_jy_pv2('|1015897_19|121261858');">世纪佳缘</a><span class="icon-box"></span> <a target="_blank" class="data pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d200000028a57f&amp;page_index=x/1/10/1/5&amp;sort=101" onmousedown="send_jy_pv2('|1015897_21|121261858');"></a></div><div class="reason"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d200000028a57f&amp;page_index=x/1/10/1/5&amp;sort=101" onmousedown="send_jy_pv2('|1015897_23|121261858');">佳缘不堵车，长假畅游！</a></div><div class="time"><i></i><span>10月04日 10:42</span></div></div><div class="msg"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d200000028a57f&amp;page_index=x/1/10/1/5&amp;sort=101" onmousedown="send_jy_pv2('|1015897_25|121261858');"><strong class="red">1封未读</strong>|<span hx="1">共1封</span></a></div><div class="msg-btn "><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d200000028a57f&amp;page_index=x/1/10/1/5&amp;sort=101" onmousedown="send_jy_pv2('|1015897_27|121261858');">免费看信</a></div></div><div class="item fn-clear" jump="1"><div class="input-mod"><input onmousedown="send_jy_pv2('|1015897_33|121261858');" admin="0" msg_type="" class="m-input" value="QmY*cnstP4WWW2h*hA2E9nWYpC3iZXSY6j5BiJ4T1c*YTrx3pyWD" type="checkbox"></div><div class="avatar-pic "><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=QmY*cnstP4WWW2h*hA2E9nWYpC3iZXSY6j5BiJ4T1c*YTrx3pyWD&amp;page_index=x/1/10/1/6&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_17|121261858');"><img src="../resources/img/fvip_clicked_new_f_s.jpg" alt=""></a></div><div class="con-mod"><div class="specific"><a class="name pay_btn" target="_blank" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=QmY*cnstP4WWW2h*hA2E9nWYpC3iZXSY6j5BiJ4T1c*YTrx3pyWD&amp;page_index=x/1/10/1/6&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_19|121261858');">她</a><span class="icon-box"></span> <a target="_blank" class="data pay_btn" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=QmY*cnstP4WWW2h*hA2E9nWYpC3iZXSY6j5BiJ4T1c*YTrx3pyWD&amp;page_index=x/1/10/1/6&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_21|121261858');">26岁，未婚，其他国家，10000～20000元，外企企...</a></div><div class="reason"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=QmY*cnstP4WWW2h*hA2E9nWYpC3iZXSY6j5BiJ4T1c*YTrx3pyWD&amp;page_index=x/1/10/1/6&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_23|121261858');"><i></i>看信理由：从属相上看很合适，喜欢就带走吧</a></div><div class="time"><i></i><span>10月01日 23:36</span></div></div><div class="msg"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=QmY*cnstP4WWW2h*hA2E9nWYpC3iZXSY6j5BiJ4T1c*YTrx3pyWD&amp;page_index=x/1/10/1/6&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_25|121261858');"><strong class="red">1封未读</strong>|<span hx="1">共1封</span></a></div><div class="msg-btn orange"><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=QmY*cnstP4WWW2h*hA2E9nWYpC3iZXSY6j5BiJ4T1c*YTrx3pyWD&amp;page_index=x/1/10/1/6&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_29|121261858');">看信</a><div class="replay-btn-layer"><span class="tarr-icon"></span><p>仅需1张邮票</p><p>与她通信全免费</p></div></div></div><div class="item fn-clear" jump="1"><div class="input-mod"><input onmousedown="send_jy_pv2('|1015897_33|121261858');" admin="1" msg_type="2649443" class="m-input" value="c5d2000000286d63" type="checkbox"></div><div class="avatar-pic "><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000286d63&amp;page_index=x/1/10/1/7&amp;sort=101" onmousedown="send_jy_pv2('|1015897_17|121261858');"><img src="../resources/img/touxiang_da.jpg" alt=""></a></div><div class="con-mod"><div class="specific"><a class="name pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000286d63&amp;page_index=x/1/10/1/7&amp;sort=101" onmousedown="send_jy_pv2('|1015897_19|121261858');">世纪佳缘</a><span class="icon-box"></span> <a target="_blank" class="data pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000286d63&amp;page_index=x/1/10/1/7&amp;sort=101" onmousedown="send_jy_pv2('|1015897_21|121261858');"></a></div><div class="reason"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000286d63&amp;page_index=x/1/10/1/7&amp;sort=101" onmousedown="send_jy_pv2('|1015897_23|121261858');">长假不孤单，畅游佳缘，无限认识异性！</a></div><div class="time"><i></i><span>09月26日 15:07</span></div></div><div class="msg"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000286d63&amp;page_index=x/1/10/1/7&amp;sort=101" onmousedown="send_jy_pv2('|1015897_25|121261858');"><strong class="red">1封未读</strong>|<span hx="1">共1封</span></a></div><div class="msg-btn "><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000286d63&amp;page_index=x/1/10/1/7&amp;sort=101" onmousedown="send_jy_pv2('|1015897_27|121261858');">免费看信</a></div></div><div class="item fn-clear" jump="1"><div class="input-mod"><input onmousedown="send_jy_pv2('|1015897_33|121261858');" admin="1" msg_type="2647177" class="m-input" value="c5d2000000286489" type="checkbox"></div><div class="avatar-pic "><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000286489&amp;page_index=x/1/10/1/8&amp;sort=101" onmousedown="send_jy_pv2('|1015897_17|121261858');"><img src="../resources/img/touxiang_da.jpg" alt=""></a></div><div class="con-mod"><div class="specific"><a class="name pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000286489&amp;page_index=x/1/10/1/8&amp;sort=101" onmousedown="send_jy_pv2('|1015897_19|121261858');">世纪佳缘</a><span class="icon-box"></span> <a target="_blank" class="data pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000286489&amp;page_index=x/1/10/1/8&amp;sort=101" onmousedown="send_jy_pv2('|1015897_21|121261858');"></a></div><div class="reason"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000286489&amp;page_index=x/1/10/1/8&amp;sort=101" onmousedown="send_jy_pv2('|1015897_23|121261858');">长假不孤单，无线happy！</a></div><div class="time"><i></i><span>09月25日 09:47</span></div></div><div class="msg"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000286489&amp;page_index=x/1/10/1/8&amp;sort=101" onmousedown="send_jy_pv2('|1015897_25|121261858');"><strong class="red">1封未读</strong>|<span hx="1">共1封</span></a></div><div class="msg-btn "><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000286489&amp;page_index=x/1/10/1/8&amp;sort=101" onmousedown="send_jy_pv2('|1015897_27|121261858');">免费看信</a></div></div><div class="item fn-clear" jump="1"><div class="input-mod"><input onmousedown="send_jy_pv2('|1015897_33|121261858');" admin="0" msg_type="" class="m-input" value="ydUN9ZHjcd0CfxuDpTMnfed4iws4SgQKT1VpjndekNKaiiNSoVrv5G0." type="checkbox"></div><div class="avatar-pic more-pic"><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=ydUN9ZHjcd0CfxuDpTMnfed4iws4SgQKT1VpjndekNKaiiNSoVrv5G0.&amp;page_index=x/1/10/1/9&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_17|121261858');"><img src="../resources/img/fvip_clicked_new_f_s.jpg" alt=""><span class="pic-num" title="对方有真实照片，诚意征友">2</span></a></div><div class="con-mod"><div class="specific"><a class="name pay_btn" target="_blank" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=ydUN9ZHjcd0CfxuDpTMnfed4iws4SgQKT1VpjndekNKaiiNSoVrv5G0.&amp;page_index=x/1/10/1/9&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_19|121261858');">她</a><span class="icon-box"></span> <a target="_blank" class="data pay_btn" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=ydUN9ZHjcd0CfxuDpTMnfed4iws4SgQKT1VpjndekNKaiiNSoVrv5G0.&amp;page_index=x/1/10/1/9&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_21|121261858');">27岁，未婚，其他国家，本科，170cm</a></div><div class="reason"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=ydUN9ZHjcd0CfxuDpTMnfed4iws4SgQKT1VpjndekNKaiiNSoVrv5G0.&amp;page_index=x/1/10/1/9&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_23|121261858');"><i></i>看信理由：她是佳缘最受欢迎的会员之一哦</a></div><div class="time"><i></i><span>09月21日 18:53</span></div></div><div class="msg"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=ydUN9ZHjcd0CfxuDpTMnfed4iws4SgQKT1VpjndekNKaiiNSoVrv5G0.&amp;page_index=x/1/10/1/9&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_25|121261858');"><strong class="red">1封未读</strong>|<span hx="1">共1封</span></a></div><div class="msg-btn orange"><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=ydUN9ZHjcd0CfxuDpTMnfed4iws4SgQKT1VpjndekNKaiiNSoVrv5G0.&amp;page_index=x/1/10/1/9&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_29|121261858');">看信</a><div class="replay-btn-layer"><span class="tarr-icon"></span><p>仅需1张邮票</p><p>与她通信全免费</p></div></div></div><div class="item fn-clear" jump="1"><div class="input-mod"><input onmousedown="send_jy_pv2('|1015897_33|121261858');" admin="1" msg_type="2640922" class="m-input" value="c5d2000000284c1a" type="checkbox"></div><div class="avatar-pic "><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000284c1a&amp;page_index=x/1/10/1/10&amp;sort=101" onmousedown="send_jy_pv2('|1015897_17|121261858');"><img src="../resources/img/touxiang_da.jpg" alt=""></a></div><div class="con-mod"><div class="specific"><a class="name pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000284c1a&amp;page_index=x/1/10/1/10&amp;sort=101" onmousedown="send_jy_pv2('|1015897_19|121261858');">世纪佳缘</a><span class="icon-box"></span> <a target="_blank" class="data pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000284c1a&amp;page_index=x/1/10/1/10&amp;sort=101" onmousedown="send_jy_pv2('|1015897_21|121261858');"></a></div><div class="reason"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000284c1a&amp;page_index=x/1/10/1/10&amp;sort=101" onmousedown="send_jy_pv2('|1015897_23|121261858');">动动手指提升交友效果，女神都来关注你</a></div><div class="time"><i></i><span>09月21日 18:30</span></div></div><div class="msg"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000284c1a&amp;page_index=x/1/10/1/10&amp;sort=101" onmousedown="send_jy_pv2('|1015897_25|121261858');"><strong class="red">1封未读</strong>|<span hx="1">共1封</span></a></div><div class="msg-btn "><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000284c1a&amp;page_index=x/1/10/1/10&amp;sort=101" onmousedown="send_jy_pv2('|1015897_27|121261858');">免费看信</a></div></div><div class="item fn-clear" jump="1"><div class="input-mod"><input onmousedown="send_jy_pv2('|1015897_33|121261858');" admin="1" msg_type="2640870" class="m-input" value="c5d2000000284be6" type="checkbox"></div><div class="avatar-pic "><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000284be6&amp;page_index=x/1/10/1/11&amp;sort=101" onmousedown="send_jy_pv2('|1015897_17|121261858');"><img src="../resources/img/touxiang_da.jpg" alt=""></a></div><div class="con-mod"><div class="specific"><a class="name pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000284be6&amp;page_index=x/1/10/1/11&amp;sort=101" onmousedown="send_jy_pv2('|1015897_19|121261858');">世纪佳缘</a><span class="icon-box"></span> <a target="_blank" class="data pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000284be6&amp;page_index=x/1/10/1/11&amp;sort=101" onmousedown="send_jy_pv2('|1015897_21|121261858');"></a></div><div class="reason"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000284be6&amp;page_index=x/1/10/1/11&amp;sort=101" onmousedown="send_jy_pv2('|1015897_23|121261858');">钻石品质，不再孤单</a></div><div class="time"><i></i><span>09月21日 17:52</span></div></div><div class="msg"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000284be6&amp;page_index=x/1/10/1/11&amp;sort=101" onmousedown="send_jy_pv2('|1015897_25|121261858');"><strong class="red">1封未读</strong>|<span hx="1">共1封</span></a></div><div class="msg-btn "><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000284be6&amp;page_index=x/1/10/1/11&amp;sort=101" onmousedown="send_jy_pv2('|1015897_27|121261858');">免费看信</a></div></div><div class="item fn-clear" jump="1"><div class="input-mod"><input onmousedown="send_jy_pv2('|1015897_33|121261858');" admin="0" msg_type="" class="m-input" value="sHvOq9EO1KXXGY-Kcqtt4zE-7ZGC9QWM67OgPIvnQgUrE6CUQLnYgQ.." type="checkbox"></div><div class="avatar-pic more-pic"><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=sHvOq9EO1KXXGY-Kcqtt4zE-7ZGC9QWM67OgPIvnQgUrE6CUQLnYgQ..&amp;page_index=x/1/10/2/2&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_17|121261858');"><img src="../resources/img/fvip_clicked_new_f_s.jpg" alt=""><span class="pic-num" title="对方有真实照片，诚意征友">7</span></a></div><div class="con-mod"><div class="specific"><a class="name pay_btn" target="_blank" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=sHvOq9EO1KXXGY-Kcqtt4zE-7ZGC9QWM67OgPIvnQgUrE6CUQLnYgQ..&amp;page_index=x/1/10/2/2&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_19|121261858');">她</a><span class="icon-box"><img src="../resources/img/cx.gif" alt="诚信会员" title="诚信会员"> <img src="../resources/img/51.png" alt="手机来信提醒" title="手机来信提醒"> </span> <a target="_blank" class="data pay_btn" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=sHvOq9EO1KXXGY-Kcqtt4zE-7ZGC9QWM67OgPIvnQgUrE6CUQLnYgQ..&amp;page_index=x/1/10/2/2&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_21|121261858');">28岁，未婚，广东，汉族，162cm</a></div><div class="reason"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=sHvOq9EO1KXXGY-Kcqtt4zE-7ZGC9QWM67OgPIvnQgUrE6CUQLnYgQ..&amp;page_index=x/1/10/2/2&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_23|121261858');"><i></i>看信理由：逢信必回是她的真诚，打招呼吧</a></div><div class="time"><i></i><span>09月21日 14:24</span></div></div><div class="msg"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=sHvOq9EO1KXXGY-Kcqtt4zE-7ZGC9QWM67OgPIvnQgUrE6CUQLnYgQ..&amp;page_index=x/1/10/2/2&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_25|121261858');"><strong class="red">1封未读</strong>|<span hx="1">共1封</span></a></div><div class="msg-btn orange"><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/showmsg.php?obj_uid_disp=sHvOq9EO1KXXGY-Kcqtt4zE-7ZGC9QWM67OgPIvnQgUrE6CUQLnYgQ..&amp;page_index=x/1/10/2/2&amp;sort=101&amp;box_type=inbox&amp;msg_type=" onmousedown="send_jy_pv2('|1015897_29|121261858');">看信</a><div class="replay-btn-layer"><span class="tarr-icon"></span><p>仅需1张邮票</p><p>与她通信全免费</p></div></div></div><div class="item fn-clear" jump="1"><div class="input-mod"><input onmousedown="send_jy_pv2('|1015897_33|121261858');" admin="1" msg_type="2640342" class="m-input" value="c5d20000002849d6" type="checkbox"></div><div class="avatar-pic "><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d20000002849d6&amp;page_index=x/1/10/2/3&amp;sort=101" onmousedown="send_jy_pv2('|1015897_17|121261858');"><img src="../resources/img/touxiang_da.jpg" alt=""></a></div><div class="con-mod"><div class="specific"><a class="name pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d20000002849d6&amp;page_index=x/1/10/2/3&amp;sort=101" onmousedown="send_jy_pv2('|1015897_19|121261858');">世纪佳缘</a><span class="icon-box"></span> <a target="_blank" class="data pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d20000002849d6&amp;page_index=x/1/10/2/3&amp;sort=101" onmousedown="send_jy_pv2('|1015897_21|121261858');"></a></div><div class="reason"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d20000002849d6&amp;page_index=x/1/10/2/3&amp;sort=101" onmousedown="send_jy_pv2('|1015897_23|121261858');">想吸引TA的注意吗？</a></div><div class="time"><i></i><span>09月21日 12:25</span></div></div><div class="msg"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d20000002849d6&amp;page_index=x/1/10/2/3&amp;sort=101" onmousedown="send_jy_pv2('|1015897_25|121261858');"><strong class="red">1封未读</strong>|<span hx="1">共1封</span></a></div><div class="msg-btn "><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d20000002849d6&amp;page_index=x/1/10/2/3&amp;sort=101" onmousedown="send_jy_pv2('|1015897_27|121261858');">免费看信</a></div></div><div class="item fn-clear" jump="1"><div class="input-mod"><input onmousedown="send_jy_pv2('|1015897_33|121261858');" admin="1" msg_type="2637728" class="m-input" value="c5d2000000283fa0" type="checkbox"></div><div class="avatar-pic "><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000283fa0&amp;page_index=x/1/10/2/4&amp;sort=101" onmousedown="send_jy_pv2('|1015897_17|121261858');"><img src="../resources/img/touxiang_da.jpg" alt=""></a></div><div class="con-mod"><div class="specific"><a class="name pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000283fa0&amp;page_index=x/1/10/2/4&amp;sort=101" onmousedown="send_jy_pv2('|1015897_19|121261858');">世纪佳缘</a><span class="icon-box"></span> <a target="_blank" class="data pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000283fa0&amp;page_index=x/1/10/2/4&amp;sort=101" onmousedown="send_jy_pv2('|1015897_21|121261858');"></a></div><div class="reason"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000283fa0&amp;page_index=x/1/10/2/4&amp;sort=101" onmousedown="send_jy_pv2('|1015897_23|121261858');">钻石品质，天长地久</a></div><div class="time"><i></i><span>09月20日 00:45</span></div></div><div class="msg"><a target="_blank" class="pay_btn" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000283fa0&amp;page_index=x/1/10/2/4&amp;sort=101" onmousedown="send_jy_pv2('|1015897_25|121261858');"><strong class="red">1封未读</strong>|<span hx="1">共1封</span></a></div><div class="msg-btn "><a class="pay_btn" target="_blank" href="http://www.jiayuan.com/msg/v6/showmsg_adm.php?msg_id=c5d2000000283fa0&amp;page_index=x/1/10/2/4&amp;sort=101" onmousedown="send_jy_pv2('|1015897_27|121261858');">免费看信</a></div></div></div> -->
			<div style="display: none;" id="letter-loading" class="letter-loading">
				<i></i><span>正在加载<font id="page_tip"></font>...</span>
			</div>
			<div id="letter-nodata" class="letter-loading" style="display:none;color:#666">
				暂无未读信<br><br>
				爱情需要主动出击，搜索喜欢的人，主动联系他们吧！<a href="http://search.jiayuan.com/" target="_blank" onmousedown="send_jy_pv2('|1017689_0|121261858');" style="color:blue">去搜索&gt;&gt;</a>
			</div>
			<div id="letter-nodata2" class="letter-loading" style="display:none">
                巧了，本页的发信人全部交友成功了。请继续翻页吧~
            </div>
            <div id="letter-nodata3" class="letter-loading" style="display:none">
				暂无记录
			</div>

			<script type="text/javascript">

			var $page = {};
            $page.now = 0;
            $page.prev = 0;
            $page.load = 0;
            $page.click = 0;
            $page.prev_click = 0;
            $page.type = '';
            $page.reload = 0;
            $page.loading = 0;

			$(function (){
		    	
		    	//获取默认列表
		    			    	get_list(1, 1);//获取默认列表
		    					
				//加载下一页
		    	$(window).scroll(function() {
                    get_next();
                });

                //删除信件
		    	$('.del').click(function(){
		    		do_delete();
		    	});
				
				//条件搜索
		    	$('.condition-btn').click(function(){
							    		$('.ly-tips').show();
		    		return false;
		    				    	});

		    	$('.sort-mod li.condition').click(function(){
		    		$('.search-txt').val('');
		    	});

		    	$('.sort-mod li:not(".condition")').click(function(){
		    		$('.ly-close').click();
		    	});

		    	//搜索
		    	$('.search-txt').keydown(function(e){
					if(e.keyCode == 13) $('.search-btn').click();
				});

		    	send_jy_pv2('|1015897_0|121261858');
                
                
			});
			
			//刷新当前页
			function refresh()  
			{
				$('.page li.on a').click();
			}

			//获取信件列表
			function get_list(type, page){

// 				var $url = '';
// 				var $data = {};
// 				$page.click = 1;
//                 $page.prev = $page.now;
//                 if($page.type != type) $page.load = 0;
//                 $page.type = type;
//                 $page.now = page;
//                 if($page.loading == 1) return false;
//                 $page.loading = 1;
 
// 				if(type == 'uids'){
// 					//UID搜索
// 					var uids = '';
// 					if(!uids){
// 						JY_Alert('温馨提示', '没有要找的用户！');
// 						return false;
// 					}
// 					$url = '/msg/v6/index_search.php';
// 					$data = {'uids':uids, 'page':1};
// 				}
// 				else if(type == '7'){
// 					//昵称搜索
//                     var search_txt = $('.search-txt').val();
//                     if(!search_txt || search_txt == '请输入对方昵称或ID'){
//                         JY_Alert('温馨提示', '请输入对方昵称或ID');
//                         $page.loading = 0;
//                         return false;
//                     }
// 					$url = '/msg/v6/index_search.php';
// 					$data = {'nickname':$('.search-txt').val(), 'page':page,'type':type};
// 					if($page.search == 1){
//                         JY_Alert('温馨提示', '正在搜索中，请稍后再试！');
//                         return false;
//                     }
// 					$page.search = 1;

//                     //uid搜索
//                     if(!isNaN(search_txt) && parseInt(search_txt) > 1000000){
//                         $data = {'suid':search_txt, 'page':page};
//                     }
// 				}
// 				else if(type == '6'){
// 					//条件搜索
// 					$url = '/msg/v6/index_search.php';
// 					$data = {
// 			        	'work_location' : $('.work_location').val(),
// 			        	'marriage' : $('.marriage').val(),
// 			        	'min_age' : $('.min_age').val(),
// 			        	'max_age' : $('.max_age').val(),
// 			        	'min_height' : $('.min_height').val(),
// 			        	'max_height' : $('.max_height').val(),
// 			        	'education' : $('.education').val(),
// 			        	'income' : $('.income').val(),
// 			        	'income_more_than' : $('.income_more_than').attr('checked') == 'checked' ? 1 : 0,
// 						'house' : $('.house').val(),
//                         'auto' : $('.auto').val(),
//                         'page':page
// 			        };
// 				}
// 				else{
// 					//默认列表
// // 					$url = '/msg/v6/index_list.php';
// 					$url = 'http://www.jiayuan.com/msg/v6/index_list.php';
// 					$data = {'type':type, 'page':page};
// 				}
// //&& page == $page.prev+1
// 				if($page.load < 3 ){
//                     $('#page_tip').html('下一页');
//                 }
//                 else{
//                     $('#letter-list').html('');
//                     if($(window).scrollTop() > 130) $("html,body").animate({scrollTop:$(".floatright").offset().top},500);
//                 }
                
//                 $('#letter-nodata, #letter-nodata2, #letter-nodata3').hide();
//                 $('#letter-loading, #letter_page').show();

//                 if($page.search == 1){
//                     $('#page_tip').html('搜索结果');
//                 }
				
// 				$.ajax({
// 			        url : $url,
// 			        data : $data,
// 			        type : 'POST',
//                     timeout : 20000,
//                     error : function(e){
//                     	$page.search = 0;
//                     	$page.loading = 0;
// //                         if(e.statusText == 'timeout'){
// //                             JY_Alert('温馨提示', '加载超时，请重试');
// //                             $('#JY_alert_btn img').click(function(){get_list(type, page)});
// //                             return false;
// //                         }
// //                         else{
// //                             JY_Alert('温馨提示', '加载失败，请重试');
// //                             $('#JY_alert_btn img').click(function(){get_list(type, page)});
// //                             return false;
// //                         }
//                     }, 
// 			        success : function(response){
// 			        	var result = $.parseJSON(response);
			        	
// 			        	if(parseInt(result.total) > 0){
// 				        	if($page.reload < 5 && parseInt(result.total) > 10 && parseInt(result.data.length) < 7 && page!=Math.ceil(parseInt(result.total)/10)){
// 				        		$page.reload++;
// 				        		 $page.loading = 0;
// 				        		//$('.page li.on a').click();
// 				        		get_list(type, page);
// 				        		return false;
// 				        	}
// 				        	$page.load=page;
// 				    		show_result(result);
// 							get_list_page_v2(type, page, result.total, 10, 'get_list');
// 				        	show_button();
// 				        	show_result_error(result.recode);
// 			        	}else{
// 			        		$('#letter-loading, #letter-nodata').toggle();
//                             $('#letter_page').hide();
//                             if($page.search == 1) $('#letter-nodata, #letter-nodata3').toggle();
// 			        	}
// 			        	$page.click = 0;
			        	
//                         $('#page_tip').html('');
//                         //if($('.page li.on').next().length == 0) $page.load = 0;
//                         //if($page.prev_click == 1) $page.load = $page.prev_click = 2;
//                         $page.search = 0;
//                         $page.loading = 0;
//                         $page.reload = 0;
// 			        }
// 			    });
			}

			//展示结果
		    function show_result(result){
		    	var msg_list = '';
                var data = {};
                $('#letter-loading, #letter-nodata, #letter-nodata2, #letter-nodata3').hide();
                if(parseInt(result.total) == 0 || (parseInt(result.total) <= 10 && !result.data)){
                    $('#letter-nodata').show();
                    $('#letter_page').hide();
                    return false;
                }
                if(parseInt(result.total) > 0 && !result.data){
                    $('#letter-nodata2').show();
                    return false;
                }
	        	for(var i = 0; i< result.data.length; i++){
					//Ems
					data.ems = result.data[i].kind == 'ems' ? '<span class="ems"></span>' : '';
					//新会员第一封信
					data.new_member = result.data[i].kind == 'zc' ? '<span class="new-member"></span>' : '';
					//按钮的统计代码
					data.anniu_statistic = result.data[i].anniu_class == '' ? '|1015897_27|' : '|1015897_29|';
					//看信按钮提示
					data.ta = result.data[i].sex == 'f' ? '她' : '他';
					data.anniu_tips = result.data[i].anniu_class == 'orange' ? '<div class="replay-btn-layer"><span class="tarr-icon"></span><p>仅需1张邮票</p><p>与'+data.ta+'通信全免费</p></div>' : '';
	        		msg_list += '<div class="item fn-clear" jump="'+result.data[i].if_jump+'"><div class="input-mod"><input onmousedown="send_jy_pv2(\'|1015897_33|121261858\');" admin='+result.data[i].admin+' msg_type="'+result.data[i].kind+'" type="checkbox" class="m-input" value="'+result.data[i].delete_value+'" /></div><div class="avatar-pic '+result.data[i].morepic+'"><a class="pay_btn" target="_blank"  href="'+result.data[i].link+'"  onmousedown="send_jy_pv2(\'|1015897_17|121261858\');"><img src="'+result.data[i].avatar+'" alt="" />';
					if(result.data[i].admin==0 && result.data[i].morepic != ''){
	        			msg_list += '<span class="pic-num" title="对方有真实照片，诚意征友">'+result.data[i].photo_num+'</span>';
						if(result.data[i].online == '1')
						{
							msg_list += '<span class="online" title="对方在线，马上回复会很快收到回应哦">在线</span>';
						}
					}
					data.reason_icon = result.data[i].admin == 0 ? '<i></i>' : '';
					msg_list += '</a></div><div class="con-mod"><div class="specific"><a class="name pay_btn" target="_blank" href="'+result.data[i].link+'" onmousedown="send_jy_pv2(\'|1015897_19|121261858\');">'+result.data[i].nickname+'</a><span class="icon-box">'+result.data[i].service_icon_list+'</span> <a target="_blank" class="data pay_btn"  href="'+result.data[i].link+'" onmousedown="send_jy_pv2(\'|1015897_21|121261858\');">'+result.data[i].user_info_detail+'</a></div><div class="reason"><a target="_blank" class="pay_btn"  href="'+result.data[i].link+'" onmousedown="send_jy_pv2(\'|1015897_23|121261858\');">'+data.reason_icon+result.data[i].reason+'</a></div><div class="time"><i></i><span>'+result.data[i].time+'</span>'+data.ems+data.new_member+'</div></div><div class="msg"><a target="_blank" class="pay_btn"  href="'+result.data[i].link+'" onmousedown="send_jy_pv2(\'|1015897_25|121261858\');"><strong class="red">'+result.data[i].noread+'封未读</strong>|<span hx="1">共'+result.data[i].amount+'封</span></a></div><div class="msg-btn '+ result.data[i].anniu_class+'"><a class="pay_btn" target="_blank" href="'+result.data[i].link+'" onmousedown="send_jy_pv2(\''+data.anniu_statistic+'121261858\');">'+result.data[i].anniu_str+'</a>'+data.anniu_tips+'</div></div>';
	        	}
	        	if($page.load <4 && $page.now == $page.prev + 1) 
	        			$('#letter-list').append(msg_list);
                else 
                		$('#letter-list').html(msg_list);
                if(result.data.length == 0) $('#letter-nodata2').show();
		    }
			
			//显示按钮
            function show_button(){
				
				//点击
		        var $check_all = $('#allInput');
		        var $m_input = $('.m-input:checkbox');
				var $item=$('.item').find('.input-mod');
				$check_all.click(function () {
		            $m_input.attr('checked',this.checked);
					if(this.checked){
						$item.addClass('visible').find('.refusal').show();
					}else{
						$item.removeClass('visible').find('.refusal').hide();
					}
		        });
		        $m_input.click(function(){
		            var flag = true;
		            $m_input.each(function () {
		                if (!this.checked) {
		                    flag = false;
		                }
		            });
		            $check_all.attr('checked', flag);
		        });

		        //滑过
		        var $contact=$('.item');
				$contact.hover(function () {
			        if (!$(this).hasClass('promotions')) {
			            $(this).addClass('on').find('.input-mod').addClass('visible');
			            $(this).find('.refusal').css('display', 'block');
			        }
			    }, function () {
			        var $inputmod = $(this).removeClass('on').find('.input-mod');
			        var $checkbox = $inputmod.children('input[type=checkbox]:checked');
			        if (!($checkbox && $checkbox.length)) {
			            $inputmod.removeClass('visible');
			            $(this).find('.refusal').css('display', 'none');
			        }
			    });

			    if($('#allInput').attr('checked') == 'checked') $('#allInput').attr('checked', false);

			    show_pay_pop();//显示弹窗

			    $('#letter_page a').click(function(){
				send_jy_pv2('|1015940_39|');
		    	});

		    	$('.prev a').click(function(){
                    $page.prev_click = 1;
                });

                if($page.prev != 0) timepop(true);
		    }

		    //删除信件
		    function do_delete(){
				var $uids = '';
				var $msgids = '';
		    	var $inputs = $('.m-input:checked');
		    	if($inputs.length < 1){
		    		 JY_Alert('温馨提示','请至少选择一封信。');
		    		 return false;
		    	}
				var sp_num = 0;
		    	if(confirm('即将删除你和对方的所有通信记录')){
		    		$inputs.each(function(){
						var msg_type = $(this).attr('msg_type');
						if(msg_type == 'sp' || msg_type == 'sx' || msg_type == 'ems')
						{
							sp_num = sp_num + 1;
						}
						if($(this).attr('admin') == '1')
						{
							$msgids += $(this).val();
							$msgids += ',';
						}else if(msg_type != 'sp' && msg_type != 'sx' && msg_type != 'ems'){
							$uids += $(this).val();
							$uids += ',';
						}
		    		});
					
					if(sp_num == '1')
					{
						JY_Alert('温馨提示','您勾选的信件对方已贴邮票，可以免费阅读，为表示对对方的尊重，请您阅读后再考虑是否删除。');
						return false;
					}else if(sp_num >= '1')
					{
						if(!confirm('有'+sp_num+'封信对方贴了邮票，您可以免费阅读，为表示对对方的尊重，请您阅读后再考虑是否删除。您要删除其他信件吗?')){
							return false;
						}
					}
		    		$.ajax({
				        url : '/msg/v6/inbox_delete.php',
				        data : {'uids':$uids,'msgids':$msgids},
				        type : 'POST', 
						async: false,
				        success : function(result){
				        	if(parseInt(result) != 1){
				        		JY_Alert('温馨提示','删除失败，请重试。');
								return false;
				        	}else{
								JY_Alert('温馨提示','删除成功！');
							}
				        	$inputs.each(function(){
				    			$(this).parent().parent().remove();
				    		});
				    		var $inputs_length = $('.m-input').length;
				        	if($inputs_length == 0 && $('.page li.on').next().length == 0){
				        		$('.page li.on').hide();
				        		$('.page li.on').prev().prev().find('a').click();
				        	}
				        	else if($inputs_length <= 5) $('.page li.on a').click();
				        	if($('#allInput').attr('checked') == 'checked') $('#allInput').attr('checked', false);
				        	if($(window).scrollTop() > 130) $("html,body").animate({scrollTop:$(".floatright").offset().top},500);

				        	if($inputs_length == 0 && $('.page li.on').length == 0) $('#letter-nodata').show();
				        }
				    });
		    	}
		    }
			
			//显示弹窗
			function show_pay_pop(){ 
				$('.pay_btn').click(function(){
					var jump = $(this).parents("div[jump]").attr('jump');
					if(jump != 1)	////弹窗
					{
						var pop1 = $('#pop1').popup({ bgId : $('#bg'), openId : $('#popup_box'), autoOpen: true});
						var iframe = $('#iframe_content');
						iframe.attr('src',$(this).attr('href'));
						iframe.attr('width','654');
						iframe.attr('height','800');
						iframe.load(function(){
							pop1.close();
							iframe.show();
							$('#pop1').popup({ bgId : $('#bg'),follow:false,openId : $('#iframe_box'), autoOpen: true});
                            $page.popup = 1;
						});
						return false;
					}else{
						//看信按钮
						var $anniu = $(this).parents("div.item.fn-clear").find("div.msg-btn");
						$anniu.addClass('gray').find("a").html("回信").bind("mousedown",function(){send_jy_pv2("|1015897_31|121261858");});
						$anniu.prev().find("strong").html("已读").removeClass("red");
						//清空msg_type删除判断用
						$(this).parents("div.item.fn-clear").find("input.m-input").attr("msg_type","");
					}
				});
			}

			//加载下一页
            function get_next(){
                if($page.popup == 1) return false;
                if($page.click == 0 && $('#letter_page').css('display') != 'none'){
                    if($page.load < 3 && ($('.page-mod').offset().top - $(window).scrollTop()- $(window).height() < 100)){
                    	if($('#page_btn_next').length == 1)
                      	  	$('#page_btn_next').click();
                    }
                }
            }
			
			function closeMaskDiv(){
				$('#iframe_box, #iframe_box2, #bg').hide();
                $page.popup = 0;
			}

            function mail_pop(){
                $page.popup = 1;
                var iframe = $('#iframe_content2');
                iframe.attr('src', 'http://www.jiayuan.com/msg/v6/mail_pop.php');
                iframe.attr('width','570');
                iframe.attr('height','320');
                iframe.load(function(){
                    iframe.show();
                    $('#pop2').popup({ bgId : $('#bg'),follow:true,openId : $('#iframe_box2'), autoOpen: true});
                });
            }
			
			</script>
				<!--翻页-->
				<div class="page-mod fn-clear">
					<div class="all-input">
						<input class="check-input" id="allInput" onmousedown="send_jy_pv2('|1015897_35|121261858');" type="checkbox"><label for="allInput">全选</label>
						<a class="del" href="javascript:;" onmousedown="send_jy_pv2('|1015897_37|121261858');"><i></i>删除</a>
					</div>	
					<div class="page" id="letter_page"><div class="jyPage"><ul class="fn-clear"> <li><a href="javascript:void(0);" onclick="get_list('1', 1)">首页</a></li><li><a href="javascript:void(0);" onclick="get_list('1', 1)">上一页</a></li><li class="selectPage"> <strong>第2页</strong><div class="pageOuter"><div class="pageList"><a href="javascript:void(0);" onclick="get_list('1', 1)">第1页</a> <a href="javascript:void(0);" class="cur_page">第2页</a> </div></div> </li></ul></div></div>
				</div>
				<!--翻页-->
			
		</div>
		<!--信件 E-->
		<!--会员推荐充值 B-->
				<div class="member-mod fn-clear">
			<div class="member">
				<div name="ads_div" style="" ad_param="pid:msg_newmember|count:12"><div class="usercp_midphoto">
	<div class="midpphoto_top">
	<div class="midpphoto_title">符合您条件的最新会员</div>
    <div class="midpphoto_more"><a href="http://www.jiayuan.com/newmember/" target="_blank">查看更多新会员</a></div>
    <div class="clear"></div>
    </div>
    <div class="midpphoto_body">
    	<ul>
    	        	<li><div><a onclick="send_jy_pv2('usercp_msg|gwxx')" target="_blank" href="http://www.jiayuan.com/122968538?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><img src="../resources/img/f64e31af3_1_avatar_p.jpg" height="90" width="74"></a>
                        </div><a target="_blank" href="http://www.jiayuan.com/122968538?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><span>24岁</span><span>其他国家</span></a></li>
                	<li><div><a onclick="send_jy_pv2('usercp_msg|gwxx')" target="_blank" href="http://www.jiayuan.com/122087455?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><img src="../resources/img/825bda08a_4_avatar_p.jpg" height="90" width="74"></a>
                        </div><a target="_blank" href="http://www.jiayuan.com/122087455?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><span>25岁</span><span>其他国家</span></a></li>
                	<li><div><a onclick="send_jy_pv2('usercp_msg|gwxx')" target="_blank" href="http://www.jiayuan.com/122088125?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><img src="../resources/img/16a1d20d7_1_avatar_p.jpg" height="90" width="74"></a>
                        </div><a target="_blank" href="http://www.jiayuan.com/122088125?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><span>24岁</span><span>其他国家</span></a></li>
                	<li><div><a onclick="send_jy_pv2('usercp_msg|gwxx')" target="_blank" href="http://www.jiayuan.com/123331028?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><img src="../resources/img/d4951213b_1_avatar_p.jpg" height="90" width="74"></a>
                        </div><a target="_blank" href="http://www.jiayuan.com/123331028?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><span>28岁</span><span>其他国家</span></a></li>
                	<li><div><a onclick="send_jy_pv2('usercp_msg|gwxx')" target="_blank" href="http://www.jiayuan.com/122455013?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><img src="../resources/img/415b43c15_2_avatar_p.jpg" height="90" width="74"></a>
                        </div><a target="_blank" href="http://www.jiayuan.com/122455013?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><span>24岁</span><span>其他国家</span></a></li>
                	<li><div><a onclick="send_jy_pv2('usercp_msg|gwxx')" target="_blank" href="http://www.jiayuan.com/121525552?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><img src="../resources/img/92a5d0ba9_1_avatar_p.jpg" height="90" width="74"></a>
                        </div><a target="_blank" href="http://www.jiayuan.com/121525552?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><span>23岁</span><span>其他国家</span></a></li>
                	<li><div><a onclick="send_jy_pv2('usercp_msg|gwxx')" target="_blank" href="http://www.jiayuan.com/122736910?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><img src="../resources/img/a67595ef9_1_avatar_p.jpg" height="90" width="74"></a>
                        </div><a target="_blank" href="http://www.jiayuan.com/122736910?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><span>25岁</span><span>其他国家</span></a></li>
                	<li><div><a onclick="send_jy_pv2('usercp_msg|gwxx')" target="_blank" href="http://www.jiayuan.com/122492841?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><img src="../resources/img/8ad15d4a8_2_avatar_p.jpg" height="90" width="74"></a>
                        </div><a target="_blank" href="http://www.jiayuan.com/122492841?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><span>26岁</span><span>其他国家</span></a></li>
                	<li><div><a onclick="send_jy_pv2('usercp_msg|gwxx')" target="_blank" href="http://www.jiayuan.com/122629306?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><img src="../resources/img/a4a3ac75c_1_avatar_p.jpg" height="90" width="74"></a>
                        </div><a target="_blank" href="http://www.jiayuan.com/122629306?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><span>22岁</span><span>其他国家</span></a></li>
                	<li><div><a onclick="send_jy_pv2('usercp_msg|gwxx')" target="_blank" href="http://www.jiayuan.com/122375033?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><img src="../resources/img/ca20cc46a_1_avatar_p.jpg" height="90" width="74"></a>
                        </div><a target="_blank" href="http://www.jiayuan.com/122375033?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><span>25岁</span><span>其他国家</span></a></li>
                	<li><div><a onclick="send_jy_pv2('usercp_msg|gwxx')" target="_blank" href="http://www.jiayuan.com/124068672?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><img src="../resources/img/a91a79823_1_avatar_p.jpg" height="90" width="74"></a>
                        </div><a target="_blank" href="http://www.jiayuan.com/124068672?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><span>21岁</span><span>其他国家</span></a></li>
                	<li><div><a onclick="send_jy_pv2('usercp_msg|gwxx')" target="_blank" href="http://www.jiayuan.com/122600074?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><img src="../resources/img/3d661561c_2_avatar_p.jpg" height="90" width="74"></a>
                        </div><a target="_blank" href="http://www.jiayuan.com/122600074?src=personalmatch_msgnewmember_c&amp;cnm=new_mathch&amp;fxly=tj-ymtj-sjxxhytj" class="fuhe"><span>20岁</span><span>其他国家</span></a></li>
                </ul>
    </div>
</div></div>
<!-- shanf -->
<!-- 				<script src="../resources/js/dyn_search.js" type="text/javascript"></script> -->
			</div>
			<div class="recharge">
				<h2 class="title"><a href="http://www.jiayuan.com/usercp/center/charge.php?src_key=msg_quickpay" target="_blank">其他方式</a>佳缘邮票快速充值</h2>
				<div class="tab-menu">
					<ul class="fn-clear">
						<li class="selected"><a href="javascript:;">网上支付</a></li>
						<li><a href="javascript:;">手机充值卡</a></li>
						<li><a href="javascript:;">支付宝</a></li>
					</ul>
				</div>        
				<div class="tab-box">
					<div class="payment-mod">
						<h3 class="mt22">邮票数量：<img src="../resources/img/qa.jpg" alt="" class="qa"></h3>
						<form action="http://www.jiayuan.com/usercp/center/bank_run.php?src_key=msg_quick_charge&amp;pid=2" method="POST" id="buy_gj_yinhang" name="buy_gj_yinhang" target="_blank">
						<div class="stamp mt16">
							<label><input name="yinhang_youpiao" value="50" type="radio">50张</label>
							<label><input name="yinhang_youpiao" checked="checked" value="100" type="radio">100张</label>
							<label><input name="yinhang_youpiao" value="qita" type="radio">其他</label>
							<label><input name="yinhang_youpiao1" class="sheets" type="text">张</label>
						</div>
						<div class="pay-amount mt16"><strong>支付金额：</strong><span id="cost_total_yinhang" class="cost_total">200</span>元</div>
						<div class="pay-bank mt16"><strong>支付银行：</strong>
							<select name="bank">
	        	              <option selected="selected" value="6">招商银行</option>
	        	              <option value="7">交通银行</option>
	        	              <option value="12">兴业银行</option>
	        	              <option value="1">中国工商银行</option>
	        	              <option value="10">上海浦东发展银行</option>
	        	              <option value="5">中国银行</option>
	        	              <option value="2">中国建设银行</option>
	        	              <option value="4">中国民生银行</option>
	        	              <option value="11">平安银行</option>
	        	              <option value="3">中国农业银行</option>
	        	              <option value="9">广东发展银行</option>
	        	              <option value="8">中国光大银行</option>
	      	              	</select>
							<input name="number" id="quick_charge_number" value="200" type="hidden">
						</div>
						<div class="stamp-next mt22">
							<input class="pay-next" value="下一步" onclick="$('#quick_charge_number').val($('#cost_total_yinhang').text());if(typeof(send_jy_pv2)=='function'){ send_jy_pv2('msgindex_buy|yinhang|121261858');};" type="submit">
						</div>
						</form>
						<!--弹层说明-->
						<div class="buy_notice" id="gaoji_buy_yinhang"> 
							<div class="notice_title"><strong>充值流程</strong></div> 
							<div class="notice_content"> 
								1、选择购买数量、支付银行<br> 
								2、点“下一步”进入支付中心<br> 
								3、再次核对相关信息<br> 
								4、进入第三方银行支付界面<br> 
								5、操作完成，充值成功
							</div> 
						</div>
					</div>
					<div class="card-mod" style="display:none;">
						<h3 class="mt10">充值卡种类：<img src="../resources/img/qa.jpg" alt="" class="qa"></h3>
						<form action="http://www.jiayuan.com/usercp/center/charge.php?src_key=msg_quickpay" method="POST" id="buy_gj_shouji" name="buy_gj_shouji" target="_blank">
						<div class="stamp mt5">
							<input name="show_menu" value="3" checked="checked" type="radio"><label class="yidong">移动充值卡</label><input name="show_menu" value="10" type="radio"><label class="liantong">联通充值卡</label>
						</div>
						<h3 class="mt8">充值卡面额：</h3>
						<div class="stamp mt5">
							<label><input name="shouji_qian" value="50" type="radio">50元</label><label><input name="shouji_qian" checked="checked" value="100" type="radio">100元</label><label><input name="shouji_qian" value="300" type="radio">300元</label><label><input name="shouji_qian" value="500" type="radio">500元</label>
						</div>
						<h3 class="mt8">充值卡面额：</h3>
						<div class="recharge-input mt5">
							<input name="shouji_kahao" class="pay_text" value="全国卡/地方卡/苏浙闽粤-易宝卡" onfocus="if(this.value=='全国卡/地方卡/苏浙闽粤-易宝卡'){this.value='';this.style.color='#000';}" type="text">
						</div>
						<h3 class="mt8">充值卡密码：</h3>
						<div class="recharge-input mt5">
							<input name="shouji_mima" class="pay_text" value="输入后请认真核对密码" onfocus="if(this.value=='输入后请认真核对密码'){this.value='';this.style.color='#000';}" type="text">
						</div>
						<div class="stamp-next mt10">
							<input class="pay-next" value="下一步" onclick="if(typeof(send_jy_pv2)=='function'){ send_jy_pv2('msgindex_buy|shouji|121261858');};if(document.buy_gj_shouji.shouji_kahao.value=='全国卡/地方卡/苏浙闽粤-易宝卡') document.buy_gj_shouji.shouji_kahao.value='';document.buy_gj_shouji.shouji_kahao.focus();document.buy_gj_shouji.shouji_kahao.blur();" type="submit">
						</div>
						</form>
						<!--弹层说明-->
						<div class="buy_notice" id="gaoji_buy_shouji"> 
							<div class="notice_title"><strong>充值流程</strong></div> 
							<div class="notice_content"> 
								1、选择充值卡种类、面额<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;输入充值卡序列号、密码<br> 
								2、点“下一步”进入支付中心<br> 
								3、再次核对相关信息并输入验证码<br> 
								4、确定充值，操作完成，充值成功
							</div> 
						</div>
					</div>
					<div class="stamp-mod" style="display:none">
						<h3 class="mt22">邮票数量：<img src="../resources/img/qa.jpg" alt="" class="qa"></h3>
						<form action="http://www.jiayuan.com/usercp/center/charge.php?src_key=msg_quickpay" method="POST" id="buy_gj_zhifubao" name="buy_gj_zhifubao" target="_blank">
						<div class="stamp mt16">
							<label><input name="zhifubao_youpiao" value="24" type="radio">24张</label>
							<label><input name="zhifubao_youpiao" checked="checked" value="49" type="radio">49张</label>
							<label><input name="zhifubao_youpiao" value="qita" type="radio">其他</label>
							<label><input name="zhifubao_youpiao" class="sheets" type="text">张</label>
						</div>
						<div class="pay-amount mt16"><strong>支付金额：</strong><span id="cost_total_yinhang" class="cost_total">98</span>元</div>
						<div class="stamp-next mt22">
							<input class="pay-next" value="下一步" onclick="if(typeof(send_jy_pv2)=='function'){ send_jy_pv2('msgindex_buy|zhifubao|121261858');};" type="submit">
						</div>
						<input name="show_menu" value="2" type="hidden">
						</form>
						<!--弹层说明-->
						<div class="buy_notice" id="gaoji_buy_zhifubao"> 
							<div class="notice_title"><strong>充值流程</strong></div> 
							<div class="notice_content"> 
								1、选择购买数量<br> 
								2、点“下一步”进入支付中心<br> 
								3、再次核对相关信息<br> 
								4、进入支付宝支付界面<br> 
								5、操作完成，充值成功
							</div> 
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
		$(function (){
			$('.stamp input[type=radio]').click(function(){
				if($(this).val() > 0){
					$(this).parents('form').find('.cost_total').html($(this).val()*2);
				}else{
					$('.stamp input[type=text]').focus();
				}
				$('.stamp input[type=text]').val('').focusout();
			});
			$('.stamp input[type=text]').keyup(function(){
			   if($(this).val() > 0){
			       $(this).parents('form').find('.cost_total').html($(this).val()*2);
			   }
			});
		});
		</script>
		<!--[if lte IE 6]>
	    <script type="text/javascript" src="http://images1.jyimg.com/w4/msg/j3/dd_belatedpng.js"></script>
        <script>
        DD_belatedPNG.fix('.pic-num');
        </script>
		<![endif]-->		<!--会员推荐充值 E-->
	</div>
	<!--右侧结束-->
<!--补贴邮票弹层 B-->
<div class="bg" id="bg"></div>
<div class="ly_subbg width570" id="popup_box" style="margin:0; width:654px;height:464px">
	<h4><a href="javascript:;" class="ly_close"></a>看信贴邮票</h4>
	<div class="ly-con fn-clear">
		<div id="iframe_loading" style="margin:100px auto 0 185px"><img id="loading_focus" src="../resources/img/loading.gif"></div>
	</div>
</div>
<div class="ly_subbg width570" id="iframe_box" style="margin:0; padding:0; width:654px;height:464px">
	<iframe src="" id="iframe_content" allowtransparency="true" name="popup_box" style="display:none;border:0;" frameborder="no" height="0" width="0"></iframe>
</div>
<div class="ly_subbg width570" id="iframe_box2" style="margin:0; padding:0; width:570px;height:320px">
    <iframe src="" id="iframe_content2" allowtransparency="true" name="popup_box2" style="display:none;border:0;" frameborder="no" height="0" width="0"></iframe>
</div>
<input id="pop1" type="hidden">
<input id="pop2" type="hidden">
<!--补贴邮票弹层 E-->
<!-- <script type='text/javascript' src='http://ads.jiayuan.com/ad.php?pd_id=42'></script> -->
<script type="text/javascript">
<!--
var head = document.getElementsByTagName("head")[0];       
var js = document.createElement("script");       
js.src = "http://ads.jiayuan.com/adajax.php?pd_id=42";       
js.onload = js.onreadystatechange = function()       
{       
    if (!this.readyState || this.readyState == "loaded" || this.readyState == "complete")       
    {   
         head.removeChild(js);  
    }       
}       
head.appendChild(js);  	
//-->
</script>
 

<!-- ==============================框架内内容========================================= --> 

 
</div> 
<!-- 中 右 内容结束 --> 
<div class="clear_line"></div> 
</div> 
</div> 
<!-- 主体 结束 two div--> 

<!-- 标准尾 开始--> 
<script type="text/javascript" src="../resources/js/foot.js"></script><script type="text/javascript" src="../resources/js/w4-simple.js"></script><style type="text/css">
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
</script><img src="../resources/img/a.gif" style="display:none"> 
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
	<style type="text/css"> 	*{margin:0;padding:0;}	.winpopfoot{width:284px;height:203px;overflow:hidden;word-wrap:break-word;word-break:break-all;font-size:12px;font-family:Arial,SimSun;color:#636363;}	.pngforsjjy{behavior:expression((T=this,T.runtimeStyle.behavior="none")&&(T.p?0:((T.runtimeStyle.backgroundImage = "none",T.runtimeStyle.filter ="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+T.src+"',sizingMethod='image')",T.src = "http://images.jiayuan.com/w3/global/i/bg.gif")),T.p=1));}	.winpopfoot em,.winpopfoot span,.winpopfoot strong{font-weight:normal;font-style:normal;font-size:12px;}	.winpopfoot_box{position:absolute;top:8px;left:10px;width:264px;height:192px;overflow:hidden;border-bottom:3px solid #E876B2;background:url(http://images1.jyimg.com/w4/index/i/bg100804_02.gif) repeat-x 0 -100px;}	.winpopfoot_t{width:264px;height:30px;overflow:hidden;}	.winpopfoot_t em{float:left;width:67px;height:25px;overflow:hidden;margin:5px 0 0 10px;cursor:pointer;}	.winpopfoot_t em strong{width:67px;height:25px;display:block;line-height:25px;font-weight:bold;text-align:center;}	.winpopfoot_t em strong.str2{position:relative;}	.winpopfoot_t em.on{background:url(http://images1.jyimg.com/w4/index/i/bg100804_01.gif) no-repeat 0 0;}	.winpopfoot_t em.on strong.str1{color:#DCDCDC;}	.winpopfoot_t em.on strong.str2{top:-26px;color:#444444;}	.winpopfoot_t em.over strong.str1{color:#C23174;}	.winpopfoot_t em.over strong.str2{top:-24px;color:#FFFFFF;}	.winpopfoot_t span{float:right;width:18px;height:18px;overflow:hidden;margin:7px 5px 0 0;cursor:pointer;background-image:url(http://images1.jyimg.com/w4/index/i/bg100804_01.gif);}	.winpopfoot_t span.sp1{background-position:-70px 0;}	.winpopfoot_t span.sp2{background-position:-90px 0;}	.winpopfoot_t span.sp3{background-position:-110px 0;}	.winpopfoot_c{width:258px;height:162px;overflow:hidden;margin:0 auto;background:#FFFDFD;}	.winpopfoot_c dl{width:228px;height:140px;margin:10px auto 0;overflow:hidden;line-height:20px;}	.winpopfoot_c dd{width:100%;text-align:left;}	.winpopfoot_c dd.martop15{margin-top:15px;}	.winpopfoot_c dd span{float:right;width:100%;text-align:right;}	.winpopfoot_c dd a,.winpopfoot_c dd a:hover{color:#BC0073;text-decoration:underline;}	.winpopfoot_c dd img{display:block;margin:0 auto;border:none;}	</style>		<div style="position: absolute; z-index: 99999; overflow: hidden; border-width: 0px; width: 280px; height: 0px; right: 0px; bottom: 0px; display: none; top: 699px; left: 1263px;" id="bulletin"> 		<div class="winpopfoot" style="position:absolute;z-index:2;left:0;" id="pop_div"> 	<img src="../resources/img/bg100804.png" class="pngforsjjy"> 	<div class="winpopfoot_box"> 	<div class="winpopfoot_t"> 	<span class="sp2" title="关闭" onclick="_close();" id="closeButton"></span> 	<span class="sp3" title="最大化" onclick="_mini();" id="switchButton"></span> 	<em id="div_1" class="on"><div><div id="link_1"><strong class="str1">互动消息</strong><strong class="str2">互动消息</strong></div></div></em> 	<em id="div_3" class="over"><div><div id="link_3"><strong class="str1">最新活动</strong><strong class="str2">最新活动</strong></div></div></em> 	</div>	<div class="winpopfoot_c"> 	<dl> 	<dd style="" id="con_1" class="martop15"><img src="../resources/img/logo_prompt_002.jpg"></dd> 	<dd style="display: none;" id="con_2" class="martop15"></dd> 	<dd style="display: none;" id="con_3"><img src="../resources/img/logo_prompt_002.jpg"></dd> 	</dl> 	<iframe scrolling="no" id="run_fra" name="run_fra" src="" frameborder="0" height="0" width="0"></iframe> 	</div> 	 	</div> 	</div> 	 	</div> 	<script type="text/javascript" src="../resources/js/pop.js"></script><div id="bgdiv_foot" style="position:absolute;display:none; left:0px; top:0px; width:100%; height:100%; filter:alpha(opacity=30); opacity:0.3; background-color:#000000; z-index:12000;"></div> <div class="dragdiv" id="bg_div_float_foot" style="z-index:12001;position:absolute;top:0px;left:0px;display:none"></div><script src="../resources/js/pop_template.php"></script><script src="../resources/js/jyim2.js"></script><link href="../resources/css/jyim3.css" type="text/css" rel="stylesheet">
	<div class="im_bar_min" style="display: block;" id="im_bar"><div t="#im_friend" id="contact" class="im_btn fr im_btn_last oneCity pr im_attached_pop"><a class="im_inner_btn">联系人</a><span style="display: none;" class="amount fl"><span class="amount_leftBg fl"></span><span class="amount_centerBg fl">0</span><span class="amount_rightBg fl"></span></span><div id="im_friend" class="im_win im_samecity_div"><div class="pr im_win_title webimTop"><ul><li class="oning">初次联系</li><li>关注</li><li>好友</li></ul><div class="im_t_close webimClose"></div></div><div class="im_list"><div class="webimZaixian"><div class="webimZaixianRS">在线（<span></span><span></span><span></span>）</div><div class="webimCakanquanbu"><a href="###">查看全部&gt;&gt;</a></div></div><div class="webimList"><ul></ul><ul></ul><ul></ul></div><div class="im_loading"><table><tbody><tr><td><img src="../resources/img/loading_002.gif"><span>正在加载，请稍候</span></td></tr></tbody></table></div><div class="webimListAnzhuang"><a href="#">安装佳缘佳信3.0，与她免费视频聊天</a></div></div></div></div><div t="#im_chatx" id="onlineTalk" class="im_btn fr im_btn_second onlineTalk pr im_attached_pop"><a class="im_inner_btn">聊天</a><span style="display: none;" class="amount fl"><span class="amount_leftBg fl"></span><span class="amount_centerBg fl">0</span><span class="amount_rightBg fl"></span></span><div id="im_chatx" class="im_win onlineTalk_content"><div class="pr im_win_title onlineTalk_content_title"><div class="title_leftBg fl"></div><h1 class="title_centerBg">聊天</h1><div class="title_rightBg fl"><a class="pr im_t_close"></a><a target="_blank" href="http://webim.jiayuan.com/messages.php" class="notes">查看全部聊天记录</a></div></div><div class="im_list"><div id="im_rec_chat_con"><span class="im_list_no_chat">暂无未读消息</span><div class="im_rec_chat"><img><span>和我聊天</span></div><div class="im_rec_chat"><img><span>和我聊天</span></div><div class="im_rec_chat"><img><span>和我聊天</span></div></div></div></div></div><div t="#im_msgx" class="im_btn fr im_btn_first message pr im_attached_pop"><a class="im_inner_btn">消息</a><span style="display: none;" class="amount fl"><span class="amount_leftBg fl"></span><span class="amount_centerBg fl">0</span><span class="amount_rightBg fl"></span></span><div id="im_msgx" class="im_win message_content"><div class="pr im_win_title message_content_title"><div class="title_leftBg fl"></div><h1 class="title_centerBg">消息</h1><div class="title_rightBg fl"><a class="pr im_t_close"></a></div></div><div class="im_list"><img class="im_jy_logo" src="../resources/img/logo_prompt.jpg"></div></div></div><div class="im_btn fr letter"><a class="im_inner_btn">收件箱</a><span style="display: inline;" class="amount fl"><span class="amount_leftBg fl"></span><span class="amount_centerBg fl">13</span><span class="amount_rightBg fl"></span></span></div><div style="display: none;" id="im_pop_win" class="pa im_win"><div class="im_title"><div class="im_t_tab">互动消息</div><div class="im_t_tab">交友活动</div><div class="title_rightBg fr im_t_close"></div></div><div class="im_pop_content"><img src="../resources/img/logo_prompt.jpg"></div><div class="im_pop_content"><img src="../resources/img/logo_prompt.jpg"></div></div><div style="display: none;" class="im_yfms_tpl0" id="im_yfms"></div><div style="display: none;" id="im_chat_pop_win" class="pa im_win"><div class="im_chat_win_title"><div class="im_chat_win_nick"></div><div class="fr im_t_close"></div></div><div class="im_chat_win_content  im_pop_content"><div><span></span><span><a class="im_tosee_chatmsg">查看详情</a></span></div></div></div><div style="display: none;" id="im_zhuanti"></div><div style="display: none;" id="im_profile_pop_win"><div class="dzhLayer"><div class="dzhLayer_top"><a href="javascript:void(0);" class="im_t_close dzhLayer_close">&nbsp;</a><div class="dzhLayer_set"><a href="javascript:void(0);" class="dzhLayer_bxs" style="display: none;">今日不再提醒</a></div></div><div class="dzhLayer_text"><p>对方在线，和TA聊聊吧</p></div><div class="dzhLayer_icon"><div class="dzhLayer_iconImg"><a href="javascript:void(0);" class="hi"><span></span><div class="tishilayer1"><p class="tishilayer_hi">想了解你更多,可以聊聊么?</p></div></a><a href="javascript:void(0);" class="face"><span></span><div class="tishilayer2"><p class="tishilayer_face">想了解你更多,可以聊聊么?</p></div></a><a href="javascript:void(0);" class="flower"><span></span><div class="tishilayer3"><p class="tishilayer_flower">想了解你更多,可以聊聊么?</p></div></a><a href="javascript:void(0);" class="heart"><span></span><div class="tishilayer4"><p class="tishilayer_xin">想了解你更多,可以聊聊么?</p></div></a></div><div class="dzhLayer_loading"><img src="../resources/img/jx3_loading.gif">发送中...</div><div class="dzhLayer_loaded"><img src="../resources/img/send_ok.gif">发送成功</div></div></div></div><div style="display: none;" id="im_jiaxin_pop_win"><div class="jx3_0_1_adv jx3_0_1_adv1"><div class="jx3_0_1_advTop"><a href="javascript:void(0);" class="im_t_close jx3_0_1_advClose">&nbsp;</a></div><div class="jx3_0_1_advBody"><a href="http://im.jiayuan.com/?from=rightbottom" target="_blank" class="jx3_0_1_advButton">&nbsp;</a></div></div></div><div t="#im_myjy" class="im_btn fl myJiayuan pr im_attached_pop"><a class="im_inner_btn">我的服务</a><div id="im_myjy" class="im_win myjiayuan_content"><div class="pr im_win_title myjiayuan_content_title"><div class="title_leftBg fl"></div><h1 class="title_centerBg">我的服务</h1><div class="title_rightBg fl"><a class="pr im_t_close"></a></div></div><div class="im_list"></div></div></div><ul class="fl im_service_list" id="service_list"><li class="jystamp" title="佳缘邮票"><a target="_blank" href="http://www.jiayuan.com/usercp/center/index.php">佳缘邮票</a></li><li class="speedpost" title="特快专递"><a target="_blank" href="http://www.jiayuan.com/msgapp/ems/?a=info">特快专递</a></li><li class="diamond_g" title="钻石会员"><a target="_blank" href="http://www.jiayuan.com/usercp/service/bmsg_tg2.php">钻石会员</a></li><li class="vip_g" title="VIP会员"><a target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php">VIP会员</a></li><li class="readmail_g" title="看信包月"><a target="_blank" href="http://www.jiayuan.com/usercp/service/bmsg.php">看信包月</a></li><li class="forground_g" title="排名提前"><a target="_blank" href="http://www.jiayuan.com/usercp/service/priority.php">排名提前</a></li><li class="express_g" title="超级聚光灯"><a target="_blank" href="http://www.jiayuan.com/usercp/fate_express.php">超级聚光灯</a></li></ul><div t="#im_jyapp" class="im_btn fl jiayuanCenter pr im_attached_pop"><a class="im_inner_btn">佳缘应用</a><div id="im_jyapp" class="im_win jiayuanCenter_content"><div class="pr im_win_title jiayuanCenter_content_title"><div class="title_leftBg fl"></div><h1 class="title_centerBg">佳缘应用</h1><div class="title_rightBg fl"><a class="pr im_t_close"></a></div></div><div class="im_list"></div></div></div><div style="display: none;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">专享特惠--钻石会员立减200元！仅298元/年！马上开通&gt;&gt;</a></div><div style="display: none;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">亲，教你淘最佳配偶！试下“超级聚光灯”</a></div><div style="display: none;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">做大富翁，赢大奖！</a></div><div style="display: block;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">选对“真像”，爱情“不在囧途”</a></div><div style="display: none;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">帮你快速精准锁定心仪异性，快来看看！</a></div></div><script type="text/javascript" src="../resources/js/pop_freq.js"></script><script type="text/javascript" src="../resources/js/popupLogin_v2.js"></script>
<!-- <script type='text/javascript' src='http://ads.jiayuan.com/ad.php?pd_id=41'></script> -->
<script type="text/javascript" src="../resources/js/JY_Alert.js"></script>
<!-- 标准尾 结束--> 
 
<div style="position: absolute; width: 1px; height: 1px;" id="typeAContainer">
j</div></body></html>