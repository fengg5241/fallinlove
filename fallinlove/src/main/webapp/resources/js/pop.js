/*
 * 文件名: pop.js
 * vim:fdm=marker
 */
//TODO 本文件中不可再用document.write的方式写入一个script标签了，不然IE下面会出现滚动条可以无限下拖的现象
//TODO 注意其中用到了im_userInfo这个变量, 这是小能聊天引入的变量

// 取PV连接

if (typeof window.jQuery == 'undefined') {
    var fileref = document.createElement('script');//创建标签
    fileref.setAttribute("type", "text/javascript");//定义属性type的值为text/javascript
    fileref.setAttribute("src", "http://images.jiayuan.com/w4/usercp/j/jquery-1.4.2.min.js"); //文件的地址

    if (typeof fileref != "undefined") {
        document.getElementsByTagName("head")[0].appendChild(fileref);
    }
}

(function() { //{{{
var V_LINK = "";
window.getPvlink = function(){
	if(V_LINK==""){
		var myloc=readCookie('myloc');
		var mysex=readCookie('mysex');
		var myage=readCookie('myage');
		var myuid=readCookie('myuid');
		V_LINK="http://pv.jiayuan.com/call/v.gif?w=1&location="+ myloc+"&sex="+mysex+"&age="+myage+"&uid="+myuid;
	}
	
	return V_LINK+"&rd="+Math.random();
}
// TODO 这sl函数考虑使用Image()实现，不用run_fra这个iframe了, 但是run_fra在后台发布的弹出样式中还有用到
window.sl_pv = function (obj){
	var elements = obj.getElementsByTagName('a');
	for (var i = 0, len = elements.length; i < len; ++i) {
		elements[i].onmousedown = function(){
			var pvurl = getPvlink();
			document.getElementById('run_fra').src=pvurl+'&sl=zd&click='+this.href+'&';
		};
	}
}
})();//}}}
// 弹窗类
(function() {//{{{
var pop_height = 203; // 最大化时的高度
var pop_mini_h = 35; // mini状态时的高度
var min_class = "sp1";
var max_class = "sp3";
var on_class = "on";
var over_class = "over";
var move_int_time = 50; // 移动间隔时间
var move_int_height = 10; // 移动间隔高度
var pop = {};
pop.extend = function(des, src) { //{{{
	if(src instanceof Array) {
		for(var i = 0, len = src.length; i < len; i++)
			pop.extend(des, src[i]);
	}
	for( var i in src) {
		des[i] = src[i];
	}
	return des;
};//}}}
// 标题闪动
pop.extend(pop, {//{{{
time_hdl_flash: 0,
curr_flash_id: 0,
flash_title: function(flash_id, step) {
	var flash_obj = document.getElementById('link_'+flash_id);
	if(!flash_obj) return;
	switch(step) {
		case 0:
			flash_obj.style.color = "";
			break;
		case 1:
			flash_obj.style.color =	"";
			step = 2;
			break;
		case 2:
			flash_obj.style.color =	"#FF6600";
			step = 1;
			break;
		default:
			break;
	}
	clearTimeout(pop.time_hdl_flash);
	if(step) {
		pop.curr_flash_id = flash_id;
		pop.time_hdl_flash = setTimeout(function(){
			pop.flash_title(flash_id, step);
		},330);
	}
},
stop_flash: function() {
	pop.flash_title(pop.curr_flash_id, 0);
} 

});//}}}
// 最大化，最小化，关闭, 浮动
pop.extend(pop, {//{{{
	time_hdl_minmax: 0,
	// status: 0 无变化, 1, 变大 2, 变小 3, 关闭
	status: 0,
	minmax: function() {
		pop.status = pop.status == 1 ? 2 : 1;
		if(pop.status == 1) {
			pop.sBtn.title = "最小化";
			pop.sBtn.className = min_class;
		} else {
			pop.sBtn.title = "最大化";
			pop.sBtn.className = max_class;
		}
		pop.doChange();
	},
	max: function() {
		pop.status = 1;
		pop.sBtn.title = "最小化";
		pop.sBtn.className = min_class;
		pop.doChange();
	},
	close: function() {
		pop.status = 3;
		pop.doChange();
	},
	doChange: function() {
		clearInterval(pop.time_hdl_minmax);
		pop.time_hdl_minmax = setInterval(function(){pop.changeH(pop.status)}, move_int_time);
	},
	changeH: function(status) {
		var popH = parseInt(pop.bulletin_div.style.height);
		switch(status) {
			case 1:
				if (popH<pop_height){
					pop.bulletin_div.style.height=(Math.min(pop_height,popH+move_int_height)).toString()+"px";
				}
				else{  
					clearInterval(pop.time_hdl_minmax);
				}
				pop.scrollTip();
				break;
			case 2:
			case 3:
				if (popH>pop_mini_h) {
					pop.bulletin_div.style.height=(Math.max(pop_mini_h,popH-move_int_height)).toString()+"px";
				} else { 
					clearInterval(pop.time_hdl_minmax);
					if(status == 3)
						pop.bulletin_div.style.height="0px";  //不设置隐藏,只改变高度
				}
				pop.scrollTip();
				break;
			default:
				clearInterval(pop.time_hdl_minmax);
				break;
		}
	},
	// 自适应位置
	scrollTip: function() { 
		var w=0,h=0,x=0,y=0;
		if(document.documentElement && document.documentElement.clientWidth){ 
			w=document.documentElement.clientWidth;
			h=document.documentElement.clientHeight;
		} else if(document.body && document.body.clientWidth){ 
			w=document.body.clientWidth;
			h=document.body.clientHeight;
		} else if(window.innerWidth){ 
			w=window.innerWidth-18;
			h=window.innerHeight-18; 
		} 
		if(document.documentElement&&document.documentElement.scrollTop){ 
			y=document.documentElement.scrollTop;
		} else if(document.body&&document.body.scrollTop){ 
			y=document.body.scrollTop;
		} else if(window.pageYOffset){ 
			y=window.pageYOffset;
		} else if(window.scrollY){ 
			y=window.scrollY;
		}
		if(document.documentElement&&document.documentElement.scrollLeft){ 
			x=document.documentElement.scrollLeft;
		} else if(document.body&&document.body.scrollLeft){ 
			x=document.body.scrollLeft;
		} else if(window.pageXOffset){ 
			x=window.pageXOffset;
		} else if(window.scrollX){ 
			x=window.scrollX;
		}
		// 小能工具条的占位
		if(im_userInfo.isshowtoolbar)
			y -=  27;
		pop.bulletin_div.style.top = h + y - pop.bulletin_div.offsetHeight + "px"; 
		pop.bulletin_div.style.left = w + x - pop.bulletin_div.offsetWidth + "px"; 
	}
});//}}}
// 切换与设置标签
pop.extend(pop, { //{{{
	showtab: function(show_id, max_it) {
		for(var i=1; i<=3; i++) {
			var div_obj	=	document.getElementById("div_"+i);
			var con_obj	=	document.getElementById("con_"+i);
			if(!div_obj || !con_obj) continue;
			if(i ==	show_id) {
				div_obj.className = on_class;
				con_obj.style.display = '';
			} else {
				div_obj.className = over_class;
				con_obj.style.display = 'none';
			}
		}
		if(max_it) {
			pop.max();
		}
		pop.stop_flash(show_id);
	},
	settab: function(set_id, content) {
		var con_obj =   document.getElementById("con_" + set_id);
		if(con_obj) {
			con_obj.innerHTML = content;
			sl_pv(con_obj);
		}
	}
}); //}}}
// 初始化
pop.extend(pop, { //{{{
	bulletin_div: null,
	sBtn: null,
	init: function() {
		pop.bulletin_div = document.getElementById('bulletin');
		pop.bulletin_div.style.display = '';
		//pop.bulletin_div.style.cssText = 'position:absolute;z-index:3;overflow:hidden;width:280px;height:0px;top:0px; left:0px;';
		pop.bulletin_div.style.height = "0px";
		pop.bulletin_div.style.right = "0px";
		pop.bulletin_div.style.bottom = "0px";

		//pop.bulletin_div.style.cssText = 'position:absolute;z-index:3;overflow:hidden;width:280px; height:201px;';
		// 就是取后7个
		var loc_res = location.href.substr(Math.max(0, location.href.length - 7), 7);
		if(loc_res	==	'usercp/'	||	loc_res	==	'/usercp') {
			// 这时候就算不弹也显示个mini窗口
			pop.bulletin_div.style.height = pop_mini_h + "px";
			pop.scrollTip();
		}
		pop.sBtn = document.getElementById('switchButton');
		if(pop.sBtn)
		pop.sBtn.onclick = function() {
			pop.minmax();
		}
		var btn	= document.getElementById('closeButton');
		if(btn)
		btn.onclick = function() {
			pop.close();
		}
		pop.bulletin_div.onclick = function() {
			pop.stop_flash();
		}
		for(var i = 1; i <= 3; i++) {
			(function(i) {
				var div_obj	= document.getElementById("div_"+i);
				if(!div_obj) return;
				div_obj.onclick = function() {pop.showtab(i, 1);}
			})(i);
		}

		addEvent("onscroll", function(){pop.scrollTip();});
		addEvent("onresize", function(){pop.scrollTip();});
		/*
		pop.check_hdl= setInterval(function(){
			if(typeof window['onscroll'] != "function") {
				addEvent("onscroll", function(){pop.scrollTip();});
				clearInterval(pop.check_hdl);
			}
		}, 1000);
		*/
	}
});//}}}
function addEvent(event, func) {
	var oldevent = window[event];
	if(typeof window[event] != 'function') {
		window[event] = func;
	} else {
		window[event] = function() {
			oldevent();
			func();
		}
	}
}
pop.init();
window.pop = pop;
})();//}}}


