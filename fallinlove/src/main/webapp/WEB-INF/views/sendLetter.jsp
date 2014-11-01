<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html><head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <script src="../../resources/js/beacon.js"></script><script src="../../resources/js/jquery-1.js" type="text/javascript"></script>
	 <script src="../../resources/js/layer.js" type="text/javascript"></script>
	 <script src="../../resources/js/common_tools.js" type="text/javascript"></script>	
	 <script src="../../resources/js/MaskDiv.js" type="text/javascript"></script>
	 <script src="../../resources/js/JY.js" type="text/javascript"></script><!--佳缘桌面弹层开始-->
	 <link href="../../resources/css/layer_002.css" rel="stylesheet" type="text/css">
	 <script src="../../resources/js/clickonce.js" type="text/javascript"></script></head><body><div class="layerTable" id="layerTable" style="display:none;"><div class="layerTableTop"><a href="javascript:hidelayerTable(0)" class="layerTableClose"></a></div><div class="layerTableBody"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td><a href="javascript:hidelayerTable(2)" class="layerTableButton"></a></td><td><a href="javascript:hidelayerTable(1)" class="layerTableLink">查看详情</a></td><td><a href="javascript:hidelayerTable(0)" class="layerTableLink">以后再说</a></td></tr></tbody></table></div></div><script type="text/javascript">function hidelayerTable(butt){document.getElementById("layerTable").style.display="none";document.getElementById("header_login_pop_mask").style.display="none";location.href=JY.url.getChannelUrl("usercp");if(butt==1){window.open("http://webim.jiayuan.com/client/download.php");}if(butt==2){NavigateTo("jiayuan.com");}}</script><!--佳缘桌面弹层结束-->
   <script src="../../resources/js/ajax.js" type="text/javascript"></script>
   <script src="../../resources/js/verify_phone.js" type="text/javascript"></script>
   <script src="../../resources/js/giftmall_open.js" type="text/javascript"></script>
	 <link href="../../resources/css/layer.css" rel="stylesheet" type="text/css">
	 <!-- <link href="http://images1zw.jyimg.com/w4/usercp_new/c/myjiayuan.css" rel="stylesheet" type="text/css" />  -->
	 <link href="../../resources/css/myjiayuan.css" rel="stylesheet" type="text/css">	 
   <!-- 上线改回<link href="http://images1zw.jyimg.com/w4/msg/style/word_2012.css?20130821" rel="stylesheet" type="text/css" />  --> 
   <link href="../../resources/css/word_2012.css" rel="stylesheet" type="text/css">    
	 <link href="../../resources/css/tinyeditor.css" rel="stylesheet" type="text/css">
	 <link type="text/css" rel="stylesheet" href="../../resources/css/jy_ad.css">
	<script type="text/javascript"  href="../../resources/jy_ad.js"></script>
	
	 <title>发信页面 </title>
	 <!--[if lte IE 6]>
		<script type="text/javascript" src="http://images1zw.jyimg.com/w4/msg/js/dd_belatedpng.js?09153"></script>
        <script>
			DD_belatedPNG.fix('letters_btn_layer_top,.letters_btn_layer_bottom,#tip_close,#templates_layer_close:hover,#tip_close:hover,#templates_layer_close,#expression_layer_close,.letters_content .pic em,.op_giftlist .op_giftlist_main li .gift_check,.op_giftlist .op_giftlist_main li.boble_gift span,.reply_content .head,.reply_content .center,.reply_content .bottom,.letters_content .head,.letters_content .center,.letters_content .bottom,.typ');
        </script>
     <![endif]-->
		<script>
	  var bigdomain="jiayuan.com";
	</script>
		 


<script type="text/javascript">
send_jy_pv2('msg_xinban_send_pv');
var is_submit = false;
var check_tanchu_kaiguan = 0;
var check_tanchu_result = 0;
var now_if_click_mobile = 0;
//设置域 为了弹出页面的js操作
var reg_host_const_flag = 0;
var reg_host_const_test = 0;
var reg_host_domain = document.domain;
var mobanList =new Array();
   
   mobanList.push( '：）你好~我们蛮有缘分的，期待你的回复。');
   if(reg_host_const_flag == 0 || reg_host_const_flag == 7) {
//       if(reg_host_const_test == 1){ 
// 	     document.domain = 'miuu.cn';
// 	  }else{
// 	     document.domain = 'jiayuan.com';
// 	  }
   }
  
