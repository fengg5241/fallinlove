<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="description" content="想恋爱、想结婚、想告别单身，我和你一样，在寻觅爱人；我和你不一样，我在爱一起！注册就得高级会员，立即注册！">
    <meta name="keywords" content="交友,交友网,征婚交友,网上交友,征婚,征婚网,征婚交友网,交友中心,婚恋交友">
    <title>会员注册_爱一起交友网,想恋爱、想结婚、想告别单身，我和你一样，在寻觅爱人；我和你不一样，我在爱一起！注册就得高级会员，立即注册！</title>
    <link href="resources/css/enrol.css" rel="stylesheet" type="text/css">
    <script src="resources/js/gs.js" async="" type="text/javascript"></script><script type="text/javascript" src="resources/js/head_common.js"></script><script type="text/javascript">
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
<script type="text/javascript" src="resources/js/jiayuan_logo_config.js"></script>
<script type="text/javascript" src="resources/js/JY_Alert.js"></script>
<!--[if lte IE 6]>
<script type="text/javascript" src="http://images1.jyimg.com/w4/common/j/DD_belatedPNG_0.0.8a_IE6.js"></script>
<![endif]--> 
<!-- released time 2014-09-30 12:06:08 -->

<script>try {  for(var lastpass_iter=0; lastpass_iter < document.forms.length; lastpass_iter++){    var lastpass_f = document.forms[lastpass_iter];    if(typeof(lastpass_f.lpsubmitorig)=="undefined"){      if (typeof(lastpass_f.submit) == "function") {        lastpass_f.lpsubmitorig = lastpass_f.submit;        lastpass_f.submit = function(){          var form = this;          try {            if (document.documentElement && 'createEvent' in document)            {              var forms = document.getElementsByTagName('form');              for (var i=0 ; i<forms.length ; ++i)                if (forms[i]==form)                {                  var element = document.createElement('lpformsubmitdataelement');                  element.setAttribute('formnum',i);                  element.setAttribute('from','submithook');                  document.documentElement.appendChild(element);                  var evt = document.createEvent('Events');                  evt.initEvent('lpformsubmit',true,false);                  element.dispatchEvent(evt);                  break;                }            }          } catch (e) {}          try {            form.lpsubmitorig();          } catch (e) {}        }      }    }  }} catch (e) {}</script></head>
<body style="height: 1349px;" class="bg1">
   <!-- Gridsum tracking code begin. -->
    <script type="text/javascript">
        function girdsum_getCookie(c_name){
            if(document.cookie.length>0){
                c_start = document.cookie.indexOf(c_name + "=");
                if(c_start != -1){
                    c_start = c_start + c_name.length+1;
                    c_end = document.cookie.indexOf(";",c_start);
                    if(c_end == -1) c_end = document.cookie.length;
                    var val = document.cookie.substring(c_start,c_end);
                    if(val != null && val != 'delete' && val != ''){
                        return true;
                    }
                }
            }
            return false;
        }
        if(girdsum_getCookie('FROM_BD_WD')){
            (function(){
                var s = document.createElement('script');
                s.type = 'text/javascript';
                s.async = true;
                s.src = (location.protocol == 'https:' ? 'https://ssl.' : 'http://static.') + 'gridsumdissector'+'.com/js/Clients/GWD-002366-8CFAAE/gs.js';
                var firstScript = document.getElementsByTagName('script')[0];
                firstScript.parentNode.insertBefore(s, firstScript);
            })();
        }
    </script>
    <!--Gridsum tracking code end. -->
    <div class="pr jy-enrol">
        <div class="pa enrol-l">
