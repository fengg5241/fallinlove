// ------------------------功能及样式配置部分 update by will at 2011-03-30--03--009------------------------
var is_popup_show = true;
// 下面页面*不*进行右下弹出
var checkurl_arr = ["/usercp/center","/usercp/service","priority","brightlist","/usercp/charge","/usercp/loveexpress","/usercp/recommend","/usercp/party"];
var is_im_show = false;
// 下面页面显示小能聊天工具条
var im_tool_arr = ["/online","/online/","talktest.php"];
for(i=0; i<checkurl_arr.length; i++) {
	if(location.href.indexOf(checkurl_arr[i]) != -1) {
		is_popup_show = false;
		break;
	}
}
for(i=0; i<im_tool_arr.length; i++) {
	if(location.href.indexOf(im_tool_arr[i]) > -1) {
		is_im_show = true;
		break;
	}
}

(function() {
/*
 * 使iframe自适应高度
 * TODO: 但是这些iframe的id正确吗？
 */
var iframeids=["iframeName1", "iframeName2","iframeName3","iframeName4","iframeName5","iframeName6","iframeName7","iframeName8","iframeName9","iframeName10","iframeName11","iframeName12","iframeName13","iframeName14","iframeName15","iframeName16"]
function reinitIframe() {
	for (i=0; i<iframeids.length; i++) {
		var iframe = document.getElementById(iframeids[i]);
		try{
			var bHeight = iframe.contentWindow.document.body.scrollHeight;
			var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
			var height = Math.max(bHeight, dHeight);
			iframe.height =  height;
		} catch (ex) {}
	}
}
window.setInterval(reinitIframe, 200);

// 原来的代码求出当前domain，其实结果是错的,例如jiayuan.sina.com.cn求出的是com.cn
var topdomain = window.location.host.match(/[^.]*\.(com|cn|net|org)(\.[^.]*)?/ig);
if(topdomain) topdomain = topdomain[0];
else topdomain = document.domain;
// head.js中已经有了，还需要留在foot.js中吗？
/*
 * cookie的读写函数
 */
// TODO readCookie, writeCookie函数到处都有定义,考虑给个统一的实现
window.readCookie = function (name) {
	var cookieValue = "";
	var search = name + "=";
	if(document.cookie.length > 0)
	{ 
		offset = document.cookie.indexOf(search);
		if (offset != -1)
		{ 
			offset += search.length;
			end = document.cookie.indexOf(";", offset);
			if (end == -1) end = document.cookie.length;
			cookieValue = decodeURIComponent(document.cookie.substring(offset, end))
		}
	}
	return cookieValue;
}

window.writeCookie = function (name, value, hours) {
	var expire = "";
	if(hours != null)
	{
		expire = new Date((new Date()).getTime() + hours * 3600000);
		expire = "; expires=" + expire.toGMTString();
	}
	document.cookie = name + "=" + escape(value) + expire + ";domain="+topdomain+";path=/";
}

// TODO 导出两个全局变量
window._head_profile = readCookie('PROFILE');
window.topdomain = topdomain;
})();

var FOOT_IMG_BASE = (window.topdomain=="jiayuan.com"||window.topdomain=="msn.com.cn") ? "http://images1.jyimg.com" : "http://images1."+window.topdomain;
var SITE_PATH = window.location.host.match(/msn/)?'msn':
window.location.host.match(/sina/)?'sina':'www';

function _head_wr(str)
{
	document.writeln(str);
}

//加载简装主站通用底
_head_wr('<script type="text/javascript" src="http://images1.jyimg.com/js/footer/w4-simple.js"></script>');

// ---------------------加载外部功能js部分------------------------------
/*
 * 加载右下弹出
 */
