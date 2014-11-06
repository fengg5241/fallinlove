var mydomain = "";
var host_name = location.hostname;
var host_arr = host_name.split(".");
var host_length = host_arr.length;
var loc_domain = host_arr[0];


if(host_arr[1]=='com'||host_arr[1]=='cn'){
	for(var i=0; i<host_length; i++){
		mydomain += "." + host_arr[i];
	}
}else
{
	for(var i=1; i<host_length; i++){
	mydomain += "." + host_arr[i];
}
}

switch(mydomain){
	case '.jiayuan.com':
		if(host_arr[0] == 'msn') 
			mydomain = 'msn' + mydomain;
		else if(host_arr[0] == 'sina')
			mydomain = 'sina' + mydomain;
		else
			mydomain = 'www' + mydomain;
		break;
	case '.mi'+'uu.cn':
		if(host_arr[0] == 'msn') 
			mydomain = 'msn' + mydomain;
		else if(host_arr[0] == 'sina')
			mydomain = 'sina' + mydomain;
		else
			mydomain = 'www' + mydomain;
		break;
	case '.msn.com.cn':
		mydomain = 'jiayuan' + mydomain;
		break;
	default:
		if(host_arr[0] == 'msn') 
			mydomain = 'msn' + mydomain;
		else if(host_arr[0] == 'sina')
			mydomain = 'sina' + mydomain;
		else
			mydomain = 'www' + mydomain;
}

var js_site = "w4";
if(mydomain == "www.jiayuan.com"){
	js_site = "w4";
	var usercp_url = "http://www.jiayuan.com/usercp/";
	var search_url = "http://search.jiayuan.com/";
	var newmember_url = "http://www.jiayuan.com/newmember/index.php?navfrom=menu";
	var online_url = "http://online.jiayuan.com/";
	var party_url = "http://party.jiayuan.com/";
	var diary_url = "http://diary.jiayuan.com/";
	var love_url = "http://love.jiayuan.com/";
	var paper_url = "http://www.jiayuan.com/paper/";
	var master_url = "http://www.jiayuan.com/master/";
	var vip_url = "http://www.jiayuan.com/vip/";
}else if(mydomain == "www.mi"+"uu.cn"){
	js_site="w4";
	var usercp_url = "http://www.mi"+"uu.cn/usercp/";
	var search_url = "http://search.mi"+"uu.cn/";
	var newmember_url = "http://www.mi"+"uu.cn/newmember/index.php?navfrom=menu";
	var online_url = "http://online.mi"+"uu.cn/";
	var party_url = "http://party.mi"+"uu.cn/";
	var diary_url = "http://diary.mi"+"uu.cn/";
	var love_url = "http://love.mi"+"uu.cn/";
	var paper_url = "http://www.mi"+"uu.cn/paper/";
	var master_url = "http://www.mi"+"uu.cn/master/";
	var vip_url = "http://www.mi"+"uu.cn/vip/";
}else if(mydomain == "sina.jiayuan.com"){
	js_site="s4";
	var usercp_url = "http://sina.jiayuan.com/usercp/";
	var search_url = "http://sina.jiayuan.com/search/";
	var newmember_url = "http://sina.jiayuan.com/newmember/index.php?navfrom=menu";
	var online_url = "http://sina.jiayuan.com/online/";
	var party_url = "http://sina.jiayuan.com/party/";
	var diary_url = "http://sina.jiayuan.com/article/";
	var love_url = "http://sina.jiayuan.com/story/";
	var paper_url = "http://sina.jiayuan.com/paper/";
	var master_url = "http://sina.jiayuan.com/master/";
	var vip_url = "http://sina.jiayuan.com/vip/";
}else if(mydomain == "sina.mi"+"uu.cn"){
	js_site="s4";
	var usercp_url = "http://sina.mi"+"uu.cn/usercp/";
	var search_url = "http://sina.mi"+"uu.cn/search/";
	var newmember_url = "http://sina..mi"+"uu.cn/newmember/index.php?navfrom=menu";
	var online_url = "http://sina.mi"+"uu.cn/online/";
	var party_url = "http://sina.mi"+"uu.cn/party/";
	var diary_url = "http://sina.mi"+"uu.cn/article/";
	var love_url = "http://sina.mi"+"uu.cn/story/";
	var paper_url = "http://sina.mi"+"uu.cn/paper/";
	var master_url = "http://sina.mi"+"uu.cn/master/";
	var vip_url = "http://sina.mi"+"uu.cn/vip/";
}else if(mydomain == "msn.mi"+"uu.cn"){
	js_site="m4";
	var usercp_url = "http://msn.mi"+"uu.cn/usercp/";
	var search_url = "http://msn.mi"+"uu.cn/search/";
	var newmember_url = "http://msn.mi"+"uu.cn/newmember/index.php?navfrom=menu";
	var online_url = "http://msn.mi"+"uu.cn/online/";
	var party_url = "http://msn.mi"+"uu.cn/party/";
	var diary_url = "http://msn.mi"+"uu.cn/article/";
	var love_url = "http://msn.mi"+"uu.cn/story/";
	var paper_url = "http://msn.mi"+"uu.cn/paper/";
	var master_url = "http://msn.mi"+"uu.cn/master/";
	var vip_url = "http://msn.mi"+"uu.cn/vip/";
}else{
	js_site="m4";
	var usercp_url = "http://jiayuan.msn.com.cn/usercp/";
	var search_url = "http://jiayuan.msn.com.cn/search/";
	var newmember_url = "http://jiayuan.msn.com.cn/newmember/index.php?navfrom=menu";
	var online_url = "http://jiayuan.msn.com.cn/online/";
	var party_url = "http://jiayuan.msn.com.cn/party/";
	var diary_url = "http://jiayuan.msn.com.cn/article/";
	var love_url = "http://jiayuan.msn.com.cn/story/";
	var paper_url = "http://jiayuan.msn.com.cn/paper/";
	var master_url = "http://jiayuan.msn.com.cn/master/";
	var vip_url = "http://jiayuan.msn.com.cn/vip/";
}


//建立ajax请求
function createXMLHttpRequest()
{
	if(window.XMLHttpRequest)
	{
		xmlHttp = new XMLHttpRequest();
		if(xmlHttp.overrideMimeType)
		{
			xmlHttp.overrideMimeType('text/xml');
		}
	}
	else if(window.ActiveXObject) 
	{
		var versions = ['Microsoft.XMLHTTP', 'MSXML.XMLHTTP', 'Microsoft.XMLHTTP', 'Msxml2.XMLHTTP.7.0', 'Msxml2.XMLHTTP.6.0', 'Msxml2.XMLHTTP.5.0', 'Msxml2.XMLHTTP.4.0', 'MSXML2.XMLHTTP.3.0', 'MSXML2.XMLHTTP'];
		for(var i=0; i<versions.length; i++)
		{
			try {
				xmlHttp = new ActiveXObject(versions[i]);
				if(xmlHttp) {
					return xmlHttp;
				}
			} catch(e) {
				alert(e.message);
			}
		}
	}	
}

