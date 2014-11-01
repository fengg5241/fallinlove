/**
  * window for jiayuan.com profile page by Yaosine
  */

//简化document.getElementById
var cao = function(id){
	  if (typeof(id) != "string" || id == "") return false;
	  if (document.getElementById) return document.getElementById(id);
	  if (document.all) return document.all(id);
};
//弹出层 title:标题，url:地址，msg:消息
function openWindow(title,msg,url,width,height){
	if(!width) width = 400;//默认宽度
	if(!height) height = 200;//默认高度
	if(!title) cao('open_window_head').style.display = 'none';
	setDomainForIframe();
	if(msg != ''){
		cao('open_window_content').innerHTML = msg;
	}
	else if(url != ''){
		cao('open_window_content').innerHTML = '<iframe id="open_window_iframe" scrolling="no" width="'+width+'" height="'+height+'" allowTransparency="true" frameborder="0"></iframe>';
		cao('iframe_loading').style.left = String(width/2 - 104)+'px';
		cao('iframe_loading').style.top = String(height/2 -10)+'px';
		iframeLoad(cao('open_window_iframe'));
		cao('open_window_iframe').src = url;
	}
	else{
		alert('参数错误');
		return false;
	}
	var scrolltop = document.documentElement.scrollTop || window.pageYOffset || 0; //for webkit
	var scroll_height = String(scrolltop + (document.documentElement.clientHeight - height)/2) + "px";
	var _scrollWidth = Math.max(document.body.scrollWidth,document.documentElement.scrollWidth);
	var _scrollHeight = Math.max(document.body.scrollHeight,document.documentElement.scrollHeight);
	cao('bg').style.display = 'block';
	cao('bg').style.width = _scrollWidth + "px";
	cao('bg').style.height = _scrollHeight + "px";
	cao('open_window').style.top = scroll_height;
	cao('open_window').style.left = String(document.body.clientWidth/2-(width)/2) + "px";
	cao('open_window').style.width = String(width) + "px";
	cao('open_window').style.display = '';
	cao('open_window_title').innerHTML = title;
	//跟随滚动
	/*window.onscroll = function(){
	scroll_height = String(document.documentElement.scrollTop + (document.documentElement.clientHeight - height)/2) + "px";
	cao('open_window').style.top = scroll_height;
	}*/
}
function openWindowById(obj,width,height){ 
	
	if(!width) width = 400;//默认宽度
	if(!height) height = 200;//默认高度

	var scrolltop = document.documentElement.scrollTop || window.pageYOffset || 0; //for webkit
	var scroll_height = String(scrolltop + (document.documentElement.clientHeight - height)/2) + "px";
	var _scrollWidth = Math.max(document.body.scrollWidth,document.documentElement.scrollWidth);
	var _scrollHeight = Math.max(document.body.scrollHeight,document.documentElement.scrollHeight);
	cao('bg').style.display = 'block';	
	cao('bg').style.width = _scrollWidth + "px";	
	cao('bg').style.height = _scrollHeight + "px";	

	cao(obj).style.width = String(width) + "px";
	cao(obj).style.left = String(document.body.clientWidth/2-(width)/2) + "px";
	cao(obj).style.top	= scroll_height; 
	cao(obj).style.display = '';

	//跟随滚动
	/*window.onscroll = function(){
		scroll_height = String(document.documentElement.scrollTop + (document.documentElement.clientHeight - height)/2) + "px";
		cao(obj).style.top	= scroll_height;
	}*/
}

//关闭弹出窗
function closeWindow(){
	cao('bg').style.display = 'none';	
	cao('open_window').style.display = 'none';
}

//兼容旧方法
function close_popup(flag){
	closeWindow();
}

function popup_bgdiv(url, msg, flag, _width, _height, type)
{ 
	if(!_height) _height = 600;//默认高度 
	if(_width == 651) _width = 612;
	openWindow('', msg, url, _width, _height);
}

//兼容礼物页
function close_window(){
	closeWindow();
}

//关闭指定ID弹出窗
function closeWindowById(obj){
	cao('bg').style.display = 'none';	
	cao(obj).style.display = 'none';
}

//iframe预加载
function iframeLoad(iframe){
	var iframe_loading = cao('iframe_loading');
	iframe.style.display = 'none';
	iframe_loading.style.display = 'block';
	if (iframe.attachEvent){    
		iframe.attachEvent("onload", function(){        
			iframe_loading.style.display = 'none';
			iframe.style.display = 'block';
		});
	} else {    
		iframe.onload = function(){        
			iframe_loading.style.display = 'none';
			iframe.style.display = 'block';
		};
	}
	iframe.style.display = 'block';
}