if(is_popup_show) {
	// 写入弹窗css
	document.write('\
	<style type="text/css"> \
	*{margin:0;padding:0;}\
	.winpopfoot{width:284px;height:203px;overflow:hidden;word-wrap:break-word;word-break:break-all;font-size:12px;font-family:Arial,SimSun;color:#636363;}\
	.pngforsjjy{behavior:expression((T=this,T.runtimeStyle.behavior="none")&&(T.p?0:((T.runtimeStyle.backgroundImage = "none",T.runtimeStyle.filter ="progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'"+T.src+"\',sizingMethod=\'image\')",T.src = "http://images.jiayuan.com/w3/global/i/bg.gif")),T.p=1));}\
	.winpopfoot em,.winpopfoot span,.winpopfoot strong{font-weight:normal;font-style:normal;font-size:12px;}\
	.winpopfoot_box{position:absolute;top:8px;left:10px;width:264px;height:192px;overflow:hidden;border-bottom:3px solid #E876B2;background:url(http://images1.jyimg.com/w4/index/i/bg100804_02.gif) repeat-x 0 -100px;}\
	.winpopfoot_t{width:264px;height:30px;overflow:hidden;}\
	.winpopfoot_t em{float:left;width:67px;height:25px;overflow:hidden;margin:5px 0 0 10px;cursor:pointer;}\
	.winpopfoot_t em strong{width:67px;height:25px;display:block;line-height:25px;font-weight:bold;text-align:center;}\
	.winpopfoot_t em strong.str2{position:relative;}\
	.winpopfoot_t em.on{background:url(http://images1.jyimg.com/w4/index/i/bg100804_01.gif) no-repeat 0 0;}\
	.winpopfoot_t em.on strong.str1{color:#DCDCDC;}\
	.winpopfoot_t em.on strong.str2{top:-26px;color:#444444;}\
	.winpopfoot_t em.over strong.str1{color:#C23174;}\
	.winpopfoot_t em.over strong.str2{top:-24px;color:#FFFFFF;}\
	.winpopfoot_t span{float:right;width:18px;height:18px;overflow:hidden;margin:7px 5px 0 0;cursor:pointer;background-image:url(http://images1.jyimg.com/w4/index/i/bg100804_01.gif);}\
	.winpopfoot_t span.sp1{background-position:-70px 0;}\
	.winpopfoot_t span.sp2{background-position:-90px 0;}\
	.winpopfoot_t span.sp3{background-position:-110px 0;}\
	.winpopfoot_c{width:258px;height:162px;overflow:hidden;margin:0 auto;background:#FFFDFD;}\
	.winpopfoot_c dl{width:228px;height:140px;margin:10px auto 0;overflow:hidden;line-height:20px;}\
	.winpopfoot_c dd{width:100%;text-align:left;}\
	.winpopfoot_c dd.martop15{margin-top:15px;}\
	.winpopfoot_c dd span{float:right;width:100%;text-align:right;}\
	.winpopfoot_c dd a,.winpopfoot_c dd a:hover{color:#BC0073;text-decoration:underline;}\
	.winpopfoot_c dd img{display:block;margin:0 auto;border:none;}\
	</style>\
	');
	// 写入弹窗div
	document.write('\
	<div style="position: absolute; z-index: 99999; overflow: hidden; border-width: 0px; width: 280px; height: 0px; right:0px; bottom:0px;" id="bulletin"> \
	');
	if(navigator.appName == "Microsoft Internet Explorer")
	document.write('\
	<!--此段只有IE6才有--> \
	<div style="position:absolute;z-index:1;left:0;top:0;width:284px;height:203px;" id="bull_fra"> \
	<iframe width="284" height="203" frameborder="0" scrolling="no" src="" style="filter:alpha(opacity=0);"></iframe> \
	</div> \
	<!--此段只有IE6才有--> \
	');
	document.write('\
	<div class="winpopfoot" style="position:absolute;z-index:2;left:0;" id="pop_div"> \
	<img src="http://images1.jyimg.com/w4/index/i/bg100804.png" class="pngforsjjy" /> \
	<div class="winpopfoot_box"> \
	<div class="winpopfoot_t"> \
	<span class="sp2" title="关闭" onclick="_close();" id="closeButton"></span> \
	<span class="sp3" title="最大化" onclick="_mini();" id="switchButton"></span> \
	<em id="div_1" class="on"><div ><div id="link_1"><strong class="str1">互动消息</strong><strong class="str2">互动消息</strong></div></div></em> \
	<em id="div_3" class="over"><div ><div id="link_3"><strong class="str1">最新活动</strong><strong class="str2">最新活动</strong></div></div></em> \
	</div>\
	<div class="winpopfoot_c"> \
	<dl> \
	<dd style="" id="con_1" class="martop15"><img src="http://images.jiayuan.com/w3/global/i/logo_prompt.jpg"></dd> \
	<dd style="display: none;" id="con_2" class="martop15"></dd> \
	<dd style="display: none;" id="con_3"><img src="http://images.jiayuan.com/w3/global/i/logo_prompt.jpg"></dd> \
	</dl> \
	<iframe width="0" height="0" frameborder="0" scrolling="no" id="run_fra" name="run_fra" src=""></iframe> \
	</div> \
	 \
	</div> \
	</div> \
	 \
	</div> \
	');
	
	document.write('<script type="text/javascript" src="'+FOOT_IMG_BASE+'/w4/global/j/pop.js"></script>');
	//jyim start
	if(document.cookie.indexOf('COMMON_HASH') != -1 && !readCookie('webim_disable'))
	{
		/*var im_switch = false;
		if(readCookie('webim_on')) im_switch = true;
		else if(document.location.href.slice(-9) == '#webim_on')
		{
			document.cookie = 'webim_on=1; path=/; domain=' + topdomain;
			im_switch = true;
		}*/
		var im_switch = true;
		var first_pop_msg = null;
		var old_pop_content = null;
		if(im_switch)
		{
			var realReadCookie = window.readCookie;
			window.readCookie = function(key)
			{
				if(!old_pop_content && typeof(pop_content)!='undefined')
				{
					old_pop_content = pop_content;
					pop_content = function(msg) {first_pop_msg = msg;}
					window.readCookie = realReadCookie;
				}
				return realReadCookie(key);
			};
		}
		nojQuery = false;
		//prototype fix
		if(Object.prototype.toJSONString) delete Object.prototype.toJSONString;
		if(typeof(jQuery) == 'undefined' || parseFloat(jQuery.fn.jquery) < 1.4)
		{
			nojQuery = true;
			document.write('<script src="'+FOOT_IMG_BASE+'/w4/usercp/j/jquery-1.4.2.min.js"></script>');
		}
		document.write('<script src="http://webim.jiayuan.com/pop_template.php?v=15"></script>');
		if (window.topdomain=="msn.com.cn")
			document.write('<script src="'+FOOT_IMG_BASE+'/w4/webim/jyim.js"></script>');
		else
			document.write('<script src="'+FOOT_IMG_BASE+'/w4/webim/jyim2.js"></script>');
	}
	//jyim stop
	
	document.write('<script type="text/javascript" src="http://images1.jyimg.com/w3/global/j/pop_freq.js"></script>');
    //加载新的弹出登录层
	if(typeof loginWindow != 'object')
	{
       document.write('<script type="text/javascript" src="http://images1.jyimg.com/w4/login/j/popupLogin_v2.js?d=1227"></script>');
	}
}