function str_trim(str){
	str = str.replace('<P>&nbsp;<\/P>', "");
	return str.replace(/(^\s*)|(\s*$)/g, "");
}
function str_trim2(str){
	str = str.replace(/(&nbsp;*)|(\s)*/g, "")
	str = str.replace(/(<br>)|(<[\/]?div>)/g,'')
	return str;
}

function get_id(xx) {
	return document.getElementById(xx);
}


function get_Html_content(){
	return $("#f_content").val();
}
function setEditorContent(content) 
{
	$("#f_content").val(content);
}
function check_content(anniu_id, if_click_mobile){
	words = $('#f_content').val();
	var vlength =str_trim(words).length; 
	
	if(vlength==0){
		JY_Alert('温馨提示','您还没有填写任何信件内容');
		return false;
	}else if(vlength > 5000)	{
		JY_Alert('温馨提示',"请将信件内容精简至5000字以内");
		return false;
	}	
// 	now_if_click_mobile = if_click_mobile;	
	do_no_tanchu(anniu_id);
// 	if(get_id('self_pay').value == 1)	{
// 		check_need_tanchu(1, anniu_id);
// 	}else if(get_id('cai_xin').value == 1){
// 		check_need_tanchu(2, anniu_id);
// 	}else if(get_id('liwu_nofree').value == 1){
// 		check_need_tanchu(3, anniu_id);
// 	}else	{
// 		deal_liwu_free();
// 		do_no_tanchu(anniu_id);
// 	}
	return true;
}
function check_need_tanchu(tanchu_type, anniu_id){
	var tanchu_test_url = '';
	if(tanchu_type == 1)	{
		tanchu_test_url = 'http://www.jiayuan.com/msg/draft.php?check_tanchu=1&tanchu_type=1&to_uid=104784980';
		JY.tool.ajax.get(tanchu_test_url, null, function(data) {
			if(data == '1') {
				deal_liwu_free();
				do_tanchu();
			}else	{
				deal_liwu_free();
				do_no_tanchu(anniu_id);
			}
		});
	}	
	if(tanchu_type == 2)	{
		tanchu_test_url = 'http://www.jiayuan.com/msg/draft.php?check_tanchu=1&tanchu_type=2&to_uid=104784980';
		JY.tool.ajax.get(tanchu_test_url, null, function(data) 	{
			if(data == '1') {
				deal_liwu_free();
				do_tanchu();
			}else	{
				deal_liwu_free();
				do_no_tanchu(anniu_id);
			}
		});
	}
	if(tanchu_type == 3)	{
		var liwu_nofree_id = get_id("liwu_nofree_id").value;
		tanchu_test_url = 'http://www.jiayuan.com/msg/draft.php?check_tanchu=1&tanchu_type=3&to_uid=104784980&liwu_nofree_id='+liwu_nofree_id;
		JY.tool.ajax.get(tanchu_test_url, null, function(data) {
			if(data == 'BAD'){
				JY_Alert('温馨提示',"请选择礼物");
				return true;
			}else if(data == '1') {
				do_tanchu_liwu(); 
			}else{
				do_no_tanchu(anniu_id);
			}
		});
	}
}
function deal_liwu_free(){
// 	if('1' == 1 && get_id('liwu_checkbox').checked == true)		{
// 		document.getElementById('liwu_free').value = 1;
// 	}
}
function do_tanchu(){
	var cx = get_id('cai_xin').value;
	var lw_f = get_id('liwu_free').value;
	var lw_f_id = get_id('liwu_free_id').value;	
	document.getElementById('formform').action='http://www.jiayuan.com/msg/draft.php?fxtyp=1&setdomain=1&fxly=cp-eexpress&to_uid=104784980&yz=121261858&is_hello=0&cai_xin='+cx+'&if_click_mobile='+now_if_click_mobile+'&liwu_free='+lw_f+'&liwu_free_id='+lw_f_id;
	document.getElementById('formform').target='fxtyp_iframe';
	get_id('formform').submit(); 
	openMaskDiv('fxtyp_iframe',600,600,0,0);
	return true;
}
function do_tanchu_liwu(){
	var liwu_nofree_id = get_id("liwu_nofree_id").value;
	var cx = get_id('cai_xin').value;
	document.getElementById('formform').action='http://www.jiayuan.com/msg/draft.php?fxtyp=1&setdomain=1&liwu=1&liwu_nofree_id='+liwu_nofree_id+'&fxly=cp-eexpress&to_uid=104784980&yz=121261858&is_hello=0&cai_xin='+cx+'&if_click_mobile=0';
	document.getElementById('formform').target='fxtyp_iframe_liwu';
	get_id('formform').submit(); 
	openMaskDiv('fxtyp_iframe_liwu',600,600,0,0);
	return true;
}
function do_no_tanchu(anniu_id){
	window.onbeforeunload = '';		
// 	if(get_id('liwu_checkbox').checked != true){
// 		send_jy_pv2('liwu_msg_01');
// 	}		
// 	document.getElementById('formform').action='http://www.jiayuan.com/msg/dosend.php';
// 	document.getElementById('formform').target='_self';
	try{	
		if(is_submit)
				return false;
		get_id('anniu_'+anniu_id).onclick="";
		is_submit = true;
	}catch(err){}

	words = get_Html_content();
	
// 	for(var i=0;i<mobanList.length;i++){
// 		if(words == mobanList[i]){
// 			send_jy_pv2('msg_fx_mbsycs')
// 		}
// 	}
	get_id('formform').submit();
	return true;
}
function closeMask(_id){
    var m = "mask";
    if(document.getElementById(m)) document.body.removeChild(document.getElementById(m));
    showDiv = document.getElementById(_id);
    showDiv.style.display = "none";
}


