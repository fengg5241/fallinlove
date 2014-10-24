<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
<!DOCTYPE >
<html lang="en"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="keywords" content="交友,交友网,征婚交友,网上交友,征婚,征婚网,征婚交友网,交友中心,婚恋交友">
    <meta name="description" content="青春不常在，抓紧谈恋爱！缘分可遇也可求，该出手时就出手。世纪佳缘是严肃婚恋的交友平台，提供丰富多彩的交友征婚活动，1亿会员，让缘分千万里挑一！">
    <title>佳缘登录页_世纪佳缘交友网</title>
    <link rel="stylesheet" href="resources/css/base.css">
    <link rel="stylesheet" href="resources/css/login.css">
    <script src="resources/js/beacon.js" async=""></script>
    <script src="resources/js/head_common.js" async=""></script>
    <script src="resources/js/jiayuan_logo_config.js" async=""></script>
    <script type="text/javascript">

//会员信息对象
window.HEAD_USER = {};
HEAD_USER.uid = 0;

//通用头功能函数对象
var jy_head_function = {};
jy_head_function.is_inarry = function(array, value){
//判断value是否在数组array中
var i = array.length;
while(i--){
if(array[i] === value){
return true; 
}
}
return false;
}
jy_head_function.get_top_domain = function(){
//获取顶级域名
var domain_suffix = ['com','cn','net'];//域名后缀验证配置，新后缀自行添加
var host_name= location.hostname.toLowerCase();
var host_arr = host_name.split('.');
var host_len = host_arr.length;
var head_top_domain = '';
for(var i=host_len-1; i>=0; i--){
if(this.is_inarry(domain_suffix, host_arr[i])){
head_top_domain = '.' + host_arr[i] + head_top_domain;
}else{
head_top_domain = host_arr[i] + head_top_domain;
break;
}
}
return head_top_domain;
};
jy_head_function.head_get_userinfo = function(){
//获取会员信息
HEAD_USER.ip_loc = this.head_get_cookie("ip_loc");//当前会员IP对应的地区
var profile = this.head_get_cookie("PROFILE");
if(profile && profile.length > 10){
//说明：0,uid;1,昵称;2,性别;3,头像地址;4,头像标记;5,认证;6,占位无含义;7,头像图片名称;8,征友状态;9,俱乐部等级;10,金豆数
var arr = profile.split(":");
if(/^\d{7,10}$/.test(arr[0])){
HEAD_USER.uid = arr[0];//UID
HEAD_USER.nickname = decodeURIComponent(arr[1]);//昵称
HEAD_USER.sex = arr[2];//性别
HEAD_USER.avatar_flag = arr[4];//头像状态标记
if(arr[6] == 'http'){
//兼容旧版的头像获取规则
HEAD_USER.avatar = (arr[5] == 1) ? "http://" + arr[3] + "/avatar_p.jpg" : 'http:'+arr[7];//头像
}else{
HEAD_USER.avatar = "http://" + arr[3] + "/" + arr[7];//头像
}
HEAD_USER.certify = arr[5];//认证
HEAD_USER.status = arr[8];//征友状态
HEAD_USER.level = '';//俱乐部等级
HEAD_USER.bean = 0;//俱乐部金豆数
if(arr.length >= 10){
HEAD_USER.level = arr[9];
HEAD_USER.bean = arr[10];
}
HEAD_USER.work_location = 0;
HEAD_USER.work_sublocation = 0;
work_loc = this.head_get_cookie("myloc");
if(work_loc && work_loc.length > 3){
work_loc = work_loc.split("|");
HEAD_USER.work_location = work_loc[0];//省
HEAD_USER.work_sublocation = work_loc[1];//市
}
HEAD_USER.age = this.head_get_cookie("myage");//年龄
HEAD_USER.income = this.head_get_cookie("myincome");//收入
HEAD_USER.last_login_time = this.head_get_cookie("last_login_time");//最后登录时间
}
}
return HEAD_USER;
};
jy_head_function.get_custom_avatar = function(avatar_url){
//获取小尺寸的头像
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
jy_head_function.get_head_channel = function(){
//获取频道标识
host_name = location.hostname.toLowerCase();//当前域名
var head_channel_dir_array = Array('/usercp/','/msg/','/parties/wap_clients/');//频道目录数组
var head_current_channel = host_name.split('.')[0];//获取二级子域名，处理当前头部选中链接样式
//域名转换标识
switch(head_current_channel){
case 'www':
//首页，个人资料页，小龙女频道，爱情测试，我的佳缘（非我的佳缘首页），信件，手机频道
var head_href = window.location.href;		//获取当前URL
var ch_select = 0;							//频道选择标记
for(var ch_dir in head_channel_dir_array){
if(head_channel_dir_array.hasOwnProperty(ch_dir)){//遍历时限制只遍历自身属性
if(head_href.indexOf(head_channel_dir_array[ch_dir]) >= 0){		//根据当前的URL获取频道
ch_select = 1;
break;
}
}
}
if(ch_select == 1){
switch(head_channel_dir_array[ch_dir]){
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
jy_head_function.head_get_cookie = function(c_name){
//获取指定COOKIE内容
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
jy_head_function.format_out_nav = function(tpl){
//格式化替换输出导航信息
for(key in common_nav_array){
if(common_nav_array.hasOwnProperty(key)){
tpl = tpl.replace(eval("/\{"+key+"\}/g"), common_nav_array[key]);
}
}
return tpl;
};
jy_head_function.format_date = function(t){
//时间戳转换标准日期格式
var t		= new Date(t * 1000);//JS时间戳是毫秒单位
var year	= t.getFullYear();
var month	= t.getMonth() + 1;
var date	= t.getDate();
var hour	= t.getHours();
var minute	= t.getMinutes();
var second	= t.getSeconds();
return year + "-" + month + "-" + date + " " + hour + ":" + minute + ":" + second;
};
jy_head_function.view_all_props = function(obj){
//查看对象、数组所有的属性和方法
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
jy_head_function.set_head_nav_link = function(v){
//设置导航链接显示的状态
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
jy_head_function.set_head_nav_user = function(v){
//设置导航用户信息显示的状态
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
jy_head_function.set_head_title = function(title){
//修改导航头部标题部分
if(document.getElementById('head_blue_simple')){
document.getElementById('head_blue_simple').innerHTML = title;
document.getElementById('head_blue_simple').style.display = "";
}else if(document.getElementById('head_red_simple')){
document.getElementById('head_red_simple').innerHTML = title;
document.getElementById('head_red_simple').style.display = "";
}
};
jy_head_function.strlen_ch = function(str){
//返回字符串长度，英文1，汉字2
    var real_length = 0, len = str.length, char_code = -1;
    for(var i=0; i<len; i++){
        char_code = str.charCodeAt(i);
        if(char_code >= 0 && char_code <= 128) real_length += 1;
        else real_length += 2;
    }
    return real_length;
};
jy_head_function.substr_ch = function(str, cut_len){
//截取指定长度的字符串，英文1，汉字2
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
jy_head_function.send_jy_nav_pv = function(head_nav_flag){
//通用头自定义的小图片统计方法
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
jy_head_function.head_get_userinfo();

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

var current_nav_flag = jy_head_function.get_head_channel() + '_css';
//设置当前频道导航选中样式
common_nav_array[current_nav_flag] = 'head_nav_cur';
</script>

<script type="text/javascript" src="resources/js/JY_Alert.js"></script>
<!-- released time 2014-09-03 09:38:07 -->

    <style type="text/css">
    .main{background-image:url(http://images1.jyimg.com/w4/login/v2/i/nv_1.jpg)}
  </style>
  </head>
  <body onload="onloadPage();" onkeydown="bindEnter(event)">
    <iframe src="javascript:false;" name="login_run" style="display:none;" height="0" width="0"></iframe>
    <div id="wrapper" class="wrapper">
      <div id="header" class="header">
        <div class="w fn-clear">
          <h1 class="logo">
           <script type="text/javascript">
            document.write('<a class="logo" href="http://www.jiayuan.com/" onmousedown="javascript:send_jy_pv2(\'log_m_to_jy\');" ><img height="70" src="'+head_logo_config['index_logo']+'" alt="世纪佳缘" border="0" /></a>');
          </script><a class="logo" href="http://www.jiayuan.com/" onmousedown="javascript:send_jy_pv2('log_m_to_jy');"><img src="resources/img/logo_1395045365.png" alt="世纪佳缘" border="0" height="70"></a>
            <span><img src="resources/img/logo_txt.png" alt="严肃婚恋网站，美国纳斯达克上市"></span>
          </h1>
        </div>
      </div>
      <div id="main" class="main">
        <div class="w fn-clear">
          <div id="loginForm" class="loginForm">
            <div class="loginTit">
              <h2>会员登录</h2>
            </div>
            <div class="loginInner">
              <div class="loginFalse" id="errorInfo" style="display: none;">
                <p id="errorInfop">
                  <!-- <span class="f_red">登录失败！</span>您的密码过于简单，请登录后<a href="###">修改密码</a> -->
                  
                </p>
              </div>
              <form:form name="login" id="login" method="post" commandName="loginForm" action="login">
                <div class="login_zh fn-clear">
                  <label class="lab">登录帐号</label>
                  <div class="login_inpBox">
                    <label style="display: none;" for="login_email" class="login_label">邮箱/ID/手机号</label>
                    <input class="text" name="userName" id="login_email" onfocus="clear_text(this);this.style.imeMode='disabled';" onblur="check_text(this);" value="shan5241@163.com" type="text">
                    <span style="display: inline;" class="btnDel" id="btn_del" href="" onclick="delLoginMsg();" title="删除">删除</span>
                  </div>
                </div>
                <div class="login_mm fn-clear mT10">
                  <label class="lab">密<i class="f_white">密码</i>码</label>
                  <div class="login_inpBox">
                    <label style="display: inline;" for="login_password" class="login_label">密码</label>
                    <input class="text" name="password" autocomplete="off" id="login_password" type="password">
                  </div>
                </div>
                                <p class="loginSelf mT10">
                  <input name="remem_pass" checked="checked" id="check_save" onclick="saveName(this);" type="checkbox">
                  <label><span>两周内自动登录</span></label>
                </p>
                <div class="btnsBox">
                  <a class="btnLogin" id="login_btn" href="javascript:void(0);" onclick="send_jy_pv2('log_main_btn_c');mysub();">登&nbsp;录</a>
                  <a class="forgMM" onmousedown="javascript:send_jy_pv2('log_m_forg_pass');" href="http://login.jiayuan.com/validate.php">忘记密码</a>
                </div>
                <input name="_s_x_id" value="5872938feddd9cc49b18adfd3c90f856" type="hidden">
                <input name="ljg_login" value="1" type="hidden">
                <input name="m_p_l" value="1" type="hidden">
                <input name="channel" value="0" type="hidden">
                <input name="position" value="0" type="hidden">
              </form:form>
              <div class="openId">
                <p>
                  <span class="lTit">其他帐号登录</span>
                  <a class="openId_qq" href="http://www.jiayuan.com/general/t/?forward=qqAware&amp;c=12&amp;url=http://www.jiayuan.com/usercp&amp;p=1"><i class="icon_openId icon_qq"></i>QQ帐号</a>
                  <a class="openId_sina" href="http://www.jiayuan.com/general/t/?forward=sinaAware&amp;c=12&amp;url=http://www.jiayuan.com/usercp&amp;p=2"><i class="icon_openId icon_sina"></i>新浪微博</a>
                  <a class="openId_baidu" href="http://www.jiayuan.com/general/t/?forward=baiduOauth&amp;c=12&amp;url=http://www.jiayuan.com/usercp&amp;p=5"><i class="icon_openId icon_baidu"></i>百度</a>
                </p>
                <p class="mT5">
                  <a class="openId_rr" href="http://www.jiayuan.com/general/t/?forward=renrenAware&amp;c=12&amp;url=http://www.jiayuan.com/usercp&amp;p=3" title="人人网"><i class="icon_openId icon_rr"></i><span>人人网</span></a>
                  <!-- <a class="openId_db" href="http://www.jiayuan.com/general/t/?forward=doubanAware&amp;c=12&amp;url=http://www.jiayuan.com/usercp&amp;p=6" title="豆瓣"><i class="icon_openId icon_db"></i><span>豆瓣</span></a> -->
                  <a class="openId_kxw" href="http://www.jiayuan.com/general/t/?forward=kaixinAware&amp;c=12&amp;url=http://www.jiayuan.com/usercp&amp;p=4" title="开心网"><i class="icon_openId icon_kxw"></i><span>开心网</span></a>
                  <a class="openId_zfb" href="http://www.jiayuan.com/general/t/?forward=alipayOauth&amp;c=12&amp;url=http://www.jiayuan.com/usercp&amp;p=7" title="支付宝"><i class="icon_openId icon_zfb"></i><span>支付宝</span></a>
                </p>
              </div>
              <p class="goReg">
                <a href="http://reg.jiayuan.com/?bd=9527" onmousedown="javascript:send_jy_pv2('log_m_to_reg');">还不是会员？立即注册</a>
              </p>
            </div>
          </div>
        </div>
      </div>
      <div id="footer" class="footer w">
        <div class="shareXF">
          <a href="http://xingfu.jiayuan.com/" onmousedown="javascript:send_jy_pv2('log_m_to_xingfu');" target="_blank">我已成功征友，我要晒幸福</a>
        </div>
        <script type="text/javascript" src="resources/js/w4-simple.js"></script><style type="text/css">
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

var common_bot_host = window.location.host.toLowerCase();		//获取域名

//显示版权信息区域
document.getElementById("bottom_site_copyright").style.display = '';

var common_bot_sub_domain = get_all_channel(common_bot_host);	//获取二级域名（获取相应的频道/栏目标识）

var common_bot_time = new Date().getTime();						//获取当前时间，配合随机数保证每一次访问小图片参数唯一
if(common_bot_domain_array[common_bot_sub_domain] != 1){
common_bot_sub_domain = 'other';							//其他域名
}

var comm_bot_uid = '';
//判断是否有JY组件
if(typeof JY != "undefined"){
comm_bot_uid = JY.login.getUser().uid;						//获取UID，用于UV统计
if(comm_bot_uid > 0){
comm_bot_uid = comm_bot_uid + '|'						//如果存在UID，拼接UID字符串
}else{
comm_bot_uid = '';										//如果UID不存在，则清空获取的内容
}
}
if(common_bot_sub_domain != 'passport'){						//passport使用的是https协议，排除
document.write('<img src="http://pv2.jyimg.com/any/a.gif?||jy_site_all_pv|' + common_bot_sub_domain + '|' + comm_bot_uid + '&t='+common_bot_time + '' + commonBottomRndNum(10000, 99999) + '|" style="display:none" />');
}

//随机数
function commonBottomRndNum(d, u)
{
var rnd= parseInt(Math.random()*(u-d+1)+d); 
return rnd;
}

//获取频道标识
function get_all_channel(host_name)
{
//频道级别的目录配置数组，URL包含以下目录的单独统计
var bottom_channel_dir_array = Array(
'/usercp/?from=','/usercp/','/msg/','/club/','/meilistar/','/cooperation/','/helpcenter/','/guard/',
'/parties/wap_clients/','/parties/','/subject/','/master/','/paper/','/news/'
);
//获取二级域，做频道标识
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

<!-- released time 2014-09-09 15:19:30 -->

      </div>
    </div>
  
<script type="text/javascript">
  var contextPath = "http://images1.jyimg.com/w4/login/";
  function bindEnter(obj) {
    btn = document.getElementById("login_btn");
    if(obj.keyCode == 13 || obj.which == 13){
      btn.click();
      btn.returnValue = false;
    }
  }
  function delLoginMsg(){
    var login_email = document.getElementById("login_email");
    login_email.value = "";
    check_text(login_email);
  }
  document.getElementById("login_email").onkeydown = function(e){
    e = e || window.event;
    if(e.keyCode == 9 || e.which == 9){
      document.getElementById('btn_del').focus();
    }
    if((e.keyCode == 13 || e.which == 13) ){
        stopBubble(e);
        if(document.getElementById('login_email').value == ''){
          show_msg('请输入用户名！');
        }else{
          setTimeout(function(){document.getElementById('login_password').focus();},100);
        }
    } 
  }
  function stopBubble(e) {
      if (e && e.stopPropagation) {//非IE
          e.stopPropagation();
      }else {//IE
          window.event.cancelBubble = true;
      }
  }
  function get_code(){
    document.getElementById('validate_img').src='/antispam_v2.php?v=2&rn='+Math.random().toString();
  }
</script>
<script type="text/javascript" src="resources/js/jquery-1.js"></script>
<script type="text/javascript" src="resources/js/login.js"></script>
<script type="text/javascript" src="resources/js/pv.js"></script>
<!--[if lte ie 6]>
<script type="text/javascript"> $(function() {var w = $(window).width(); 
  $(window).resize(function() {w = $(window).width(); wrapperMinWidth(); }); 
  function wrapperMinWidth() {$('#wrapper').css('width', w <= 950 ? 950 : 'auto'); } wrapperMinWidth(); }) </script> 
<![endif]-->
</body></html>