// ------------------------功能及样式配置部分 update by will at 2011-07-22--03--009------------------------
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

// ---------------------各分站样式------------------------------
var FOOT_IMG_BASE = (window.topdomain=="jiayuan.com"||window.topdomain=="msn.com.cn") ? "http://images1.jyimg.com" : "http://images1."+window.topdomain;
var SITE_PATH = window.location.host.match(/msn/)?'msn':
window.location.host.match(/sina/)?'sina':'www';
//加载简装主站通用底
document.write('<script type="text/javascript" src="http://images1.jyimg.com/js/footer/w4-simple.js"></script>');
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
		document.write('<script src="http://webim.'+topdomain+'/pop_template.php?v=15"></script>');
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

   3 第一次静止页面3秒弹出 第二次静止页面在10秒后弹出

   4 小龙女频道和情感博客频道，第次都是15分钟。

  */
//usercp,msg,login不设置弹出定时。
if(location.href.indexOf("/usercp/") == -1&& location.href.indexOf("/msg/") == -1 && location.href.indexOf("login") == -1&& location.href.indexOf("party") == -1) {

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
  //第一次3秒
 var seed1 = 3000;
  //第一次10000秒
 var seed2 = 10000;
 //小龙频道弹出时间加长。情感博客频道
if(location.href.indexOf("/master/") >0 || location.href.indexOf("diary."+topdomain) >0)
{
    seed1 = 900000;
	seed2 = 900000;
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
			    loginWindow.taskRun(2,seed2,15);
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
			    loginWindow.taskRun(2,seed2,15);
			}
		}
},seed1);
}


/*flash 交互 */
(function () {
	var ie = !!(window.attachEvent && !window.opera);
	var wk = /webkit\/(\d+)/i.test(navigator.userAgent) && (RegExp.$1 < 525);
	var fn = [];
	var run = function () { for (var i = 0; i < fn.length; i++) fn[i](); };
	var d = document;
	d.ready = function (f) {
		if (!ie && !wk && d.addEventListener)
			return d.addEventListener('DOMContentLoaded', f, false);
		
		if (fn.push(f) > 1) return;

		if (ie)
			(function () {
				try { d.documentElement.doScroll('left'); run(); }
				catch (err) { setTimeout(arguments.callee, 0); }
			})();
	  else if (wk)
			var t = setInterval(function () {
				if (/^(loaded|complete)$/.test(d.readyState))
					clearInterval(t), run();
			}, 0);
};
})();

function setTypeA()
{
	var obj = document.getElementById('typeA');
	var typeACookie = readCookie('helloA');
	var uid = readCookie('myuid');
	var c = "";
	if (typeACookie != "")
		obj.setTypeA(typeACookie);
	else if ((c=obj.checkTypeA()) != "")
		writeCookie('helloA', c, 90*24);
}

var typeALoaded = false;