function check_words_sum(){
	words =  get_Html_content();
	
	if(words.length > 1000)	{
		setEditorContent(words.substr(0,1000));
	}else{
		var lastwords = 1000 - words.length;
		document.getElementById('hai_ke_shu_ru').innerHTML = lastwords.toString();
	}
}
function onIFrameFocus() {
//	expression_layer_close();	
	stationery_close();	
	setDomainForIframe();  
	loadMap();
}
function onEditerClick(){	
//	expression_layer_close();
	custom_close();	
	stationery_close();
	$('#tips_0502').hide();
}
function insert_moban(xi){	
	var content = get_id('moban_'+xi+'_content').value;	
	var reg=new RegExp("<br />","g"); 	
	content = content.replace(reg,"\r\n");
	var xxx='';	
	custom_close();	
	setEditorContent(content);
	$('#tips_0502').hide();
	send_jy_pv2('msg_fx_mbsycs');
}
function doClickButton(){$('#formform a.free').click();}
function lingcunweimoban(){
	send_jy_pv2('msg_fx_lcwmb ');
//	DoProcess(); 
	
	words = get_Html_content();
	
	words = str_trim(words);	
	var tmp = words;
	tmp = tmp.replace("&nbsp;", "");
	if(words.length == 0 || tmp == '<P></P>' || tmp == '<br>')	{
		JY_Alert('温馨提示','您还没有填写任何信件内容');
	}else	{
		document.getElementById('formform').action='http://www.jiayuan.com/msg/save_draft.php?from=send';
		document.getElementById('formform').target='tmptmp_iframe';
		document.getElementById('moban_type').value=9;
		get_id('formform').submit();
	}
}
function disgiftmallmsg(data){
	$("#msg_giftmall_show").empty();
	$("#msg_giftmall_show").append(data);
}
function modhiddenmsg(giftid){
	$('#liwu_nofree_id').val(giftid);
}
function disgiftmallmsgpic(data){
	$("#msg_giftmall_showpic").empty();
	$("#msg_giftmall_showpic").append(data);
}
function refreshThis(){
	window.location.reload();
}

window.onbeforeunload = function() {
	words = get_Html_content();
	
	if(words.length>0 ){
		if(event.clientX > document.body.clientWidth && event.clientY < 0 || event.altKey){
			var warning = "您已经填写了信件内容，确定要关闭此页，不发送信件吗？"; 
			return warning;
		}
	}
}
function display_icon() {
//	var aa = document.getElementById('mutb_icons');
//	aa.style.zIndex.value = (aa.style.display == 'none') ? 100 : 99;
//	aa.style.display = (aa.style.display == 'none') ? '' : 'none';
}


