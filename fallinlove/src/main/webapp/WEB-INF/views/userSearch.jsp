<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员搜索_爱一起交友网</title>
<!--调用公用css-->
<link href="resources/css/base.css" rel="stylesheet" type="text/css">
<link href="resources/css/search.css" type="text/css" rel="stylesheet">
<script src="resources/js/beacon.js" async=""></script><script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/search.js"></script>
<script type="text/javascript" src="resources/js/love_location_array.js"></script>
<script type="text/javascript" src="resources/js/jy_COW.js"></script>
<script type="text/javascript" src="resources/js/parties_common.js"></script>
<script type="text/javascript" src="resources/js/popBox.js"></script>
<script type="text/javascript" src="resources/js/page_result.js"></script>
<!-- <script type="text/javascript" src="resources/js/popupLogin_v2.js"></script> -->
<script type="text/javascript" src="resources/js/JY.js"></script><!--佳缘桌面弹层开始--><link href="resources/css/layer.css" rel="stylesheet" type="text/css"><script src="resources/js/clickonce.js" type="text/javascript"></script></head><body><div class="layerTable" id="layerTable" style="display:none;"><div class="layerTableTop"><a href="javascript:hidelayerTable(0)" class="layerTableClose"></a></div><div class="layerTableBody"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td><a href="javascript:hidelayerTable(2)" class="layerTableButton"></a></td><td><a href="javascript:hidelayerTable(1)" class="layerTableLink">查看详情</a></td><td><a href="javascript:hidelayerTable(0)" class="layerTableLink">以后再说</a></td></tr></tbody></table></div></div><script type="text/javascript">function hidelayerTable(butt){document.getElementById("layerTable").style.display="none";document.getElementById("header_login_pop_mask").style.display="none";location.href=JY.url.getChannelUrl("usercp");if(butt==1){window.open("http://webim.jiayuan.com/client/download.php");}if(butt==2){NavigateTo("jiayuan.com");}}</script><!--佳缘桌面弹层结束-->
<script type="text/javascript" src="resources/js/options.js"></script>
<script type="text/javascript" src="resources/js/index_v2.js"></script>
<script type="text/javascript" src="resources/js/pv.js"></script>

<script type="text/javascript" src="resources/js/city.js"> </script>
<script type="text/javascript" src="resources/js/search_alert.js"> </script>
 
<!--[if lte IE 6]>
     <script type="text/javascript" src="http://images1.jyimg.com/w4/common/j/DD_belatedPNG_0.0.8a_IE6.js"></script>
     <script>
       DD_belatedPNG.fix('img,.crumbs .tips,.dzh,.lt,.mixedType .tips,.btn_box a,.btn_box a em,.user_name i,.new_search,.hy_box ,.set_top,.icon_ju,.tips,.s_cheat_2,.filter .row1 li.add .s_cheat,.filter .row1 li.add .s_cheat_1');
     </script>
<![endif]--> 
<script type="text/javascript">
    var search_domain = "jiayuan.com";
    var org_alert = window.alert;
    window.alert=function(msg){JY_Alert('温馨提示',msg);};
    jQuery.noConflict(); 
    var JQ = jQuery;var $ = jQuery;
    var SITE_URL = 'http://www.jiayuan.com';
    var SEARCH_HOST = 'http://search.jiayuan.com/';
</script>


<!-- <script type="text/javascript" src="resources/js/head_white.js"></script> -->
<script type="text/javascript">
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
//jy_head_function.get_userinfo();

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
<script type="text/javascript" src="resources/js/jiayuan_logo_config.js"></script>
<script type="text/javascript" src="resources/js/JY_Alert.js"></script>
<!--[if lte IE 6]>
<script type="text/javascript" src="http://images1.jyimg.com/w4/common/j/DD_belatedPNG_0.0.8a_IE6.js"></script>
<![endif]--> <style type="text/css">
@charset "utf-8";
#head_white_css{height:50px;background:url(http://images1.jyimg.com/w4/common/i/head/jycm_zt_nav.png) repeat-x left top}
#head_white_css .jycm_zt_nav_main{width:970px;margin:0px auto}
#head_white_css .jycm_zt_logo{margin:0;padding:0;width:153px;display:inline;float:left;background:url(http://images1.jyimg.com/w4/common/i/head/jycm_zt_vline.png) no-repeat top right}
#head_white_css .jycm_zt_logo img{border:none}
#head_white_css ul.jycm_zt_nav_list{margin:0;padding:0;list-style-type:none;display:inline;float:left;padding:18px 0 0 6px}
#head_white_css ul.jycm_zt_nav_list li{display:inline;float:left;padding:0 7px 0 9px;line-height:14px;background:url(http://images1.jyimg.com/w4/common/i/head/jycm_zt_vline2.png) no-repeat left 2px}
#head_white_css ul.jycm_zt_nav_list li.first{background:none}
#head_white_css ul.jycm_zt_nav_list li a{font-size:12px;color:#666;text-decoration:none}
#head_white_css ul.jycm_zt_nav_list li a:hover{text-decoration:underline}
#head_white_css ul.jycm_zt_nav_list li.head_nav_cur a{font-weight:bold}
#head_white_css ul.jycm_zt_nav_list li a:hover{text-decoration:underline}
#head_white_css div.jycm_zt_login{display:inline;float:right;padding:18px 0 0 0;font-size:12px;line-height:14px;color:#666}
#head_white_css div.jycm_zt_login a{font-size:12px;color:#0066cc;text-decoration:none}
#head_white_css .head_white_css{_text-align:center}
#head_white_css .head_white_css .jycm_zt_nav_main{_text-align:center}
</style>
<div id="head_white_css">
<div class="jycm_zt_nav_main">
<h1 class="jycm_zt_logo" id="head_white_logo">
        	<a href="http://www.jiayuan.com/"><img src="resources/img/jycm_zt_logo.png"></a>
        </h1>
<ul class="jycm_zt_nav_list" id="head_white_nav" style="">
<li class="first"><a href="http://www.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_www|');" target="_blank">首页</a></li>
<li><a href="http://usercp.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_usercp|');" target="_blank">我的佳缘</a></li>
<li><a href="http://www.jiayuan.com/club/" onclick="jy_head_function.click_pv('|head_navigation_club|');" target="_blank">俱乐部</a></li>
<li><a href="http://search.jiayuan.com/v2/" onclick="jy_head_function.click_pv('|head_navigation_search|');" target="_blank">搜索</a></li>
<li><a href="http://search.jiayuan.com/v2/new.php" onclick="jy_head_function.click_pv('|head_navigation_new|');" target="_blank">新会员</a></li>
<li><a href="http://search.jiayuan.com/v2/online.php" onclick="jy_head_function.click_pv('|head_navigation_online|');" target="_blank">聊天</a></li>
<!--<li><a href="http://party.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_party|');" target="_blank">活动</a></li>
<li><a href="http://diary.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_diary|');" target="_blank">两性</a></li>-->
            <li><a href="http://www.jiayuan.com/9158/" onclick="jy_head_function.click_pv('|head_navigation_hd9158|');" target="_blank">互动直播</a></li>
<li><a href="http://game.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_game|');" target="_blank">游戏</a></li>
<li><a href="http://love.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_love|');" target="_blank">晒幸福</a></li>
            <li><a href="http://case.jiayuan.com/yindou/" onclick="jy_head_function.click_pv('|head_navigation_yindou|');" target="_blank">理财</a></li>
<li><a href="http://vip.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_liehun|');" target="_blank">红娘一对一</a></li>
<li><a href="http://www.izhenxin.com/login/getSign/?url=http%3A%2F%2Fwww.jiayuan.com%2Fusercp%2Fiz_login.php%3Furl%3Dhttp%253A%252F%252Fwww.izhenxin.com%252F&amp;from=JYDH" onclick="jy_head_function.click_pv('|head_navigation_izhenxin|');" target="_blank">爱真心</a></li>
</ul>
        <div class="jycm_zt_login" id="head_white_user">${loginUser.nickname}&nbsp;|&nbsp;<a href="logout">退出</a></div>
</div>
</div>
<script type="text/javascript">
document.getElementById('head_white_nav').innerHTML = jy_head_function.format_tpl(document.getElementById('head_white_nav').innerHTML);	//导航信息
document.getElementById('head_white_nav').style.display = "";
if(HEAD_USER.uid > 0){
var loginstr= HEAD_USER.nickname+'&nbsp;|&nbsp;<a href="'+common_nav_array['login_url']+'logout2.php">退出</a>';
}else{
var pre_url	= document.location.href;
var loginstr= '<a href="'+common_nav_array['login_url']+'?channel=200&position=204&pre_url='+encodeURIComponent(pre_url)+'" onclick="jy_head_function.click_pv(\'|head_navigation_login|\');">登录</a>&nbsp;|&nbsp;<a href="'+common_nav_array['reg_url']+'?bd=212" class="link" onclick="jy_head_function.click_pv(\'|head_navigation_reg|\');" target="_blank">注册</a>';
}
document.getElementById('head_white_user').innerHTML = loginstr;
</script>
<!-- released time 2014-10-22 15:04:56 -->

 


<link type="text/css" href="resources/css/popupLogin_20110321.css" rel="stylesheet">
<!-- <script src="resources/js/popupLogin_v2.js" type="text/javascript"></script> -->
<script src="resources/js/pv_002.js" type="text/javascript"></script> 
<script type="text/javascript">