var	poped	=	false;

var pop_str	=	readCookie('pop_str');
//pop_str	=	'最美的平凡|9a860d0b4cbae435d23efc56ffcc2c1e|88|31018633||';
if(pop_str) {
	pop_relation(pop_str);
	writeCookie('pop_str', '', -1);
	setTimeout('timepop(false)',30000); 
} else {
	//TODO 测试，原本使用timepop(true);
	timepop(true);
	//pop_content("<div>aaa</div>");
}



// TODO 这个函数被弹出链接调用了,接口要保留
function _mini()
{
	pop.minmax();
}

// TODO 这个函数被弹出链接调用了,接口要保留
function clear_con(con_id)
{
	pop.settab(con_id, '<p><img src="http://images.jiayuan.com/w/global/i/logo_prompt.jpg" /></p>');
}
// 活动调用弹窗处
//{{{
function mypop(displayMode,minu,cookieName)
{
	if(cookieName	!=	'')
	{
		var n=readCookie(cookieName);
		if(!n)
		{
			n=0;
		}
		if (displayMode=="once")
		{
			var tm=new Date().getTime();
			if (tm<n)
			{
				//TODO 这里没有弹，所以不计入展示的统计
				// 那么settab内部是否要有选择的调sl_pv呢
				pop.showtab(3, 0);
				return;
			}
		}
		
		var tm=new Date().getTime();
		var nextTime	=	parseInt(tm)+minu*60*1000;
		writeCookie(cookieName, nextTime,  24*30);
	}
////////////////统计
				var con_3 = document.getElementById('con_3');
				var pop_huodong=con_3.innerHTML;
				var huodong_len_l=pop_huodong.indexOf('pid=');
				//var huodong_len_r=pop_huodong.indexOf('target=');
				
				var pid=pop_huodong.substr(huodong_len_l+4,4);
				var pvurl = getPvlink();
				pop_huodong	=	pop_huodong +"<img src='"+pvurl+"&pv=huodong&pid="+pid+"&' width='0' height='0'  style='display:none'>"; //img统计 活动弹窗
/////////////////////
	pop.settab(3, pop_huodong);
	pop.showtab(3, 1);
}
//弹出活动等公告信息
function insert_con()
{
	var myloc	=	readCookie('myloc');
	var myloc_arr	=	false;
	if(myloc)
	{
		myloc_arr	=	myloc.split('|');
	}

	var mod;
	var _url	=	location.href;
	_url	=	_url.replace('http://','');
	var _url_arr	=	_url.split('/');
	mod	=	_url_arr[1];
	var _dom_arr	=	_url_arr[0].split('.');
	if(_dom_arr[0]	!=	'www')
	{
		mod	=	_dom_arr[0];
	}
	
	switch (mod)
	{
		case 'usercp':
			mod_code	=	2;
			break;
		case 'ques':
			mod_code	=	2;
			break;
		case 'msg':
			mod_code	=	2;
			break;
		case 'charge':
			mod_code	=	2;
			break;
		case 'search':
			mod_code	=	3;
			break;
		case 'party':
			mod_code	=	10;
			break;
		case 'parties':
			mod_code	=	10;
			break;
		case 'article':
			mod_code	=	4;
			break;
		case 'diary':
			mod_code	=	4;
			break;
		case 'online':
			mod_code	=	5;
			break;
		case 'story':
			mod_code	=	7;
			break;
		case 'love':
			mod_code	=	7;
			break;
		case 'my':
			mod_code	=	6;
			break;
		case 'profile':
			mod_code	=	6;
			break;
		case 'student':
			mod_code	=	8;
			break;
		case 'master':
			mod_code	=	9;
			break;
		default:
			mod_code	=	1;
			break;
	}

	var pop_a_i = [];
	for(i=(pop_arr.length-1);i>=0;i--)
	{
		var page_arr	=	pop_arr[i][3].split(',');
		for(k=0;k<page_arr.length;k++)
		{

			if(page_arr[k]	>	0)
			{
				if(mod_code	==	page_arr[k])
				{
					if(pop_arr[i][4]	>	0)
					{
						if(window._head_profile	&&	myloc_arr)
						{
							if((pop_arr[i][4]	+	'00')	==	pop_arr[i][5])
							{
								if(myloc_arr[0]	==	pop_arr[i][4])
								{
									pop_a_i.push(i);
								}
							}
							else
							{
								if(myloc_arr[1]	==	pop_arr[i][5])
								{
									pop_a_i.push(i);
								}
							}
						}
					}
					else
					{
						pop_a_i.push(i);
						break;
					}
				}
			}
		}

	}
	if(pop_a_i.length)
	{
		var j = Math.floor(Math.random() * pop_a_i.length);
		i = pop_a_i[j];
		document.getElementById('con_3').innerHTML	=	pop_arr[i][6];
		if(!poped)
		{
			// TODO 这个不一定弹
			mypop(pop_arr[i][0],pop_arr[i][1],pop_arr[i][7]);
		}
	}
}
//}}}
// 弹出一段消息内容
function pop_content(content)
{
	if(content.indexOf("div") == 1) { 
		var parr = content.match(/\s+poptype\s*=\s*(\d+)/); 
		if(parr && parr[1]==2){
			document.domain = topdomain ;
			setTimeout("popup_bgdiv_foot('http://"+SITE_PATH+"."+topdomain+"/dating/showhello.php','',592,346)",2000);
			setTimeout("close_popup_foot(false)",180000);
		}else{
			var type_xq = content.match(/\s+type\s*=\s*(\d+)/);
			if(type_xq && (type_xq[1]==150||type_xq[1]==151)){
				return;
			}
			pop.settab(1, content);
			pop.showtab(1, 1);
			poped   =   true;
		} 
 	} else {
		pop.settab(1, '<p><img src="http://images.jiayuan.com/w/global/i/logo_prompt.jpg" /></p>');
	}
}
// 用popstr进行弹出, 不走消息系统, 只取消息文案
// TODO 小能聊天有调用
function pop_relation(pop_str)
{
	var _head_profile_arr	=	window._head_profile.split(':');
	if(_head_profile_arr[2]	==	'm')
	{
		var show_sex	=	'她';
		var show_type	=	20;
	}
	else
	{
		var show_sex	=	'他';
		var show_type	=	10;
	}
	var con_arr	=	pop_str.split('|');
				
	if(pop_str )
  {
      var myxml   =   getXMLHttpRequest();
      myxml.open("GET","/pop/popinfo.php?popstr="+encodeURIComponent(pop_str));
      
      myxml.onreadystatechange=function()
      {
          if(myxml.readyState==4)
          {
              var myxml_text  =   myxml.responseText;
			  pop_content(myxml_text);
          }
      }
      myxml.send(null);
  }
  else
  {
	  pop.settab(1, '<p><img src="http://images.jiayuan.com/w/global/i/logo_prompt.jpg" /></p>');
  }
}