mobannum = '1';
function change(cursel){
	if(mobannum==0) mobannum=1;
	for(i=1;i<=mobannum;i++){
		var con=document.getElementById('edit'+"_"+i);
		var text=document.getElementById('text'+"_"+i);
		con.style.display=i==cursel?"block":"none";
		text.style.display=i==cursel?"none":"";
		con.style.height="14px";
		con.rows="1";
		if(i==cursel){
			$('#moban_li_'+i+' a' ).slice(0,2).hide();	
			$('#moban_li_'+i+' .limit_count' ).show();		
			$('#moban_li_'+i+' a' ).slice(2,4).show();
		}else{
			$('#moban_li_'+i+' a' ).slice(0,2).show();			
			$('#moban_li_'+i+' .limit_counts' ).hide();
			$('#moban_li_'+i+' a' ).slice(2,4).hide();
		}
	}								
}
function save_moban(n){
	send_jy_pv2('msg_kx_mbbc');
	var contents = $("#edit_"+n).val();
	var nowid = $("#moban_"+n+"_nowid").val();
	contents = str_trim(contents);
	if(contents.length>100){
		JY_Alert('温馨提示','字数超出限制');
		$("#edit_"+n).focus();
		return false;
	}
	if(contents=='不超出100个字符'||contents==''){
		JY_Alert('温馨提示','模板内容不能为空');
		$("#edit_"+n).focus();
		return false;
	}
	custom_close();
	if(nowid==''){
		send_jy_pv2('msg_fx_jsbcmb');
	}
	$.post('save_draft.php',{contents:contents,moban_type:'9',now_id:nowid,from:'show_msg'},function(data){
		 $("#moban_"+n+"_content").val(contents);
		  $("#moban_"+n+"_nowid").val(data);
		 $("#text_"+n).html( contents.length>40?contents.substring(0,40)+'...':contents);
		 $("#text_"+n).show();
		 $("#edit_"+n).hide();		
		 $('#moban_li_'+n+' a' ).slice(0,2).show();		
		 $('#moban_li_'+n+' .limit_count' ).hide();	
		 $('#moban_li_'+n+' a' ).slice(2,4).hide();
		 custom_onclick();
		//insert_moban(n)
	})							
}
function reset_moban(n){
	$("#edit_"+n).val($("#moban_"+n+"_content").val());
	$("#text_"+n).show();
	$("#edit_"+n).hide();	
	$('#moban_li_'+n+' a' ).slice(0,2).show();
	$('#moban_li_'+n+' .limit_count' ).hide();			
	$('#moban_li_'+n+' a' ).slice(2,4).hide();		
}

/**
* window for jiayuan.com profile page by Yaosine
*/

function showMap(obj){			
	position = $(obj).position()
	left= position.left+6;
	$("#show_map").css("left",left);	
	document.getElementById('show_map').style.top='105px';
}
function setDistance(value){
		$("#distance").html(value);
}
function sendSetLocal(){
	$("#distance_span").html("距离：已发送邀请");
}
var loadmap = false;
function loadMap(){  
	if(loadmap == false){
		$('#show_map').html('<iframe src="http://www.jiayuan.com/map/profile.php?tohash=8d97f60e62955ad0183d29bac647df5f&f=showmsg&width=398&height=246"   id="map_iframe"  name="map_iframe"  scrolling="no" width="398" height="246" allowTransparency="true" frameborder="0" ></iframe>	');  	
		loadmap = true;
	}
}
 $(function(){
	$(".simplify").click(function(){
		str = window.location.href;
		str = str.replace("send.php?","basic/?a=send&");
		window.location.href = str;
		return false;
	});
})
</script>


 <!-- letters_head start-->
<script type="text/javascript" src="../../resources/js/head_common.js"></script> 
<!-- <script type="text/javascript" src="../../resources/js/head_red_simple.js"></script> -->
<!-- <script type="text/javascript" src="../../resources/js/head_pink.js"></script> -->
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
<!-- released time 2014-10-22 15:04:56 -->
 
<script type="text/javascript">
	document.getElementById('head_red_simple').innerHTML = '给她写信';
</script>
  <!-- letters_head end-->