function clear_text(obj)
{
   if(obj.value.match(/\//g))
   {
       obj.value="";
   }
}
function check_text(obj)
{
   if(obj.value == "")
   {
     obj.value = '注册邮箱/手机号/佳缘ID';
   }
}
var base_css_url='http://images.jiayuan.com/w4/login/i/dch_2.jpg'

function  popup_count(flag)
{
    send_jy_pv2('new_popup_open_'+flag);
}

</script>



<iframe src="" name="login_run" style="display:none" height="0" width="0"></iframe>
<!--alert 1 -->
<div id="login" style="display:none;">
<!-- alert 2 -->
<script language="JavaScript">
<!--
loginWindow.onOpen = function(){
	popup_count(2);
}
//-->
</script>
<div>
	<div class="alert_bg2">
		<div class="clear text_pop_login">
			<a title="close" class="closer" onclick="loginWindow.closelogindiv('login');send_jy_pv2('2new_popup_click_close_2');return false;" href="#"> </a>
			<span class="l">老会员登录</span><span class="r">新会员注册</span>
		</div>
		<div class="clear">
			<div class="alert_left">
			<p id="errorInfo" class="red"></p>
			<form target="login_run" action="/login/dologin.php?" method="post" id="loginForm" name="loginForm">
				<dl class="login_box pb26 clear"> 
					<dt>登录帐号：</dt> 
					<dd>
						<input value="邮箱/ID/手机号" class="texts gra" name="name" onkeyup="loginWindow.onkeyupName(event);" onkeydown="if(event.keyCode==9){document.getElementById('login_password').focus(); return false;}" onfocus="clear_text(this);this.className='texts';" onblur="check_text(this);this.className='texts gra';" id="login_email" type="text">
					</dd> 
				</dl>
				<dl class="login_box clear">
					<dt>密<font color="white">密码</font>码：</dt> 
					<dd>
						<input class="texts gra" onkeyup="loginWindow.onkeyupPass(event);" onkeydown="if(event.keyCode==9){document.getElementById('on_sumbit').focus();return false;}" id="login_password" autocomplete="off" onfocus="this.className='texts';" onblur="this.className='texts gra';" name="password" type="password">
					</dd> 
				</dl> 
				<dl class="login_box pt5 clear">   
					<dt></dt> 
					<dd><span class="check_g"><input id="check_save" name="remem_pass" checked="checked" type="checkbox"></span> <span class="gray">两周内自动登录</span></dd> 
				</dl> 
				<dl class="login_box pt13 clear"> 
					<dt></dt> 
					<dd> <input onmouseover="this.className='login_btn hov';" onmouseout="this.className='login_btn';" value="登 录" onclick="loginWindow.dologin();send_jy_pv2('2new_popup_click_submit_2')" class="login_btn" type="button"> <span class="forget_pw"><a href="http://www.jiayuan.com/login/validate.php" target="_blank">忘记密码</a></span></dd> 
				</dl> 
					<input value="1" name="ajaxsubmit" id="ajax" type="hidden"> 
					<input value="1" name="ljg_login" type="hidden"> 
				</form> 
				<div style="display: block;" id="display_show" class="pop_openid clear"> 
					<span class="l">您也可以用以下方式登录：</span> 
					<span class="r"> 
						<a href="http://www.jiayuan.com/general/t/?forward=qqAware&amp;c=11&amp;p=1" class="openid_qq pngfix">QQ</a> 
						<a class="openid_weibo pngfix" href="http://www.jiayuan.com/general/t/?forward=sinaAware&amp;c=11&amp;p=2">新浪微博</a>
						<a href="http://www.jiayuan.com/general/t/?forward=renrenAware&amp;c=11&amp;p=3" class="openid_renren pngfix">人人</a> 
						<a href="http://www.jiayuan.com/general/t/?forward=baiduOauth&amp;c=11&amp;p=5" class="openid_baidu pngfix">百度</a> 
						<a href="http://www.jiayuan.com/general/t/?forward=doubanAware&amp;c=11&amp;p=6" class="openid_douban pngfix">豆瓣</a> 
						<a href="http://www.jiayuan.com/general/t/?forward=kaixinAware&amp;c=11&amp;p=4" class="openid_kaixin pngfix">开心</a> 
						<a href="http://www.jiayuan.com/general/t/?forward=alipayOauth&amp;c=11&amp;p=7" class="openid_alipay pngfix">支付宝</a> 
					</span> 
				</div> 
			</div>
			<div class="alert_right">
				<a class="reg_bg" onclick="send_jy_pv2('2new_popup_click_reg_2');" id="reglink" href="http://www.jiayuan.com/register/?bd=14" target="_blank">立即注册</a>
			</div>
		</div>
	</div>
   
</div>
 </div>

<script type="text/javascript">
<!--
	function display_div(data)
	{
	    if(data)
		{
		    document.getElementById("display_show").style.display="block";
		}else
		{
            document.getElementById("display_hidden").style.display="block";
		}
	}
//-->
</script>
 <script src="resources/html/a.htm" type="text/javascript"></script>

<input name="listStyle" id="listStyle" value="bigPhoto" type="hidden">
<input id="selectedSex" class="selectedSex" name="selectedSex" value="f" type="hidden">
<input name="search_tip_json" value="{&quot;hot&quot;:[&quot;\u82d7\u6761&quot;,&quot;\u6e29\u67d4\u4f53\u8d34&quot;,&quot;\u957f\u53d1&quot;,&quot;\u5584\u826f&quot;,&quot;\u6e05\u7eaf\u53ef\u7231&quot;,&quot;\u65f6\u5c1a&quot;,&quot;\u51b0\u96ea\u806a\u660e&quot;,&quot;\u6587\u9759&quot;,&quot;\u6f6e\u4eba\u8303&quot;,&quot;\u7231\u8fd0\u52a8&quot;]}" class="search_tip_json" type="hidden">
<input name="searchUser_tip_json" value="" class="searchUser_tip_json" type="hidden">
<input value="" name="searchCache" id="searchCache" type="hidden">
<input value="" name="searchAutoComplete" id="searchAutoComplete" type="hidden">
<input value="loaded" id="onloadFlag" name="onloadFlag" type="hidden">
<input class="say_hello_userId_list_cache" value="" name="say_hello_userId_list_cache" type="hidden">
<input class="say_hello_userId_list" value="" name="say_hello_userId_list" type="hidden">
<input value="http://www.jiayuan.com/msg/" class="say_hello_url" name="say_hello_url" type="hidden">
<input value="" id="numCache" name="numCache" type="hidden">
<input name="pageCache" id="pageCache" value="1" type="hidden">
<input name="pageTotal" id="pageTotal" value="250" type="hidden">
<input name="flag" id="flag" value="" type="hidden">
<input name="selectedCondition" id="selectedMark" value="1:99,2:22.30,3:155.170" type="hidden">
<input name="work" id="work_hidden" value="其他国家" type="hidden">
<input name="ageHidden" class="ageHidden" value="open" type="hidden">
<input name="heightHidden" class="heightHidden" value="open" type="hidden">
<input name="default" value="1" type="hidden">
<input name="sortName" value="default" class="sortName" type="hidden">
<input name="hiddenSearchTagId" class="hiddenSearchTagId" value="0" type="hidden">
<input value="off" name="singleFilter" class="singleFilter" type="hidden">
<input value="zp:1" name="once_sel" id="once_sel" type="hidden">
<input value="0" name="vip_ser" id="vip_ser" type="hidden">
<input value="1000" name="head_type" id="head_type" type="hidden">
<input value="" name="s_nick" id="s_nick" type="hidden">
<input value="u" name="more_tag" id="more_tag" type="hidden">
<input value="" name="nick_condi" id="nick_condi" type="hidden">
<input value="" name="old_nick" id="old_nick" type="hidden">
<input value="" name="old_sex" id="old_sex" type="hidden">
<input value="m" name="user_sex" id="user_sex" type="hidden">
<input value="n" name="is_change_pho" id="is_change_pho" type="hidden">
<input value="1" name="is_login" id="is_login" type="hidden">
<input value="0" name="pri_uid" id="pri_uid" type="hidden">
<div class="search-wrapper">
    <!--<div class="new_search"><a href="../?old" onclick="javascript:send_jy_pv2('search_v2_c_old')"></a><a href="javascript:void(0);"></a></div>-->
    <ul id="sex_select" class="fn-clear">
        <li class="cur" id="all_user" onclick="headSearchType('all')"><span class="b1">全部会员</span></li>
        <li id="online_user" onclick="headSearchType('online')"><span class="b2">在线会员</span></li>
        <li id="new_user" onclick="headSearchType('new')"><span class="b3">最新会员</span></li>
    </ul>
    <div class="fn-clear">
        <div class="search_l"></div>
        <div class="search_i">
            <input class="keyword" maxlength="50" value="请输入要搜索的条件" type="text">
            <i class="JY-arr"></i>
            <div class="search_drop_down" id="search_drop_down">
                             <dl id="search_hot" class="search_hot">
                    <dt class="search_hot_dt">热门搜索</dt>
                                        <dd onmouseover="addCur(this);" onmouseout="removeCur(this);" onclick="clickdd(this);">苗条</dd>
                                        <dd onmouseover="addCur(this);" onmouseout="removeCur(this);" onclick="clickdd(this);">温柔体贴</dd>
                                        <dd onmouseover="addCur(this);" onmouseout="removeCur(this);" onclick="clickdd(this);">长发</dd>
                                        <dd onmouseover="addCur(this);" onmouseout="removeCur(this);" onclick="clickdd(this);">善良</dd>
                                        <dd onmouseover="addCur(this);" onmouseout="removeCur(this);" onclick="clickdd(this);">清纯可爱</dd>
                                        <dd onmouseover="addCur(this);" onmouseout="removeCur(this);" onclick="clickdd(this);">时尚</dd>
                                        <dd onmouseover="addCur(this);" onmouseout="removeCur(this);" onclick="clickdd(this);">冰雪聪明</dd>
                                        <dd onmouseover="addCur(this);" onmouseout="removeCur(this);" onclick="clickdd(this);">文静</dd>
                                        <dd onmouseover="addCur(this);" onmouseout="removeCur(this);" onclick="clickdd(this);">潮人范</dd>
                                        <dd onmouseover="addCur(this);" onmouseout="removeCur(this);" onclick="clickdd(this);">爱运动</dd>
                                    </dl>
                <dl id="search_user" class="search_user">
                    <dt class="autoCompleteSearch"></dt> 
                </dl>
            </div>
        </div>
        <a onclick="mainResult();" class="search_button" href="javascript:void(0);"></a>

        <div class="help clear">
            <!--2013-12-2
            <a href="http://www.jiayuan.com/helpcenter/list.php?type1=1&amp;type2=2&amp;type3=218" target="_blank">使用帮助</a>
            -->
            <!--<input class="f_l" type="checkbox" checked="checked" name="pho" id="pho" onclick="newSingClick(23,'pho')"/>
            <label class="f_l" for="pho">有照片</label>-->

        </div>

    </div>
    <dl class="wrap_hot fn-clear">
        <dt>热门搜索词：</dt>
                    <dd><a onclick="hotTagClick(this)" href="javascript:void(0);">有气质</a> </dd>
                        <dd><a onclick="hotTagClick(this)" href="javascript:void(0);">长发</a> </dd>
                        <dd><a onclick="hotTagClick(this)" href="javascript:void(0);">成熟大气</a> </dd>
                        <dd><a onclick="hotTagClick(this)" href="javascript:void(0);">端庄大方</a> </dd>
                        <dd><a onclick="hotTagClick(this)" href="javascript:void(0);">绝佳身材</a> </dd>
                        <dd><a onclick="hotTagClick(this)" href="javascript:void(0);">美食家</a> </dd>
                        <dd><a id="hot_last" class="hot_last" href="javascript:void(0);"></a></dd>
    </dl>
</div>
<div class="search_cont fn-clear">
<div class="search_left">
    <div class="crumbs">
        <ul class="fn-clear">
            <li id="showTopType">全部会员</li>
            <li class="ls_dzh_add">
                30天内登录过的会员中，有<i class="JY-arr" id="s_user_num">6246</i>人符合条件
            </li>
            <li class="ls_dzh">
                <div class="count">
                    <span style="" class="batch_hello_gray" id="batch_hello_gray">批量打招呼</span>
                    <span style="" class="batch_hello" id="batch_hello">批量打招呼</span>
                    
                </div>
            </li>
        </ul>
    </div>
    <div id="tipContent"></div>
    <div class="searchResult">
        <!--筛选 start-->
        <!--2013-12-2-->
        <div class="JY-sc">
        <!--已选择-->
        <dl class="JY-selected clear">
            <dt class="JY-lt">您已选择：</dt>
            <dd class="JY-selected-list clear">
                <!--性别-->
<!--                 <div class="JY-item JY-def" data-index="1" data-type="xb">
                    <span class="JY-title">
                        <b class="JY-title-val">女</b>
                        <i class="JY-item-arr"></i>
                    </span>
                    <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('xb')"></span>
                    <div class="JY-sp xb">
                        <h6 class="JY-sp-t">请选择性别</h6>
                        <div class="JY-sp-i clear">
                            <select name="Sex">
                                                                                                        <option value="1">男</option>
                                                                        
                                                                    <option value="2" selected="selected">女</option>
                                                                                                </select>
                        </div>
                        <button class="JY-sp-b" info="xb">确认</button>
                    </div>
                </div> -->
                <!--/性别-->
                            <div class="JY-item" data-index="2" data-type="dq">
                    <span class="JY-title">
                        <b class="JY-title-val">(来自)国外</b>
                        <i class="JY-item-arr"></i>
                    </span>
                    <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('dq')"></span>
                    <div style="display: none;" class="JY-sp dz">
                        <h6>请选择地区</h6>
                        <div class="JY-sp-i clear">
                            <select name="dq-Province">
                                                                    <option value="11">北京</option>
                                                                        
                                                                    <option value="12">天津</option>
                                                                        
                                                                    <option value="13">河北</option>
                                                                        
                                                                    <option value="14">山西</option>
                                                                        
                                                                    <option value="15">内蒙古</option>
                                                                        
                                                                    <option value="21">辽宁</option>
                                                                        
                                                                    <option value="22">吉林</option>
                                                                        
                                                                    <option value="23">黑龙江</option>
                                                                        
                                                                    <option value="31">上海</option>
                                                                        
                                                                    <option value="32">江苏</option>
                                                                        
                                                                    <option value="33">浙江</option>
                                                                        
                                                                    <option value="34">安徽</option>
                                                                        
                                                                    <option value="35">福建</option>
                                                                        
                                                                    <option value="36">江西</option>
                                                                        
                                                                    <option value="37">山东</option>
                                                                        
                                                                    <option value="41">河南</option>
                                                                        
                                                                    <option value="42">湖北</option>
                                                                        
                                                                    <option value="43">湖南</option>
                                                                        
                                                                    <option value="44">广东</option>
                                                                        
                                                                    <option value="45">广西</option>
                                                                        
                                                                    <option value="46">海南</option>
                                                                        
                                                                    <option value="50">重庆</option>
                                                                        
                                                                    <option value="51">四川</option>
                                                                        
                                                                    <option value="52">贵州</option>
                                                                        
                                                                    <option value="53">云南</option>
                                                                        
                                                                    <option value="54">西藏</option>
                                                                        
                                                                    <option value="61">陕西</option>
                                                                        
                                                                    <option value="62">甘肃</option>
                                                                        
                                                                    <option value="63">青海</option>
                                                                        
                                                                    <option value="64">宁夏</option>
                                                                        
                                                                    <option value="65">新疆</option>
                                                                        
                                                                    <option value="71">台湾</option>
                                                                        
                                                                    <option value="81">香港</option>
                                                                        
                                                                    <option value="82">澳门</option>
                                                                        
                                                                    <option value="98">美国</option>
                                                                        
                                                                    <option selected="selected" value="99">国外</option>
                                                                                                </select>
                            <select name="dq-City"><option selected="selected" value="0">不限</option><option value="9902">澳大利亚</option><option value="9903">加拿大</option><option value="9904">英国</option><option value="9905">日本</option><option value="9906">新加坡</option><option value="9907">德国</option><option value="9908">法国</option><option value="9909">韩国</option><option value="9910">比利时</option><option value="9911">新西兰</option><option value="9912">瑞典</option><option value="9913">瑞士</option><option value="9914">荷兰</option><option value="9915">阿联酋</option><option value="9916">芬兰</option><option value="9917">丹麦</option><option value="9918">泰国</option><option value="9919">西班牙</option><option value="9921">意大利</option><option value="9922">挪威</option><option value="9924">奥地利</option><option value="9925">爱尔兰</option><option value="9926">马来西亚</option><option value="9927">尼日利亚</option><option value="9928">俄罗斯</option><option value="9929">巴西</option><option value="9930">南非</option><option value="9931">葡萄牙</option><option value="9932">墨西哥</option><option value="9933">印尼</option><option value="9934">越南</option><option value="9935">以色列</option><option value="9936">科威特</option><option value="9937">希腊</option><option value="9938">匈牙利</option><option value="9939">阿根廷</option><option value="9940">印度</option><option value="9941">柬埔寨</option><option value="9942">菲律宾</option><option value="9943">埃及</option><option value="9944">土耳其</option><option value="9999">其他</option></select>
                        </div>
                        <button class="JY-sp-b" info="dq">确认</button>
                    </div>
                </div><div class="JY-item" data-index="3" data-type="nl">
                    <span class="JY-title">
                        <b class="JY-title-val">22到30岁</b>
                        <i class="JY-item-arr"></i>
                    </span>
                    <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('nl')"></span>
                    <div style="display: none;" class="JY-sp nl">
                        <h6>请选择年龄</h6>
                        <div class="JY-sp-i clear">
                            <select name="age1">
                                                                                                        <option value="18">18</option>
                                                                        
                                                                    <option value="19">19</option>
                                                                        
                                                                    <option value="20">20</option>
                                                                        
                                                                    <option value="21">21</option>
                                                                        
                                                                    <option selected="selected" value="22">22</option>
                                                                        
                                                                    <option value="23">23</option>
                                                                        
                                                                    <option value="24">24</option>
                                                                        
                                                                    <option value="25">25</option>
                                                                        
                                                                    <option value="26">26</option>
                                                                        
                                                                    <option value="27">27</option>
                                                                        
                                                                    <option value="28">28</option>
                                                                        
                                                                    <option value="29">29</option>
                                                                        
                                                                    <option value="30">30</option>
                                                                        
                                                                    <option value="31">31</option>
                                                                        
                                                                    <option value="32">32</option>
                                                                        
                                                                    <option value="33">33</option>
                                                                        
                                                                    <option value="34">34</option>
                                                                        
                                                                    <option value="35">35</option>
                                                                        
                                                                    <option value="36">36</option>
                                                                        
                                                                    <option value="37">37</option>
                                                                        
                                                                    <option value="38">38</option>
                                                                        
                                                                    <option value="39">39</option>
                                                                        
                                                                    <option value="40">40</option>
                                                                        
                                                                    <option value="41">41</option>
                                                                        
                                                                    <option value="42">42</option>
                                                                        
                                                                    <option value="43">43</option>
                                                                        
                                                                    <option value="44">44</option>
                                                                        
                                                                    <option value="45">45</option>
                                                                        
                                                                    <option value="46">46</option>
                                                                        
                                                                    <option value="47">47</option>
                                                                        
                                                                    <option value="48">48</option>
                                                                        
                                                                    <option value="49">49</option>
                                                                        
                                                                    <option value="50">50</option>
                                                                        
                                                                    <option value="51">51</option>
                                                                        
                                                                    <option value="52">52</option>
                                                                        
                                                                    <option value="53">53</option>
                                                                        
                                                                    <option value="54">54</option>
                                                                        
                                                                    <option value="55">55</option>
                                                                        
                                                                    <option value="56">56</option>
                                                                        
                                                                    <option value="57">57</option>
                                                                        
                                                                    <option value="58">58</option>
                                                                        
                                                                    <option value="59">59</option>
                                                                        
                                                                    <option value="60">60</option>
                                                                        
                                                                    <option value="61">61</option>
                                                                        
                                                                    <option value="62">62</option>
                                                                        
                                                                    <option value="63">63</option>
                                                                        
                                                                    <option value="64">64</option>
                                                                        
                                                                    <option value="65">65</option>
                                                                        
                                                                    <option value="66">66</option>
                                                                        
                                                                    <option value="67">67</option>
                                                                        
                                                                    <option value="68">68</option>
                                                                        
                                                                    <option value="69">69</option>
                                                                        
                                                                    <option value="70">70</option>
                                                                        
                                                                    <option value="71">71</option>
                                                                        
                                                                    <option value="72">72</option>
                                                                        
                                                                    <option value="73">73</option>
                                                                        
                                                                    <option value="74">74</option>
                                                                        
                                                                    <option value="75">75</option>
                                                                        
                                                                    <option value="76">76</option>
                                                                        
                                                                    <option value="77">77</option>
                                                                        
                                                                    <option value="78">78</option>
                                                                        
                                                                    <option value="79">79</option>
                                                                        
                                                                    <option value="80">80</option>
                                                                        
                                                                    <option value="81">81</option>
                                                                        
                                                                    <option value="82">82</option>
                                                                        
                                                                    <option value="83">83</option>
                                                                        
                                                                    <option value="84">84</option>
                                                                        
                                                                    <option value="85">85</option>
                                                                        
                                                                    <option value="86">86</option>
                                                                        
                                                                    <option value="87">87</option>
                                                                        
                                                                    <option value="88">88</option>
                                                                        
                                                                    <option value="89">89</option>
                                                                        
                                                                    <option value="90">90</option>
                                                                        
                                                                    <option value="91">91</option>
                                                                        
                                                                    <option value="92">92</option>
                                                                        
                                                                    <option value="93">93</option>
                                                                        
                                                                    <option value="94">94</option>
                                                                        
                                                                    <option value="95">95</option>
                                                                        
                                                                    <option value="96">96</option>
                                                                        
                                                                    <option value="97">97</option>
                                                                        
                                                                    <option value="98">98</option>
                                                                        
                                                                    <option value="99">99</option>
                                                                                                </select>
                            <span class="JY-t">至</span>
                            <select name="age2"><option value="0">不限</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option selected="selected" value="30">30</option><option value="31">31</option><option value="32">32</option><option value="33">33</option><option value="34">34</option><option value="35">35</option><option value="36">36</option><option value="37">37</option><option value="38">38</option><option value="39">39</option><option value="40">40</option><option value="41">41</option><option value="42">42</option><option value="43">43</option><option value="44">44</option><option value="45">45</option><option value="46">46</option><option value="47">47</option><option value="48">48</option><option value="49">49</option><option value="50">50</option><option value="51">51</option><option value="52">52</option><option value="53">53</option><option value="54">54</option><option value="55">55</option><option value="56">56</option><option value="57">57</option><option value="58">58</option><option value="59">59</option><option value="60">60</option><option value="61">61</option><option value="62">62</option><option value="63">63</option><option value="64">64</option><option value="65">65</option><option value="66">66</option><option value="67">67</option><option value="68">68</option><option value="69">69</option><option value="70">70</option><option value="71">71</option><option value="72">72</option><option value="73">73</option><option value="74">74</option><option value="75">75</option><option value="76">76</option><option value="77">77</option><option value="78">78</option><option value="79">79</option><option value="80">80</option><option value="81">81</option><option value="82">82</option><option value="83">83</option><option value="84">84</option><option value="85">85</option><option value="86">86</option><option value="87">87</option><option value="88">88</option><option value="89">89</option><option value="90">90</option><option value="91">91</option><option value="92">92</option><option value="93">93</option><option value="94">94</option><option value="95">95</option><option value="96">96</option><option value="97">97</option><option value="98">98</option><option value="99">99</option></select>
                            <span>岁</span>
                        </div>
                        <button class="JY-sp-b" info="nl">确认</button>
                    </div>
                </div><div class="JY-item" data-index="4" data-type="sg">
                    <span class="JY-title">
                        <b class="JY-title-val">155到170厘米</b>
                        <i class="JY-item-arr"></i>
                    </span>
                    <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('sg')"></span>
                    <div style="display: none;" class="JY-sp sg">
                        <h6>请选择身高</h6>
                        <div class="JY-sp-i clear">
                            <select name="height1">
                                                                                                        <option value="140">140</option>
                                                                        
                                                                    <option value="141">141</option>
                                                                        
                                                                    <option value="142">142</option>
                                                                        
                                                                    <option value="143">143</option>
                                                                        
                                                                    <option value="144">144</option>
                                                                        
                                                                    <option value="145">145</option>
                                                                        
                                                                    <option value="146">146</option>
                                                                        
                                                                    <option value="147">147</option>
                                                                        
                                                                    <option value="148">148</option>
                                                                        
                                                                    <option value="149">149</option>
                                                                        
                                                                    <option value="150">150</option>
                                                                        
                                                                    <option value="151">151</option>
                                                                        
                                                                    <option value="152">152</option>
                                                                        
                                                                    <option value="153">153</option>
                                                                        
                                                                    <option value="154">154</option>
                                                                        
                                                                    <option selected="selected" value="155">155</option>
                                                                        
                                                                    <option value="156">156</option>
                                                                        
                                                                    <option value="157">157</option>
                                                                        
                                                                    <option value="158">158</option>
                                                                        
                                                                    <option value="159">159</option>
                                                                        
                                                                    <option value="160">160</option>
                                                                        
                                                                    <option value="161">161</option>
                                                                        
                                                                    <option value="162">162</option>
                                                                        
                                                                    <option value="163">163</option>
                                                                        
                                                                    <option value="164">164</option>
                                                                        
                                                                    <option value="165">165</option>
                                                                        
                                                                    <option value="166">166</option>
                                                                        
                                                                    <option value="167">167</option>
                                                                        
                                                                    <option value="168">168</option>
                                                                        
                                                                    <option value="169">169</option>
                                                                        
                                                                    <option value="170">170</option>
                                                                        
                                                                    <option value="171">171</option>
                                                                        
                                                                    <option value="172">172</option>
                                                                        
                                                                    <option value="173">173</option>
                                                                        
                                                                    <option value="174">174</option>
                                                                        
                                                                    <option value="175">175</option>
                                                                        
                                                                    <option value="176">176</option>
                                                                        
                                                                    <option value="177">177</option>
                                                                        
                                                                    <option value="178">178</option>
                                                                        
                                                                    <option value="179">179</option>
                                                                        
                                                                    <option value="180">180</option>
                                                                        
                                                                    <option value="181">181</option>
                                                                        
                                                                    <option value="182">182</option>
                                                                        
                                                                    <option value="183">183</option>
                                                                        
                                                                    <option value="184">184</option>
                                                                        
                                                                    <option value="185">185</option>
                                                                        
                                                                    <option value="186">186</option>
                                                                        
                                                                    <option value="187">187</option>
                                                                        
                                                                    <option value="188">188</option>
                                                                        
                                                                    <option value="189">189</option>
                                                                        
                                                                    <option value="190">190</option>
                                                                        
                                                                    <option value="191">191</option>
                                                                        
                                                                    <option value="192">192</option>
                                                                        
                                                                    <option value="193">193</option>
                                                                        
                                                                    <option value="194">194</option>
                                                                        
                                                                    <option value="195">195</option>
                                                                        
                                                                    <option value="196">196</option>
                                                                        
                                                                    <option value="197">197</option>
                                                                        
                                                                    <option value="198">198</option>
                                                                        
                                                                    <option value="199">199</option>
                                                                        
                                                                    <option value="200">200</option>
                                                                        
                                                                    <option value="201">201</option>
                                                                        
                                                                    <option value="202">202</option>
                                                                        
                                                                    <option value="203">203</option>
                                                                        
                                                                    <option value="204">204</option>
                                                                        
                                                                    <option value="205">205</option>
                                                                        
                                                                    <option value="206">206</option>
                                                                        
                                                                    <option value="207">207</option>
                                                                        
                                                                    <option value="208">208</option>
                                                                        
                                                                    <option value="209">209</option>
                                                                        
                                                                    <option value="210">210</option>
                                                                        
                                                                    <option value="211">211</option>
                                                                        
                                                                    <option value="212">212</option>
                                                                        
                                                                    <option value="213">213</option>
                                                                        
                                                                    <option value="214">214</option>
                                                                        
                                                                    <option value="215">215</option>
                                                                        
                                                                    <option value="216">216</option>
                                                                        
                                                                    <option value="217">217</option>
                                                                        
                                                                    <option value="218">218</option>
                                                                        
                                                                    <option value="219">219</option>
                                                                        
                                                                    <option value="220">220</option>
                                                                        
                                                                    <option value="221">221</option>
                                                                        
                                                                    <option value="222">222</option>
                                                                        
                                                                    <option value="223">223</option>
                                                                        
                                                                    <option value="224">224</option>
                                                                        
                                                                    <option value="225">225</option>
                                                                        
                                                                    <option value="226">226</option>
                                                                        
                                                                    <option value="227">227</option>
                                                                        
                                                                    <option value="228">228</option>
                                                                        
                                                                    <option value="229">229</option>
                                                                        
                                                                    <option value="230">230</option>
                                                                        
                                                                    <option value="231">231</option>
                                                                        
                                                                    <option value="232">232</option>
                                                                        
                                                                    <option value="233">233</option>
                                                                        
                                                                    <option value="234">234</option>
                                                                        
                                                                    <option value="235">235</option>
                                                                        
                                                                    <option value="236">236</option>
                                                                        
                                                                    <option value="237">237</option>
                                                                        
                                                                    <option value="238">238</option>
                                                                        
                                                                    <option value="239">239</option>
                                                                        
                                                                    <option value="240">240</option>
                                                                        
                                                                    <option value="241">241</option>
                                                                        
                                                                    <option value="242">242</option>
                                                                        
                                                                    <option value="243">243</option>
                                                                        
                                                                    <option value="244">244</option>
                                                                        
                                                                    <option value="245">245</option>
                                                                        
                                                                    <option value="246">246</option>
                                                                        
                                                                    <option value="247">247</option>
                                                                        
                                                                    <option value="248">248</option>
                                                                        
                                                                    <option value="249">249</option>
                                                                        
                                                                    <option value="250">250</option>
                                                                        
                                                                    <option value="251">251</option>
                                                                        
                                                                    <option value="252">252</option>
                                                                        
                                                                    <option value="253">253</option>
                                                                        
                                                                    <option value="254">254</option>
                                                                        
                                                                    <option value="255">255</option>
                                                                        
                                                                    <option value="256">256</option>
                                                                        
                                                                    <option value="257">257</option>
                                                                        
                                                                    <option value="258">258</option>
                                                                        
                                                                    <option value="259">259</option>
                                                                        
                                                                    <option value="260">260</option>
                                                                                                </select>
                            <span class="JY-t">至</span>
                            <select name="height2"><option value="0">不限</option><option value="155">155</option><option value="156">156</option><option value="157">157</option><option value="158">158</option><option value="159">159</option><option value="160">160</option><option value="161">161</option><option value="162">162</option><option value="163">163</option><option value="164">164</option><option value="165">165</option><option value="166">166</option><option value="167">167</option><option value="168">168</option><option value="169">169</option><option selected="selected" value="170">170</option><option value="171">171</option><option value="172">172</option><option value="173">173</option><option value="174">174</option><option value="175">175</option><option value="176">176</option><option value="177">177</option><option value="178">178</option><option value="179">179</option><option value="180">180</option><option value="181">181</option><option value="182">182</option><option value="183">183</option><option value="184">184</option><option value="185">185</option><option value="186">186</option><option value="187">187</option><option value="188">188</option><option value="189">189</option><option value="190">190</option><option value="191">191</option><option value="192">192</option><option value="193">193</option><option value="194">194</option><option value="195">195</option><option value="196">196</option><option value="197">197</option><option value="198">198</option><option value="199">199</option><option value="200">200</option><option value="201">201</option><option value="202">202</option><option value="203">203</option><option value="204">204</option><option value="205">205</option><option value="206">206</option><option value="207">207</option><option value="208">208</option><option value="209">209</option><option value="210">210</option><option value="211">211</option><option value="212">212</option><option value="213">213</option><option value="214">214</option><option value="215">215</option><option value="216">216</option><option value="217">217</option><option value="218">218</option><option value="219">219</option><option value="220">220</option><option value="221">221</option><option value="222">222</option><option value="223">223</option><option value="224">224</option><option value="225">225</option><option value="226">226</option><option value="227">227</option><option value="228">228</option><option value="229">229</option><option value="230">230</option><option value="231">231</option><option value="232">232</option><option value="233">233</option><option value="234">234</option><option value="235">235</option><option value="236">236</option><option value="237">237</option><option value="238">238</option><option value="239">239</option><option value="240">240</option><option value="241">241</option><option value="242">242</option><option value="243">243</option><option value="244">244</option><option value="245">245</option><option value="246">246</option><option value="247">247</option><option value="248">248</option><option value="249">249</option><option value="250">250</option><option value="251">251</option><option value="252">252</option><option value="253">253</option><option value="254">254</option><option value="255">255</option><option value="256">256</option><option value="257">257</option><option value="258">258</option><option value="259">259</option><option value="260">260</option></select>
                            <span>厘米</span>
                        </div>
                        <button class="JY-sp-b" info="sg">确认</button>
                    </div>
                </div>
<!--                 <div id="ihasPhoto" info="23" class="JY-item" data-index="23" data-type="zp"> -->
<!--                     <span class="JY-title"> -->
<!--                         <b class="JY-title-val">有照片</b> -->
<!--                         <i class="JY-item-arr"></i> -->
<!--                     </span> -->
<!--                     <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('zp')"></span> -->
<!--                     <div style="display: none;" class="JY-sp"> -->
<!--                         <h6>请选择照片</h6> -->
<!--                         <div class="JY-sp-i clear"> -->
<!--                             <select name="hasPhoto"> -->
<!--                                 <option value="1" selected="selected">有照片</option> -->
<!--                             </select> -->
<!--                         </div> -->
<!--                         <button class="JY-sp-b" info="zp">确认</button> -->
<!--                     </div> -->
<!--                 </div> -->
                </dd>
            <dd style="display: block;" class="mb10">
                <a id="JY-more" class="JY-add" href="#">设置更多条件</a>
            </dd>
        </dl>
        <!--/已选择-->
        <!--更多选择-->
        <dl style="display: none;" class="JY-select clear">
            <dt class="JY-lt">更多选择：</dt>
            <dd id="more_to_sel" class="JY-select-list clear">
                <!--地区-->
                
                <!--/地区-->
                <!--年龄-->
                
                <!--/年龄-->
                <!--身高-->
                
                <!--/身高-->
                <!--婚史-->
<!--                 <div class="JY-item" data-index="5" data-type="hs"> -->
<!--                     <span class="JY-title"> -->
<!--                         <b class="JY-title-val">婚史</b> -->
<!--                         <i class="JY-item-arr"></i> -->
<!--                     </span> -->
<!--                     <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('hs')"></span> -->
<!--                     <div class="JY-sp"> -->
<!--                         <h6>请选择婚史</h6> -->
<!--                         <div class="JY-sp-i clear"> -->
<!--                             <select name="Marital"> -->
<!--                                                                                                         <option selected="selected" value="1">未婚</option> -->
                                                                        
<!--                                                                     <option value="2">离异</option> -->
                                                                        
<!--                                                                     <option value="3">丧偶</option> -->
                                                                        
<!--                                                                     <option value="4">未婚、离异</option> -->
                                                                        
<!--                                                                     <option value="5">未婚、丧偶</option> -->
                                                                        
<!--                                                                     <option value="6">离异、丧偶</option> -->
<!--                                                                                                 </select> -->
<!--                         </div> -->
<!--                         <button class="JY-sp-b" info="hs">确认</button> -->
<!--                     </div> -->
<!--                 </div> -->
                <!--/婚史-->
                <!--学历-->
                     <div class="JY-item" data-index="6" data-type="xl">
                        <span class="JY-title">
                            <b class="JY-title-val">学历</b>
                            <i class="JY-item-arr"></i>
                        </span>
                        <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('xl')"></span>
                        <div class="JY-sp xl">
                            <h6 class="JY-sp-t">请选择学历</h6>
                            <div class="JY-sp-i JY-ys clear">
                                <select name="Educational">
                                                                                                        <option selected="selected" value="10">中专或相当学历</option>
                                                                        
                                                                    <option value="20">大专</option>
                                                                        
                                                                    <option value="30">本科</option>
                                                                        
                                                                    <option value="40">双学士</option>
                                                                        
                                                                    <option value="50">硕士</option>
                                                                        
                                                                    <option value="60">博士</option>
                                                                        
                                                                    <option value="70">博士后</option>
                                                                                                    </select>

                                <label>
                                    <input name="" id="select-edu" type="checkbox">
                                    <span>以上</span>
                                </label>
                            </div>
                            <button class="JY-sp-b" info="xl">确认</button>
                        </div>
                    </div>
                <!--/学历-->
                <!--月薪-->
                <div class="JY-item" data-index="7" data-type="yx">
                    <span class="JY-title">
                        <b class="JY-title-val">月薪</b>
                        <i class="JY-item-arr"></i>
                    </span>
                    <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('yx')"></span>
                    <div class="JY-sp yx">
                        <h6 class="JY-sp-t">请选择月薪</h6>
                        <div class="JY-sp-i  JY-ys clear">
                            <select name="Salary">
                                                                                                        <option selected="selected" value="10">2000元以下</option>
                                                                        
                                                                    <option value="20">2000～5000元</option>
                                                                        
                                                                    <option value="30">5000～10000元</option>
                                                                        
                                                                    <option value="40">10000～20000元</option>
                                                                        
                                                                    <option value="50">20000元以上</option>
                                                                                                </select>

                            <label>
                                <input name="" id="select-sal" type="checkbox">
                                <span>以上</span>
                            </label>
                        </div>
                        <button class="JY-sp-b" info="yx">确认</button>
                    </div>
                </div>
                <!--/月薪-->
                <!--住房-->
<!--                     <div class="JY-item" data-index="8" data-type="zf">
                        <span class="JY-title">
                            <b class="JY-title-val">住房</b>
                            <i class="JY-item-arr"></i>
                        </span>
                        <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('zf')"></span>
                        <div class="JY-sp">
                            <h6>请选择住房</h6>
                            <div class="JY-sp-i clear">
                                <select name="Housing">
                                                                                                        <option selected="selected" value="1">未购房</option>
                                                                        
                                                                    <option value="8">需要时购置</option>
                                                                        
                                                                    <option value="2">已购房</option>
                                                                        
                                                                    <option value="3">与人合租</option>
                                                                        
                                                                    <option value="4">独自租房</option>
                                                                        
                                                                    <option value="5">与父母同住</option>
                                                                        
                                                                    <option value="6">住亲朋家</option>
                                                                        
                                                                    <option value="7">住单位房</option>
                                                                                                    </select>
                            </div>
                            <button class="JY-sp-b" info="zf">确认</button>
                        </div>
                    </div> -->
                <!--/住房-->
                <!--购车-->
                <!-- <div class="JY-item" data-index="9" data-type="gc">
                    <span class="JY-title">
                        <b class="JY-title-val">购车</b>
                        <i class="JY-item-arr"></i>
                    </span>
                    <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('gc')"></span>
                    <div class="JY-sp gc">
                        <h6>请选择购车情况</h6>
                        <div class="JY-sp-i clear">
                            <select name="Car">
                                                                                                        <option selected="selected" value="1">暂未购车</option>
                                                                        
                                                                    <option value="2">已经购车</option>
                                                                                                </select>
                        </div>
                        <button class="JY-sp-b" info="gc">确认</button>
                    </div>
                </div>
                /购车
                有无子女
                <div class="JY-item" data-index="10" data-type="ywzn">
                    <span class="JY-title">
                        <b class="JY-title-val">有无子女</b>
                        <i class="JY-item-arr"></i>
                    </span>
                    <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('ywzn')"></span>
                    <div class="JY-sp ywzn">
                        <h6>请选择有无子女</h6>
                        <div class="JY-sp-i clear">
                            <select name="Integrity">
                                                                                                        <option selected="selected" value="1">无小孩</option>
                                                                        
                                                                    <option value="2">有小孩归自己</option>
                                                                        
                                                                    <option value="3">有小孩归对方</option>
                                                                                                </select>
                        </div>
                        <button class="JY-sp-b" info="ywzn">确认</button>
                    </div>
                </div>
                /有无子女
                职业
                <div class="JY-item" data-index="11" data-type="zy">
                    <span class="JY-title">
                        <b class="JY-title-val">职业</b>
                        <i class="JY-item-arr"></i>
                    </span>
                    <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('zy')"></span>
                    <div class="JY-sp zy">
                        <h6>请选择职业</h6>
                        <div class="JY-sp-i clear">
                            <select name="Profession">
                                                                                                        <option selected="selected" value="1">在校学生</option>
                                                                        
                                                                    <option value="2">计算机/互联网/IT</option>
                                                                        
                                                                    <option value="3">电子/半导体/仪表仪器</option>
                                                                        
                                                                    <option value="4">通信技术</option>
                                                                        
                                                                    <option value="5">销售</option>
                                                                        
                                                                    <option value="6">市场拓展</option>
                                                                        
                                                                    <option value="7">公关/商务</option>
                                                                        
                                                                    <option value="8">采购/贸易</option>
                                                                        
                                                                    <option value="9">客户服务/技术支持</option>
                                                                        
                                                                    <option value="10">人力资源/行政/后勤</option>
                                                                        
                                                                    <option value="11">高级管理</option>
                                                                        
                                                                    <option value="12">生产/加工/制造</option>
                                                                        
                                                                    <option value="13">质控/安检</option>
                                                                        
                                                                    <option value="14">工程机械</option>
                                                                        
                                                                    <option value="15">技工</option>
                                                                        
                                                                    <option value="16">财会/审计/统计</option>
                                                                        
                                                                    <option value="17">金融/证券/投资/保险</option>
                                                                        
                                                                    <option value="18">房地产/装修/物业</option>
                                                                        
                                                                    <option value="19">仓储/物流</option>
                                                                        
                                                                    <option value="43">交通/运输</option>
                                                                        
                                                                    <option value="20">普通劳动力/家政服务</option>
                                                                        
                                                                    <option value="21">普通服务行业</option>
                                                                        
                                                                    <option value="22">航空服务业</option>
                                                                        
                                                                    <option value="23">教育/培训</option>
                                                                        
                                                                    <option value="24">咨询/顾问</option>
                                                                        
                                                                    <option value="25">学术/科研</option>
                                                                        
                                                                    <option value="26">法律</option>
                                                                        
                                                                    <option value="27">设计/创意</option>
                                                                        
                                                                    <option value="28">文学/传媒/影视</option>
                                                                        
                                                                    <option value="29">餐饮/旅游</option>
                                                                        
                                                                    <option value="30">化工</option>
                                                                        
                                                                    <option value="31">能源/地质勘查</option>
                                                                        
                                                                    <option value="32">医疗/护理</option>
                                                                        
                                                                    <option value="33">保健/美容</option>
                                                                        
                                                                    <option value="34">生物/制药/医疗器械</option>
                                                                        
                                                                    <option value="35">体育工作者</option>
                                                                        
                                                                    <option value="36">翻译</option>
                                                                        
                                                                    <option value="37">公务员/国家干部</option>
                                                                        
                                                                    <option value="38">私营业主</option>
                                                                        
                                                                    <option value="39">农/林/牧/渔业</option>
                                                                        
                                                                    <option value="40">警察/其它</option>
                                                                        
                                                                    <option value="41">自由职业者</option>
                                                                        
                                                                    <option value="42">其他</option>
                                                                                                </select>
                        </div>
                        <button class="JY-sp-b" info="zy">确认</button>
                    </div>
                </div>
                /职业
                公司类型
                <div class="JY-item" data-index="12" data-type="gslx">
                    <span class="JY-title">
                        <b class="JY-title-val">公司类型</b>
                        <i class="JY-item-arr"></i>
                    </span>
                    <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('gslx')"></span>
                    <div class="JY-sp gslx">
                        <h6>请选择公司类型</h6>
                        <div class="JY-sp-i clear">
                            <select name="Company">
                                                                                                        <option selected="selected" value="1">政府机关</option>
                                                                        
                                                                    <option value="2">事业单位 </option>
                                                                        
                                                                    <option value="3">外企企业 </option>
                                                                        
                                                                    <option value="4">世界500强 </option>
                                                                        
                                                                    <option value="5">上市公司 </option>
                                                                        
                                                                    <option value="6">国有企业 </option>
                                                                        
                                                                    <option value="7">私营企业 </option>
                                                                        
                                                                    <option value="8">自有公司</option>
                                                                                                </select>
                        </div>
                        <button class="JY-sp-b" info="gslx">确认</button>
                    </div>
                </div> -->
                <!--/公司类型-->
                <!--户口地区-->
                <!-- <div class="JY-item" data-index="13" data-type="hkdq">
                    <span class="JY-title">
                        <b class="JY-title-val">户口地区</b>
                        <i class="JY-item-arr"></i>
                    </span>
                    <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('hkdq')"></span>
                    <div class="JY-sp dz">
                        <h6>请选择户口地区</h6>
                        <div class="JY-sp-i clear">
                            <select name="hkdq-Province">
                                                                                                        <option selected="selected" value="11">北京</option>
                                                                        
                                                                    <option value="12">天津</option>
                                                                        
                                                                    <option value="13">河北</option>
                                                                        
                                                                    <option value="14">山西</option>
                                                                        
                                                                    <option value="15">内蒙古</option>
                                                                        
                                                                    <option value="21">辽宁</option>
                                                                        
                                                                    <option value="22">吉林</option>
                                                                        
                                                                    <option value="23">黑龙江</option>
                                                                        
                                                                    <option value="31">上海</option>
                                                                        
                                                                    <option value="32">江苏</option>
                                                                        
                                                                    <option value="33">浙江</option>
                                                                        
                                                                    <option value="34">安徽</option>
                                                                        
                                                                    <option value="35">福建</option>
                                                                        
                                                                    <option value="36">江西</option>
                                                                        
                                                                    <option value="37">山东</option>
                                                                        
                                                                    <option value="41">河南</option>
                                                                        
                                                                    <option value="42">湖北</option>
                                                                        
                                                                    <option value="43">湖南</option>
                                                                        
                                                                    <option value="44">广东</option>
                                                                        
                                                                    <option value="45">广西</option>
                                                                        
                                                                    <option value="46">海南</option>
                                                                        
                                                                    <option value="50">重庆</option>
                                                                        
                                                                    <option value="51">四川</option>
                                                                        
                                                                    <option value="52">贵州</option>
                                                                        
                                                                    <option value="53">云南</option>
                                                                        
                                                                    <option value="54">西藏</option>
                                                                        
                                                                    <option value="61">陕西</option>
                                                                        
                                                                    <option value="62">甘肃</option>
                                                                        
                                                                    <option value="63">青海</option>
                                                                        
                                                                    <option value="64">宁夏</option>
                                                                        
                                                                    <option value="65">新疆</option>
                                                                        
                                                                    <option value="71">台湾</option>
                                                                        
                                                                    <option value="81">香港</option>
                                                                        
                                                                    <option value="82">澳门</option>
                                                                        
                                                                    <option value="98">美国</option>
                                                                        
                                                                    <option value="99">国外</option>
                                                                                                </select>
                            <select name="hkdq-City">
                                <option selected="selected" value="0">不限</option><option value="1101">东城</option><option value="1102">西城</option><option value="1103">崇文</option><option value="1104">宣武</option><option value="1105">朝阳</option><option value="1106">丰台</option><option value="1107">石景山</option><option value="1108">海淀</option><option value="1109">门头沟</option><option value="1111">房山</option><option value="1112">通州</option><option value="1113">顺义</option><option value="1121">昌平</option><option value="1124">大兴</option><option value="1126">平谷</option><option value="1127">怀柔</option><option value="1128">密云</option><option value="1129">延庆</option>
                            </select>
                        </div>
                        <button class="JY-sp-b" info="hkdq">确认</button>
                    </div>
                </div>
                /户口地区
                籍贯
                <div class="JY-item" data-index="14" data-type="jg">
                    <span class="JY-title">
                        <b class="JY-title-val">籍贯</b>
                        <i class="JY-item-arr"></i>
                    </span>
                    <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('jg')"></span>
                    <div class="JY-sp dz">
                        <h6>请选择籍贯</h6>
                        <div class="JY-sp-i clear">
                            <select name="jg-Province">
                                                                                                        <option selected="selected" value="11">北京</option>
                                                                        
                                                                    <option value="12">天津</option>
                                                                        
                                                                    <option value="13">河北</option>
                                                                        
                                                                    <option value="14">山西</option>
                                                                        
                                                                    <option value="15">内蒙古</option>
                                                                        
                                                                    <option value="21">辽宁</option>
                                                                        
                                                                    <option value="22">吉林</option>
                                                                        
                                                                    <option value="23">黑龙江</option>
                                                                        
                                                                    <option value="31">上海</option>
                                                                        
                                                                    <option value="32">江苏</option>
                                                                        
                                                                    <option value="33">浙江</option>
                                                                        
                                                                    <option value="34">安徽</option>
                                                                        
                                                                    <option value="35">福建</option>
                                                                        
                                                                    <option value="36">江西</option>
                                                                        
                                                                    <option value="37">山东</option>
                                                                        
                                                                    <option value="41">河南</option>
                                                                        
                                                                    <option value="42">湖北</option>
                                                                        
                                                                    <option value="43">湖南</option>
                                                                        
                                                                    <option value="44">广东</option>
                                                                        
                                                                    <option value="45">广西</option>
                                                                        
                                                                    <option value="46">海南</option>
                                                                        
                                                                    <option value="50">重庆</option>
                                                                        
                                                                    <option value="51">四川</option>
                                                                        
                                                                    <option value="52">贵州</option>
                                                                        
                                                                    <option value="53">云南</option>
                                                                        
                                                                    <option value="54">西藏</option>
                                                                        
                                                                    <option value="61">陕西</option>
                                                                        
                                                                    <option value="62">甘肃</option>
                                                                        
                                                                    <option value="63">青海</option>
                                                                        
                                                                    <option value="64">宁夏</option>
                                                                        
                                                                    <option value="65">新疆</option>
                                                                        
                                                                    <option value="71">台湾</option>
                                                                        
                                                                    <option value="81">香港</option>
                                                                        
                                                                    <option value="82">澳门</option>
                                                                        
                                                                    <option value="98">美国</option>
                                                                        
                                                                    <option value="99">国外</option>
                                                                                                </select>
                            <select name="jg-City">
                                <option selected="selected" value="0">不限</option><option value="1101">东城</option><option value="1102">西城</option><option value="1103">崇文</option><option value="1104">宣武</option><option value="1105">朝阳</option><option value="1106">丰台</option><option value="1107">石景山</option><option value="1108">海淀</option><option value="1109">门头沟</option><option value="1111">房山</option><option value="1112">通州</option><option value="1113">顺义</option><option value="1121">昌平</option><option value="1124">大兴</option><option value="1126">平谷</option><option value="1127">怀柔</option><option value="1128">密云</option><option value="1129">延庆</option>
                            </select>
                        </div>
                        <button class="JY-sp-b" info="jg">确认</button>
                    </div>
                </div> -->
                <!--/籍贯-->
                <!--民族-->
               <!--  <div class="JY-item" data-index="15" data-type="mz">
                    <span class="JY-title">
                        <b class="JY-title-val">民族</b>
                        <i class="JY-item-arr"></i>
                    </span>
                    <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('mz')"></span>
                    <div class="JY-sp mz">
                        <h6>请选择民族</h6>
                        <div class="JY-sp-i clear">
                            <select name="Nation">
                                                                                                       <option selected="selected" value="1">汉族</option>
                                                                        
                                                                    <option value="2">藏族</option>
                                                                        
                                                                    <option value="3">朝鲜族</option>
                                                                        
                                                                    <option value="4">蒙古族</option>
                                                                        
                                                                    <option value="5">回族</option>
                                                                        
                                                                    <option value="6">满族</option>
                                                                        
                                                                    <option value="7">维吾尔族</option>
                                                                        
                                                                    <option value="8">壮族</option>
                                                                        
                                                                    <option value="9">彝族</option>
                                                                        
                                                                    <option value="10">苗族</option>
                                                                        
                                                                    <option value="11">其它</option>
                                                                                                </select>
                        </div>
                        <button class="JY-sp-b" info="mz">确认</button>
                    </div>
                </div> -->
                <!--/民族-->
                <!--血型-->
                    <!-- <div class="JY-item" data-index="16" data-type="xx">
                        <span class="JY-title">
                            <b class="JY-title-val">血型</b>
                            <i class="JY-item-arr"></i>
                        </span>
                        <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('xx')"></span>
                        <div class="JY-sp xx">
                            <h6>请选择血型</h6>
                            <div class="JY-sp-i clear">
                                <select name="Blood">
                                                                                                        <option selected="selected" value="1">A型</option>
                                                                        
                                                                    <option value="2">B型</option>
                                                                        
                                                                    <option value="3">O型</option>
                                                                        
                                                                    <option value="4">AB型</option>
                                                                        
                                                                    <option value="5">其它</option>
                                                                        
                                                                    <option value="6">保密</option>
                                                                                                    </select>
                            </div>
                            <button class="JY-sp-b" info="xx">确认</button>
                        </div>
                    </div>
                /血型
                生肖
                <div id="sel_sx" class="JY-item" data-index="17" data-type="sx">
                    <span class="JY-title">
                        <b class="JY-title-val">生肖</b>
                        <i class="JY-item-arr"></i>
                    </span>
                    <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('sx')"></span>
                    <div class="JY-sp sx">
                        <h6>请选择生肖</h6>
                        <div class="JY-sp-i JY-la pb0 clear" id="zodiac"><label><input name="sx" value="猴" type="checkbox"><span>猴</span></label><label><input name="sx" value="羊" type="checkbox"><span>羊</span></label><label><input name="sx" value="马" type="checkbox"><span>马</span></label><label><input name="sx" value="蛇" type="checkbox"><span>蛇</span></label><label><input name="sx" value="龙" type="checkbox"><span>龙</span></label><label><input name="sx" value="兔" type="checkbox"><span>兔</span></label><label><input name="sx" value="虎" type="checkbox"><span>虎</span></label><label><input name="sx" value="牛" type="checkbox"><span>牛</span></label><label><input name="sx" value="鼠" type="checkbox"><span>鼠</span></label><label><input name="sx" value="猪" type="checkbox"><span>猪</span></label></div>
                        <button class="JY-sp-b" info="sx">确认</button>
                    </div>
                </div>
                /生肖
                星座
                    <div class="JY-item" data-index="18" data-type="xz">
                        <span class="JY-title">
                            <b class="JY-title-val">星座</b>
                            <i class="JY-item-arr"></i>
                        </span>
                        <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('xz')"></span>
                        <div class="JY-sp xz">
                            <h6>请选择星座</h6>
                            <div class="JY-sp-i JY-la pb0 clear">
                                                            <label><input value="白羊座" name="xz" type="checkbox"><span>白羊座</span></label>
                                                            <label><input value="金牛座" name="xz" type="checkbox"><span>金牛座</span></label>
                                                            <label><input value="双子座" name="xz" type="checkbox"><span>双子座</span></label>
                                                            <label><input value="巨蟹座" name="xz" type="checkbox"><span>巨蟹座</span></label>
                                                            <label><input value="狮子座" name="xz" type="checkbox"><span>狮子座</span></label>
                                                            <label><input value="处女座" name="xz" type="checkbox"><span>处女座</span></label>
                                                            <label><input value="天秤座" name="xz" type="checkbox"><span>天秤座</span></label>
                                                            <label><input value="天蝎座" name="xz" type="checkbox"><span>天蝎座</span></label>
                                                            <label><input value="射手座" name="xz" type="checkbox"><span>射手座</span></label>
                                                            <label><input value="魔羯座" name="xz" type="checkbox"><span>魔羯座</span></label>
                                                            <label><input value="水瓶座" name="xz" type="checkbox"><span>水瓶座</span></label>
                                                            <label><input value="双鱼座" name="xz" type="checkbox"><span>双鱼座</span></label>
                                                        </div>
                            <button class="JY-sp-b" info="xz">确认</button>
                        </div>
                    </div>
                /星座
                宗教信仰
                <div class="JY-item" data-index="19" data-type="zjxy">
                    <span class="JY-title">
                        <b class="JY-title-val">宗教信仰</b>
                        <i class="JY-item-arr"></i>
                    </span>
                    <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('zjxy')"></span>
                    <div class="JY-sp zjxy">
                        <h6>请选择宗教信仰</h6>
                        <div class="JY-sp-i clear">
                            <select name="Religion">
                                                                                                        <option selected="selected" value="1">无宗教信仰</option>
                                                                        
                                                                    <option value="2">大乘佛教显宗</option>
                                                                        
                                                                    <option value="3">大乘佛教密宗</option>
                                                                        
                                                                    <option value="17">大乘佛教净宗</option>
                                                                        
                                                                    <option value="4">小乘佛教</option>
                                                                        
                                                                    <option value="5">道教</option>
                                                                        
                                                                    <option value="6">儒教</option>
                                                                        
                                                                    <option value="7">基督教天主教派</option>
                                                                        
                                                                    <option value="8">基督教东正教派</option>
                                                                        
                                                                    <option value="9">基督教新教派</option>
                                                                        
                                                                    <option value="10">犹太教</option>
                                                                        
                                                                    <option value="11">伊斯兰教什叶派</option>
                                                                        
                                                                    <option value="12">伊斯兰教逊尼派</option>
                                                                        
                                                                    <option value="13">印度教</option>
                                                                        
                                                                    <option value="14">神道教</option>
                                                                        
                                                                    <option value="15">萨满教</option>
                                                                        
                                                                    <option value="16">其它宗教信仰</option>
                                                                                                </select>
                        </div>
                        <button class="JY-sp-b" info="zjxy">确认</button>
                    </div>
                </div>
                /宗教信仰
                诚信等级
                <div class="JY-item" data-index="20" data-type="cxdj">
                    <span class="JY-title">
                        <b class="JY-title-val">诚信等级</b>
                        <i class="JY-item-arr"></i>
                    </span>
                    <span title="点击&quot;x&quot;取消此项限制" class="JY-close" onclick="deleteResult('cxdj')"></span>
                    <div class="JY-sp cxdj">
                        <h6>请选择诚信等级</h6>
                        <div class="JY-sp-i clear">
                            <select name="Integrity">
                                                                                                        <option selected="selected" value="1">一星级以上</option>
                                                                        
                                                                    <option value="2">二星级以上</option>
                                                                        
                                                                    <option value="3">三星级以上</option>
                                                                        
                                                                    <option value="4">四星级以上</option>
                                                                        
                                                                    <option value="5">五星级以上</option>
                                                                                                </select>
                        </div>
                        <button class="JY-sp-b" info="cxdj">确认</button>
                    </div>
                </div> -->
                <!--/诚信等级-->
                <!-- 有无照片-->
                
                <!-- /有无照片-->
            </dd>
            <dd class="mb10">
                <a id="JY-collapse" class="JY-add" href="#">收起</a>
            </dd>
        </dl>
        <!--/更多选择-->
    </div>

    <!--filter-->
    <div class="JY-filter">
        <ul class="clear JY-filter-1">
            <li class="gray" id="filter-zx">
                <label>
                    <input disabled="disabled" name="" id="vips" onclick="newSingClick(26,'vips')" type="checkbox">
                    <span>看信/钻石会员</span>
                </label>
                <img src="resources/img/icon_services_16_6.jpg" alt="" height="16" width="16">
                <!--vip-tip-->
                <div class="JY-vip-tip">
                    <div class="t"></div>
                    <div class="m">
                        <h3><a href="javascript:vipIntroTipHide()">close</a>世纪佳缘提示</h3>
                        <div class="m_c">
                            <p id="vip_3" style="display: none;"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">开通VIP会员</a>即可保存搜索条件，方便您快捷搜索喜欢的人！即可享受其他<font style="color:#e8006d;font-weight:bold;">22</font>项VIP会员给力交友特权。</p>
                            <p id="vip_1" style=""><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">开通VIP会员</a>开通VIP会员即可搜索看信包月及钻石会员，您发的信他们免费看，回信率更高哦！即可享受其他<font style="color:#e8006d;font-weight:bold;">22</font>项VIP会员给力交友特权。</p>
                            <p id="vip_2" style="display: none;"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">开通VIP会员</a>即可搜索看信包月及钻石会员，您发的信他们免费看，回信率更高哦！即可享受其他<font style="color:#e8006d;font-weight:bold;">22</font>项VIP会员给力交友特权。</p>
                            <ul class="fn-clear mt15">
                                <li class="l9 gray" style="background-position: 0px -150px;"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">查看谁看过我</a></li>
                                <li class="l7 mr0 gray"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">查看对方最近登录时间</a></li>
                                <li class="l4 gray"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">专属身份标识</a></li>
                                <li class="l3 mr0 gray"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">发出信件对方信箱中置顶</a></li>
                                <li class="l8 gray" style="background-position:0 -126px;"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">上传更多照片</a></li> 
                                <li class="l6 mr0 gray"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">专属特价礼物</a></li>
                            </ul>
                            <div class="pri_2 mt15">
                                <a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">开通VIP会员服务</a>
                            </div>
                        </div>
                    </div>
                    <div class="b"></div>
                </div>
                <!--/vip-tip-->
            </li>
            <li class="gray" id="filter-lx">
                <label>
                    <input disabled="disabled" name="" id="remove_contact" onclick="newSingClick(21,'remove_contact')" type="checkbox">
                    <span>仅显示未联系过的会员</span>
                </label>
                <img src="resources/img/icon_services_16_6.jpg" alt="" height="16" width="16">
                <!--vip-tip-->
                <div class="JY-vip-tip">
                    <div class="t"></div>
                    <div class="m">
                        <h3><a href="javascript:vipIntroTipHide()">close</a>世纪佳缘提示</h3>
                        <div class="m_c">
                            <p id="vip_3" style="display: none;"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">开通VIP会员</a>即可保存搜索条件，方便您快捷搜索喜欢的人！即可享受其他<font style="color:#e8006d;font-weight:bold;">22</font>项VIP会员给力交友特权。</p>
                            <p id="vip_1" style=""><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">开通VIP会员</a>开通VIP会员即可搜索未联系过的会员，避免重复发信，提高交友效率哦！即可享受其他<font style="color:#e8006d;font-weight:bold;">22</font>项VIP会员给力交友特权。</p>
                            <p id="vip_2" style="display: none;"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">开通VIP会员</a>即可搜索看信包月及钻石会员，您发的信他们免费看，回信率更高哦！即可享受其他<font style="color:#e8006d;font-weight:bold;">22</font>项VIP会员给力交友特权。</p>
                            <ul class="fn-clear mt15">
                                <li class="l9 gray" style="background-position: 0px -150px;"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">查看谁看过我</a></li>
                                <li class="l7 mr0 gray"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">查看对方最近登录时间</a></li>
                                <li class="l4 gray"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">专属身份标识</a></li>
                                <li class="l3 mr0 gray"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">发出信件对方信箱中置顶</a></li>
                                <li class="l8 gray" style="background-position:0 -126px;"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">上传更多照片</a></li> 
                                <li class="l6 mr0 gray"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">专属特价礼物</a></li>
                            </ul>
                            <div class="pri_2 mt15">
                                <a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">开通VIP会员服务</a>
                            </div>
                        </div>
                    </div>
                    <div class="b"></div>
                </div>
                <!--/vip-tip-->
            </li>
            <li class="gray" id="filter-fh">
                <label>
                    <input disabled="disabled" name="" id="match_type" onclick="newSingClick(20,'match_type')" type="checkbox">
                    <span>我符合对方的择友要求</span>
                </label>
                <img src="resources/img/icon_services_16_6.jpg" alt="" height="16" width="16">
                <!--vip-tip-->
                <div class="JY-vip-tip">
                    <div class="t"></div>
                    <div class="m">
                        <h3><a href="javascript:vipIntroTipHide()">close</a>世纪佳缘提示</h3>
                        <div class="m_c">
                            <p id="vip_3" style="display: none;"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">开通VIP会员</a>即可保存搜索条件，方便您快捷搜索喜欢的人！即可享受其他<font style="color:#e8006d;font-weight:bold;">22</font>项VIP会员给力交友特权。</p>
                            <p id="vip_1" style=""><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">开通VIP会员</a>开通VIP会员即可搜索符合对方择偶要求的会员，双相匹配，快速锁定心仪的TA！即可享受其他<font style="color:#e8006d;font-weight:bold;">22</font>项VIP会员给力交友特权。</p>
                            <p id="vip_2" style="display: none;"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">开通VIP会员</a>即可搜索看信包月及钻石会员，您发的信他们免费看，回信率更高哦！即可享受其他<font style="color:#e8006d;font-weight:bold;">22</font>项VIP会员给力交友特权。</p>
                            <ul class="fn-clear mt15">
                                <li class="l9 gray" style="background-position: 0px -150px;"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">查看谁看过我</a></li>
                                <li class="l7 mr0 gray"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">查看对方最近登录时间</a></li>
                                <li class="l4 gray"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">专属身份标识</a></li>
                                <li class="l3 mr0 gray"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">发出信件对方信箱中置顶</a></li>
                              <li class="l8 gray" style="background-position:0 -126px;"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">上传更多照片</a></li>
                                <li class="l6 mr0 gray"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">专属特价礼物</a></li>
                            </ul>
                            <div class="pri_2 mt15">
                                <a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">开通VIP会员服务</a>
                            </div>
                        </div>
                    </div>
                    <div class="b"></div>
                </div>
                <!--/vip-tip-->
            </li>
            <li id="filter-bc" class="JY-bb gray">
                <div class="JY-bb-t clear">
                    <label>
                        <input disabled="disabled" type="checkbox">
                        <span>保存搜索条件</span>
                    </label>
                    <img src="resources/img/icon_services_16_6.jpg" alt="" height="16" width="16">
                    <!--vip-tip-->
                <div class="JY-vip-tip">
                    <div class="t"></div>
                    <div class="m">
                        <h3><a href="javascript:vipIntroTipHide()">close</a>世纪佳缘提示</h3>
                        <div class="m_c">
                            <p id="vip_3" style="display: none;"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">开通VIP会员</a>即可保存搜索条件，方便您快捷搜索喜欢的人！即可享受其他<font style="color:#e8006d;font-weight:bold;">22</font>项VIP会员给力交友特权。</p>
                            <p id="vip_1" style=""><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">开通VIP会员</a>开通VIP会员即可保存搜索条件，方便您快捷搜索喜欢的人！即可享受其他<font style="color:#e8006d;font-weight:bold;">22</font>项VIP会员给力交友特权。</p>
                            <p id="vip_2" style="display: none;"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">开通VIP会员</a>即可搜索看信包月及钻石会员，您发的信他们免费看，回信率更高哦！即可享受其他<font style="color:#e8006d;font-weight:bold;">22</font>项VIP会员给力交友特权。</p>
                            <ul class="fn-clear mt15">
                                <li class="l9 gray" style="background-position: 0px -150px;"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">查看谁看过我</a></li>
                                <li class="l7 mr0 gray"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">查看对方最近登录时间</a></li>
                                <li class="l4 gray"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">专属身份标识</a></li>
                                <li class="l3 mr0 gray"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">发出信件对方信箱中置顶</a></li>
                                <li class="l8 gray" style="background-position:0 -126px;"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">上传更多照片</a></li>   
                                <li class="l6 mr0 gray"><a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">专属特价礼物</a></li>
                            </ul>
                            <div class="pri_2 mt15">
                                <a onclick="send_jy_pv2('|vip_entry_sstq_click|');" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sstq">开通VIP会员服务</a>
                            </div>
                        </div>
                    </div>
                    <div class="b"></div>
                </div>
                <!--/vip-tip-->
                </div>
                <div class="JY-bb-con">
                    <input disabled="disabled" class="searchSave" value="请为本组搜索条件起个名字" placeholder="请为本组搜索条件起个名字" type="text">
                    <button id="btn_save"></button>
                </div>
            </li>
                    </ul>
        <ul class="clear JY-filter-2">
            <li class="JY-px" id="JY-px-id">
                <a class="cur" id="sort_default" href="javascript:void(0);" onclick="newSort('all')">综合排序</a>
                <a class="x1" id="sort_charm" href="javascript:void(0);" onclick="newSort('ml')" title="魅力值由高到低">魅力值<i></i></a>
                <a class="x2" id="sort_last_login" href="javascript:void(0);" onclick="newSort('log')" title="最近登录时间由近到远">登录时间<i></i></a>
            </li>
            <li class="JY-fs">
                <span>显示方式</span>
                <a class="lb" id="s_list" href="#" name="list" title="列表：照片+独白模式">列表</a>
                <a class="dt cur" id="s_bigPhoto" href="#" name="bigPhoto" title="大图：照片模式">大图</a>
            </li>
            <li class="JY-id">
                <span class="t" id="nick-title-btn">用佳缘ID/昵称搜索</span>
                <div class="JY-id-con" id="nick-block">
                    <div class="JY-id-1 clear">
                        <input id="sear_id" placeholder="" value="请输入佳缘ID" type="text">
                        <button id="search_btn_id"></button>
                    </div>
                    <div class="JY-id-2">
                        <dl class="clear">
                            <dt>性别：</dt>
                            <dd id="nick-sex">
                                <label onclick="nick_sel_sex('f');">
                                    <input checked="checked" name="sex" value="1" type="radio">
                                    <span>女</span>
                                </label>
                                <label onclick="nick_sel_sex('m');">
                                    <input name="sex" value="2" type="radio">
                                    <span>男</span>
                                </label>
                                <input id="nick_sel_sex" value="f" type="hidden">
                            </dd>
                        </dl>
                        <dl class="iese1 clear">
                            <dt>年龄：</dt>
                            <dd id="nick-age">
                                     <select name="id-age1">
                                        <!--<option value="0">不限</option>--><option selected="selected" value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option><option value="32">32</option><option value="33">33</option><option value="34">34</option><option value="35">35</option><option value="36">36</option><option value="37">37</option><option value="38">38</option><option value="39">39</option><option value="40">40</option><option value="41">41</option><option value="42">42</option><option value="43">43</option><option value="44">44</option><option value="45">45</option><option value="46">46</option><option value="47">47</option><option value="48">48</option><option value="49">49</option><option value="50">50</option><option value="51">51</option><option value="52">52</option><option value="53">53</option><option value="54">54</option><option value="55">55</option><option value="56">56</option><option value="57">57</option><option value="58">58</option><option value="59">59</option><option value="60">60</option><option value="61">61</option><option value="62">62</option><option value="63">63</option><option value="64">64</option><option value="65">65</option><option value="66">66</option><option value="67">67</option><option value="68">68</option><option value="69">69</option><option value="70">70</option><option value="71">71</option><option value="72">72</option><option value="73">73</option><option value="74">74</option><option value="75">75</option><option value="76">76</option><option value="77">77</option><option value="78">78</option><option value="79">79</option><option value="80">80</option><option value="81">81</option><option value="82">82</option><option value="83">83</option><option value="84">84</option><option value="85">85</option><option value="86">86</option><option value="87">87</option><option value="88">88</option><option value="89">89</option><option value="90">90</option><option value="91">91</option><option value="92">92</option><option value="93">93</option><option value="94">94</option><option value="95">95</option><option value="96">96</option><option value="97">97</option><option value="98">98</option><option value="99">99</option>
                                    </select>
                                    <span class="JY-t">至</span>
                                    <select name="id-age2">
                                        <option value="0" selected="selected">不限</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option><option value="32">32</option><option value="33">33</option><option value="34">34</option><option value="35">35</option><option value="36">36</option><option value="37">37</option><option value="38">38</option><option value="39">39</option><option value="40">40</option><option value="41">41</option><option value="42">42</option><option value="43">43</option><option value="44">44</option><option value="45">45</option><option value="46">46</option><option value="47">47</option><option value="48">48</option><option value="49">49</option><option value="50">50</option><option value="51">51</option><option value="52">52</option><option value="53">53</option><option value="54">54</option><option value="55">55</option><option value="56">56</option><option value="57">57</option><option value="58">58</option><option value="59">59</option><option value="60">60</option><option value="61">61</option><option value="62">62</option><option value="63">63</option><option value="64">64</option><option value="65">65</option><option value="66">66</option><option value="67">67</option><option value="68">68</option><option value="69">69</option><option value="70">70</option><option value="71">71</option><option value="72">72</option><option value="73">73</option><option value="74">74</option><option value="75">75</option><option value="76">76</option><option value="77">77</option><option value="78">78</option><option value="79">79</option><option value="80">80</option><option value="81">81</option><option value="82">82</option><option value="83">83</option><option value="84">84</option><option value="85">85</option><option value="86">86</option><option value="87">87</option><option value="88">88</option><option value="89">89</option><option value="90">90</option><option value="91">91</option><option value="92">92</option><option value="93">93</option><option value="94">94</option><option value="95">95</option><option value="96">96</option><option value="97">97</option><option value="98">98</option><option value="99">99</option>
                                    </select>
                                    <span>岁</span>
                            </dd>
                        </dl>
                        <dl class="iese1 clear">
                            <dt>地区：</dt>
                            <dd class="dq" id="nick-dq">
                                <select id="nick-dq-s" name="id-Province">
                                    <option value="0" selected="selected">不限</option>
                                                                            <option value="11">北京</option>
                                                                            <option value="12">天津</option>
                                                                            <option value="13">河北</option>
                                                                            <option value="14">山西</option>
                                                                            <option value="15">内蒙古</option>
                                                                            <option value="21">辽宁</option>
                                                                            <option value="22">吉林</option>
                                                                            <option value="23">黑龙江</option>
                                                                            <option value="31">上海</option>
                                                                            <option value="32">江苏</option>
                                                                            <option value="33">浙江</option>
                                                                            <option value="34">安徽</option>
                                                                            <option value="35">福建</option>
                                                                            <option value="36">江西</option>
                                                                            <option value="37">山东</option>
                                                                            <option value="41">河南</option>
                                                                            <option value="42">湖北</option>
                                                                            <option value="43">湖南</option>
                                                                            <option value="44">广东</option>
                                                                            <option value="45">广西</option>
                                                                            <option value="46">海南</option>
                                                                            <option value="50">重庆</option>
                                                                            <option value="51">四川</option>
                                                                            <option value="52">贵州</option>
                                                                            <option value="53">云南</option>
                                                                            <option value="54">西藏</option>
                                                                            <option value="61">陕西</option>
                                                                            <option value="62">甘肃</option>
                                                                            <option value="63">青海</option>
                                                                            <option value="64">宁夏</option>
                                                                            <option value="65">新疆</option>
                                                                            <option value="71">台湾</option>
                                                                            <option value="81">香港</option>
                                                                            <option value="82">澳门</option>
                                                                            <option value="98">美国</option>
                                                                            <option value="99">国外</option>
                                                                    </select>
                                <select id="nick-city-s" name="id-City">
                                    <option value="0" selected="selected">不限</option>
                                </select>
                            </dd>
                        </dl>
                        <div class="JY-clh">如对昵称含特殊字符，请<a id="clickhere" href="#">点击这里</a></div>
                        <div class="JY-clh-c clear">
                            <a href="#">♂</a>
                            <a href="#">♀</a>
                            <a href="#">♥ </a>
                            <a href="#">♡ </a>
                            <a href="#">♠</a>
                            <a href="#">♣</a>
                            <a href="#">♪</a>
                            <a href="#">☆</a>
                            <a href="#">★</a>
                            <a href="#">☜</a>
                            <a href="#">☞</a>
                            <a href="#">☎</a>
                            <a href="#">☏</a>
                            <a href="#">♨</a>
                            <a href="#">◐</a>
                            <a href="#">◑</a>
                            <a href="#">♩</a>
                            <a href="#">♭</a>
                            <a href="#">₪</a>
                            <a href="#">¤</a>
                            <a href="#">▣</a>
                            <a href="#">▤</a>
                            <a href="#">▥</a>
                            <a href="#">▦</a>
                            <a href="#">▧</a>
                            <a href="#">▨</a>
                            <a href="#">▩</a>
                            <a href="#">ஐ</a>
                        </div>
                        <div class="JY-id-3 clear">
                            <input placeholder="" id="nick_txt" value="请输入佳缘昵称" type="text">
                            <button onclick="nickSearch();"></button>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <!--filter-->
<!--2013-12-2-->
<div class="new_header_scroll" id="new_header_scroll">
    <div id="new_batch_header" class="fn-clear new_batch_header">
        <ul class="fn-clear">
            <li class="nbhm_2">你已经选择<span id="select_num">0</span>人</li>
            <li>
                <input id="show_this_page" value="" type="checkbox">
                <label for="show_this_page">全选本页会员</label>
            </li>
            <li class="la">
                <a href="javascript:void(0);" id="exit_pl" class="exit_pl">退出批量</a>
                <a onclick="batSayHello();" class="pl_hello">批量打招呼</a>
            </li>
        </ul>
    </div>
</div>
<div class="fixed_heigh" style="height:1483px;">
<ul class="user_list fn-clear" id="normal_user_container" style="position: relative; z-index: 1;">
	<c:forEach var="user" items="${searchUsers}" >
		<li style="z-index: 1;">
		<div class="hy_box">
<!-- 			onclick="dzhsingleSel(this,'parent');" -->
			
<!-- 			onmouseover="userDivOver('chatbut_125431349',0);" -->
<!-- 			onmouseout="userDivOut('chatbut_125431349',0)"> -->
<!-- 			<div class="search_userHead" onmouseover="show_face_jump(this);" -->
<!-- 				onmouseout="hide_face_jump(this);"> -->
<!-- 				<a target="_blank" -->
<!-- 					href="http://case.jiayuan.com/face/?s=0&amp;url=http://a2.jyimg.com/f8/c9/e97ac6fbeb9e54a73ec00ca4290c/e97ac6fbe_1_avatar_p.jpg&amp;sex=f&amp;fr=search" -->
<!-- 					class="search_sameUser">找像她的人</a> -->
					<a target="_blank"
					href="user/search/${user.userId}"
					class="openBox" >
					<img
					src="${user.headPic}"></a>
<!-- 			</div> -->
			<div class="user_name">
				<a   title="kaka"
					href="user/search/${user.userId}">${user.nickname}</a>
			</div>
			<p class="user_info">${user.age}岁 ${user.address}</p>
			<p class="zhufang">
				<span>${user.height}</span>
			</p>
			<div class="zh_btn">
				<a href="msg/send/${user.userId}" class="dzh" foo="0" target="_blank"><span
					class="dzh_text1">发信</span>
<!-- 					<span -->
<!-- 					class="dzh_text2">已选</span><span class="dzh_text3" -->
<!-- 					onclick="dzhCancle(this)">取消</span><span class="dzh_text4" -->
<!-- 					onclick="dzhsingleSel(this,'other');">选择她</span> -->
					</a>
<!-- 					<a -->
<!-- 					id="chatbut_125431349" -->
<!-- 					href="javascript:openChatWindow(125431349,'f');" class="lt" -->
<!-- 					style="display: none;">聊天</a> -->
			</div>
			<div class="hy_box_bg"></div>
			<div class="hy_box_bg2"></div>
		</div></li>
	</c:forEach>

<!-- 						<li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125428386',0);" onmouseout="userDivOut('chatbut_125428386',0)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a style="display: inline;" target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a1.jyimg.com/61/97/8331c144fe7e596328f55ab700ce/8331c144f_5_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125428386?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/8331c144f_5_avatar_p.jpg"></a></div><div class="user_name"><a target="_blank" title="nana" href="http://www.jiayuan.com/125428386?fxly=search_v2_index" onclick="profileClickCount(true,1)">nana</a></div> <p class="user_info">29岁 其他</p><p class="zhufang"><span>164cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=618331c144fe7e596328f55ab700ce97&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125428386" href="javascript:openChatWindow(125428386,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125455934',0);" onmouseout="userDivOut('chatbut_125455934',0)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a2.jyimg.com/ee/4d/cbbbf5bfa0fabbee1e48bf34c7f6/cbbbf5bfa_1_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125455934?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/cbbbf5bfa_1_avatar_p.jpg"></a></div><div class="user_name"><i title="手机认证" class="tel"></i><i title="星级会员" class="level"></i><a target="_blank" title="问" href="http://www.jiayuan.com/125455934?fxly=search_v2_index" onclick="profileClickCount(true,1)">问</a></div> <p class="user_info">26岁 韩国</p><p class="zhufang"><span>164cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=eecbbbf5bfa0fabbee1e48bf34c7f64d&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125455934" href="javascript:openChatWindow(125455934,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125518754',0);" onmouseout="userDivOut('chatbut_125518754',0)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a2.jyimg.com/a7/fe/1fa48c558f2b744ecc6c74b6c4f8/1fa48c558_1_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125518754?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/1fa48c558_1_avatar_p.jpg"></a></div><div class="user_name"><a target="_blank" title="佳缘会员" href="http://www.jiayuan.com/125518754?fxly=search_v2_index" onclick="profileClickCount(true,1)">佳缘会员</a></div> <p class="user_info">24岁 越南</p><p class="zhufang"><span>160cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=a71fa48c558f2b744ecc6c74b6c4f8fe&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125518754" href="javascript:openChatWindow(125518754,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125393910',0);" onmouseout="userDivOut('chatbut_125393910',0)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a2.jyimg.com/db/a8/f10f583c88d6bdef7b3796ff94d9/f10f583c8_1_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125393910?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/f10f583c8_1_avatar_p.jpg"></a></div><div class="user_name"><a target="_blank" title="Kizuna" href="http://www.jiayuan.com/125393910?fxly=search_v2_index" onclick="profileClickCount(true,1)">Kizuna</a></div> <p class="user_info">25岁 澳大利亚</p><p class="zhufang"><span>163cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=dbf10f583c88d6bdef7b3796ff94d9a8&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125393910" href="javascript:openChatWindow(125393910,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125553430',0);" onmouseout="userDivOut('chatbut_125553430',0)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://images1.jyimg.com/w4/global/i/yzphykj_f.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125553430?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/yzphykj_f.jpg"></a></div><div class="user_name"><a target="_blank" title="戈多" href="http://www.jiayuan.com/125553430?fxly=search_v2_index" onclick="profileClickCount(true,1)">戈多</a></div> <p class="user_info">24岁 澳大利亚</p><p class="zhufang"><span>160cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=86c7478c33b45c3e48ea0c040d3039d6&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125553430" href="javascript:openChatWindow(125553430,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125396007',0);" onmouseout="userDivOut('chatbut_125396007',0)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a1.jyimg.com/60/0b/7f4ce3e7a24e47d2dbe18ffb62b2/7f4ce3e7a_1_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125396007?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/7f4ce3e7a_1_avatar_p.jpg"></a></div><div class="user_name"><i title="VIP会员" class="gjhy"></i><a target="_blank" title="人" href="http://www.jiayuan.com/125396007?fxly=search_v2_index" onclick="profileClickCount(true,1)">人</a></div> <p class="user_info">22岁 新加坡</p><p class="zhufang"><span>170cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=607f4ce3e7a24e47d2dbe18ffb62b20b&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125396007" href="javascript:openChatWindow(125396007,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125400941',1);" onmouseout="userDivOut('chatbut_125400941',1)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a1.jyimg.com/62/d0/773d8667b06a61613e01ed9e7578/773d8667b_1_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125400941?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/773d8667b_1_avatar_p.jpg"></a></div><div class="user_name"><i title="在线" class="online"></i><i title="手机认证" class="tel"></i><a target="_blank" title="渺渺" href="http://www.jiayuan.com/125400941?fxly=search_v2_index" onclick="profileClickCount(true,1)">渺渺</a></div> <p class="user_info">22岁 新加坡</p><p class="zhufang"><span>160cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=62773d8667b06a61613e01ed9e7578d0&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125400941" href="javascript:openChatWindow(125400941,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125436720',0);" onmouseout="userDivOut('chatbut_125436720',0)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a2.jyimg.com/c2/34/d7a91b8c1078eedc467fc34b3cf3/d7a91b8c1_1_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125436720?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/d7a91b8c1_1_avatar_p.jpg"></a></div><div class="user_name"><a target="_blank" title="妃陽" href="http://www.jiayuan.com/125436720?fxly=search_v2_index" onclick="profileClickCount(true,1)">妃陽</a></div> <p class="user_info">25岁 泰国</p><p class="zhufang"><span>160cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=c2d7a91b8c1078eedc467fc34b3cf334&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125436720" href="javascript:openChatWindow(125436720,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125507903',0);" onmouseout="userDivOut('chatbut_125507903',0)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a2.jyimg.com/ea/92/883a4e9a3c1474a6cc98abfd4527/883a4e9a3_1_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125507903?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/883a4e9a3_1_avatar_p.jpg"></a></div><div class="user_name"><a target="_blank" title="Melody" href="http://www.jiayuan.com/125507903?fxly=search_v2_index" onclick="profileClickCount(true,1)">Melody</a></div> <p class="user_info">24岁 英国</p><p class="zhufang"><span>162cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=ea883a4e9a3c1474a6cc98abfd452792&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125507903" href="javascript:openChatWindow(125507903,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125596187',0);" onmouseout="userDivOut('chatbut_125596187',0)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a2.jyimg.com/d2/00/0a7469136aq6298c966d4dd37c19/0a7469136_1_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125596187?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/0a7469136_1_avatar_p.jpg"></a></div><div class="user_name"><a target="_blank" title="Walle" href="http://www.jiayuan.com/125596187?fxly=search_v2_index" onclick="profileClickCount(true,1)">Walle</a></div> <p class="user_info">26岁 德国</p><p class="zhufang"><span>163cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=d20a7469136ad6298c966d4dd37c1900&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125596187" href="javascript:openChatWindow(125596187,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125453499',0);" onmouseout="userDivOut('chatbut_125453499',0)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a2.jyimg.com/e5/fa/821b146027ec5db4779a86759274/821b14602_1_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125453499?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/821b14602_1_avatar_p.jpg"></a></div><div class="user_name"><a target="_blank" title="店小二" href="http://www.jiayuan.com/125453499?fxly=search_v2_index" onclick="profileClickCount(true,1)">店小二</a></div> <p class="user_info">28岁 日本</p><p class="zhufang"><span>155cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=e5821b146027ec5db4779a86759274fa&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125453499" href="javascript:openChatWindow(125453499,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125545696',0);" onmouseout="userDivOut('chatbut_125545696',0)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a style="display: none;" target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a1.jyimg.com/6f/6f/cfd70e78fab423e08f9708d511ce/cfd70e78f_1_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125545696?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/cfd70e78f_1_avatar_p.jpg"></a></div><div class="user_name"><a target="_blank" title="Sen Hee" href="http://www.jiayuan.com/125545696?fxly=search_v2_index" onclick="profileClickCount(true,1)">Sen Hee</a></div> <p class="user_info">22岁 韩国</p><p class="zhufang"><span>155cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=6fcfd70e78fab423e08f9708d511ce6f&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125545696" href="javascript:openChatWindow(125545696,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125510670',1);" onmouseout="userDivOut('chatbut_125510670',1)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a2.jyimg.com/aa/bf/6e6737d3302b86278dde731399df/6e6737d33_1_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125510670?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/6e6737d33_1_avatar_p.jpg"></a></div><div class="user_name"><i title="在线" class="online"></i><i title="VIP会员" class="gjhy"></i><a target="_blank" title="世纪佳缘" href="http://www.jiayuan.com/125510670?fxly=search_v2_index" onclick="profileClickCount(true,1)">世纪佳缘</a></div> <p class="user_info">29岁 马来西亚</p><p class="zhufang"><span>162cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=aa6e6737d3302b86278dde731399dfbf&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125510670" href="javascript:openChatWindow(125510670,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125510714',0);" onmouseout="userDivOut('chatbut_125510714',0)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a1.jyimg.com/4c/3d/7ddf09824146892ff03d17274faa/7ddf09824_2_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125510714?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/7ddf09824_2_avatar_p.jpg"></a></div><div class="user_name"><a target="_blank" title="晶儿" href="http://www.jiayuan.com/125510714?fxly=search_v2_index" onclick="profileClickCount(true,1)">晶儿</a></div> <p class="user_info">24岁 泰国</p><p class="zhufang"><span>160cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=4c7ddf09824146892ff03d17274faa3d&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125510714" href="javascript:openChatWindow(125510714,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125490829',1);" onmouseout="userDivOut('chatbut_125490829',1)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://images1.jyimg.com/w4/global/i/yzphykj_f.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125490829?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/yzphykj_f.jpg"></a></div><div class="user_name"><i title="在线" class="online"></i><i title="聊天包月" class="ltby"></i><a target="_blank" title="和和晓晓" href="http://www.jiayuan.com/125490829?fxly=search_v2_index" onclick="profileClickCount(true,1)">和和晓晓</a></div> <p class="user_info">30岁 英国</p><p class="zhufang"><span>169cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=ab1ae63bbced3de4313dd6ddf7acfdf4&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125490829" href="javascript:openChatWindow(125490829,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125606423',1);" onmouseout="userDivOut('chatbut_125606423',1)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a1.jyimg.com/27/76/a16fc3cd7112a529e7706859e344/a16fc3cd7_1_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125606423?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/a16fc3cd7_1_avatar_p.jpg"></a></div><div class="user_name"><i title="在线" class="online"></i><a target="_blank" title="薇薇" href="http://www.jiayuan.com/125606423?fxly=search_v2_index" onclick="profileClickCount(true,1)">薇薇</a></div> <p class="user_info">27岁 日本</p><p class="zhufang"><span>160cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=27a16fc3cd7112a529e7706859e34476&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125606423" href="javascript:openChatWindow(125606423,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125571613',0);" onmouseout="userDivOut('chatbut_125571613',0)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a1.jyimg.com/0b/f9/505d2b0fab710d178e25b6ccd7ab/505d2b0fa_1_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125571613?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/505d2b0fa_1_avatar_p.jpg"></a></div><div class="user_name"><a target="_blank" title="憤怒的小鳥" href="http://www.jiayuan.com/125571613?fxly=search_v2_index" onclick="profileClickCount(true,1)">憤怒的小鳥</a></div> <p class="user_info">30岁 其他</p><p class="zhufang"><span>163cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=0b505d2b0fab710d178e25b6ccd7abf9&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125571613" href="javascript:openChatWindow(125571613,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125513945',0);" onmouseout="userDivOut('chatbut_125513945',0)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a1.jyimg.com/27/aa/b8e884a4022be9520653fbb3467d/b8e884a40_1_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125513945?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/b8e884a40_1_avatar_p.jpg"></a></div><div class="user_name"><i title="VIP会员" class="gjhy"></i><i title="看信包月" class="kxby"></i><a target="_blank" title="coco" href="http://www.jiayuan.com/125513945?fxly=search_v2_index" onclick="profileClickCount(true,1)">coco</a></div> <p class="user_info">24岁 英国</p><p class="zhufang"><span>165cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=27b8e884a4022be9520653fbb3467daa&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125513945" href="javascript:openChatWindow(125513945,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125457736',0);" onmouseout="userDivOut('chatbut_125457736',0)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a2.jyimg.com/f9/a4/b61148e3c018aq3ed876f1577e2b/b61148e3c_1_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125457736?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/b61148e3c_1_avatar_p.jpg"></a></div><div class="user_name"><a target="_blank" title="六六" href="http://www.jiayuan.com/125457736?fxly=search_v2_index" onclick="profileClickCount(true,1)">六六</a></div> <p class="user_info">23岁 法国</p><p class="zhufang"><span>170cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=f9b61148e3c018ad3ed876f1577e2ba4&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125457736" href="javascript:openChatWindow(125457736,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125566179',0);" onmouseout="userDivOut('chatbut_125566179',0)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://images1.jyimg.com/w4/global/i/yzphykj_f.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125566179?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/yzphykj_f.jpg"></a></div><div class="user_name"><a target="_blank" title="Melody" href="http://www.jiayuan.com/125566179?fxly=search_v2_index" onclick="profileClickCount(true,1)">Melody</a></div> <p class="user_info">23岁 澳大利亚</p><p class="zhufang"><span>156cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=9c9fcc464b7668841e374f14435485ae&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125566179" href="javascript:openChatWindow(125566179,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125447820',0);" onmouseout="userDivOut('chatbut_125447820',0)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a1.jyimg.com/32/e8/cb330627661f93cdae50238136e3/cb3306276_1_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125447820?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/cb3306276_1_avatar_p.jpg"></a></div><div class="user_name"><a target="_blank" title="烟落乄飞舞" href="http://www.jiayuan.com/125447820?fxly=search_v2_index" onclick="profileClickCount(true,1)">烟落乄飞舞</a></div> <p class="user_info">27岁 日本</p><p class="zhufang"><span>167cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=32cb330627661f93cdae50238136e3e8&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125447820" href="javascript:openChatWindow(125447820,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125568282',0);" onmouseout="userDivOut('chatbut_125568282',0)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a2.jyimg.com/86/a7/0d6431f1cce53ea6106bcae50aaa/0d6431f1c_1_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125568282?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/0d6431f1c_1_avatar_p.jpg"></a></div><div class="user_name"><a target="_blank" title="生菜沙拉" href="http://www.jiayuan.com/125568282?fxly=search_v2_index" onclick="profileClickCount(true,1)">生菜沙拉</a></div> <p class="user_info">29岁 澳大利亚</p><p class="zhufang"><span>169cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=860d6431f1cce53ea6106bcae50aaaa7&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125568282" href="javascript:openChatWindow(125568282,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125462574',0);" onmouseout="userDivOut('chatbut_125462574',0)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a2.jyimg.com/b3/f9/32b5625747c45b99ef52f007c028/32b562574_1_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125462574?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/32b562574_1_avatar_p.jpg"></a></div><div class="user_name"><a target="_blank" title="懸浮記憶" href="http://www.jiayuan.com/125462574?fxly=search_v2_index" onclick="profileClickCount(true,1)">懸浮記憶</a></div> <p class="user_info">25岁 德国</p><p class="zhufang"><span>164cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=b332b5625747c45b99ef52f007c028f9&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125462574" href="javascript:openChatWindow(125462574,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li><li style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_125388761',0);" onmouseout="userDivOut('chatbut_125388761',0)"><div class="search_userHead" onmouseover="show_face_jump(this);" onmouseout="hide_face_jump(this);"><a target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a2.jyimg.com/b2/5e/cf32b4aqe88259acb4c8e5495190/cf32b4ade_1_avatar_p.jpg&amp;sex=f&amp;fr=search" class="search_sameUser">找像她的人</a><a target="_blank" href="http://www.jiayuan.com/125388761?fxly=search_v2_index" class="openBox" onclick="profileClickCount(true,1)"><img src="resources/img/cf32b4ade_1_avatar_p.jpg"></a></div><div class="user_name"><a target="_blank" title="Emotional" href="http://www.jiayuan.com/125388761?fxly=search_v2_index" onclick="profileClickCount(true,1)">Emotional</a></div> <p class="user_info">22岁 加拿大</p><p class="zhufang"><span>160cm</span></p><div class="zh_btn"><a href="javascript:void(0);" class="dzh" foo="0"><span class="dzh_text1" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=b2cf32b4ade88259acb4c8e54951905e&amp;fxly=search_v2_index');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3" onclick="dzhCancle(this)">取消</span><span class="dzh_text4" onclick="dzhsingleSel(this,'other');">选择她</span></a><a id="chatbut_125388761" href="javascript:openChatWindow(125388761,'f');" class="lt" style="display:none;">聊天</a></div><div class="hy_box_bg"></div><div class="hy_box_bg2"></div></div></li> -->
						</ul>
<ul class="dubai_list" id="note_user_container" style="display: none;">
</ul>
<p id="loadingTip" class="displayBlock" style="display: none;" align="center"><img src="resources/img/loadingTip.gif">&nbsp;&nbsp;加载中……</p>
<div class="pageclass">
    <ol>
        <li><a href="javascript:void(0);" onclick="getSearchResult('fir')">首页</a></li>
        <li><a href="javascript:void(0);" onclick="getSearchResult('pre')">上一页</a></li>
        <li id="select_box"><strong>第1页</strong><div class="pageNo" onmousemove="pageMouseOver()" onmouseout="pageMouseOut()"><a href="javascript:void(0);" onclick="getSearchResult('page','',this);">第10页</a><a href="javascript:void(0);" onclick="getSearchResult('page','',this);">第9页</a><a href="javascript:void(0);" onclick="getSearchResult('page','',this);">第8页</a><a href="javascript:void(0);" onclick="getSearchResult('page','',this);">第7页</a><a href="javascript:void(0);" onclick="getSearchResult('page','',this);">第6页</a><a href="javascript:void(0);" onclick="getSearchResult('page','',this);">第5页</a><a href="javascript:void(0);" onclick="getSearchResult('page','',this);">第4页</a><a href="javascript:void(0);" onclick="getSearchResult('page','',this);">第3页</a><a href="javascript:void(0);" onclick="getSearchResult('page','',this);">第2页</a><a href="javascript:void(0);" class="pageDefault" onclick="getSearchResult('page','',this);">第1页</a></div></li>
        <li><a href="javascript:void(0);" onclick="getSearchResult('next')">下一页</a></li>
    </ol>
</div>

</div>

</div>
<div class="search_end displayNone">
    <div id="endTipCount"></div>
    <div class="endTipContent"><h3 class="tip_h"></h3></div>
    <p class="jianyi_box">
        建议您：<br>

        1、看看输入的文字是否有误<br>

        2、去掉可能不必要的字词，如"的"、"什么"等<br>

        3、可以放宽您的择偶条件<br>

        4、调整关键字，最好以空格隔开，如"有车有房成熟稳重"改成"有车 有房 成熟稳重"或"有车 有房"
    </p>
    <h3 class="tip_h">你是不是想找</h3>
    <p class="keyword_list">
                <a href="javascript:void(0);" class="hotTag">娇小</a>
                    <a href="javascript:void(0);" class="hotTag">幽默</a>
                    <a href="javascript:void(0);" class="hotTag">睿智</a>
                    <a href="javascript:void(0);" class="hotTag">高雅</a>
                    <a href="javascript:void(0);" class="hotTag">爱运动</a>
                    <a href="javascript:void(0);" class="hotTag">野蛮女友</a>
            </p>
    <div class="hot_search_box">
        <div class="fn-clear">
            <div class="fn-clear hot_search_line">
                <h3 class="fn-left tip_h">今日热门搜索排行榜</h3>
                <ul class="fn-right">
                    <li class=""><a>搜男士</a></li>
                    <li class="cur"><a>搜女士</a></li>
                </ul>
            </div>
            <div class="fn-clear">
                <ul class="tiaojian_list part1">
                      
                                        <li>
                    <span><i class="hot">1</i><a href="#" class="hotTag">高挑<img src="resources/img/sousuo.gif"></a></span>
                    <em>42568</em>
                    </li>
                                          
                                        <li>
                    <span><i class="hot">2</i><a href="#" class="hotTag">苗条<img src="resources/img/sousuo.gif"></a></span>
                    <em>40698</em>
                    </li>
                                          
                                        <li>
                    <span><i class="hot">3</i><a href="#" class="hotTag">漂亮<img src="resources/img/sousuo.gif"></a></span>
                    <em>33657</em>
                    </li>
                                          
                                        <li>
                    <span><i class="">4</i><a href="#" class="hotTag">冰雪聪明<img src="resources/img/sousuo.gif"></a></span>
                    <em>30085</em>
                    </li>
                                          
                                        <li>
                    <span><i class="">5</i><a href="#" class="hotTag">文静<img src="resources/img/sousuo.gif"></a></span>
                    <em>25853</em>
                    </li>
                                          
                                          
                                          
                                          
                                          
                                                    </ul>
                <ul class="tiaojian_list part2"> 
                          
                                                   
                                                   
                                                   
                                                   
                                                   
                                                <li>
                        <span><i>6</i><a href="#" class="hotTag">成熟大气<img src="resources/img/sousuo.gif"></a></span>
                        <em>20365</em>
                        </li>
                                                   
                                                <li>
                        <span><i>7</i><a href="#" class="hotTag">活泼开朗<img src="resources/img/sousuo.gif"></a></span>
                        <em>19524</em>
                        </li>
                                                   
                                                <li>
                        <span><i>8</i><a href="#" class="hotTag">温柔体贴<img src="resources/img/sousuo.gif"></a></span>
                        <em>15526</em>
                        </li>
                                                   
                                                <li>
                        <span><i>9</i><a href="#" class="hotTag">孝顺<img src="resources/img/sousuo.gif"></a></span>
                        <em>10358</em>
                        </li>
                                                   
                                                <li>
                        <span><i>10</i><a href="#" class="hotTag">宅女<img src="resources/img/sousuo.gif"></a></span>
                        <em>9354</em>
                        </li>
                                                             </ul>
              </div>
        </div>
    </div>
</div>
</div>
<div class="search_right">
    <div style="height: 196px;" id="side_space" class="side_space">
        <div style="display: none;" class="mascot"></div>
    </div>
    <div class="love_cont">
        <ul class="user_list fn-clear">
        <li class="" style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_119368012',0);" onmouseout="userDivOut('chatbut_119368012',0)"><div class="search_userHead" onmouseover="show_face_jump(this,0);" onmouseout="hide_face_jump(this);"><a class="search_sameUser" target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a1.jyimg.com/3c/a0/d49f32d8fbb835230bf75caf3f0e/d49f32d8f_1_avatar_p.jpg&amp;sex=f&amp;fr=search">找像她的人</a><a target="_blank" onclick="profileClickCount(true,1)" href="http://www.jiayuan.com/119368012?fxly=cp-eexpress"><img src="resources/img/d49f32d8f_1_avatar_p.jpg"></a><a href="http://www.jiayuan.com/usercp/fate_express.php?pv.mark=1009818_1" target="_blank" class="icon_ju">超级聚光灯</a></div><div class="user_name"><a target="_blank" onclick="profileClickCount(true,1)" title="鱼儿" href="http://www.jiayuan.com/119368012?fxly=cp-eexpress">鱼儿</a></div><p class="user_info">31岁 其他国家</p><p class="zhufang"><span>本科</span></p><div class="zh_btn showRecommend"><a class="dzh" href="javascript:void(0);" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=3cd49f32d8fbb835230bf75caf3f0ea0&amp;fxly=cp-eexpress');"><span class="dzh_text1">打招呼</span></a></div><div class="zh_btn displayNone hiddenRecommend"><a class="dzh" href="javascript:void(0);" foo="0"><span class="dzh_text1" style="display: none;" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=3cd49f32d8fbb835230bf75caf3f0ea0&amp;fxly=cp-eexpress');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3 displayBlock" onclick="dzhCancle(this,'recommend')">取消</span><span class="dzh_text4 dzh_add2" onclick="dzhsingleSel(this,'recommend')" style="display:none;">选择她</span></a><a id="chatbut_119368012" class="lt" style="display:none;"></a></div><div class="hy_box_bg" style="display: none;"></div><div class="hy_box_bg2" style="display: block;"></div></div></li><li class="" style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_112963221',0);" onmouseout="userDivOut('chatbut_112963221',0)"><div class="search_userHead" onmouseover="show_face_jump(this,0);" onmouseout="hide_face_jump(this);"><a class="search_sameUser" target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a2.jyimg.com/91/09/43e11b0b00e174053d247867aa69/43e11b0b0_11_avatar_p.jpg&amp;sex=f&amp;fr=search">找像她的人</a><a target="_blank" onclick="profileClickCount(true,1)" href="http://www.jiayuan.com/112963221?fxly=cp-express"><img src="resources/img/43e11b0b0_11_avatar_p.jpg"></a><a href="http://www.jiayuan.com/usercp/fate_express.php?pv.mark=1009818_1" target="_blank" class="icon_ju">超级聚光灯</a></div><div class="user_name"><a target="_blank" onclick="profileClickCount(true,1)" title="一生一世的Helen" href="http://www.jiayuan.com/112963221?fxly=cp-express">一生一世的Helen</a></div><p class="user_info">29岁 其他国家</p><p class="zhufang"><span>有车</span></p><div class="zh_btn showRecommend"><a class="dzh" href="javascript:void(0);" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=9143e11b0b00e174053d247867aa6909&amp;fxly=cp-express');"><span class="dzh_text1">打招呼</span></a></div><div class="zh_btn displayNone hiddenRecommend"><a class="dzh" href="javascript:void(0);" foo="0"><span class="dzh_text1" style="display: none;" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=9143e11b0b00e174053d247867aa6909&amp;fxly=cp-express');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3 displayBlock" onclick="dzhCancle(this,'recommend')">取消</span><span class="dzh_text4 dzh_add2" onclick="dzhsingleSel(this,'recommend')" style="display:none;">选择她</span></a><a id="chatbut_112963221" class="lt" style="display:none;"></a></div><div class="hy_box_bg" style="display: none;"></div><div class="hy_box_bg2" style="display: block;"></div></div></li><li class="" style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_119952322',0);" onmouseout="userDivOut('chatbut_119952322',0)"><div class="search_userHead" onmouseover="show_face_jump(this,0);" onmouseout="hide_face_jump(this);"><a class="search_sameUser" target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a2.jyimg.com/ae/82/ffdb60f0b8d595d48025dc2e3385/ffdb60f0b_1_avatar_p.jpg&amp;sex=f&amp;fr=search">找像她的人</a><a target="_blank" onclick="profileClickCount(true,1)" href="http://www.jiayuan.com/119952322?fxly=cp-eexpress"><img src="resources/img/ffdb60f0b_1_avatar_p.jpg"></a><a href="http://www.jiayuan.com/usercp/fate_express.php?pv.mark=1009818_1" target="_blank" class="icon_ju">超级聚光灯</a></div><div class="user_name"><a target="_blank" onclick="profileClickCount(true,1)" title="灵语" href="http://www.jiayuan.com/119952322?fxly=cp-eexpress">灵语</a></div><p class="user_info">25岁 其他国家</p><p class="zhufang"><span>有车</span></p><div class="zh_btn showRecommend"><a class="dzh" href="javascript:void(0);" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=aeffdb60f0b8d595d48025dc2e338582&amp;fxly=cp-eexpress');"><span class="dzh_text1">打招呼</span></a></div><div class="zh_btn displayNone hiddenRecommend"><a class="dzh" href="javascript:void(0);" foo="0"><span class="dzh_text1" style="display: none;" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=aeffdb60f0b8d595d48025dc2e338582&amp;fxly=cp-eexpress');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3 displayBlock" onclick="dzhCancle(this,'recommend')">取消</span><span class="dzh_text4 dzh_add2" onclick="dzhsingleSel(this,'recommend')" style="display:none;">选择她</span></a><a id="chatbut_119952322" class="lt" style="display:none;"></a></div><div class="hy_box_bg" style="display: none;"></div><div class="hy_box_bg2" style="display: block;"></div></div></li><li class="" style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_90343524',0);" onmouseout="userDivOut('chatbut_90343524',0)"><div class="search_userHead" onmouseover="show_face_jump(this,0);" onmouseout="hide_face_jump(this);"><a class="search_sameUser" target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://images1.jyimg.com/w4/global/i/xyaqmm_f.jpg&amp;sex=f&amp;fr=search">找像她的人</a><a target="_blank" onclick="profileClickCount(true,1)" href="http://www.jiayuan.com/90343524?fxly=cp-express"><img src="resources/img/xyaqmm_f.jpg"></a><a href="http://www.jiayuan.com/usercp/fate_express.php?pv.mark=1009818_1" target="_blank" class="icon_ju">超级聚光灯</a></div><div class="user_name"><a target="_blank" onclick="profileClickCount(true,1)" title="miss.wei" href="http://www.jiayuan.com/90343524?fxly=cp-express">miss.wei</a></div><p class="user_info">27岁 其他国家</p><p class="zhufang"><span>有房</span></p><div class="zh_btn showRecommend"><a class="dzh" href="javascript:void(0);" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=1803fe6ec1f532034d895b046643d208&amp;fxly=cp-express');"><span class="dzh_text1">打招呼</span></a></div><div class="zh_btn displayNone hiddenRecommend"><a class="dzh" href="javascript:void(0);" foo="0"><span class="dzh_text1" style="display: none;" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=1803fe6ec1f532034d895b046643d208&amp;fxly=cp-express');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3 displayBlock" onclick="dzhCancle(this,'recommend')">取消</span><span class="dzh_text4 dzh_add2" onclick="dzhsingleSel(this,'recommend')" style="display:none;">选择她</span></a><a id="chatbut_90343524" class="lt" style="display:none;"></a></div><div class="hy_box_bg" style="display: none;"></div><div class="hy_box_bg2" style="display: block;"></div></div></li><li class="" style="z-index: 1;"><div class="hy_box" onclick="dzhsingleSel(this,'parent');" onmouseover="userDivOver('chatbut_84127360',0);" onmouseout="userDivOut('chatbut_84127360',0)"><div class="search_userHead" onmouseover="show_face_jump(this,0);" onmouseout="hide_face_jump(this);"><a class="search_sameUser" target="_blank" href="http://case.jiayuan.com/face/?s=0&amp;url=http://a2.jyimg.com/8b/49/edc8f360c0dc30559e876595ae1f/edc8f360c_1_avatar_p.jpg&amp;sex=f&amp;fr=search">找像她的人</a><a target="_blank" onclick="profileClickCount(true,1)" href="http://www.jiayuan.com/84127360?fxly=cp-eexpress"><img src="resources/img/edc8f360c_1_avatar_p.jpg"></a><a href="http://www.jiayuan.com/usercp/fate_express.php?pv.mark=1009818_1" target="_blank" class="icon_ju">超级聚光灯</a></div><div class="user_name"><a target="_blank" onclick="profileClickCount(true,1)" title="I am Rita" href="http://www.jiayuan.com/84127360?fxly=cp-eexpress">I am Rita</a></div><p class="user_info">23岁 其他国家</p><p class="zhufang"><span>高收入</span></p><div class="zh_btn showRecommend"><a class="dzh" href="javascript:void(0);" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=8bedc8f360c0dc30559e876595ae1f49&amp;fxly=cp-eexpress');"><span class="dzh_text1">打招呼</span></a></div><div class="zh_btn displayNone hiddenRecommend"><a class="dzh" href="javascript:void(0);" foo="0"><span class="dzh_text1" style="display: none;" onclick="show_hello_div_v2('','http://www.jiayuan.com/msg/hello.php?type=20&amp;randomfrom=4&amp;uhash=8bedc8f360c0dc30559e876595ae1f49&amp;fxly=cp-eexpress');">打招呼</span><span class="dzh_text2">已选</span><span class="dzh_text3 displayBlock" onclick="dzhCancle(this,'recommend')">取消</span><span class="dzh_text4 dzh_add2" onclick="dzhsingleSel(this,'recommend')" style="display:none;">选择她</span></a><a id="chatbut_84127360" class="lt" style="display:none;"></a></div><div class="hy_box_bg" style="display: none;"></div><div class="hy_box_bg2" style="display: block;"></div></div></li></ul>
        <div class="detail pd20"><a href="http://www.jiayuan.com/usercp/fate_express.php?pv.mark=1009818_2" target="_blank">我也要出现在这里&gt;&gt;</a></div>
    </div>
