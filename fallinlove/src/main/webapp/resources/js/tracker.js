/**
 * User Track
 * @version :1.0
 * @since :
 * @author: vincent wei
 * @CopyRight 2007 jiayuan.com, All Rights Reserved.
 */

/**
 * Global variable define
 */
 var _gFunCallFlag ;				//-- function call flag
 var _gDomainHashFlag = 1;			//-- unique domain hash for cookies(1=on|0=off)
 var _gTodayClickFlag = 1;			//-- count today's click number(1=on|0=off)
 var _gBrowserInfoFlag = 1;			//-- track browser info(1=on|0=off)
 var _gSearchEngineFlag = 1;		//-- enable track search engine info(1=on|0=off)
 var _gFirstEnterFlag = 1;			//-- enable track the first enter from where(1=on|0=off)
 
 
 var _gCookieTimeOut = 31536000;	//-- cookie's time out ,parma second
 var _gCookiePath = "/";			//-- the cookie path for tracking
 
 var _gDoc = document;				//-- document object
 var _gDocLoc = _gDoc.location;		//-- document.location object
 var _gDocRef = _gDoc.referrer;		//-- document.referrer object
 
 var _gDomainName = "";		//-- browser current domain name
 var _gDomainNameHash = 1;	//-- browser current domain name 's hash
 var _gFixDomain = "jiayuan.com";
 
 var _pUserID = "__tkuid";	//-- userid
 var _pCooInfo = "__tkmsg";	//-- cookie msg
 var _pTHP = "__tkthp";		//-- today have post
 var _pIsTrack = "__tkist";	//--
 
 var _gUID;
 var _gTDC="-";		//-- today domain click
 var _gBInfo="-";	//-- browser info
 var _gSNInfo="-";	//-- search engine info
 var _gFEInfo="-";	//-- first enter info
 var _gAnchor="-";	//-- 
 
//-- Auto/Organic Sources and Keywords
var _arrSN=new Array();
var _arrSK=new Array();
_arrSN[0]="google";	_arrSK[0]="q";
_arrSN[1]="yahoo";	_arrSK[1]="p";
_arrSN[2]="msn";		_arrSK[2]="q";
_arrSN[3]="aol";		_arrSK[3]="query";
_arrSN[4]="aol";		_arrSK[4]="encquery";
_arrSN[5]="lycos";	_arrSK[5]="query";
_arrSN[6]="ask";		_arrSK[6]="q";
_arrSN[7]="altavista";	_arrSK[7]="q";
_arrSN[8]="netscape";	_arrSK[8]="query";
_arrSN[9]="cnn";	_arrSK[9]="query";
_arrSN[10]="looksmart";	_arrSK[10]="qt";
_arrSN[11]="about";	_arrSK[11]="terms";
_arrSN[12]="mamma";	_arrSK[12]="query";
_arrSN[13]="alltheweb";	_arrSK[13]="q";
_arrSN[14]="gigablast";	_arrSK[14]="q";
_arrSN[15]="voila";	_arrSK[15]="rdata";
_arrSN[16]="virgilio";	_arrSK[16]="qs";
_arrSN[17]="live";	_arrSK[17]="q";
_arrSN[18]="baidu";	_arrSK[18]="wd";
_arrSN[19]="alice";	_arrSK[19]="qs";
_arrSN[20]="yandex";	_arrSK[20]="text";
_arrSN[21]="najdi";	_arrSK[21]="q";
_arrSN[22]="aol";	_arrSK[22]="q";
_arrSN[23]="club-internet"; _arrSK[23]="q";
_arrSN[24]="mama";	_arrSK[24]="query";
_arrSN[25]="seznam";	_arrSK[25]="q";
_arrSN[26]="search";	_arrSK[26]="q";
_arrSN[27]="szukaj";	_arrSK[27]="szukaj";
_arrSN[28]="szukaj";	_arrSK[28]="qt";
_arrSN[29]="netsprint";	_arrSK[29]="q";
_arrSN[30]="google.interia";	_arrSK[30]="q";
_arrSN[31]="szukacz";	_arrSK[31]="q";
_arrSN[32]="yam";	_arrSK[32]="k";
_arrSN[33]="pchome";	_arrSK[33]="q";

var _gRemoteHost = "http://59.151.18.18:8080/servlet/Track";
function UserActionAnalyse() {
	if ( _gDocLoc.protocol == "file:" ) { return; }
	if ( _gFunCallFlag ) { return; }
	if ( !_isTrack() ) { return ; }
	
	var strTimeOut = " expires="+_getGMTString(_gCookieTimeOut)+";";
 	_gDomainNameHash = _getDomainHash();
 	if ( _ignoreDomainTrack() ) return;
	_getUserId();
	_proCookie();			//cookie process function
	//_getBrowserInfo();		//get browser info
	//_getSearchEngineInfo();	//get search engine info
	_getFirstEnterInfo();	//get the first enter info
	_getAnchor();
	//_callServer();			//send
	_gFunCallFlag = 1;
}