/*
 * 加载小能聊天
 */
// im_userInfo变量必须存在，因为pop.js中会用到
var im_userInfo = new Object();	
var IM_URL = 'http://chatjs1.jiayuan.com/';
//var IM_URL = readCookie('im_host');
var im_sid = readCookie('im_sid');
im_userInfo.userid = '';
im_userInfo.username = '';
im_userInfo.sid ='';
im_userInfo.siteid = 'jiayuan';
im_userInfo.isshowtoolbar = false;

/**
  * 新登录弹出 at 2011-03-30
  
    只适用于匿名用户

   1 每个用户只弹出两次，

   2 连续访问5个页面弹出一次。

   3 静止页面在10秒后弹出

  */
//usercp不设置弹出定时。
if(location.href.indexOf("/usercp/") == -1) {

  if(typeof loginWindow == "object"){

  var _tempOnopen =  loginWindow.onOpen ;
  loginWindow.onOpen = function(id){
	  
		  if(id=="login")
		  {
			loginWindow.setIds({'form':'loginForm','name':'login_email','pass':'login_password','error':'errorInfo','top':200,'move':true,'alpha':70});
		  }else
		  {
			loginWindow.setIds({'form':'loginForm_new','name':'login_email_new','pass':'login_password_new','error':'errorInfo_new','top':200,'move':true,'alpha':50}); 
		  }
	     if(typeof _tempOnopen =="function")
	     {
            _tempOnopen(id);
	     }
	  }
  }
window.setTimeout(function(){
 
 if(typeof loginWindow == "object"){

  var _tempOnopen =  loginWindow.onOpen ;
  loginWindow.onOpen = function(id){
	  
		  if(id=="login")
		  {
			loginWindow.setIds({'form':'loginForm','name':'login_email','pass':'login_password','error':'errorInfo','top':200,'move':true,'alpha':70});
		  }else
		  {
			loginWindow.setIds({'form':'loginForm_new','name':'login_email_new','pass':'login_password_new','error':'errorInfo_new','top':200,'move':true,'alpha':50}); 
		  }
		  if(typeof _tempOnopen =="function")
	      {
            _tempOnopen(id);
	      }
	  
	  }
  }
   
    var c2 = readCookie("poplogincount");

	

	var ispop = false;
    
	c2 = c2==""?0:parseInt(c2);

	if(c2 == 2 || c2 == 7 )
	{
        ispop = true;
	}else
	{
		c2=c2+1;
        writeCookie("poplogincount",c2,1);
	}
		 if(typeof loginWindow == "object" && !loginWindow.isLogin())
		 {
			 loginWindow.loadResource('http://images1.jyimg.com/w4/login/c/popupLogin_20110321.css?d=0701','css');

			 loginWindow.onClose = function (e){
			    writeCookie("poplogincount",3,1);
			    loginWindow.taskRun(2,10000,15);
			} 
			 if(ispop== true)
			 {
				   var c3 = readCookie("popup_count_15");
				   c3 = c3==""?0:parseInt(c3);
				   if(c3<2)
				   {
                      loginWindow.openTPL({tplconfig:{key:15},initForm:true});
				   }
			 }else{
			    loginWindow.taskRun(2,10000,15);
			}
		}
},3000);
}