//声明xmlhttp
function getXMLHttpRequest()
{
	var xmlhttp;
//for ie
	try
	{
		xmlhttp = new ActiveXObject("Msxml2.XMLHTTP.4.0");
	}
	catch(E)
	{
		try
		{
			xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch(E)
		{
			try
			{
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			catch(E)
			{
				xmlhttp = false;
			}
		}
	}
//for firefox
	if (!xmlhttp && typeof XMLHttpRequest != 'undefined')
	{
		xmlhttp = new XMLHttpRequest();
	}
	return xmlhttp;
}

function get_advert()
{
      var myxml   =   getXMLHttpRequest();
      myxml.open("GET","http://ad."+topdomain+"/ad.php?pd_id=11&a="+Math.random(),false);      
      myxml.onreadystatechange=function()
      {
          if(myxml.readyState==4)
          {
              var myxml_text	=	myxml.responseText;
          }
      }
      myxml.send(null);
	  return myxml.responseText;
}
/*
 * 定时及首次弹出内容
 */
function timepop(first_time)
{
	var now	=	new Date().getTime();
	var pop_time	=	readCookie('pop_time');
	
	if (window._head_profile)
	{
		if(first_time || (now	-	pop_time)	>	600000)
		{
			if(!first_time) 
			{
				writeCookie('pop_time', now, 10);
			}
			var myxml	=	getXMLHttpRequest();
			var url = "/pop/pop.php?COMMON_HASH="+readCookie('COMMON_HASH')+"&RAW_HASH="+readCookie('RAW_HASH')+"&a="+Math.random();
			var is_self_kpd = 0;
			if(document.location.href.indexOf("#cp_kpd") > 0){
				is_self_kpd = 1;
			}
			if(first_time && !is_self_kpd) 
				url += "&ft=1";
			url += "&v=3";
			myxml.open("GET", url, true);
			myxml.send(null);
			myxml.onreadystatechange=function()
			{
				if(myxml.readyState==4)
				{
					var myxml_text	=	myxml.responseText;
					
					if(myxml_text	==	'')
					{
						//myxml_text = get_advert();
						jQuery.getScript('http://ads.jiayuan.com/ad.php?pd_id=11', function(data){
							if(data){
								pop.bulletin_div.style.height = "0px";
								pop_content(data);
								pop.flash_title(1, 1);	
							}
						});	
					}
					if(myxml_text	!=	'none'	&&	myxml_text	!=	''){
						pop.bulletin_div.style.height = "0px";
						pop_content(myxml_text);
						pop.flash_title(1, 1);
						//window.focus();
					}
				}
			}
		}
	}
	setTimeout('timepop(false)',30000);
}

//登录弹窗跳转  用在活动 统计
(function(){//{{{
//TODO 下面是登陆弹层的处理代码,看看怎么处理吧
var login_pop_profile=getQueryString('lpph'); 
//得到弹出内容
if(login_pop_profile!=null&&login_pop_profile=='1'){
	var login_pop_button=readCookie('loginpopbutton');
	var login_pop_title=readCookie('loginpoptitle');
	var login_pop_content=readCookie('loginpopcontent');
	if(login_pop_title!=null&&login_pop_title!=""&&login_pop_content!=null&&login_pop_content!=""){
		show_msg_profile(login_pop_title,login_pop_content,url_decode_pop(login_pop_button));
	}
}
//弹出窗口
function show_msg_profile(mytitle,mycontent,mybutton)
{
	document.getElementById('mytitle').innerHTML	=	mytitle;
	document.getElementById('mycontent').innerHTML	=	mycontent;
	document.getElementById('mybutton').innerHTML	=	mybutton;

	document.getElementById('bgdiv').style.height	=	document.body.clientHeight;
	document.getElementById('bgdiv').style.width	=	document.body.clientWidth;
	document.getElementById('bgdiv').style.display	=	'';
	document.getElementById('msgdiv').style.display	=	'';

	document.getElementById('msgdiv').style.left=document.body.clientWidth/2-200;  
	document.getElementById('msgdiv').style.top=screen.height/2-240;
	var selects = document.getElementsByTagName('select');

	for(i=0;i<selects.length;i++)
	{
		selects[i].style.visibility = 'hidden';
	}
	document.body.scroll="no";
}

//得到url中的值
function getQueryString(queryStringName){
	var returnValue="";
	var URLString=new String(document.location);
	var serachLocation=-1;
	var queryStringLength=queryStringName.length;
	do{
	   serachLocation=URLString.indexOf(queryStringName+"\=");
	   if (serachLocation!=-1)
	   {
	   if ((URLString.charAt(serachLocation-1)=='?') || (URLString.charAt(serachLocation-1)=='&'))
	   {
	     URLString=URLString.substr(serachLocation);
	     break;
	   }
	   URLString=URLString.substr(serachLocation+queryStringLength+1);
	   }
	  
	}
	while (serachLocation!=-1)
	if (serachLocation!=-1){
	   var seperatorLocation=URLString.indexOf("&");
	   if (seperatorLocation==-1)
	   {
	   returnValue=URLString.substr(queryStringLength+1);
	   }
	   else
	   {
	   returnValue=URLString.substring(queryStringLength+1,seperatorLocation);
	   } 
	}
	return returnValue;
}
function url_decode_pop(str) {
    var ret = "";
    for(var i=0;i<str.length;i++) {
        var chr = str.charAt(i);
        if(chr == "+") {
            ret += " ";
        }else if(chr=="%") {
            var asc = str.substring(i+1,i+3);
            if(parseInt("0x"+asc)>0x7f) {
                ret += decodeURI("%"+ str.substring(i+1,i+9));
                i += 8;
            }else {
                ret += String.fromCharCode(parseInt("0x"+asc));
                i += 2;
            }
        }else {
            ret += chr;
        }
    }
    return ret;
}
})();//}}}
// 登陆弹层结束
/////////////////div msg///////////////////////

//遮罩层
document.write('<div id="bgdiv_foot" style="position:absolute;display:none; left:0px; top:0px; width:100%; height:100%; filter:alpha(opacity=30); opacity:0.3; background-color:#000000; z-index:12000;"></div>');
//iframe容器
document.write(' <div class="dragdiv" id="bg_div_float_foot" style="z-index:12001;position:absolute;top:0px;left:0px;display:none"></div>');	

function all_select_display(flag)
{
	var sel = document.getElementsByTagName('select');
	for(i=0;i<sel.length;i++)
	{
		sel[i].style.display = flag;
	}
}

function popup_bgdiv_foot(url, msg, _width, _height)
{  

	if(!_width){
		_width = 435;
	}

	if(!_height){
		_height = 600;
	}

	all_select_display('none');

	//设定容器层高度居中
	var __scroll = (document.documentElement.scrollTop + 30) + "px";
	if(url != '')
	{
		document.getElementById('bg_div_float_foot').innerHTML = '<iframe id="bg_div_iframe_foot" scrolling="no" width="'+_width+'" height="'+_height+'" allowTransparency="true" frameborder="0"></iframe>';
		document.getElementById('bg_div_iframe_foot').src = url; 
	}
	else if(msg != '')
	{
		document.getElementById('bg_div_float_foot').innerHTML = msg;
	}
	else
	{
		alert('参数错误');
		return false;
	}
	document.getElementById('bgdiv_foot').style.display = '';
	//设定遮罩层高度
	document.getElementById('bgdiv_foot').style.height	=  Math.max(document.body.scrollHeight,document.documentElement.scrollHeight) + 'px';
	//设定遮罩层宽度
	document.getElementById('bgdiv_foot').style.width	= Math.max(document.body.scrollWidth,document.documentElement.scrollWidth) + 'px';


	document.getElementById('bg_div_float_foot').style.top	= __scroll; 
	document.getElementById('bg_div_float_foot').style.left = (document.body.clientWidth/2-_width/2) + "px";
	document.getElementById('bg_div_float_foot').style.display = '';

}

function close_popup_foot(flag)
{
	all_select_display('');
	document.getElementById('bgdiv_foot').style.display = 'none';	
	document.getElementById('bg_div_float_foot').style.display = 'none';
	if(!flag)
	{
		document.getElementById('bg_div_iframe_foot').src = ''; 
	}
}