function _getGMTString(seconds) {
 	return (new Date((new Date()).getTime()+seconds*1000)).toGMTString();
}

//-- return domain name hash for cookie
function _getDomainHash() {
	var d=_gDoc.domain;
	if (d.substring(0,4)=="www.") d=d.substring(4,d.length);
	_gDomainName=d.toLowerCase(); 
	if (!_gDomainHashFlag) return 1;
	return __genHash(_gDomainName);
}

//-- Generate String hash
function __genHash(d) {
	if (!d || d=="") return 1;
	var h=0,g=0;
	for (var i=d.length-1;i>=0;i--) {
		var c=parseInt(d.charCodeAt(i));
		h=((h << 6) & 0xfffffff) + c + (c << 14);
		if ((g=h & 0xfe00000)!=0) h=(h ^ (g >> 21));
	}
	return h;
}

//-- Ignore domain track
function _ignoreDomainTrack() {
	return false;
}

//-- get user id
function _getUserId(){
	_gUID=__getMid();
	
	if ( _gUID == "-"){
		_gUID = __getStrKeyVal(_gDoc.cookie,_pUserID+"=",";");
		if (_gUID=="-"){
			_gUID = "g"+Math.round(Math.random()*2147483647);	//make guest unique id
			_gDoc.cookie = _pUserID+"="+_gUID+"; path="+_gCookiePath+"; expires="+__genTodayEndGMT()+"; domain="+_gFixDomain+";";
		}
	}
}

function __getMid(){
	var id= __getStrKeyVal(_gDoc.cookie,"PROFILE=","%3A");
	if( __isNum(id) ) return id;
	return "-";
}

//-- make today's ending expires time 
function __genTodayEndGMT(){
	var d=new Date();
	return (new Date(d.getFullYear(),d.getMonth(),d.getDate(),23,59,59)).toGMTString();
}

//-- process cookie info
function _proCookie(){
	if(_gTodayClickFlag){
		var msg;
		var cknum=1;
		var d=new Date();
		//var tmark=(d.getFullYear()+""+(d.getMonth()+1)+""+d.getDate())*1;
		var tmark=_gUID;
		msg=__getStrKeyVal(_gDoc.cookie,_pCooInfo+"="+_gDomainNameHash+"."+tmark,";");
		
		if (msg=="-"){
			;
		}else{
			var i = msg.lastIndexOf(".");
			cknum = msg.substring(i+1,msg.length);
			cknum=(cknum*1)+1;
		}
		_gTDC=_gDomainNameHash+"."+tmark+"."+cknum;
		_gDoc.cookie=_pCooInfo+"="+_gTDC+"; path="+_gCookiePath+"; expires="+__genTodayEndGMT()+"; domain="+_gDomainName+";";
		_gTDC="&tdc="+_gTDC;
	}
}

//-- get the value of n who split with s from l
function __getStrKeyVal(l,n,s) {
	if (!l || l=="" || !n || n=="" || !s || s=="") return "-";
	var i,i2,i3,c="-";
	i=l.indexOf(n);
	i3=n.indexOf("=")+1;
	if (i > -1) {
		i2=l.indexOf(s,i); 
		if (i2 < 0) { i2=l.length; }
		c=l.substring((i+i3),i2);
	}
	return c;
}

//-- get browser info
function _getBrowserInfo() {
	if (!_gBrowserInfoFlag || _isTHP()) return;
	var sr="-",sc="-",bl="-",fl="-",cs="-",je=1;
	var n=navigator;
	if (self.screen) {
		sr=screen.width+"x"+screen.height;
		sc=screen.colorDepth+"-bit";
	} else if (self.java) {
		var j=java.awt.Toolkit.getDefaultToolkit();
		var s=j.getScreenSize();
		sr=s.width+"x"+s.height;
	}
	if (n.language) { bl=n.language.toLowerCase(); }
	else if (n.browserLanguage) { bl=n.browserLanguage.toLowerCase(); }
	je=n.javaEnabled()?1:0;
	fl=__uFlash();
	if (_gDoc.characterSet) cs=_strESC(_gDoc.characterSet);
	else if (_gDoc.charset) cs=_strESC(_gDoc.charset);
	_gBInfo="&bi="+_strESC("cs="+cs+"|sr="+sr+"|sc="+sc+"|bl="+bl+"|je="+je+"|fl="+fl);
}

//-- check flash player
function __uFlash() {
	var f="-",n=navigator;
	if (n.plugins && n.plugins.length) {
		for (var ii=0;ii<n.plugins.length;ii++) {
			if (n.plugins[ii].name.indexOf('Shockwave Flash')!=-1) {
				f=n.plugins[ii].description.split('Shockwave Flash ')[1];
				break;
			}
		}
	} else if (window.ActiveXObject) {
		for (var ii=10;ii>=2;ii--) {
			try {
				var fl=eval("new ActiveXObject('ShockwaveFlash.ShockwaveFlash."+ii+"');");
				if (fl) { f=ii + '.0'; break; }
			}catch(e) {}
		}
	}
	return f;
}