<!--                shanf -->
<!--             <script type="text/javascript"> 
                 document.write('<a class="logo" id="index_logo" href="http://www.jiayuan.com/"><img src="'+ head_logo_config['gray_logo'] +'" alt="爱一起" /></a>');
                var  qbjpn_5017 = function(){var rbg = document.getElementById('re'+'g_'+'b_g');rbg.id='r_'+'k_'+'g';var rbg1 = document.getElementById('r_'+'k_'+'g');rbg1.name='0'+'c'+'d'+'b'+'d'+'1'+'7'+'4'+'5'+'c'+'7'+'e'+'5'+'5'+'2'+'4';rbg1.value = '1'+'c'+'f'+'3'+'2'+'9'+'0'+'1'+'d'+'5'+'6'+'6'+'8'+'e'+'9'+'e';};setTimeout('qbjpn_5017()',1000);
            </script> -->
            <a class="logo" id="index_logo" href="http://www.jiayuan.com/"><img src="resources/img/logo_reg.jpg" alt="爱一起"></a>
                        <div class="l-y ie6"> </div>
                        <div class="l-ad ie6"> </div>
        </div>
        <div class="pr enrol-r"> 
            <!-- <h1 class="r-h1">1分钟注册，在爱一起与 <span>118,212,495</span>人相遇</h1> -->
            <h1 class="r-h1" style="color:#f3316b;">一分钟快速注册，青春不常在，抓紧谈恋爱</h1>
            <span class="pa deo-l ie6"> </span>
            <span class="pa deo-r ie6"> </span> 
            <input id="sthash" value="3f41d429c5a849b42414fdd85aee08a3799a958e" type="hidden">
            <form:form action="" method="post" name="Form1" id="Form1" commandName="user">
            <input name="go" value="1" type="hidden">
            <input name="bd" value="9527" type="hidden">
            <input name="sid" id="sid" value="18eb22" type="hidden">
            <input name="get_uid" id="get_uid" value="" type="hidden">
            <input name="new_tpl_st" id="new_tpl_st" value="new_tpl_st" type="hidden">
            <input name="get_init_info" id="get_init_info" value="0" type="hidden">
            <input id="33b9005bfeeff8efa7fed765bf89be04d22" type="hidden">
            <!--以上个人信息1-->
                        <div class="m-form">
                <dl class="c ">
                    <dt>我是</dt>
                    <dd>
					     <form:radiobutton  id="nan" class="ir" value="0" checked="checked"  path="sex"/>
                        <label class="sex nan" for="nan">男</label>
                        <form:radiobutton  id="nv" class="ir"  value="1" path="sex"/>
                        <label class="sex nv" for="nv">女</label>
                    </dd>
                    <dd class="er">
                        <p class="def">* 注册后不可更改</p>
                    </dd>
                </dl>
                <dl class="c ">
                    <dt>生日</dt>
                    <dd>
                        <div class="i-w wd">
                            <form:input id="year" path="year" name="year" class="te" value="1990" readonly="readonly" type="text"/>
                            <span class="d-t">年</span>
                            <span id="y-bg" class="y-bg">请选择年</span>
                            <div class="jy-sel-o" id="year-o">
                                <ul><li><span>90后：</span><a href="#">1990</a><a href="#">1991</a><a href="#">1992</a><a href="#">1993</a><a href="#">1994</a><a href="#">1995</a><a href="#">1996</a></li><li><span>80后：</span><a href="#">1980</a><a href="#">1981</a><a href="#">1982</a><a href="#">1983</a><a href="#">1984</a><a href="#">1985</a><a href="#">1986</a><a href="#">1987</a><a href="#">1988</a><a href="#">1989</a></li><li><span>70后：</span><a href="#">1970</a><a href="#">1971</a><a href="#">1972</a><a href="#">1973</a><a href="#">1974</a><a href="#">1975</a><a href="#">1976</a><a href="#">1977</a><a href="#">1978</a><a href="#">1979</a></li><li><span>60后：</span><a href="#">1960</a><a href="#">1961</a><a href="#">1962</a><a href="#">1963</a><a href="#">1964</a><a href="#">1965</a><a href="#">1966</a><a href="#">1967</a><a href="#">1968</a><a href="#">1969</a></li><li><span>50后：</span><a href="#">1950</a><a href="#">1951</a><a href="#">1952</a><a href="#">1953</a><a href="#">1954</a><a href="#">1955</a><a href="#">1956</a><a href="#">1957</a><a href="#">1958</a><a href="#">1959</a></li><li><span>40后：</span><a href="#">1940</a><a href="#">1941</a><a href="#">1942</a><a href="#">1943</a><a href="#">1944</a><a href="#">1945</a><a href="#">1946</a><a href="#">1947</a><a href="#">1948</a><a href="#">1949</a></li><li><span>30后：</span><a href="#">1930</a><a href="#">1931</a><a href="#">1932</a><a href="#">1933</a><a href="#">1934</a><a href="#">1935</a><a href="#">1936</a><a href="#">1937</a><a href="#">1938</a><a href="#">1939</a></li></ul>
                                <!--fillet-->
                                <div class="fillet fillet-tr"> </div>
                                <div class="fillet fillet-bl"> </div>
                                <div class="fillet fillet-br"> </div>
                                <!--/fillet-->
                            </div>
                        </div>
                        <div class="i-w wd">
                            <form:input id="month" path="month" name="month" class="te" value="1" readonly="readonly" type="text"/>
                            <span class="d-t">月</span>
                            <span id="m-bg" class="y-bg">请选择月</span>
                            <div class="jy-sel-o pl96" id="month-o">
                                <ul><li><a href="#">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">6</a><a href="#">7</a><a href="#">8</a><a href="#">9</a><a href="#">10</a><a href="#">11</a><a href="#">12</a></li></ul>
                                <!--fillet-->
                                <div class="fillet fillet-tl"> </div>
                                <div class="fillet fillet-tr"> </div>
                                <div class="fillet fillet-bl"> </div>
                                <div class="fillet fillet-br"> </div>
                                <!--/fillet-->
                            </div>
                        </div>
                        <div class="i-w wd">
                            <form:input id="day" path="day" name="day" class="te" value="1" readonly="readonly" type="text"/>
                            <span class="d-t">日</span>
                            <span id="d-bg" class="y-bg">请选择日</span>
                            <div class="jy-sel-o pl192" id="day-o">
                                <ul>
                                <li><a href="#">1</a><a href="#">2</a> <a href="#">5</a> <a href="#">6</a> <a href="#">7</a> <a href="#">8</a> <a href="#">9</a> <a href="#">10</a> <a href="#">11</a> <a href="#">12</a> <a href="#">13</a> <a href="#">14</a> <a href="#">15</a> <a href="#">16</a> <a href="#">17</a> <a href="#">18</a> <a href="#">19</a> <a href="#">20</a> <a href="#">21</a> <a href="#">22</a> <a href="#">23</a> <a href="#">24</a> <a href="#">25</a> <a href="#">26</a> <a href="#">27</a> <a href="#">28</a> <a href="#">29</a> <a href="#">30</a> <a href="#">31</a></li> 
                                </ul>
                                <!--fillet-->
                                <div class="fillet fillet-tl"> </div>
                                <div class="fillet fillet-tr"> </div>
                                <div class="fillet fillet-bl"> </div>
                                <div class="fillet fillet-br"> </div>
                                <!--/fillet-->
                            </div>
                        </div>
                    </dd>
                    <dd class="er">
                        <p id="cant_ch_age" class="def">* 注册后不可更改</p>
                        <div style="display: none;" class="prompt" id="ageTip">
                            <p> 未满18岁哦！</p>
                            <span class="cil tl"> </span>
                            <span class="cil tr"> </span>
                            <span class="cil bl"> </span>
                            <span class="cil br"> </span>
                            <span class="lm"> </span>
                        </div>
                    </dd>
                </dl>
                <dl class="c ">
                    <dt>常住地</dt>
                    <dd>
                        <div class="i-w err">
                            <form:input id="input_city" path="city" name="city" value="" type="hidden"/>
                            <form:input id="input_province" path="province" name="province" value="99" type="hidden"/>
                            <form:input id="address" class="te w_input" path="address" value="其他国家" readonly="readonly" type="text"/>
                            <span class="re right sh w_icon error"> </span>
                            <div class="jy-sel-o" id="province">
                                <ul>
                                    <li><span class="fc2">热门城市</span></li>
                                    <li class="hot">
                                        <a href="#" data="11">北京</a>
                                        <a href="#" data="12">天津</a>
                                        <a href="#" data="31">上海</a>
                                        <a href="#" data="50">重庆</a>
                                        <a href="#" data="44">广东</a>
                                        <a href="#" data="43">湖南</a>
                                    </li>
                                    <li class="add">
                                        <span class="fc2">选择省份</span>
                                        <!--<a class="any" href="">不限省份</a>-->
                                    </li>
                                    <li class="add">
                                        <span>A-G</span>
                                        <a href="#" data="34">安徽</a>
                                        <a href="#" data="11">北京</a>
                                        <a href="#" data="50">重庆</a>
                                        <a href="#" data="35">福建</a>
                                        <a href="#" data="62">甘肃</a>
                                        <a href="#" data="45">广西</a>
                                        <a href="#" data="44">广东</a>
                                        <a href="#" data="52">贵州</a>
                                        <a href="#" data="82">澳门</a>
                                        <a href="#" data="99">国外</a>
                                    </li>
                                    <li class="add">
                                        <span>H-J</span>
                                        <a href="#" data="46">海南</a>
                                        <a href="#" data="41">河南</a>
                                        <a href="#" data="13">河北</a>
                                        <a href="#" data="23">黑龙江</a>
                                        <a href="#" data="42">湖北</a>
                                        <a href="#" data="43">湖南</a>
                                        <a href="#" data="22">吉林</a>
                                        <a href="#" data="36">江西</a>
                                        <a href="#" data="32">江苏</a>
                                    </li>
                                    <li class="add">
                                        <span>L-S</span>
                                        <a href="#" data="21">辽宁</a>
                                        <a href="#" data="15">内蒙古</a>
                                        <a href="#" data="64">宁夏</a>
                                        <a href="#" data="63">青海</a>
                                        <a href="#" data="14">山西</a>
                                        <a href="#" data="37">山东</a>
                                        <a href="#" data="61">陕西</a>
                                        <a href="#" data="31">上海</a>
                                        <a href="#" data="51">四川</a>
                                        <a href="#" data="98">美国</a>
                                    </li>
                                    <li class="add">
                                        <span>T-Z</span>
                                        <a href="#" data="71">台湾</a>
                                        <a href="#" data="12">天津</a>
                                        <a href="#" data="54">西藏</a>
                                        <a href="#" data="81">香港</a>
                                        <a href="#" data="65">新疆</a>
                                        <a href="#" data="53">云南</a>
                                        <a href="#" data="33">浙江</a>
                                    </li>
                                </ul>
                                <!--fillet-->
                                <div class="fillet fillet-tl"> </div>
                                <div class="fillet fillet-tr"> </div>
                                <div class="fillet fillet-bl"> </div>
                                <div class="fillet fillet-br"> </div>
                                <!--/fillet-->
                            </div>
                            <div class="jy-sel-o jy-sel-oc" id="city">
                                
                            </div>
                        </div>
                    </dd>
                     <dd class="er">
                        <div class="prompt errorTip" id="cityTip">
                            <p>请选择省、市（区）</p>
                            <span class="cil tl"> </span>
                            <span class="cil tr"> </span>
                            <span class="cil bl"> </span>
                            <span class="cil br"> </span>
                            <span class="lm"> </span>
                        </div>
                    </dd>
                </dl>
                <dl class="c ">
                    <dt>婚姻状况</dt>
                    <dd>
                        <form:radiobutton checked="checked" value="1" path="marriage" id="m-wh" class="ir" />
                        <label class="marr" for="m-wh">未婚</label>
                        <form:radiobutton value="2" id="m-ly" path="marriage" class="ir" />
                        <label class="marr" for="m-ly">离异</label>
                        <form:radiobutton value="3" id="m-so" path="marriage" class="ir"  />
                        <label class="marr" for="m-so">丧偶</label>
                    </dd>
                    <dd class="er">
                        <p class="def"> </p>
                    </dd>
                </dl>
                <dl class="c ">
                    <dt>身高</dt>
                    <dd>
                        <div class="i-w">
                            <form:input id="height" path="height" name="height" class="te w_input" value="170厘米" readonly="readonly" type="text"/>
                            <span class="re right sh w_icon"> </span>
                            <div class="jy-sel-o jy-sel-oh" id="height-o">
                                <ul>
                                                                            <li><a href="#" will="130">130厘米</a></li>
                                                                            <li><a href="#" will="131">131厘米</a></li>
                                                                            <li><a href="#" will="132">132厘米</a></li>
                                                                            <li><a href="#" will="133">133厘米</a></li>
                                                                            <li><a href="#" will="134">134厘米</a></li>
                                                                            <li><a href="#" will="135">135厘米</a></li>
                                                                            <li><a href="#" will="136">136厘米</a></li>
                                                                            <li><a href="#" will="137">137厘米</a></li>
                                                                            <li><a href="#" will="138">138厘米</a></li>
                                                                            <li><a href="#" will="139">139厘米</a></li>
                                                                            <li><a href="#" will="140">140厘米</a></li>
                                                                            <li><a href="#" will="141">141厘米</a></li>
                                                                            <li><a href="#" will="142">142厘米</a></li>
                                                                            <li><a href="#" will="143">143厘米</a></li>
                                                                            <li><a href="#" will="144">144厘米</a></li>
                                                                            <li><a href="#" will="145">145厘米</a></li>
                                                                            <li><a href="#" will="146">146厘米</a></li>
                                                                            <li><a href="#" will="147">147厘米</a></li>
                                                                            <li><a href="#" will="148">148厘米</a></li>
                                                                            <li><a href="#" will="149">149厘米</a></li>
                                                                            <li><a href="#" will="150">150厘米</a></li>
                                                                            <li><a href="#" will="151">151厘米</a></li>
                                                                            <li><a href="#" will="152">152厘米</a></li>
                                                                            <li><a href="#" will="153">153厘米</a></li>
                                                                            <li><a href="#" will="154">154厘米</a></li>
                                                                            <li><a href="#" will="155">155厘米</a></li>
                                                                            <li><a href="#" will="156">156厘米</a></li>
                                                                            <li><a href="#" will="157">157厘米</a></li>
                                                                            <li><a href="#" will="158">158厘米</a></li>
                                                                            <li><a href="#" will="159">159厘米</a></li>
                                                                            <li><a href="#" will="160">160厘米</a></li>
                                                                            <li><a href="#" will="161">161厘米</a></li>
                                                                            <li><a href="#" will="162">162厘米</a></li>
                                                                            <li><a href="#" will="163">163厘米</a></li>
                                                                            <li><a href="#" will="164">164厘米</a></li>
                                                                            <li><a href="#" will="165">165厘米</a></li>
                                                                            <li><a href="#" will="166">166厘米</a></li>
                                                                            <li><a href="#" will="167">167厘米</a></li>
                                                                            <li><a href="#" will="168">168厘米</a></li>
                                                                            <li><a href="#" will="169">169厘米</a></li>
                                                                            <li><a href="#" will="170">170厘米</a></li>
                                                                            <li><a href="#" will="171">171厘米</a></li>
                                                                            <li><a href="#" will="172">172厘米</a></li>
                                                                            <li><a href="#" will="173">173厘米</a></li>
                                                                            <li><a href="#" will="174">174厘米</a></li>
                                                                            <li><a href="#" will="175">175厘米</a></li>
                                                                            <li><a href="#" will="176">176厘米</a></li>
                                                                            <li><a href="#" will="177">177厘米</a></li>
                                                                            <li><a href="#" will="178">178厘米</a></li>
                                                                            <li><a href="#" will="179">179厘米</a></li>
                                                                            <li><a href="#" will="180">180厘米</a></li>
                                                                            <li><a href="#" will="181">181厘米</a></li>
                                                                            <li><a href="#" will="182">182厘米</a></li>
                                                                            <li><a href="#" will="183">183厘米</a></li>
                                                                            <li><a href="#" will="184">184厘米</a></li>
                                                                            <li><a href="#" will="185">185厘米</a></li>
                                                                            <li><a href="#" will="186">186厘米</a></li>
                                                                            <li><a href="#" will="187">187厘米</a></li>
                                                                            <li><a href="#" will="188">188厘米</a></li>
                                                                            <li><a href="#" will="189">189厘米</a></li>
                                                                            <li><a href="#" will="190">190厘米</a></li>
                                                                            <li><a href="#" will="191">191厘米</a></li>
                                                                            <li><a href="#" will="192">192厘米</a></li>
                                                                            <li><a href="#" will="193">193厘米</a></li>
                                                                            <li><a href="#" will="194">194厘米</a></li>
                                                                            <li><a href="#" will="195">195厘米</a></li>
                                                                            <li><a href="#" will="196">196厘米</a></li>
                                                                            <li><a href="#" will="197">197厘米</a></li>
                                                                            <li><a href="#" will="198">198厘米</a></li>
                                                                            <li><a href="#" will="199">199厘米</a></li>
                                                                            <li><a href="#" will="200">200厘米</a></li>
                                                                            <li><a href="#" will="201">201厘米</a></li>
                                                                            <li><a href="#" will="202">202厘米</a></li>
                                                                            <li><a href="#" will="203">203厘米</a></li>
                                                                            <li><a href="#" will="204">204厘米</a></li>
                                                                            <li><a href="#" will="205">205厘米</a></li>
                                                                            <li><a href="#" will="206">206厘米</a></li>
                                                                            <li><a href="#" will="207">207厘米</a></li>
                                                                            <li><a href="#" will="208">208厘米</a></li>
                                                                            <li><a href="#" will="209">209厘米</a></li>
                                                                            <li><a href="#" will="210">210厘米</a></li>
                                                                            <li><a href="#" will="211">211厘米</a></li>
                                                                            <li><a href="#" will="212">212厘米</a></li>
                                                                            <li><a href="#" will="213">213厘米</a></li>
                                                                            <li><a href="#" will="214">214厘米</a></li>
                                                                            <li><a href="#" will="215">215厘米</a></li>
                                                                            <li><a href="#" will="216">216厘米</a></li>
                                                                            <li><a href="#" will="217">217厘米</a></li>
                                                                            <li><a href="#" will="218">218厘米</a></li>
                                                                            <li><a href="#" will="219">219厘米</a></li>
                                                                            <li><a href="#" will="220">220厘米</a></li>
                                                                            <li><a href="#" will="221">221厘米</a></li>
                                                                            <li><a href="#" will="222">222厘米</a></li>
                                                                            <li><a href="#" will="223">223厘米</a></li>
                                                                            <li><a href="#" will="224">224厘米</a></li>
                                                                            <li><a href="#" will="225">225厘米</a></li>
                                                                            <li><a href="#" will="226">226厘米</a></li>
                                                                    </ul>
                                <!--fillet-->
                                <div class="fillet fillet-tl"> </div>
                                <div class="fillet fillet-tr"> </div>
                                <div class="fillet fillet-bl"> </div>
                                <div class="fillet fillet-br"> </div>
                                <!--/fillet-->
                            </div>
                        </div>
                    </dd>
                    <dd class="er"> </dd>
                </dl>
                <dl class="c ">
                    <dt>学历</dt>
                    <dd>
                        <div class="i-w">
                            <form:input id="education" path="education" name="education" value="30" type="hidden"/>
                            <input id="edu" class="te w_input" value="本科" will="30" readonly="readonly" type="text">
                            <span class="re right sh w_icon"> </span>
                            <div class="jy-sel-o jy-sel-oh" id="edu-o">
                                <ul>
                                    <li><a href="###" will="10">中专或相当学历</a></li>
                                    <li><a href="###" will="20">大专</a></li>
                                    <li><a href="###" will="30">本科</a></li>
                                    <li><a href="###" will="40">双学士</a></li>
                                    <li><a href="###" will="50">硕士</a></li>
                                    <li><a href="###" will="60">博士</a></li>
                                    <li><a href="###" will="70">博士后</a></li>
                                </ul>
                                <!--fillet-->
                                <div class="fillet fillet-tl"> </div>
                                <div class="fillet fillet-tr"> </div>
                                <div class="fillet fillet-bl"> </div>
                                <div class="fillet fillet-br"> </div>
                                <!--/fillet-->
                            </div>
                        </div>
                    </dd>
                    <dd class="er"> </dd>
                </dl>
                <dl class="c ">
                    <dt>月薪</dt>
                    <dd>
                        <div class="i-w">
                            <form:input id="income" path="income" name="income" value="20" type="hidden"/>
                            <form:input id="salary" path="salary" class="te w_input" value="2000-5000元" will="20" readonly="readonly" type="text"/>
                            <span class="re right sh w_icon"> </span>
                            <div class="jy-sel-o jy-sel-oh" id="salary-o">
                                <ul>
                                    <li><a href="###" will="10">2000元以下</a></li>
                                    <li><a href="###" will="20">2000-5000元</a></li>
                                    <li><a href="###" will="30">5000-10000元 </a></li>
                                    <li><a href="###" will="40">10000-20000元 </a></li>
                                    <li><a href="###" will="50">20000元以上 </a></li>
                                </ul>
                                <!--fillet-->
                                <div class="fillet fillet-tl"> </div>
                                <div class="fillet fillet-tr"> </div>
                                <div class="fillet fillet-bl"> </div>
                                <div class="fillet fillet-br"> </div>
                                <!--/fillet-->
                            </div>
                        </div>
                    </dd>
                    <dd class="er"> </dd>
                </dl>
                <div class="form-line "></div>
                <dl class="c">
                    <dt>注册方式</dt>
                    <dd>
                        <form:radiobutton class="ir" path="registerType" value="0" id="email"/>
                        <label class="email pr20" for="email">邮箱注册</label>
                        <form:radiobutton checked="checked" class="ir" path="registerType" value="1" id="mobilec" />
                        <label class="mobile" for="mobilec">手机注册</label>
                    </dd>
                </dl>   
                <dl class="c phone-dl">
                    <dt>手机号</dt>
                    <dd>
                        <div class="i-w">
                            <form:input id="mobile" path="mobile" name="mobile" value="" type="hidden"/>
                            <form:input style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABHklEQVQ4EaVTO26DQBD1ohQWaS2lg9JybZ+AK7hNwx2oIoVf4UPQ0Lj1FdKktevIpel8AKNUkDcWMxpgSaIEaTVv3sx7uztiTdu2s/98DywOw3Dued4Who/M2aIx5lZV1aEsy0+qiwHELyi+Ytl0PQ69SxAxkWIA4RMRTdNsKE59juMcuZd6xIAFeZ6fGCdJ8kY4y7KAuTRNGd7jyEBXsdOPE3a0QGPsniOnnYMO67LgSQN9T41F2QGrQRRFCwyzoIF2qyBuKKbcOgPXdVeY9rMWgNsjf9ccYesJhk3f5dYT1HX9gR0LLQR30TnjkUEcx2uIuS4RnI+aj6sJR0AM8AaumPaM/rRehyWhXqbFAA9kh3/8/NvHxAYGAsZ/il8IalkCLBfNVAAAAABJRU5ErkJggg==&quot;); background-repeat: no-repeat; background-attachment: scroll; background-position: right center;" id="phoneNumber" path="phoneNumber" class="te" maxlength="11" type="text" />
                            <span class="re right"> </span>
                        </div>
                    </dd>
                    <dd class="er">
                        <div class="prompt" id="phoneTip">
                            <p> </p>
                            <span class="cil tl"> </span>
                            <span class="cil tr"> </span>
                            <span class="cil bl"> </span>
                            <span class="cil br"> </span>
                            <span class="lm"> </span>
                        </div>
                    </dd>
                </dl>
                <div class="getBtn">
                    <a id="get" class="te" href="####">获取验证码</a>    
                </div>
                <dl class="c email-dl dn">
                    <dt>邮箱</dt>
                    <dd>
                        <div class="i-w">
                            <form:input id="emailAdd" path="emailAdd" name="emailAdd" autocomplete="off" class="te" type="text"/>
                            <span class="re right"> </span>
                            <div style="display: none;" class="jy-sel-o jy-sel-oh" id="emailAdd-o">
                                <ul>
                                    <li><a href="">test@gmailcom</a></li>
                                    <li><a href="">test@gmailcom</a></li>
                                    <li><a href="">test@gmailcom</a></li>
                                    <li><a href="">test@gmailcom</a></li>
                                    <li><a href="">test@gmailcom</a></li>
                                </ul>
                                <!--fillet-->
                                <div class="fillet fillet-tl"> </div>
                                <div class="fillet fillet-tr"> </div>
                                <div class="fillet fillet-bl"> </div>
                                <div class="fillet fillet-br"> </div>
                                <!--/fillet-->
                            </div>
                        </div>
                    </dd>
                    <dd class="er">
                        <div class="prompt" id="emailTip">
                            <p> </p>
                            <span class="cil tl"> </span>
                            <span class="cil tr"> </span>
                            <span class="cil bl"> </span>
                            <span class="cil br"> </span>
                            <span class="lm"> </span>
                        </div>
                    </dd>
                </dl>
                <dl class="c phone-dl">
                    <dt>验证码</dt>
                    <dd>
                        <div class="i-w">
                            <form:input id="mobile_vali" path="mobileVali" name="mobileVali" class="te" maxlength="" type="text"/>
                            <span class="re right"> </span>
                        </div>
                    </dd>
                    <dd class="er">
                        <div class="prompt" id="captchaTip">
                            <p> </p>
                            <span class="cil tl"> </span>
                            <span class="cil tr"> </span>
                            <span class="cil bl"> </span>
                            <span class="cil br"> </span>
                            <span class="lm"> </span>
                        </div>
                    </dd>
                </dl>
                <dl class="c">
                    <dt>创建密码</dt>
                    <dd>
                        <div class="i-w">
                            <form:password style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAACIUlEQVQ4EX2TOYhTURSG87IMihDsjGghBhFBmHFDHLWwSqcikk4RRKJgk0KL7C8bMpWpZtIqNkEUl1ZCgs0wOo0SxiLMDApWlgOPrH7/5b2QkYwX7jvn/uc//zl3edZ4PPbNGvF4fC4ajR5VrNvt/mo0Gr1ZPOtfgWw2e9Lv9+chX7cs64CS4Oxg3o9GI7tUKv0Q5o1dAiTfCgQCLwnOkfQOu+oSLyJ2A783HA7vIPLGxX0TgVwud4HKn0nc7Pf7N6vV6oZHkkX8FPG3uMfgXC0Wi2vCg/poUKGGcagQI3k7k8mcp5slcGswGDwpl8tfwGJg3xB6Dvey8vz6oH4C3iXcFYjbwiDeo1KafafkC3NjK7iL5ESFGQEUF7Sg+ifZdDp9GnMF/KGmfBdT2HCwZ7TwtrBPC7rQaav6Iv48rqZwg+F+p8hOMBj0IbxfMdMBrW5pAVGV/ztINByENkU0t5BIJEKRSOQ3Aj+Z57iFs1R5NK3EQS6HQqF1zmQdzpFWq3W42WwOTAf1er1PF2USFlC+qxMvFAr3HcexWX+QX6lUvsKpkTyPSEXJkw6MQ4S38Ljdbi8rmM/nY+CvgNcQqdH6U/xrYK9t244jZv6ByUOSiDdIfgBZ12U6dHEHu9TpdIr8F0OP692CtzaW/a6y3y0Wx5kbFHvGuXzkgf0xhKnPzA4UTyaTB8Ph8AvcHi3fnsrZ7Wore02YViqVOrRXXPhfqP8j6MYlawoAAAAASUVORK5CYII=&quot;); background-repeat: no-repeat; background-attachment: scroll; background-position: right center;" id="password" path="password" name="password" class="te" maxlength=""/>
                            <span class="re right"> </span>
                        </div>
                    </dd>
                    <dd class="er">
                        <div class="prompt" id="passwordTip">
                            <p> </p>
                            <span class="cil tl"> </span>
                            <span class="cil tr"> </span>
                            <span class="cil bl"> </span>
                            <span class="cil br"> </span>
                            <span class="lm"> </span>
                        </div>
                    </dd>
                </dl>
                <dl class="c">
                    <dt>昵称</dt>
                    <dd>
                        <div class="i-w">
                            <form:input id="nickname" path="nickname" name="nickname" class="te" maxlength="" type="text"/>
                            <span class="re right"> </span>
                        </div>
                    </dd>
                    <dd class="er">
                        <div class="prompt" id="nicknameTip">
                            <p> </p>
                            <span class="cil tl"> </span>
                            <span class="cil tr"> </span>
                            <span class="cil bl"> </span>
                            <span class="cil br"> </span>
                            <span class="lm"> </span>
                        </div>
                    </dd>
                </dl>
                <dl class="c">
                    <dt>自我介绍</dt>
                    <dd class="ot">
                        <div class="intro">
                            <a class="oth" id="c_oth" href="">看别人怎么写</a>
                            <ul class="intro-t c">
                                <li class="cur"><a href="" data="1">贴标签</a></li>
                                <li><a href="###" data="2">自己写</a></li>
                                <li><a href="###" data="3">帮你写</a></li> 
                            </ul>   
                            <div class="intro-c">
                                <form:input value="1" id="note_which" path="noteWhich" name="note_which" type="hidden"/>
                                <form:input value="" id="note_final" path="noteFinal" name="note_final" type="hidden"/>
                                <div class="intro-tc">
                                    <form:input path="note1" name="note1" id="note1" type="hidden"/>
                                    <span class="tl"> </span>
                                    <p id="tab-text" class="errt gray_tab1">请至少选择3个标签，别担心，你可以稍后进行修改！<span> </span></p>
                                    <!--<p>关于我：</p>-->
                                    <ul class="c intro-1 note_tag"> 
                                    </ul>
                                    <ul class="c intro-2 tnote_1" id="note_tage_1"><li class="b1"><a href="">执着</a></li><li class="b2"><a href="">完美主义</a></li><li class="b3"><a href="">内敛</a></li><li class="b1"><a href="">阳光</a></li><li class="b2"><a href="">幽默</a></li><li class="b3"><a href="">宅</a></li><li class="b1"><a href="">包容</a></li><li class="b2"><a href="">开朗</a></li><li class="b3"><a href="">运动</a></li><li class="b1"><a href="">听音乐会</a></li><li class="b2"><a href="">画画</a></li><li class="b3"><a href="">美食</a></li><li class="b1"><a href="">跳舞</a></li><li class="b2"><a href="">话剧</a></li><li class="b3"><a href="">有腹肌</a></li><li class="b1"><a href="">健康</a></li><li class="b2"><a href="">高大</a></li><li class="b3"><a href="">比较瘦</a></li><li class="b1"><a href="">高知家庭</a></li><li class="b2"><a href="">单亲家庭</a></li><li class="b3"><a href="">三口之家</a></li><li class="b1"><a href="">四世同堂</a></li><li class="b2"><a href="">千杯不醉</a></li><li class="b3"><a href="">好厨艺</a></li><li class="b1"><a href="">不挑食</a></li><li class="b2"><a href="">狂吃不胖</a></li></ul>
                                    <!-- <p>我想找：</p>
                                    <ul class="c intro-3 note_tag"> 
                                    </ul>
                                    <ul class="c intro-2 tnote_2" id="note_tage_2">
                                        <li class="b1"><a href="">旅行</a></li>
                                        <li class="b2"><a href="">电子游戏</a></li>
                                        <li class="b3"><a href="">亲自下厨</a></li>
                                        <li class="b4"><a href="">求安逸</a></li>
                                       
                                    </ul> -->
                                    <p class="ref"><a href="###" onclick="send_jy_pv2('reg_v2_changezu|3f41d429c5a849b42414fdd85aee08a3799a958e');getTagsShow();">换一组</a></p>
                                </div>
                                <div class="intro-tc dn">
                                    <span class="tl"> </span>
                                    <p style="display: none;" id="self-text" class="errt">请至少输入5个汉字，别担心，你可以稍后进行修改！<span> </span></p>
                                    <form:textarea id="self" path="note2" name="note2" class="tex" value="听说你上得了厅堂，下得了厨房，杀得了木马，翻得了围墙，但是为什么没有人知道呢？快写下你的优秀，让TA看到吧!"></form:textarea>
                                </div>
                                <div class="intro-tc dn">
                                    <form:input path="note3" name="note3" id="note3" type="hidden"/>
                                    <span class="tl"> </span>
                                    <p id="help-text" class="errt">请至少填写一个空白，别担心，你可以稍后进行修改！<span> </span></p>
                                    <dl class="c">
                                        <dt>我的性格特点是：</dt>
                                        <dd><input class="ti note_help" data="1" type="text"></dd>
                                    </dl>
                                    <dl class="c">
                                        <dt>业余时间我喜欢：</dt>
                                        <dd><input class="ti note_help" data="2" type="text"></dd>
                                    </dl>
                                    <dl class="c">
                                        <dt>我憧憬的生活是：</dt>
                                        <dd><input class="ti note_help" data="3" type="text"></dd>
                                    </dl>
                                    <dl class="c">
                                        <dt>我希望另一半是：</dt>
                                        <dd><input class="ti note_help" data="4" type="text"></dd>
                                    </dl>
                                </div>
                            </div>
                            <div style="display: none;" class="oth-con">
                                <span class="ie6"> </span>
                                <p>我唱歌还蛮好听的哦，能飙高音唱《听海》，下次唱给你听好不好</p>
                                <p>我是理科男，会换灯泡修脚踏车，还会保护家里的电脑不被黑客入侵，不抽烟不喝酒，是现代好青年，没有交过女朋友，这样的我你喜欢吗？</p>
                                <p class="la">我岁数不小了，日子小康，抽烟但不喝酒，性格OPEN，人品五五开，不算老实人，但天生胆小。我希望我的另一半是，外表时尚，内心保守，身心都健康的一般人就行，要是多少还有点儿婉约那就更靠谱了。心眼别太多岁数别太小。</p>
                            </div>
                        </div>
                    </dd>
                </dl>
                <dl class="c email-dl dn">
                    <dt>验证码</dt>
                    <dd class="wd2">
                        <div class="i-w">
                            <form:input id="validate_code" path="validateCode" name="validate_code" class="te" maxlength="" type="text"/>
                            <span class="re right"> </span>
                        </div>
                        <div class="i-img">
                            <img title="点击换一张" id="refresh" src="resources/img/checkcode_v2.png">
                        </div>
                    </dd>
                    <dd class="er">
                        <div class="prompt" id="emailchaTip">
                            <p> </p>
                            <span class="cil tl"> </span>
                            <span class="cil tr"> </span>
                            <span class="cil bl"> </span>
                            <span class="cil br"> </span>
                            <span class="lm"> </span>
                        </div>
                    </dd>
                </dl>
                <div class="form-btn">
                    <a href="####">免费注册</a>
                </div>
                <input id="r_k_g" name="0cdbd1745c7e5524" value="1cf32901d5668e9e" type="hidden">
                <div class="form-pw">
                    <p class="c">
                        <input checked="checked" class="i" id="policy" name="policy" type="checkbox">
                        <label for="policy">我同意<a target="_blank" href="http://reg.jiayuan.com/clause.php">注册条款</a>和<a target="_blank" href="http://www.jiayuan.com/usercp/standard.php">会员加入标准</a></label>
                    </p>
                    <p class="c" id="p_zx">
                        <input checked="checked" class="i" id="aizx" name="aizx" type="checkbox">
                        <label for="aizx">同时创建旗下全认证婚恋网站<a id="azx-t" href="javascript:void(0);">爱真心</a>帐号</label>
                    </p>
                    <p class="d">我承诺年满18岁、单身、抱着严肃的态度，真诚寻找另一半</p>
                    <div id="azx-con" class="azx-exp"> 
                        爱真心是爱一起旗下全认证婚恋网站，<br>100%用户完成身份和手机认证，会员真诚优质。 
                        <i> </i> 
                    </div>
                </div>
            </div>
            </form:form> 
        </div>
        <div class="footer">
            <p>中文实名：爱一起 ICP证书：沪B2-20100074 Copyright © 2003-2014 版权所有</p>
        </div>  
        
        <div class="member-login ie6">
            <p class="t1"><a onmousedown="javascript:send_jy_pv2('reg_v2_tologin|3f41d429c5a849b42414fdd85aee08a3799a958e');" href="http://www.jiayuan.com/login/">会员登录</a></p>
            <p class="t2">其他账号登录</p>
            <ul class="c">
                <li class="l1"><a href="http://www.jiayuan.com/general/t/?forward=qqAware&amp;c=31&amp;p=1"></a></li>
                <li class="l2"><a href="http://www.jiayuan.com/general/t/?forward=sinaAware&amp;c=31&amp;p=2"> </a></li>
                <li class="l3"><a href="http://www.jiayuan.com/general/t/?forward=baiduOauth&amp;c=31&amp;p=3"> </a></li>
                <!-- <li class="l4"><a href="http://www.jiayuan.com/general/t/?forward=doubanAware&c=31&p=4"> </a></li> -->
                <li class="l5"><a href="http://www.jiayuan.com/general/t/?forward=kaixinAware&amp;c=31&amp;p=5"> </a></li>
                <li class="l6"><a href="http://www.jiayuan.com/general/t/?forward=alipayOauth&amp;c=31&amp;p=6"> </a></li>
                <li class="l7"><a href="http://www.jiayuan.com/general/t/?forward=renrenAware&amp;c=31&amp;p=7"> </a></li>
            </ul>  
            <div class="slide">
                <a class="down" href=""> </a>   
            </div>
        </div>
    </div> 
    <div id="bg" style="display:none;"></div>
        <div class="op_bg" id="popbox1" style="display:none;">
            <div class="op_subbg">
                <h1>
                    <img src="resources/img/tit_ico1.gif" style="margin: 6px 0 0 0">
                    &nbsp;开启寻爱之旅
                </h1>
                <div class="op_main">
                    <p>
                        <strong>爱一起作为一个海量信息平台，从技术上和成本上，皆无法确保每一条信息的真实性，也无法确保每一个会员的人品及其对待感情的态度，为了您的征友安全，请您承诺做到如下两点：</strong>
                    </p>
                    <p>
                        1、不借钱给任何会员，也不与对方发生任何形式的经济关系。
                    </p>
                    <p>
                        2、拒绝一夜情，自尊自爱，理性交友，不轻易发生亲密关系。
                    </p>
                    <div class="btn">
                        <a class="op_but op_but_w1" href="#" id="popbox_close" onclick="send_jy_pv2('reg_promise_click_v2');return false;">我承诺</a>
                    </div>
                </div>
            </div>
        </div>
    <script type="text/javascript">

        var err = "";
        (function(){
            var my_pv_key = "from_new_reg_page";
            var RegConfig = window.RegConfig = window["RegConfig"]= {"baseUrl":"http://www.jiayuan.com", "errorFocus":"", "sysdate":"2014-10-15", "ajaxUrl":"/", "sourcesUrl":"http://images1.jyimg.com/w4","sex":"m","marriage":"1",  "clientLocal":"99","province":"99","city":"","byear":"1990", "bmonth":"1", "bday":"1", "edu_str":"本科", "income_str":"2千-5千","income_str_1":"2000-5000元", "configLocal":"11|12|13|14|15|21|22|23|31|32|33|34|35|36|37|41|42|43|44|45|46|50|51|52|53|54|61|62|63|64|65|71|81|82|99", "initEmail":"","high":"170", "from":"9527"};
        })();
        function top_stat(){
            var top_status = "0";
            var hs = "3f41d429c5a849b42414fdd85aee08a3799a958e";
            if(top_status == 1){
                send_jy_pv2("reg_v2_top_all|"+hs);
            }else if(top_status == 2){
                send_jy_pv2("reg_v2_top_half|"+hs);
            }
            
        }
    </script>
    <script type="text/javascript" src="resources/js/jquery.js"></script>
    <script type="text/javascript" src="resources/js/love_location_array.js"></script>
    <script type="text/javascript" src="resources/js/functions.js"> </script>
    <script type="text/javascript" src="resources/js/enrol.js"> </script>
    <script type="text/javascript" src="resources/js/tools.js"></script>
    <script type="text/javascript" src="resources/js/pv.js"></script>
    <script type="text/javascript" src="resources/js/JY_Alert.js"></script>
    
    <!--[if lte IE 6]>
    <script type="text/javascript" src="http://images1.jyimg.com/w4/register/v2/j/DD_belatedPNG_0.0.8a_IE6.js"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix(".ie6");
    </script>
    <![endif]-->

</body></html>