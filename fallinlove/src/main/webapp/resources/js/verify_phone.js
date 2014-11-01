//Name:		phoneVerify
//Para:		transparency(derfault:50%), disabled_select(default:false)
//Version:	1.0.2 (2011-05-04)
//Author:	J.F.Liu
//Support:	http://www.jiayuan.com

//两个参数：透明度，IE6下弹层时是否禁用全部下拉列表控件
function phoneVerify(transparency, disabled_select,cb)
{
    var topdomain = window.location.host.match(/[^.]*\.(com|cn|net|org)(\.[^.]*)?/ig);
	if(topdomain) topdomain = topdomain[0];
	else topdomain = document.domain;
    var topdomainUrl = "";
    
	topdomainUrl = "www.jiayuan.com";

	this.httpURL = "http://"+topdomainUrl+"/general/mobilevalidate.php";
	this.cssURL =  "http://images1.jyimg.com/w4/global/c/verify_phone.css" ;
	this.callBack = (typeof cb == "function"? cb :null);
	//处理透明度默认是50%
	transparency = !isNaN(parseInt(transparency)) ? parseInt(transparency) : 50;
	this.transparency_int = transparency;						//保存整数
	this.transparency_float = parseFloat(transparency / 100);
	//是否隐藏select控件
	this.disabled_select = disabled_select ? disabled_select : false;
}
//追加属性和方法
phoneVerify.prototype = {
	//属性
	phone_verif_lastScrollY:0,
	showDivHeight:220,
	//定义全局变量标签的ID和遮罩的ID
	phone_verify_id:'phone_verify',
	phone_verify_mask_id:this.phone_verify_id + '_mask_div',
	//IE6隐藏select
	disable_select:'',
	disable_select_flag:false,
	
	//返回对象(一些情况下IE6会出问题，所以暂不使用此方法)
	//$:function(obj){return document.getElementById(obj);},
	
	//开始方法 参数：时间延时（毫秒）
	begin:function(time_delay, top_height)
	{
		time_delay = time_delay ? time_delay : 0;
		window.obj = this;	//解决类中不把this当作初始化的类
		window.setTimeout(function(){obj.showVerifyForm();}, time_delay);
		if(top_height) this.showDivHeight = top_height;
	},
	
	//展示弹出层
	showVerifyForm:function()
	{
		//装载CSS文件
		this.loadCssFile(this.cssURL);
		//显示遮罩层
		this.showMaskDiv();
		
		if(this.disabled_select && this.myBrowser() == 'IE')
		{
			window.obj = this;	//解决类中不把this当作初始化的类
			this.disable_select = window.setInterval(function(){obj.showHiddenAllSelect('disabled');}, 10);
		}
		
		//显示表单DIV
		var nodeDiv = this.bodyAddNode();
		nodeDiv.innerHTML = this.showFormDiv();
		
		//showDivWidth = 400;
		//获取弹出层的高度
		//showDivHeight = parseInt(this.getStyle(document.getElementById(this.phone_verify_id), 'height'));
		showDivHeight = this.showDivHeight ? this.showDivHeight : 220;
		//获取添加的表单层
		showDiv = document.getElementById(this.phone_verify_id);
		showDiv.style.display = "block";
		showDiv.style.position = "absolute";
		showDiv.style.zIndex = "999";
		//showDiv.style.top = (document.body.offsetHeight/2 - showDivHeight/2) + "px";
		showDiv.style.top = (document.documentElement.clientHeight/2 - showDivHeight/2) + "px";
		showDiv.style.left = (document.documentElement.scrollLeft + document.documentElement.clientWidth/2 - showDiv.scrollWidth/2) + "px";
		//showDiv.style.display = "";
		
		//启动弹出层自动随滚动条滚动
		this.setScroll();
		
		//给按钮增加click事件
		window.obj = this;	//解决类中不把this当作初始化的类
		//document.getElementById('close_div').setAttribute('onclick', document.all ?  function(){obj.closeDiv()} : 'javascript:obj.closeDiv()');
		//document.getElementById('btn_phone').setAttribute('onclick', document.all ? function(){obj.sendCode()}  : 'javascript:obj.sendCode()');
		//document.getElementById('btn_code').setAttribute('onclick', document.all ?  function(){obj.checkCode()}  : 'javascript:obj.checkCode()');
	},

	showMaskDiv:function()
	{
		//如果遮罩层已经存在，先删除
		if(document.getElementById(this.phone_verify_mask_id)) document.body.removeChild(document.getElementById(this.phone_verify_mask_id));
		//增加遮罩DIV
		var newMask = document.createElement("div");
		newMask.id = this.phone_verify_mask_id;
		newMask.style.position = "absolute";
		newMask.style.zIndex = "888";
		_scrollWidth = Math.max(document.body.scrollWidth,document.documentElement.scrollWidth);
		_scrollHeight = Math.max(document.body.scrollHeight,document.documentElement.scrollHeight);
		newMask.style.width = _scrollWidth + "px";
		newMask.style.height = _scrollHeight + "px";
		newMask.style.top = "0";
		newMask.style.left = "0px";
		newMask.style.background = "#33393C";
		newMask.style.opacity = this.transparency_float;
		newMask.style.filter = "alpha(opacity=" + this.transparency_int + ")";
		document.body.appendChild(newMask);
	},
		
	//自动处理遮罩层
	autoMaskLoad:function()
	{
		if(document.getElementById(this.phone_verify_mask_id))
		{
			document.getElementById(this.phone_verify_mask_id).style.width = Math.max(document.body.scrollWidth,document.documentElement.scrollWidth) + 'px';
			document.getElementById(this.phone_verify_mask_id).style.height = Math.max(document.body.scrollHeight,document.documentElement.scrollHeight) + 'px';
		}
		showDiv = document.getElementById(this.phone_verify_id);
		if(document.getElementById(this.phone_verify_id))
		{
			document.getElementById(this.phone_verify_id).style.left = (document.documentElement.scrollLeft + document.documentElement.clientWidth/2 -  showDiv.scrollWidth/2) + "px";	
		}
	},
		
	//关闭层
	closeDiv:function()
	{
		if(this.disabled_select && this.myBrowser() == 'IE')
		{
			this.showHiddenAllSelect('');
			this.disable_select = false;
		}
		document.getElementById(this.phone_verify_id).style.display = "none";
		document.getElementById(this.phone_verify_mask_id).style.display = "none";
	},
	
	//根据滚动条移动层
	autoScrollDiv:function() {
		var diffY;
		//获取当前scrollTop属性值
		if(document.documentElement && document.documentElement.scrollTop){
			diffY = document.documentElement.scrollTop;
		}else if(document.body){
			diffY = document.body.scrollTop;
		}
	
		//每次变化幅度
		percent = .1 * (diffY - this.phone_verif_lastScrollY);
		if(percent > 0){
			percent = Math.ceil(percent);
		}else{
			percent = Math.floor(percent);
		}
		
		var phone_div = document.getElementById(this.phone_verify_id);
		if(!phone_div){return;}
		var phone_div_top = isNaN(phone_div.style.top) ? phone_div.style.top : 0;
		phone_div.style.top = (parseInt(phone_div_top) + percent) + 'px';
		this.phone_verif_lastScrollY += percent;
		this.autoMaskLoad();
	},
	
	//实时更新弹出层的位置
	setScroll:function()
	{
		window.obj = this;	//解决类中不把this当作初始化的类
		this.interval = window.setInterval(function(){obj.autoScrollDiv();}, 10);
	},
	
	//输出表单页面
	showFormDiv:function()
	{
		var _this = this;
		var templates  = '';
			//templates += '<div id="phone_verify" style="display:none">';
			templates += '	<iframe frameborder="0" scrolling="no"></iframe>';
			templates += '    <div id="div_iframe">';
			templates += '        <p class="e_clear"><a class="close" id="close_div" onclick="obj.closeDiv();"></a></p>';
			templates += '        <h3>手机验证</h3>';
			templates += '        <p class="c_666">验证手机号码不收取任何费用，还可获得<font color="#ff0000">1</font>次免费认证身份证机会！<br/>请填写您的手机号，并点击发送验证码：</p>';
			templates += '        <table width="350" border="0" cellspacing="0" cellpadding="0">';
			templates += '          <tr>';
			templates += '            <td width="90" height="35"><span>您的手机号：</span></td>';
			templates += '            <td width="154"><input type="text" class="text" name="verifyphone" id="verifyphone" /></td>';
			templates += '            <td width="92"><input type="submit" class="setcode" id="btn_phone" onclick="obj.sendCode()" value=""/></td>';
			templates += '          </tr>';
			templates += '          <tr>';
			templates += '            <td height="35"><span>输入验证码：</span></td>';
			templates += '            <td><input type="text" class="text" name="verifycode" id="verifycode" /></td>';
			templates += '            <td><input type="submit" class="fixecode" id="btn_code" onclick="obj.checkCode();" value=""/></td>';
			templates += '          </tr>';
			templates += '        </table>';
			templates += '        <p class="c_b7b7b7">除非法定事由和程序，用户手机号码等信息将不会泄露给任何第三方。</p>';
			templates += '    </div>';
			//templates += '</div>';
			return templates;
	},
	
	//给窗体增加一个节点用于保存表单
	bodyAddNode:function()
	{
		var div = document.createElement("div");
		div.id = 'phone_verify';
		div.style.display = "none";
		document.body.appendChild(div);
		return div;
	},
	
	//载入CSS文件
	loadCssFile:function(src)
	{
		var objDynamic = document.createElement("link");
		objDynamic.rel = "stylesheet";
		objDynamic.type = "text/css";
		objDynamic.id = "css_verify_phone";
		objDynamic.href = src;
		//将创建的CSS对象插入到HEAD中
        document.getElementsByTagName("head")[0].appendChild(objDynamic);
	},
	
	//返回浏览器类型
	myBrowser:function(){
		var userAgent = navigator.userAgent;					//取得浏览器的userAgent字符串
		var isOpera = userAgent.indexOf("Opera") > -1;
		if (isOpera){return "Opera"};							//判断是否Opera浏览器 
		if (userAgent.indexOf("Firefox") > -1){return "FF";} 	//判断是否Firefox浏览器
		if (userAgent.indexOf("Safari") > -1){return "Safari";} //判断是否Safari浏览器
		if (userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera){return "IE";} ; //判断是否IE浏览器
	},
	
	//获取节点属性值
	getStyle:function(node, property)
	{
		if(node.style[property]){
			return node.style[property];
		}else if(node.currentStyle){
			return node.currentStyle[property];
		}else if(document.defaultView && document.defaultView.getComputedStyle){
			return document.defaultView.getComputedStyle(node, null)[property];
		}
		return null;
	},
	
	//显示、隐藏所有的select
	showHiddenAllSelect:function(display_text)
	{
		var all_selects = document.getElementsByTagName("select");
		var len = all_selects.length;
		for(var i=0; i<len; i++) {
			if(all_selects[i].disabled != display_text)
			{
				all_selects[i].disabled = display_text;
			}
			this.disable_select_flag = true;
		}
		if(this.disable_select_flag){clearInterval(this.disable_select);}
	},
	
	//创建Ajax对象
	createAjax:function()
	{
		try
		{xmlHttp = new XMLHttpRequest();}
		catch (trymicrosoft)
		{try{xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");}
			catch (othermicrosoft) 
			{try{xmlHttp = new ActiveXObject("Microsoft.XMLHTTP"); }
				catch (failed)
				{xmlHttp = false;}
			}
		}
		return xmlHttp;
	},
	
	//发送验证码
	sendCode:function()
	{
		//从文本框中获取手机号
		var phone = document.getElementById('verifyphone').value;
		if(!this.isMobel(phone))
		{
			alert('请正确填写手机号！');
			return false;
		}
		//创建对象
		xmlHttp = this.createAjax();
		//请求URL
		var linkurl = "xxx.php";
		xmlHttp.open("POST", linkurl, true);
		xmlHttp.onreadystatechange = function()
		{//回调函数
			if(xmlHttp.readyState == 4)
			{
				if(xmlHttp.status == 200)
				{
					if(!xmlHttp.responseText){
						alert('验证码发送故障，请重新提交！');
					}
				}
			}
		};
		xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		xmlHttp.send("phone="+phone);
	},
	
	//验证验证码
	checkCode:function()
	{
		//从文本框中获取验证码
		var code = document.getElementById('verifycode').value;
		if(code == '')
		{
			alert('请填写验证码！');
			return false;
		}
		//创建对象
		xmlHttp = this.createAjax();
		//请求URL
		var linkurl = "xxx.php";
		xmlHttp.open("POST", linkurl, true);
		xmlHttp.onreadystatechange = function()
		{//回调函数
			if(xmlHttp.readyState == 4)
			{
				if(xmlHttp.status == 200)
				{
					if(xmlHttp.responseText){
						this.closeDiv();
						try{
							//成功之后回调函数
							return_verify_phone();
						}catch(e){
							//若函数未定义，直接给出成功提示
							alert('验证成功！');
						}
					}
				}
			}
		};
		xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		xmlHttp.send("code="+code);
	},
	
	//验证是否是手机号
	isMobel:function(value)
	{
		if((/^13\d{9}$/g.test(value))||(/^15[0-35-9]\d{8}$/g.test(value))||(/^18[05-9]\d{8}$/g.test(value))){
			return true;
		}else{
			return false;
		}
	},
	getScript:function(s){
	
	   	    var head = document.getElementsByTagName("head")[0];
			var script = document.createElement("script");
			script.src = s.url;
			if (s.scriptCharset)
				script.charset = s.scriptCharset;

			// Handle Script loading
				var done = false;

				// Attach handlers for all browsers
				script.onload = script.onreadystatechange = function(){
					if ( !done && (!this.readyState ||
							this.readyState == "loaded" || this.readyState == "complete") ) {
						done = true;
						//s.success();
						//s.complete();
						head.removeChild( script );
					}
				};

			head.appendChild(script);
	},
	 param:function(p){
	
	    var str = "";

	    for(var i in p )
		{
		    str+=i+"="+p[i] + "&";
		}
		return str.substr(0,str.length-1);
	}
}

phoneVerify.prototype.sendCode = function (){

       var phone = document.getElementById('verifyphone').value;
	   if(!this.isMobel(phone))
	   {
		   alert("请填写有效手机号");
		   return false ;
	   }
       var qid =JYTOOL.setBatch({cb:this.callBack,method:'sendMessage'});

	   var param = {
		            type:'script',
		            method:'sendMessage',
					m:phone,
					batchId:qid,
				    t:new Date().getTime()
	               };
	   this.getScript({url:this.httpURL+"?"+this.param(param)});
}
phoneVerify.prototype.checkCode = function (){
	   var phone = document.getElementById('verifyphone').value;
	   if(!this.isMobel(phone))
	   {
		   alert("请填写有效手机号");
		   return false;
	   }
	   	var code = document.getElementById('verifycode').value;
		if(code == '')
		{
			alert('请填写验证码！');
			return false;
		}
		var qid =JYTOOL.setBatch({cb:this.callBack,method:'sendMessage'});
        var param = {
		            type:'script',
		            method:'addCheckMobile',
					m:phone,
					batchId:qid,
					code:code,
				    t:new Date().getTime()
	            };
    this.getScript({url:this.httpURL+"?"+this.param(param)});
}

  /**
    * 根据请求方式来做相应结果
    * 100  发送验证码成功
    * 101 未登录
    * 102 参数错误
    * 200 验证通过,并进行绑定
    * 201 验证码错误或者过期
    * 202 已经被验证过了，或者用手机号注册过了。
    * 300 发送信息超过三次
    * 400 过快
    * 500 短信服务器错误
    */
 var JYTOOL = {};
     JYTOOL.batchId=1 ;
     JYTOOL.batch={},
	 JYTOOL.getBatch=function(batchId){return JYTOOL.batch[batchId] ;}
	 JYTOOL.setBatch=function(batch){
	   var id = JYTOOL.batchId ;
	   JYTOOL.batch[id] = batch;
       JYTOOL.batchId++;
	   return id;
	 }
	 JYTOOL.removeBatch=function(batchId){ delete JYTOOL.batch[batchId];}

JYTOOL.scriptCallBack = function (data){
	

		var code = data['regcode'];
		switch (code)
		{
			case 100:
				 alert("验证码发送成功，请在下面填入验证码后，点击＂完成验证＂按钮！");
				 break;
			case 101:
				   alert("请先登录");
				   break;
			case 102:
				   alert("参数错误");
				   break;
			case 200:
				   alert("恭喜！您成功完成了手机号验证");
				   break;
			case 201:
				   alert("验证码错误或者过期");
				   break;
			case 202:
				   alert("此手机号已进行过手机号验证，请使用其他手机号。");
				   break;
			case 300:
				   alert("发送信息超过三次");
				   break;
			case 400:
				   alert("验证码发送过快");
				   break;
			case 500:
				   alert("短信服务器错误");
				   break;
		}
	//回调函数
	var batch = JYTOOL.getBatch(data['batchId']);
	if(batch && typeof batch.cb == "function")
	{
        batch.cb(data);
		JYTOOL.removeBatch(data['batchId']);
	}
}