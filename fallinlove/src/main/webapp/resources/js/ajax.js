/**
  * ajax for jiayuan.com by Yaosine
  */

var Request = new Object();
Request.reqList = [];//定义一个XMLHTTP的数组

//创建一个XMLHTTP对象，兼容不同的浏览器
function getAjax() { 
	http_request = false; 
	if (window.XMLHttpRequest) { 
		http_request = new XMLHttpRequest(); //对于Mozilla﹑Netscape﹑Safari等浏览器，创建XMLHttpRequest 
		if (http_request.overrideMimeType) { 
			http_request.overrideMimeType('text/xml'); //如果服务器响应的header不是text/xml，可以调用其它方法修改该header 
		} 
	} 
	else if (window.ActiveXObject) { 
		// 对于Internet Explorer浏览器，创建XMLHttpRequest 
		try { 
			http_request = new ActiveXObject("Msxml2.XMLHTTP"); 
		} catch (e) { 
		try { 
			http_request = new ActiveXObject("Microsoft.XMLHTTP"); 
		} catch (e) {} 
		} 
	} 
	return http_request; 
} 

Request.send = function(url, method, callback, data, urlencoded, callback2) { 
    var req=getAjax();  //得到一个XMLHTTP的实例
	//当XMLHTTP的请求状态发生改变时调用
    req.onreadystatechange = function()  {
		if (req.readyState == 4) {// 当请求已经加载
				if (req.status < 400) {// 当请求返回成功
					// 当定义了成功回调函数时，执行成功回调函数
					if(callback){
						if (method=="GET"){
							document.getElementById(callback).innerHTML= req.responseText;
							document.getElementById(callback).className = '';
						}
						else callback(req.responseText,data);
					}
				} 
				else {// 当请求返回错误
					alert("当加载数据时发生错误 :\n" + req.status+ "/" + req.statusText);
					//当定义了失败回调函数时，执行失败回调函数
					if (callback2)  
						callback2(req.responseText,data);
				}
				afterLoading();
				//删除XMLHTTP，释放资源
				try {
					delete req;
					req = null;
				} catch (e) {}
			}
	}

	//POST方式回发服务器
	if (method=="POST") {
		req.open("POST", url, true);
		//请求需要编码
		if (urlencoded) 
			req.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');        
		req.send(data);
		Request.reqList.push(req);
	}
	else{//以GET方式请求
		req.open("GET", url, true);
		req.send(null);
		Request.reqList.push(req);
	}
    loading();
    return req;
}

//全部清除XMLHTTP数组元素，释放资源
Request.clearReqList = function() {
    var ln = Request.reqList.length;
    for (var i=0; i<ln; i++) {
        var req = Request.reqList[i];
        if (req) {
			try {
				delete req;
			} catch(e) {}
        }
    }
    Request.reqList = [];
}

//进一步封装XMLHTTP以POST方式发送请求时的代码，clear：是否清除XMLHTTP数组的所有元素；其他参数的意义参见Request.send
Request.sendPOST = function(url, data, callback, clear, callback2) {
    if (clear)
        Request.clearReqList();
    Request.send(url, "POST", callback, data, true, callback2);
}

//进一步封装XMLHTTP以GET方式发送请求时的代码
Request.sendGET = function(url, callback, args, clear, callback2) {
    if (clear)
        Request.clearReqList();
    return Request.send(url, "GET", callback, args, false, callback2);
}

//向服务器发送请求过程中，显示页面加载提示
function loading(){
	var div = document.getElementById("loadingflag");
	if(div)
		div.style.display ="";
}

//服务器处理完成后，页面加载提示消失
function afterLoading(){
	var div = document.getElementById("loadingflag");
	if(div)
		div.style.display ="none";
}

//POST方式调用
function ajax(url, data, callback){
    Request.send(url, 'POST', callback, data, true, null);
}

//GET方式调用
function ajaxGET(obj, url){
    Request.sendGET(url, obj, url, true, null);
}