</div>
</div>
<div id="spopBg"></div>
<div style="position:absolute;z-index:9999; display:none;" class="spopBox">
    <iframe scrolling="no" marginheight="0" marginwidth="0" id="popBoxUrl" frameborder="0" height="375px" width="676px"></iframe>
</div>

<!--2013-12-2右侧导航-->
<div class="JY-rn">
    <a class="n1" href="http://www.jiayuan.com/helpcenter/postmail2.php?refresh=1&amp;pid=417&amp;id=439&amp;pv.mark=search_n_yijian%7Cf" target="_blank">意见反馈</a>
    <a class="n2" href="http://www.jiayuan.com/helpcenter/list.php?type1=1&amp;type2=2&amp;type3=218&amp;pv.mark=search_n_help%7Cf" target="_blank">帮助中心</a>
    <a class="n3" href="#" onclick="search_send_pv('top','new')">返回顶部</a>
</div>
<!--/2013-12-2右侧导航-->
<script src="resources/js/profile_foot.js" type="text/javascript"></script><script type="text/javascript" src="resources/js/w4-simple.js"></script><style type="text/css">
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
//jy_foot_statistics.run();
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
</script><img src="resources/img/a.gif" style="display:none"> 
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
/* window.setTimeout(function(){
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
}, seed1); */
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

	<style type="text/css"> 	*{margin:0;padding:0;}	.winpopfoot{width:284px;height:203px;overflow:hidden;word-wrap:break-word;word-break:break-all;font-size:12px;font-family:Arial,SimSun;color:#636363;}	.pngforsjjy{behavior:expression((T=this,T.runtimeStyle.behavior="none")&&(T.p?0:((T.runtimeStyle.backgroundImage = "none",T.runtimeStyle.filter ="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+T.src+"',sizingMethod='image')",T.src = "http://images.jiayuan.com/w3/global/i/bg.gif")),T.p=1));}	.winpopfoot em,.winpopfoot span,.winpopfoot strong{font-weight:normal;font-style:normal;font-size:12px;}	.winpopfoot_box{position:absolute;top:8px;left:10px;width:264px;height:192px;overflow:hidden;border-bottom:3px solid #E876B2;background:url(http://images1.jyimg.com/w4/index/i/bg100804_02.gif) repeat-x 0 -100px;}	.winpopfoot_t{width:264px;height:30px;overflow:hidden;}	.winpopfoot_t em{float:left;width:67px;height:25px;overflow:hidden;margin:5px 0 0 10px;cursor:pointer;}	.winpopfoot_t em strong{width:67px;height:25px;display:block;line-height:25px;font-weight:bold;text-align:center;}	.winpopfoot_t em strong.str2{position:relative;}	.winpopfoot_t em.on{background:url(http://images1.jyimg.com/w4/index/i/bg100804_01.gif) no-repeat 0 0;}	.winpopfoot_t em.on strong.str1{color:#DCDCDC;}	.winpopfoot_t em.on strong.str2{top:-26px;color:#444444;}	.winpopfoot_t em.over strong.str1{color:#C23174;}	.winpopfoot_t em.over strong.str2{top:-24px;color:#FFFFFF;}	.winpopfoot_t span{float:right;width:18px;height:18px;overflow:hidden;margin:7px 5px 0 0;cursor:pointer;background-image:url(http://images1.jyimg.com/w4/index/i/bg100804_01.gif);}	.winpopfoot_t span.sp1{background-position:-70px 0;}	.winpopfoot_t span.sp2{background-position:-90px 0;}	.winpopfoot_t span.sp3{background-position:-110px 0;}	.winpopfoot_c{width:258px;height:162px;overflow:hidden;margin:0 auto;background:#FFFDFD;}	.winpopfoot_c dl{width:228px;height:140px;margin:10px auto 0;overflow:hidden;line-height:20px;}	.winpopfoot_c dd{width:100%;text-align:left;}	.winpopfoot_c dd.martop15{margin-top:15px;}	.winpopfoot_c dd span{float:right;width:100%;text-align:right;}	.winpopfoot_c dd a,.winpopfoot_c dd a:hover{color:#BC0073;text-decoration:underline;}	.winpopfoot_c dd img{display:block;margin:0 auto;border:none;}	</style>		<div style="position: absolute; z-index: 99999; overflow: hidden; border-width: 0px; width: 280px; height: 0px; right: 0px; bottom: 0px; display: none; top: 699px; left: 1263px;" id="bulletin"> 		<div class="winpopfoot" style="position:absolute;z-index:2;left:0;" id="pop_div"> 	<img src="resources/img/bg100804.png" class="pngforsjjy"> 	<div class="winpopfoot_box"> 	<div class="winpopfoot_t"> 	<span class="sp2" title="关闭" onclick="_close();" id="closeButton"></span> 	<span class="sp3" title="最大化" onclick="_mini();" id="switchButton"></span> 	<em id="div_1" class="on"><div><div id="link_1"><strong class="str1">互动消息</strong><strong class="str2">互动消息</strong></div></div></em> 	<em id="div_3" class="over"><div><div id="link_3"><strong class="str1">最新活动</strong><strong class="str2">最新活动</strong></div></div></em> 	</div>	<div class="winpopfoot_c"> 	<dl> 	<dd style="" id="con_1" class="martop15"><img src="resources/img/logo_prompt_002.jpg"></dd> 	<dd style="display: none;" id="con_2" class="martop15"></dd> 	<dd style="display: none;" id="con_3"><img src="resources/img/logo_prompt_002.jpg"></dd> 	</dl> 	<iframe scrolling="no" id="run_fra" name="run_fra" src="" frameborder="0" height="0" width="0"></iframe> 	</div> 	 	</div> 	</div> 	 	</div> 	<script type="text/javascript" src="resources/js/pop.js"></script><div id="bgdiv_foot" style="position:absolute;display:none; left:0px; top:0px; width:100%; height:100%; filter:alpha(opacity=30); opacity:0.3; background-color:#000000; z-index:12000;"></div> <div class="dragdiv" id="bg_div_float_foot" style="z-index:12001;position:absolute;top:0px;left:0px;display:none"></div><script src="resources/js/pop_template.php"></script>
<!-- 	<script src="resources/js/jyim2.js"></script> -->
	<link href="resources/css/jyim3.css" type="text/css" rel="stylesheet"><audio preload="auto" id="audio_943562"><source src="resources/js/msg1.mp3" type="audio/mpeg"><source src="search_files/msg1.ogg" type="audio/ogg"></audio><div class="im_bar_min" style="display: block;" id="im_bar"><div t="#im_friend" id="contact" class="im_btn fr im_btn_last oneCity pr im_attached_pop"><a class="im_inner_btn">联系人</a><span style="display: none;" class="amount fl"><span class="amount_leftBg fl"></span><span class="amount_centerBg fl">0</span><span class="amount_rightBg fl"></span></span><div id="im_friend" class="im_win im_samecity_div"><div class="pr im_win_title webimTop"><ul><li class="oning">初次联系</li><li>关注</li><li>好友</li></ul><div class="im_t_close webimClose"></div></div><div class="im_list"><div class="webimZaixian"><div class="webimZaixianRS">在线（<span></span><span></span><span></span>）</div><div class="webimCakanquanbu"><a href="###">查看全部&gt;&gt;</a></div></div><div class="webimList"><ul></ul><ul></ul><ul></ul></div><div class="im_loading"><table><tbody><tr><td><img src="resources/img/loading.gif"><span>正在加载，请稍候</span></td></tr></tbody></table></div><div class="webimListAnzhuang"><a href="#">安装佳缘佳信3.0，与她免费视频聊天</a></div></div></div></div><div t="#im_chatx" id="onlineTalk" class="im_btn fr im_btn_second onlineTalk pr im_attached_pop"><a class="im_inner_btn">聊天</a><span style="display: none;" class="amount fl"><span class="amount_leftBg fl"></span><span class="amount_centerBg fl">0</span><span class="amount_rightBg fl"></span></span><div id="im_chatx" class="im_win onlineTalk_content"><div class="pr im_win_title onlineTalk_content_title"><div class="title_leftBg fl"></div><h1 class="title_centerBg">聊天</h1><div class="title_rightBg fl"><a class="pr im_t_close"></a><a target="_blank" href="http://webim.jiayuan.com/messages.php" class="notes">查看全部聊天记录</a></div></div><div class="im_list"><div id="im_rec_chat_con"><span class="im_list_no_chat">暂无未读消息</span><div class="im_rec_chat"><img><span>和我聊天</span></div><div class="im_rec_chat"><img><span>和我聊天</span></div><div class="im_rec_chat"><img><span>和我聊天</span></div></div></div></div></div><div t="#im_msgx" class="im_btn fr im_btn_first message pr im_attached_pop"><a class="im_inner_btn">消息</a><span style="display: none;" class="amount fl"><span class="amount_leftBg fl"></span><span class="amount_centerBg fl">0</span><span class="amount_rightBg fl"></span></span><div id="im_msgx" class="im_win message_content"><div class="pr im_win_title message_content_title"><div class="title_leftBg fl"></div><h1 class="title_centerBg">消息</h1><div class="title_rightBg fl"><a class="pr im_t_close"></a></div></div><div class="im_list"><img class="im_jy_logo" src="resources/img/logo_prompt.jpg"></div></div></div><div class="im_btn fr letter"><a href="msg/notRead" target="_blank" class="im_inner_btn">收件箱</a><span style="display: inline;" class="amount fl"><span class="amount_leftBg fl"></span><span class="amount_centerBg fl">19</span><span class="amount_rightBg fl"></span></span></div><div style="display: none;" id="im_pop_win" class="pa im_win"><div class="im_title"><div class="im_t_tab">互动消息</div><div class="im_t_tab">交友活动</div><div class="title_rightBg fr im_t_close"></div></div><div class="im_pop_content"><img src="resources/img/logo_prompt.jpg"></div><div class="im_pop_content"><img src="resources/img/logo_prompt.jpg"></div></div><div style="display: none;" class="im_yfms_tpl0" id="im_yfms"></div><div style="display: none;" id="im_chat_pop_win" class="pa im_win"><div class="im_chat_win_title"><div class="im_chat_win_nick"></div><div class="fr im_t_close"></div></div><div class="im_chat_win_content  im_pop_content"><div><span></span><span><a class="im_tosee_chatmsg">查看详情</a></span></div></div></div><div style="display: none;" id="im_zhuanti"></div><div style="display: none;" id="im_profile_pop_win"><div class="dzhLayer"><div class="dzhLayer_top"><a href="javascript:void(0);" class="im_t_close dzhLayer_close">&nbsp;</a><div class="dzhLayer_set"><a href="javascript:void(0);" class="dzhLayer_bxs" style="display: none;">今日不再提醒</a></div></div><div class="dzhLayer_text"><p>对方在线，和TA聊聊吧</p></div><div class="dzhLayer_icon"><div class="dzhLayer_iconImg"><a href="javascript:void(0);" class="hi"><span></span><div class="tishilayer1"><p class="tishilayer_hi">想了解你更多,可以聊聊么?</p></div></a><a href="javascript:void(0);" class="face"><span></span><div class="tishilayer2"><p class="tishilayer_face">想了解你更多,可以聊聊么?</p></div></a><a href="javascript:void(0);" class="flower"><span></span><div class="tishilayer3"><p class="tishilayer_flower">想了解你更多,可以聊聊么?</p></div></a><a href="javascript:void(0);" class="heart"><span></span><div class="tishilayer4"><p class="tishilayer_xin">想了解你更多,可以聊聊么?</p></div></a></div><div class="dzhLayer_loading"><img src="resources/img/jx3_loading.gif">发送中...</div><div class="dzhLayer_loaded"><img src="resources/img/send_ok.gif">发送成功</div></div></div></div><div style="display: none;" id="im_jiaxin_pop_win"><div class="jx3_0_1_adv jx3_0_1_adv1"><div class="jx3_0_1_advTop"><a href="javascript:void(0);" class="im_t_close jx3_0_1_advClose">&nbsp;</a></div><div class="jx3_0_1_advBody"><a href="http://im.jiayuan.com/?from=rightbottom" target="_blank" class="jx3_0_1_advButton">&nbsp;</a></div></div></div><div t="#im_myjy" class="im_btn fl myJiayuan pr im_attached_pop"><a class="im_inner_btn">我的服务</a><div id="im_myjy" class="im_win myjiayuan_content"><div class="pr im_win_title myjiayuan_content_title"><div class="title_leftBg fl"></div><h1 class="title_centerBg">我的服务</h1><div class="title_rightBg fl"><a class="pr im_t_close"></a></div></div><div class="im_list"></div></div></div><ul class="fl im_service_list" id="service_list"><li class="jystamp" title="佳缘邮票"><a target="_blank" href="http://www.jiayuan.com/usercp/center/index.php">佳缘邮票</a></li><li class="speedpost" title="特快专递"><a target="_blank" href="http://www.jiayuan.com/msgapp/ems/?a=info">特快专递</a></li><li class="diamond_g" title="钻石会员"><a target="_blank" href="http://www.jiayuan.com/usercp/service/bmsg_tg2.php">钻石会员</a></li><li class="vip_g" title="VIP会员"><a target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php">VIP会员</a></li><li class="readmail_g" title="看信包月"><a target="_blank" href="http://www.jiayuan.com/usercp/service/bmsg.php">看信包月</a></li><li class="forground_g" title="排名提前"><a target="_blank" href="http://www.jiayuan.com/usercp/service/priority.php">排名提前</a></li><li class="express_g" title="超级聚光灯"><a target="_blank" href="http://www.jiayuan.com/usercp/fate_express.php">超级聚光灯</a></li></ul><div t="#im_jyapp" class="im_btn fl jiayuanCenter pr im_attached_pop"><a class="im_inner_btn">佳缘应用</a><div id="im_jyapp" class="im_win jiayuanCenter_content"><div class="pr im_win_title jiayuanCenter_content_title"><div class="title_leftBg fl"></div><h1 class="title_centerBg">佳缘应用</h1><div class="title_rightBg fl"><a class="pr im_t_close"></a></div></div><div class="im_list"></div></div></div><div style="display: none;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">专享特惠--钻石会员立减200元！仅298元/年！马上开通&gt;&gt;</a></div><div style="display: none;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">亲，教你淘最佳配偶！试下“超级聚光灯”</a></div><div style="display: block;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">做大富翁，赢大奖！</a></div><div style="display: none;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">选对“真像”，爱情“不在囧途”</a></div><div style="display: none;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">帮你快速精准锁定心仪异性，快来看看！</a></div></div><script type="text/javascript" src="resources/js/pop_freq.js"></script>
<script type="text/javascript">
    var h_body=$(document).height();
    $('.cover').height(h_body);
    if(typeof loginWindow =="object"){
        loginWindow.setX("http://search.jiayuan.com/v2/index.php");
        loginWindow.set("config",{key:55,aid:0,callback:function(){
            location.href=location.pathname;
        }
        });
    }
        //setTimeout("loginWindow.openlogindiv('login',location.href, function(){location.reload();})",5000);
</script>


</body></html>