<div class="letters_main mt20">  	
	<div class="show_map" id="show_map" onmouseover="document.getElementById('show_map').style.top='105px'" onmouseout="document.getElementById('show_map').style.top='-999px'">
  		<iframe src="" id="map_iframe" name="map_iframe" scrolling="no" allowtransparency="true" frameborder="0" height="246" width="398"></iframe>
  	</div>  	
  	
	<!-- recipient start-->
	<div class="recipient e_clear" style="border-bottom:none;">
		<div class="recipient_top" style="height:200px;">
			 <div class="avatar_send">
				 <a onmousedown="send_jy_pv2('msg_fx_zp');" target="_blank" href="http://www.jiayuan.com//105784980?fxly=cp-msg-ym" title="尧利">
					<img src="../../resources/img/97f60e629_1_avatar_n.jpg" alt="尧利" height="90px" width="74px">
				 </a>									
			 </div>
			 <div class="info">
			 	  <div class="status"> 
						<a target="_blank" href="http://www.jiayuan.com//105784980?fxly=cp-msg-ym" onmousedown="send_jy_pv2('msg_fx_nc');" title="尧利">尧利</a>
						<span>
																														<img src="../../resources/img/senior_member_icon.png" title="VIP会员">
														
						</span>
						<a href="javascript:void(0);" onclick="window.open('http://www.jiayuan.com/msgapp/ems/?uid_hash=8d97f60e62955ad0183d29bac647df5f&amp;from=msg');return false;" class="a_blue12">给她发特快专递</a>
			 	   </div>
			 	   <div class="about">
			 	   	<p>26岁，未婚，160cm，本科，其他国家新加坡，5000～10000元</p>			 	   	
			 	   	<p> 
			 	   			
				 	   		<span>照片：<a onmousedown="send_jy_pv2('msg_fx_zplj');" href="http://www.jiayuan.com/photo/index.php?uidhash=8d97f60e62955ad0183d29bac647df5f&amp;fxly=cp-msg-ym" target="_blank" title="照片" alt="照片" class="a_blue12">2张</a></span>
				 	   		<span id="distance_span">距离：
				 	   											TA未标注位置				 	   			
				 	   					
				 	   							 	   		</span> 
				 	   		<span>最后登录时间：<a onmousedown="send_jy_pv2('msg_fx_vipkj');" href="javascript:;" onclick="openWindow('','','http://www.jiayuan.com/usercp/service/vip_tstc.php?type=1&amp;to_uid=105784980',600,358);" class="a_blue12">点击查看</a> </span> 
					</p>				 	   	
			 	  	</div>
			 </div>		
							<div class="tips_yp" style="display:block">
                 <div class="text">Ta是本站<strong onmouseover="document.getElementById('ml_tips2').style.display='block'" onmouseout="document.getElementById('ml_tips2').style.display='none'">魅力会员</strong>，很受异性喜欢哦！<br>
    •Ta的看信率：<i>5%（不贴邮票）</i>，<strong>94%（ 贴邮票）</strong>；贴邮票发信给Ta，回信机率能暴增18倍哦！</div>
                <div class="ml_tips2" id="ml_tips2">
                    <strong>什么是魅力会员？</strong>
                    <p>在本网站深受异性关注和喜欢，并且收到很多来信，其综合排名在该地区排在前20%的女生，被网站评为魅力会员。</p>
                </div>
    			<span></span>
			</div>
					</div>	
	</div>
	<!-- recipient end-->
	<style>
		.letters_content{padding-top:0}
		.messageRecord{padding-top:10px; padding-left:35px; height:24px; background-color:#fff; border-left:1px solid #d9d9d9; border-right:1px solid #d9d9d9; }
		.messageRecord img{float:left; display:inline;}
		.messageRecord span{color:#666}
		.letters_content .tips2{margin-left:16px; padding-left:21px; padding-bottom:7px;}
	</style>

		<p class="e_clear messageRecord">
		<img src="../../resources/img/safe_icon.jpg" height="15" width="14">&nbsp;&nbsp;<span>安全提示：请不要轻易透露您的联系方式，不要借钱给陌生人。</span>&nbsp;&nbsp;&nbsp;&nbsp;<a class="c_lblue" href="http://www.jiayuan.com/subject/2011Q3/safeinfo/index.html" target="_blank">交友安全提示</a>
	</p>
	<!--增加通信记录end-->
		<div class="letters_content send_content">
		<dl class="e_clear">
			<form method="post" id="formform" name="letter" action="/msg/send" commandName="letter" target="_self">
				<div class="editor"> 
					<div class="tools2">
						<ul>
<!-- 						shanf -->
<!-- 							<li class="templates" onclick="custom_onclick();">使用模板</li> -->
														
<!-- 							<li id="zhaohuati_tag" class="help"><a onclick="templates_close();onEditerClick();stationery_close();" href="http://www.jiayuan.com/msg/draft.php?zhaohuati=1&amp;to_uid=105784980" onmousedown="send_jy_pv2('msg_fx_zht');" target="tmptmp_iframe">帮我找话题</a></li>																 -->
					<!-- 		<li class="fonts" onmousedown="send_jy_pv2('msg_fx_zt');" onclick="custom_close();onEditerClick();dispToolbar()"><a>字体</a></li>
							<li class="stationery" id="stationery" onmousedown="send_jy_pv2('msg_fx_xz');" onclick="onEditerClick();stationery_onclick();"><a>信纸</a></li>
					 -->		
					 	</ul>
					</div>
						<a href="javascript:void(0);" class="simplify">如果不能正常发信，请点击这里</a>
						<div class="textarea" id="textarea">
					<!--templates_layer start-->								
					
				<div class="custom_layer" id="custom_layer" style="display: none;"><a class="custom_close" href="#" onclick="custom_close(); return false;">关闭</a>
				<ul>
              	              	
                <li id="moban_li_1"><span id="text_1">：）你好~我们蛮有缘分的，期待你的回复。</span>
                	<input id="moban_1_subject" value="发信模板" type="hidden">
									<input id="moban_1_content" value="：）你好~我们蛮有缘分的，期待你的回复。" type="hidden">
									<input id="moban_1_nowid" value="17982468" type="hidden">
                  <textarea class="edit" style="display:none" id="edit_1" onblur="javascript:this.style.height='14px';this.rows = '1';this.style.color='#AAA';" onfocus="javascript:this.style.height='122px';this.rows = '5';this.style.color='#000'">：）你好~我们蛮有缘分的，期待你的回复。</textarea>
<!--                   <a class="a_blue12" href="javascript:void(0)" onclick="insert_moban(1)" onmousedown="send_jy_pv2('msg_fx_mb_sy')">使用</a> -->
<!--                   <a class="a_blue12" href="javascript:void(0)" onclick="change(1)">修改</a> -->
<!--                   <span class="limit_count" style="display:none">（限100字内）</span> -->
<!--                   <a class="a_blue12" href="javascript:void(0)" style="display:none" onclick="save_moban(1)" onmousedown="send_jy_pv2('msg_fx_mb_bc')">保存</a> -->
<!--                   <a class="a_blue12" href="javascript:void(0)" style="display:none" onclick="reset_moban(1)">取消</a> -->
                   </li>               
                            
              </ul>
            </div>

				<textarea id="f_content" name="content" style="border:none;border:1px solid none;width:664px;padding:2px 10px;height:200px;line-height:24px;font-size:14px;color:#666;resize: none;">：）你好~我们蛮有缘分的，期待你的回复。</textarea>

			</div>
						
		</div>
					
		<div class="letters_btn e_clear">

							<ul> 
								<script type="text/javascript">
	function is_save_available(n){
		if(typeof(save_hello_cus) == "function"){
				var result = save_hello_cus(n);
				if(!result){
					return;
				}
		}
		if(n==1){
			check_content(1, '0');
		}else if(n==2){
			check_content(2, '0');
		}else if(n==3){
			check_content(3, '');
		}
	}
</script>
	<li>
		
				<div class="letters_btn_layer" id="anniu_tishi_1" style="display: none;">
			<div class="letters_btn_layer_top"></div>
			<div class="letters_btn_layer_content">
				<p>为她贴一张邮票，回复率可提升13倍，以后通信全免费！</p>
			</div>
			<div class="letters_btn_layer_bottom"></div>
		</div>
				
		<a href="javascript:void(0);" onmouseover="get_id('anniu_tishi_1').style.display=''" onmouseout="get_id('anniu_tishi_1').style.display='none';" style="cursor:pointer;" class="stamps" id="anniu_1"  onclick='get_id("withStamp").value=2;get_id("letterType").value=2;is_save_available(1);return false;'></a></li> 



	<li>
		<div class="letters_btn_layer" id="anniu_tishi_2" style="display: none;">
			<div class="letters_btn_layer_top"></div>
			<div class="letters_btn_layer_content">
				<p>对方需花费一张邮票方可查看您的来信。您也可以选择贴邮票发信，让对方免费看。今后双方即可免费发信和看信，不再收费。</p>
			</div>
			<div class="letters_btn_layer_bottom"></div>
		</div> 
		
		<a href="###" onmouseover="get_id('anniu_tishi_2').style.display=''" onmouseout="get_id('anniu_tishi_2').style.display='none';" style="cursor:pointer;" class="free" id="anniu_2"  onclick='get_id("withStamp").value=1;get_id("letterType").value=1;is_save_available(2);return false;'></a></li>



<!-- <script type="text/javascript">
	var newuser = '0';
		//有3个按钮 手机贴邮票 并且是新会员时 默认显示贴邮票
	if(get_id('anniu_3')!=null&&newuser==1&&get_id('anniu_2').className=='stamps'){
		get_id('anniu_tishi_2').style.display='';
		window.setTimeout(function(){get_id('anniu_tishi_2').style.display='none'},5000);
	}else{
		get_id('anniu_tishi_1').style.display=''
		window.setTimeout(function(){get_id('anniu_tishi_1').style.display='none'},5000);
	}
		

</script> -->
								<!--隐藏元素-->
									<input name="type" id="letterType" value="1" type="hidden">
									<input name="withStamp" id="withStamp" value="1" type="hidden">
									
									<input name="ok_xinzhi_id" id="ok_xinzhi_id" value="" type="hidden">
									<input name="fxly" id="fxly" value="cp-eexpress" type="hidden">
									<input name="tj_wz" id="tj_wz" value="none" type="hidden">
									<input name="reply_msgid" value="0" type="hidden">
									<input name="reply_send_time" value="0" type="hidden">
									<input name="to_hash" value="8d97f60e62955ad0183d29bac647df5f" type="hidden">
									<input name="now_draft_id" id="now_draft_id" value="0" type="hidden">
									<input name="need_fxtyp_tanchu" id="need_fxtyp_tanchu" value="1" type="hidden">
									<input name="self_pay" id="self_pay" value="1" type="hidden">
									<input name="fxbc" id="fxbc" value="0" type="hidden">
									<input name="cai_xin" id="cai_xin" value="0" type="hidden">
									
									<input name="liwu_nofree" id="liwu_nofree" value="0" type="hidden">
									<input name="liwu_nofree_id" id="liwu_nofree_id" value="920" type="hidden">
									<input name="liwu_free" id="liwu_free" value="0" type="hidden">
									<input name="liwu_free_id" id="liwu_free_id" value="1045" type="hidden">
									<input name="uqjm_code" id="uqjm_code" value="359e37b92755e39cc9ff5bd56b0d9141" type="hidden">
									<input name="moban_type" id="moban_type" value="9" type="hidden">
									<input name="zhuanti" id="zhuanti" value="0" type="hidden">
									<!--<li><a href="#" class="stamps" id="stamps"></a></li>
									<li><a href="#" class="stamps" id="stamps"></a></li>
									<li><a href="#" onclick="javascript:formSubmit();" class="ipone_stamps"></a></li>
									<li><a href="#" onclick="javascript:formSubmit();" class="free"></a></li>-->
							</ul>
					</div>
			
	<div class="letters_tip" id="letters_tip">
		<b class="tl"></b>
		<b class="tr"></b>
		<b class="bl"></b>
		<b class="br"></b>
		<a href="###" id="tip_close" onclick="letters_tip_close(); return false;"></a>
		<p><span class="channel_13">&nbsp;贴邮票信件被看几率更高哦~~成为钻石会员免费为对方贴邮票，拥有畅行佳缘最高特权特权！开通包年服务，<span style="color: #ff0000"><strong>专享1.9折</strong></span>！<a target="_blank" onclick="send_jy_pv2('channel_13_click_488|121261858')" href="http://www.jiayuan.com/usercp/service/do_package_service.php?rid=70?src_key=ad_41"> 查看详情&gt;&gt;</a></span> </p>
	</div>
						
	</form>
	</dl>
			
				     <!-- 2011-07-05亲加发信关礼物 start -->
				<div class="gift" style="top:-2px;">
            	<div class="head"></div>
                <div class="center">
                	<div class="tips">贴邮票发信，免费赠送此款礼物</div>
                    <div class="pic" id="msg_giftmall_showpic"><a href="javascript:void(0);"><img src="../../resources/img/1351244875.gif"><span>魅力值20点</span></a></div>
                    <div class="title" id="msg_giftmall_show"> 
<!--                     	<input name="liwu_checkbox" id="liwu_checkbox" checked="checked" type="checkbox"> -->
<!--                         <span>星座转盘<br><i>2张佳缘邮票</i></span> -->
					</div>
					
																						<div class="more" style="display:none;"><a href="javascript:void(0);" id="inv_send3" onclick="return false;">选择更多礼物&gt;&gt;</a></div>

                    <div class="more"></div>                </div>
                <div class="bottom"></div>
            </div>
            <!-- 2011-07-05亲加发信关礼物 end -->
            
                        
		</div>
		<!-- 广告系统 广告 开始 -->
		<div id="ad_pos_41"></div>				
		<!-- 广告系统 广告 结束 -->		
 </div>

 <script type="text/javascript" src="../../resources/js/w4-simple.js"></script><style type="text/css">
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
<!-- released time 2014-10-20 18:24:31 -->

<!--   <div class="footer">
		<ul class="e_clear">
			<li><a target="_blank" href="http://www.jiayuan.com/helpcenter/postmail.php">联系客服</a></li>
			<li><a target="_blank" href="http://www.jiayuan.com/bottom/index.html">关于我们</a></li>
			<li><a target="_blank" href="http://www.jiayuan.com/bottom/connect.html">联系我们</a></li>
			<li><a target="_blank" href="http://www.jiayuan.com/bottom/business.html">广告服务</a></li>
			<li><a target="_blank" href="http://www.jiayuan.com/bottom/declare.html">法律声明</a></li>
			<li><a target="_blank" href="http://www.jiayuan.com/bottom/jobs.html">招聘信息</a></li>
			<li><a target="_blank" href="http://www.jiayuan.com/bottom/notice.html">交友信息</a></li>
			<li><a target="_blank" href="http://www.jiayuan.com/bottom/private.html">隐私保护</a></li>
			<li><a target="_blank" href="http://www.jiayuan.com/helpcenter/">帮助中心</a></li>
			<li><a target="_blank" href="http://www.jiayuan.com/wap/clients/">手机版</a></li>
		</ul>
		<p>中文实名：　世纪佳缘　ICP证书：沪B2-20040371　Copyright　2003-2012 　版权所有</p>
  </div> -->
 
  <script type="text/javascript">var gFrame = 1; var gContentId = "f_content"; //OutputEditorLoading();</script>
   <iframe style="display:none;" name="fxtyp_iframe" id="fxtyp_iframe" scrolling="no" allowtransparency="true" frameborder="0" height="600" width="495"></iframe>
    <iframe style="display:none;" name="fxtyp_iframe_liwu" id="fxtyp_iframe_liwu" scrolling="no" allowtransparency="true" frameborder="0" height="777" width="495"></iframe>
  <iframe style="display:none;" name="test_iframe" id="test_iframe" scrolling="no" allowtransparency="true" src="" frameborder="0" height="600" width="654"></iframe>
  <iframe name="tmptmp_iframe" id="tmptmp_iframe" scrolling="no" allowtransparency="true" frameborder="0" height="0" width="0"></iframe>
  
 <!-- op_peoinfo start -->
<!-- op_peoinfo end --> 
<div id="bg"></div>
<!--弹出层 start-->
<div class="layer" id="open_window" style="display:none;">
	<div class="layer_box">
		<div class="layer_title" id="open_window_head"><h2><img src="../../resources/img/op_but_close.gif" onclick="closeWindow()" title="关闭"><span id="open_window_title"></span></h2></div>
		<div class="layer_content" id="open_window_content"></div>
		<div id="iframe_loading" style="position: absolute;"><img id="loading_focus" src="../../resources/img/loading.gif"></div>
	</div>
</div>
<!--弹出层 end-->
<script type="text/javascript" src="../../resources/html/ad.htm"></script>
 

</body></html>