document.ready(function(){
	if (typeALoaded)
		return;
	
	typeALoaded = true;
	
	var condiv = document.createElement("DIV");
	condiv.id = "typeAContainer";
	condiv.style.position = "absolute";
	condiv.style.width = "1px";
	condiv.style.height = "1px";
	document.body.appendChild(condiv);

	var objdiv = document.createElement("DIV");
	objdiv.id="altContent";
	objdiv.style.display="none";
	condiv.appendChild(objdiv);

	var flashvars = {
	};
	var params = {
		menu: "false",
		scale: "noScale",
		allowFullscreen: "true",
		allowScriptAccess: "always",
		bgcolor: "#FFFFFF"
	};
	var attributes = {
		id:"typeA"
	};

	var swfobject_avoid=function(){var D="undefined",r="object",S="Shockwave Flash",W="ShockwaveFlash.ShockwaveFlash",q="application/x-shockwave-flash",R="SWFObjectExprInst",x="onreadystatechange",O=window,j=document,t=navigator,T=false,U=[h],o=[],N=[],I=[],l,Q,E,B,J=false,a=false,n,G,m=true,M=function(){var aa=typeof j.getElementById!=D&&typeof j.getElementsByTagName!=D&&typeof j.createElement!=D,ah=t.userAgent.toLowerCase(),Y=t.platform.toLowerCase(),ae=Y?/win/.test(Y):/win/.test(ah),ac=Y?/mac/.test(Y):/mac/.test(ah),af=/webkit/.test(ah)?parseFloat(ah.replace(/^.*webkit\/(\d+(\.\d+)?).*$/,"$1")):false,X=!+"\v1",ag=[0,0,0],ab=null;if(typeof t.plugins!=D&&typeof t.plugins[S]==r){ab=t.plugins[S].description;if(ab&&!(typeof t.mimeTypes!=D&&t.mimeTypes[q]&&!t.mimeTypes[q].enabledPlugin)){T=true;X=false;ab=ab.replace(/^.*\s+(\S+\s+\S+$)/,"$1");ag[0]=parseInt(ab.replace(/^(.*)\..*$/,"$1"),10);ag[1]=parseInt(ab.replace(/^.*\.(.*)\s.*$/,"$1"),10);ag[2]=/[a-zA-Z]/.test(ab)?parseInt(ab.replace(/^.*[a-zA-Z]+(.*)$/,"$1"),10):0}}else{if(typeof O.ActiveXObject!=D){try{var ad=new ActiveXObject(W);if(ad){ab=ad.GetVariable("$version");if(ab){X=true;ab=ab.split(" ")[1].split(",");ag=[parseInt(ab[0],10),parseInt(ab[1],10),parseInt(ab[2],10)]}}}catch(Z){}}}return{w3:aa,pv:ag,wk:af,ie:X,win:ae,mac:ac}}(),k=function(){if(!M.w3){return}if((typeof j.readyState!=D&&j.readyState=="complete")||(typeof j.readyState==D&&(j.getElementsByTagName("body")[0]||j.body))){f()}if(!J){if(typeof j.addEventListener!=D){j.addEventListener("DOMContentLoaded",f,false)}if(M.ie&&M.win){j.attachEvent(x,function(){if(j.readyState=="complete"){j.detachEvent(x,arguments.callee);f()}});if(O==top){(function(){if(J){return}try{j.documentElement.doScroll("left")}catch(X){setTimeout(arguments.callee,0);return}f()})()}}if(M.wk){(function(){if(J){return}if(!/loaded|complete/.test(j.readyState)){setTimeout(arguments.callee,0);return}f()})()}s(f)}}();function f(){if(J){return}try{var Z=j.getElementsByTagName("body")[0].appendChild(C("span"));Z.parentNode.removeChild(Z)}catch(aa){return}J=true;var X=U.length;for(var Y=0;Y<X;Y++){U[Y]()}}function K(X){if(J){X()}else{U[U.length]=X}}function s(Y){if(typeof O.addEventListener!=D){O.addEventListener("load",Y,false)}else{if(typeof j.addEventListener!=D){j.addEventListener("load",Y,false)}else{if(typeof O.attachEvent!=D){i(O,"onload",Y)}else{if(typeof O.onload=="function"){var X=O.onload;O.onload=function(){X();Y()}}else{O.onload=Y}}}}}function h(){if(T){V()}else{H()}}function V(){var X=j.getElementsByTagName("body")[0];var aa=C(r);aa.setAttribute("type",q);var Z=X.appendChild(aa);if(Z){var Y=0;(function(){if(typeof Z.GetVariable!=D){var ab=Z.GetVariable("$version");if(ab){ab=ab.split(" ")[1].split(",");M.pv=[parseInt(ab[0],10),parseInt(ab[1],10),parseInt(ab[2],10)]}}else{if(Y<10){Y++;setTimeout(arguments.callee,10);return}}X.removeChild(aa);Z=null;H()})()}else{H()}}function H(){var ag=o.length;if(ag>0){for(var af=0;af<ag;af++){var Y=o[af].id;var ab=o[af].callbackFn;var aa={success:false,id:Y};if(M.pv[0]>0){var ae=c(Y);if(ae){if(F(o[af].swfVersion)&&!(M.wk&&M.wk<312)){w(Y,true);if(ab){aa.success=true;aa.ref=z(Y);ab(aa)}}else{if(o[af].expressInstall&&A()){var ai={};ai.data=o[af].expressInstall;ai.width=ae.getAttribute("width")||"0";ai.height=ae.getAttribute("height")||"0";if(ae.getAttribute("class")){ai.styleclass=ae.getAttribute("class")}if(ae.getAttribute("align")){ai.align=ae.getAttribute("align")}var ah={};var X=ae.getElementsByTagName("param");var ac=X.length;for(var ad=0;ad<ac;ad++){if(X[ad].getAttribute("name").toLowerCase()!="movie"){ah[X[ad].getAttribute("name")]=X[ad].getAttribute("value")}}P(ai,ah,Y,ab)}else{p(ae);if(ab){ab(aa)}}}}}else{w(Y,true);if(ab){var Z=z(Y);if(Z&&typeof Z.SetVariable!=D){aa.success=true;aa.ref=Z}ab(aa)}}}}}function z(aa){var X=null;var Y=c(aa);if(Y&&Y.nodeName=="OBJECT"){if(typeof Y.SetVariable!=D){X=Y}else{var Z=Y.getElementsByTagName(r)[0];if(Z){X=Z}}}return X}function A(){return !a&&F("6.0.65")&&(M.win||M.mac)&&!(M.wk&&M.wk<312)}function P(aa,ab,X,Z){a=true;E=Z||null;B={success:false,id:X};var ae=c(X);if(ae){if(ae.nodeName=="OBJECT"){l=g(ae);Q=null}else{l=ae;Q=X}aa.id=R;if(typeof aa.width==D||(!/%$/.test(aa.width)&&parseInt(aa.width,10)<310)){aa.width="310"}if(typeof aa.height==D||(!/%$/.test(aa.height)&&parseInt(aa.height,10)<137)){aa.height="137"}j.title=j.title.slice(0,47)+" - Flash Player Installation";var ad=M.ie&&M.win?"ActiveX":"PlugIn",ac="MMredirectURL="+O.location.toString().replace(/&/g,"%26")+"&MMplayerType="+ad+"&MMdoctitle="+j.title;if(typeof ab.flashvars!=D){ab.flashvars+="&"+ac}else{ab.flashvars=ac}if(M.ie&&M.win&&ae.readyState!=4){var Y=C("div");X+="SWFObjectNew";Y.setAttribute("id",X);ae.parentNode.insertBefore(Y,ae);ae.style.display="none";(function(){if(ae.readyState==4){ae.parentNode.removeChild(ae)}else{setTimeout(arguments.callee,10)}})()}u(aa,ab,X)}}function p(Y){if(M.ie&&M.win&&Y.readyState!=4){var X=C("div");Y.parentNode.insertBefore(X,Y);X.parentNode.replaceChild(g(Y),X);Y.style.display="none";(function(){if(Y.readyState==4){Y.parentNode.removeChild(Y)}else{setTimeout(arguments.callee,10)}})()}else{Y.parentNode.replaceChild(g(Y),Y)}}function g(ab){var aa=C("div");if(M.win&&M.ie){aa.innerHTML=ab.innerHTML}else{var Y=ab.getElementsByTagName(r)[0];if(Y){var ad=Y.childNodes;if(ad){var X=ad.length;for(var Z=0;Z<X;Z++){if(!(ad[Z].nodeType==1&&ad[Z].nodeName=="PARAM")&&!(ad[Z].nodeType==8)){aa.appendChild(ad[Z].cloneNode(true))}}}}}return aa}function u(ai,ag,Y){var X,aa=c(Y);if(M.wk&&M.wk<312){return X}if(aa){if(typeof ai.id==D){ai.id=Y}if(M.ie&&M.win){var ah="";for(var ae in ai){if(ai[ae]!=Object.prototype[ae]){if(ae.toLowerCase()=="data"){ag.movie=ai[ae]}else{if(ae.toLowerCase()=="styleclass"){ah+=' class="'+ai[ae]+'"'}else{if(ae.toLowerCase()!="classid"){ah+=" "+ae+'="'+ai[ae]+'"'}}}}}var af="";for(var ad in ag){if(ag[ad]!=Object.prototype[ad]){af+='<param name="'+ad+'" value="'+ag[ad]+'" />'}}aa.outerHTML='<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'+ah+">"+af+"</object>";N[N.length]=ai.id;X=c(ai.id)}else{var Z=C(r);Z.setAttribute("type",q);for(var ac in ai){if(ai[ac]!=Object.prototype[ac]){if(ac.toLowerCase()=="styleclass"){Z.setAttribute("class",ai[ac])}else{if(ac.toLowerCase()!="classid"){Z.setAttribute(ac,ai[ac])}}}}for(var ab in ag){if(ag[ab]!=Object.prototype[ab]&&ab.toLowerCase()!="movie"){e(Z,ab,ag[ab])}}aa.parentNode.replaceChild(Z,aa);X=Z}}return X}function e(Z,X,Y){var aa=C("param");aa.setAttribute("name",X);aa.setAttribute("value",Y);Z.appendChild(aa)}function y(Y){var X=c(Y);if(X&&X.nodeName=="OBJECT"){if(M.ie&&M.win){X.style.display="none";(function(){if(X.readyState==4){b(Y)}else{setTimeout(arguments.callee,10)}})()}else{X.parentNode.removeChild(X)}}}function b(Z){var Y=c(Z);if(Y){for(var X in Y){if(typeof Y[X]=="function"){Y[X]=null}}Y.parentNode.removeChild(Y)}}function c(Z){var X=null;try{X=j.getElementById(Z)}catch(Y){}return X}function C(X){return j.createElement(X)}function i(Z,X,Y){Z.attachEvent(X,Y);I[I.length]=[Z,X,Y]}function F(Z){var Y=M.pv,X=Z.split(".");X[0]=parseInt(X[0],10);X[1]=parseInt(X[1],10)||0;X[2]=parseInt(X[2],10)||0;return(Y[0]>X[0]||(Y[0]==X[0]&&Y[1]>X[1])||(Y[0]==X[0]&&Y[1]==X[1]&&Y[2]>=X[2]))?true:false}function v(ac,Y,ad,ab){if(M.ie&&M.mac){return}var aa=j.getElementsByTagName("head")[0];if(!aa){return}var X=(ad&&typeof ad=="string")?ad:"screen";if(ab){n=null;G=null}if(!n||G!=X){var Z=C("style");Z.setAttribute("type","text/css");Z.setAttribute("media",X);n=aa.appendChild(Z);if(M.ie&&M.win&&typeof j.styleSheets!=D&&j.styleSheets.length>0){n=j.styleSheets[j.styleSheets.length-1]}G=X}if(M.ie&&M.win){if(n&&typeof n.addRule==r){n.addRule(ac,Y)}}else{if(n&&typeof j.createTextNode!=D){n.appendChild(j.createTextNode(ac+" {"+Y+"}"))}}}function w(Z,X){if(!m){return}var Y=X?"visible":"hidden";if(J&&c(Z)){c(Z).style.visibility=Y}else{v("#"+Z,"visibility:"+Y)}}function L(Y){var Z=/[\\\"<>\.;]/;var X=Z.exec(Y)!=null;return X&&typeof encodeURIComponent!=D?encodeURIComponent(Y):Y}var d=function(){if(M.ie&&M.win){window.attachEvent("onunload",function(){var ac=I.length;for(var ab=0;ab<ac;ab++){I[ab][0].detachEvent(I[ab][1],I[ab][2])}var Z=N.length;for(var aa=0;aa<Z;aa++){y(N[aa])}for(var Y in M){M[Y]=null}M=null;for(var X in swfobject_avoid){swfobject_avoid[X]=null}swfobject_avoid=null})}}();return{registerObject:function(ab,X,aa,Z){if(M.w3&&ab&&X){var Y={};Y.id=ab;Y.swfVersion=X;Y.expressInstall=aa;Y.callbackFn=Z;o[o.length]=Y;w(ab,false)}else{if(Z){Z({success:false,id:ab})}}},getObjectById:function(X){if(M.w3){return z(X)}},embedSWF:function(ab,ah,ae,ag,Y,aa,Z,ad,af,ac){var X={success:false,id:ah};if(M.w3&&!(M.wk&&M.wk<312)&&ab&&ah&&ae&&ag&&Y){w(ah,false);K(function(){ae+="";ag+="";var aj={};if(af&&typeof af===r){for(var al in af){aj[al]=af[al]}}aj.data=ab;aj.width=ae;aj.height=ag;var am={};if(ad&&typeof ad===r){for(var ak in ad){am[ak]=ad[ak]}}if(Z&&typeof Z===r){for(var ai in Z){if(typeof am.flashvars!=D){am.flashvars+="&"+ai+"="+Z[ai]}else{am.flashvars=ai+"="+Z[ai]}}}if(F(Y)){var an=u(aj,am,ah);if(aj.id==ah){w(ah,true)}X.success=true;X.ref=an}else{if(aa&&A()){aj.data=aa;P(aj,am,ah,ac);return}else{w(ah,true)}}if(ac){ac(X)}})}else{if(ac){ac(X)}}},switchOffAutoHideShow:function(){m=false},ua:M,getFlashPlayerVersion:function(){return{major:M.pv[0],minor:M.pv[1],release:M.pv[2]}},hasFlashPlayerVersion:F,createSWF:function(Z,Y,X){if(M.w3){return u(Z,Y,X)}else{return undefined}},showExpressInstall:function(Z,aa,X,Y){if(M.w3&&A()){P(Z,aa,X,Y)}},removeSWF:function(X){if(M.w3){y(X)}},createCSS:function(aa,Z,Y,X){if(M.w3){v(aa,Z,Y,X)}},addDomLoadEvent:K,addLoadEvent:s,getQueryParamValue:function(aa){var Z=j.location.search||j.location.hash;if(Z){if(/\?/.test(Z)){Z=Z.split("?")[1]}if(aa==null){return L(Z)}var Y=Z.split("&");for(var X=0;X<Y.length;X++){if(Y[X].substring(0,Y[X].indexOf("="))==aa){return L(Y[X].substring((Y[X].indexOf("=")+1)))}}}return""},expressInstallCallback:function(){if(a){var X=c(R);if(X&&l){X.parentNode.replaceChild(l,X);if(Q){w(Q,true);if(M.ie&&M.win){l.style.display="block"}}if(E){E(B)}}a=false}}}}();
	swfobject_avoid.embedSWF(FOOT_IMG_BASE+"/w4/global/j/f/typeA4.swf?v=5", "altContent", 1, 1, "10.0.0", null, flashvars, params, attributes);
});

/*flash 交互 end*/