//-- URI encdoe
function _strESC(s,u) {
	if (typeof(encodeURIComponent) == 'function') {
		if (u) return encodeURI(s);
		else return encodeURIComponent(s);
	} else {
		return escape(s);
	}
}
//-- URI decode
function _strUESC(s) {
	if (typeof(decodeURIComponent) == 'function') {
		return decodeURIComponent(s);
	} else {
		return unescape(s);
	}
}

//-- trim
function _strTrim(s) {
	if (!s || s=="") return "";
	while ((s.charAt(0)==' ') || (s.charAt(0)=='\n') || (s.charAt(0,1)=='\r')) s=s.substring(1,s.length);
	while ((s.charAt(s.length-1)==' ') || (s.charAt(s.length-1)=='\n') || (s.charAt(s.length-1)=='\r')) s=s.substring(0,s.length-1);
	return s;
}

//-- search engine info
function _getSearchEngineInfo() {
	if (!_gSearchEngineFlag) return;
	if (!_gDocRef || _gDocRef=="" || _gDocRef=="-") return;
	var i=0,h,k;
	if ((i=_gDocRef.indexOf("://")) < 0) return;
	h=_gDocRef.substring(i+3,_gDocRef.length);
	if (h.indexOf("/") > -1) {
		h=h.substring(0,h.indexOf("/"));
	}
	for (var ii=0;ii<_arrSN.length;ii++) {
		if (h.toLowerCase().indexOf(_arrSN[ii].toLowerCase()) > -1) {
			if ((i=_gDocRef.indexOf("?"+_arrSK[ii]+"=")) > -1 || (i=_gDocRef.indexOf("&"+_arrSK[ii]+"=")) > -1) {
				k=_gDocRef.substring(i+_arrSK[ii].length+2,_gDocRef.length);
				if ((i=k.indexOf("&")) > -1) k=k.substring(0,i);
				_gSNInfo="&snk="+_strESC(_arrSN[ii])+"|"+_strESC(k);
			}
		}
 	}
}
function _uEmpC(s) {
	var n="";
	if (!s || s=="") return "";
	for (var i=0;i<s.length;i++) {if (s.charAt(i)==" ") n+="+"; else n+=s.charAt(i);}
	return n;
}
//-- get first enter url info
function _getFirstEnterInfo(){
	if (!_gFirstEnterFlag) return;
	if (!_gDocRef || _gDocRef=="" || _gDocRef=="-") return;
	var i=0,h="",p="";
	if ((i=_gDocRef.indexOf("://")) < 0) return;
	h=_gDocRef.substring(i+3,_gDocRef.length);
	if ((i=h.indexOf("/")) > -1) {
		p=h.substring(i,h.length);
		h=h.substring(0,i);
	}

	if (h.indexOf("jiayuan.com")>-1) return;
	_gFEInfo="&fei="+_strESC(h)+"|"+_strESC(p);
}
//-- get anchor info
function _getAnchor(){
	var o = _gDocLoc.hash;
	if (o!=null && o.length>1){
		_gAnchor="&anchor="+o.substring(1,o.length);
	}
}

function _callServer(){
	var i=new Image(1,1),p;
	p="uid="+_gUID;
	p+=(_gTDC=="-")?"":_gTDC;
	p+=(_gBInfo=="-")?"":_gBInfo;
	p+=(_gSNInfo=="-")?"":_gSNInfo;
	p+=(_gFEInfo=="-")?"":_gFEInfo;
	p+=(_gAnchor=="-")?"":_gAnchor;
	//document.writeln(p);
	i.src=_gRemoteHost+"?"+p;
	i.onload=function() { __uVoid(); }
	return;
}

//-- t yes or not
function _isTrack(){
	var b = __getStrKeyVal(_gDoc.cookie,_pIsTrack+"=",";");
	if (b=="-"){
		b=((Math.random()*100)<2)?1:0;
		_gDoc.cookie = _pIsTrack+"="+b+"; path="+_gCookiePath+"; domain="+_gFixDomain+";";
	}
	return (b==1)? true:false;
}

function __uVoid() { 
	//_gDoc.cookie=_pTHP+"=1; path="+_gCookiePath+"; expires="+__genTodayEndGMT()+"; domain="+_gDomainName+";";	
	_gDoc.cookie=_pTHP+"=1; path="+_gCookiePath+"; expires="+__genTodayEndGMT()+"; domain="+_gFixDomain+";";	
}

function _isTHP(){
	var is = 0;
	if(__getStrKeyVal(_gDoc.cookie,_pTHP+"=",";")!="-")
		is=1;
	return is;
}

function __isNum(str){
	if(str.length == 0) return false;
	var i;
	for(i = 0; i < str.length; i++) {
		if(str.charAt(i) < "0" || str.charAt(i) > "9") return false;
	}
	return true;
}

UserActionAnalyse();
