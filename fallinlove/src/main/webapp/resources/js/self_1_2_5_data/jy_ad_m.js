function Monitor() {
    this.app_ip="http://59.151.18.19:9588/";
	this.app_ip_pv="http://59.151.18.19:9588/";
    this.clickUrl = "clickMonitor";
	this.oldClickUrl = "monitor/monitorAction.do?method=monitorClick";
	this.pvUrl="pvMonitor"; 
    this.isCookieUse=this.checkCookieUse();
    this.isJavaUse=this.checkJavaUse();
    this.localLg=this.getLocalLg();
    this.browserAgent=this.getUserAgent();
    this.browserName=this.getAppName();
    this.browserVersion=this.getAppVersion();
    this.localBrowserInfo=this.getBrowserInfo(this.browserAgent,this.browserName,this.browserVersion);
    this.localFlashPlugin=this.getFlashPlugin();
    this.isIE=this.checkIsIE(this.browserAgent);
    this.app_url=this.urlFilter(document.URL);
    this.app_refer=this.urlFilter(document.referrer);
    this.hasRefer=true;
    this.app_init_path=this.initUrlArg();
    this.flashObject = this.getFlashObject();
    this.as = this.getDomObjects('a');
    this.myScriptPV=null;
    this.myScriptClick=null;
}
//init url arguments
Monitor.prototype.initUrlArg=function() {
	var jy_uid = this.getCookieValue("myuid");
    var jy_loc = this.getCookieValue("myloc");
    var jy_age = this.getCookieValue("myage");
    var jy_sex = this.getCookieValue("mysex");
    var jy_in = this.getCookieValue("myincome");
	return jy_uid+"&"+jy_age+"&"+jy_loc+"&"+jy_sex+"&"+jy_in+"&"+this.localLg+"&"+
	       this.localBrowserInfo+"&"+this.app_refer;
}
Monitor.prototype.urlFilter=function(url) {
    var newUrl = url;
    var uIndex = newUrl.indexOf("?");
    if(uIndex!=-1) {
        newUrl=newUrl.substring(0,uIndex);
    }
	var path = newUrl.substring(newUrl.lastIndexOf("/")+1);
	if(/^[\s]*[0-9]+[\s]*$/.test(path)) {
		newUrl = newUrl.substring(0,newUrl.lastIndexOf("/")+1)+"uid";
	}
    return newUrl;
}
//normal advertise pv1
Monitor.prototype.monitorPVStart1=function(keywordId){
}

Monitor.prototype.monitorPVStart=function(keywordId) {
    var adKeyword = document.getElementById(keywordId);
    if(adKeyword && adKeyword.value) {
        var adKeywordValue = adKeyword.value;
        var adI1 = adKeywordValue.indexOf(",");
        if(adI1 != -1) {
			var vs = adKeywordValue.split(",");
			var des = "";
			for(var i=2;i<vs.length-1;i++) {
				if(i==vs.length-2) {
					des+=vs[i]+"&";
				}else {
					des+=vs[i]+"@";
				}
			}
			des += vs[0]+"&"+vs[1]+"&";
			var newRandPv = this.getRandNum();
			var pv_all_url = this.app_ip_pv+this.pvUrl+"?"+des+this.app_init_path+"&"+newRandPv;
			this.createNewScript(this.myScriptPV,pv_all_url);
        }
    }
}
//monitor click pre
Monitor.prototype.monitorClickPre1=function() {
	var myUid = this.getCookieValue("myuid");
	if(!myUid) {
        myUid='00000000';
    }else {
        myUid = parseFloat(myUid)+1000000;
    }
	if (this.as && this.as.length > 0) {
		for(var i=0;i<this.as.length;i++) {
			this.as[i].href=this.as[i].href+"&rid="+myUid;
		}
	}
}
//monitor click
Monitor.prototype.monitorClickStart=function() {
   if(this.flashObject) {
        this.monitorClickStart_flash();
   } 
   if(this.as && this.as.length>0) {
        this.monitorClickStart_normal();
   }
}
Monitor.prototype.monitorClickStart_flash=function() {
    var buttons = document.getElementsByTagName("button");
    if(buttons && buttons.length>0) {
        if(buttons[0]) {
			if(buttons[0].onclick) {
				var functionContent = buttons[0].onclick.toString();
                functionContent = functionContent.replace(/["\""]/g,'\'');
                var oldUrl = functionContent.substring(functionContent.indexOf("http"),functionContent.indexOf("'",functionContent.indexOf("http")));
                if(oldUrl.indexOf(this.clickUrl)!=-1) {
                    var urlH = oldUrl.substring(oldUrl.indexOf('&url=')+5);
                    var urlQ = oldUrl.substring(0,oldUrl.indexOf('&url='));
                    var urlZ = this.app_init_path;
                    buttons[0].obj=this;
                    buttons[0].urlValue=urlH;
                    buttons[0].recordUrlValue=urlQ+"&"+urlZ;
                    buttons[0].onclick=this.flashButtonsClick;
                }else if(oldUrl.indexOf(this.oldClickUrl)!=-1) {
					var urlH = oldUrl.substring(oldUrl.indexOf('&url=')+5);
                    buttons[0].urlValue=urlH;
                    buttons[0].onclick=this.flashButtonsClick1;  
				}
			}
        }
    }
}
Monitor.prototype.flashButtonsClick=function() {
    var mObj = this.obj;
    var url = this.urlValue;
    var newRandFlashButtonClick = mObj.getRandNum();
    var app_dest_flashButtonClick = this.recordUrlValue+'&'+newRandFlashButtonClick;
    mObj.createNewScript(mObj.myScriptClick,app_dest_flashButtonClick);
    window.open(url);
}
Monitor.prototype.flashButtonsClick1=function() {
    var url = this.urlValue;
    window.open(url);
}

Monitor.prototype.monitorClickStart_normal=function() {
    if(this.as&&this.as.length>0) {
        var urlH = new Array(this.as.length);
        var urlQ = new Array(this.as.length);
        var urlZ = this.app_init_path;
        for(var i=0;i<this.as.length;i++) {
            if(this.as[i].href.indexOf(this.clickUrl)!=-1){
                urlH[i] = this.as[i].href.substring(this.as[i].href.indexOf('&url=')+5);
                urlQ[i] = this.as[i].href.substring(0,this.as[i].href.indexOf('&url='));
                this.as[i].obj=this;
                this.as[i].urlValue=urlH[i];
                this.as[i].recordUrlValue=urlQ[i]+'&'+urlZ;
                this.as[i].href=urlH[i];
                this.as[i].onclick=this.aHrefsClick;
            }else if(this.as[i].href.indexOf(this.oldClickUrl)!=-1) {
				urlH[i] = this.as[i].href.substring(this.as[i].href.indexOf('&url=')+5);
                this.as[i].href=urlH[i];
			}
        }
    }
}
Monitor.prototype.aHrefsClick=function() {
    var mObj = this.obj;
    var url = this.urlValue;
    var recordUrl = this.recordUrlValue;
    var newRandClick = mObj.getRandNum();
    var app_dest_click = recordUrl+'&'+newRandClick;
    mObj.createNewScript(mObj.myScriptClick,app_dest_click);
    window.open(url);
    return false;
}
//public
Monitor.prototype.createNewScript=function(myScript,myUrl) {
	var myHead = document.getElementsByTagName("head")[0];
    if(myScript) {
        myHead.removeChild(myScript);
    }
    myScript = document.createElement("script");
    myScript.language="JavaScript";
    myScript.type="text/javascript";
    myScript.src=myUrl;
	myHead.appendChild(myScript);
}
//get page monitor elements
Monitor.prototype.getFlashObject=function() {
    if(this.isIE) {
        return document.getElementsByTagName("object")[0];
    }else{
        return document.getElementsByTagName("embed")[0];
    }
}
Monitor.prototype.getDomObjects=function(name) {
    return document.getElementsByTagName(name);
}
//rand num create
Monitor.prototype.getRandNum=function() {
    var randNum = new Date().getTime()+Math.random();
    return randNum;
}
//check all kinds of arguments
Monitor.prototype.checkRefer=function() {
    return this.app_refer?true:false;
}
Monitor.prototype.checkJavaUse=function() { 
	var je=""; 
	var n=navigator; 
	je = n.javaEnabled()?1:0; 
	return je; 
}
Monitor.prototype.getLocalLg=function() { 
	var lg=""; 
	var n=navigator; 
	if (n.language) { 
		lg=n.language.toLowerCase(); 
	} else if (n.browserLanguage) { 
		lg=n.browserLanguage.toLowerCase(); 
	}
	return lg; 
}
Monitor.prototype.getUserAgent=function() { 
	var ag=""; 
	var n=navigator; 
	if (n.userAgent) { 
		ag = n.userAgent.toLowerCase(); 
	} 
	return ag; 
}
Monitor.prototype.getAppName=function() {
    var an="";
    var n=navigator;
    if(n.appName) {
        an = n.appName.toLowerCase();
    }
    return an;
}
Monitor.prototype.getAppVersion=function() {
    var aa="";
    var n=navigator;
    if(n.appVersion) {
        aa = n.appVersion;
    }
    return parseFloat(aa);
}
Monitor.prototype.getBrowserInfo=function(browserAgent,browserName,browserVersion){
    var actualVersion="";
    var actualName="";
    var isIE=(browserName=="microsoft internet explorer");
    var isNN=(browserName=="netscape");
    if(isNN){
        if(browserVersion>=5.0){
            var splitSign=browserAgent.lastIndexOf("/");
            var version=browserAgent.indexOf(" ",splitSign);
            if(version==-1) {
                version=browserAgent.length;
            }
            var bname=browserAgent.lastIndexOf(" ",splitSign);
            actualVersion=browserAgent.substring(splitSign+1,version);
            actualName=browserAgent.substring(bname+1,splitSign);
        }else{
            actualVersion=browserVersion;
            actualName=browserName;
        }
    } else if(isIE){
        var versionStart=browserAgent.indexOf("msie");
        var versionEnd=browserAgent.indexOf(";",versionStart);
        actualVersion=browserAgent.substring(versionStart+5,versionEnd)
        actualName="ie";
        if(browserAgent.indexOf("maxthon")!=-1){
            actualName="maxthon";
        }else if(browserAgent.indexOf("opera")!=-1){
            actualName="opera";
            var tempstart=browserAgent.indexOf("opera");
            var tempend=browserAgent.length;
            actualVersion=browserAgent.substring(tempstart+6,tempend);
       }
    }else{
        actualName="unknownNavigator";
        actualVersion="unknownVersion";    
    }
    return actualName.split(" ").join("")+"-"+actualVersion.split(" ").join("");
}
Monitor.prototype.getFlashPlugin=function() { 
	var f="";
	var n=navigator;
	if (n.plugins && n.plugins.length) { 
		for (var i=0;i<n.plugins.length;i++) { 
			if (n.plugins[i].name.indexOf('Shockwave Flash')!=-1) { 
				f=n.plugins[i].description.split('Shockwave Flash ')[1]; 
				break; 
			} 
		} 
	} else if (window.ActiveXObject) { 
		for (var j=10;j>=2;j--) { 
			try { 
				var fl=eval("new ActiveXObject('ShockwaveFlash.ShockwaveFlash."+j+"');"); 
				if (fl) { 
					f=j + '.0'; 
					break; 
				} 
			} catch(e) {
			} 
		} 
	} 
	return f; 
}
Monitor.prototype.checkIsIE=function(browserAgent){
    return /msie/.test(browserAgent)&&!/opera/.test(browserAgent);
}
//check cookie
Monitor.prototype.checkCookieUse=function() {
    if(navigator.cookieEnabled) {
        return 1;
    }else {
        return 0;
    }
}
Monitor.prototype.setCookieValue=function(name,val,date) {
    var cookie="";
	cookie=name+"="+escape(val)+";expires="+date.toGMTString()+";";
	var d=this.setDom(document.domain);
	if(d != ""){
        cookie +="domain="+d+";";
	}
	cookie +="path="+"/;";
	document.cookie=cookie;
}
Monitor.prototype.getCookieValue=function(name) {
    var co=document.cookie; 
	var cos = co.split(";");
	for(var i=0;i<cos.length;i++){
	    var coss = cos[i].split("=");
	    if(coss[0].split(" ").join("")==name) {
	        return unescape(coss[1]);
	    }
	}
	return "";
}
//set domain
Monitor.prototype.setDom=function(host) {
    var d=host.replace(/^www\./, "");
	var ss=d.split(".");
	var l=ss.length;
	if(l == 3){
		if(this._st_c_ctry_top_dom(ss[1]) && this._st_c_ctry_dom(ss[2])){
		}
		else{
			d = ss[1]+"."+ss[2];
		}
	}else if(l >= 3){
		var ip_pat = "^[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*$";
		if(host.match(ip_pat)){
			return d;
		}
		if(this._st_c_ctry_top_dom(ss[l-2]) && this._st_c_ctry_dom(ss[l-1])){
			d = ss[l-3]+"."+ss[l-2]+"."+ss[l-1];
		}else{
			d = ss[l-2]+"."+ss[l-1];
		}
	}
	return d;
}
Monitor.prototype._st_c_ctry_top_dom=function(str) {
    var pattern = "/^aero$|^cat$|^coop$|^int$|^museum$|^pro$|^travel$|^xxx$|^com$|^net$|^gov$|^org$|^mil$|^edu$|^biz$|^info$|^name$|^ac$|^mil$|^co$|^ed$|^gv$|^nt$|^bj$|^hz$|^sh$|^tj$|^cq$|^he$|^nm$|^ln$|^jl$|^hl$|^js$|^zj$|^ah$|^hb$|^hn$|^gd$|^gx$|^hi$|^sc$|^gz$|^yn$|^xz$|^sn$|^gs$|^qh$|^nx$|^xj$|^tw$|^hk$|^mo$|^fj$|^ha$|^jx$|^sd$|^sx$/i";
    if(str.match(pattern)){
		return 1;
	}
	return 0;
}
Monitor.prototype._st_c_ctry_dom=function(str){
	var pattern = "/^ac$|^ad$|^ae$|^af$|^ag$|^ai$|^al$|^am$|^an$|^ao$|^aq$|^ar$|^as$|^at$|^au$|^aw$|^az$|^ba$|^bb$|^bd$|^be$|^bf$|^bg$|^bh$|^bi$|^bj$|^bm$|^bo$|^br$|^bs$|^bt$|^bv$|^bw$|^by$|^bz$|^ca$|^cc$|^cd$|^cf$|^cg$|^ch$|^ci$|^ck$|^cl$|^cm$|^cn$|^co$|^cr$|^cs$|^cu$|^cv$|^cx$|^cy$|^cz$|^de$|^dj$|^dk$|^dm$|^do$|^dz$|^ec$|^ee$|^eg$|^eh$|^er$|^es$|^et$|^eu$|^fi$|^fj$|^fk$|^fm$|^fo$|^fr$|^ly$|^hk$|^hm$|^hn$|^hr$|^ht$|^hu$|^id$|^ie$|^il$|^im$|^in$|^io$|^ir$|^is$|^it$|^je$|^jm$|^jo$|^jp$|^ke$|^kg$|^kh$|^ki$|^km$|^kn$|^kp$|^kr$|^kw$|^ky$|^kz$|^la$|^lb$|^lc$|^li$|^lk$|^lr$|^ls$|^lt$|^lu$|^lv$|^ly$|^ga$|^gb$|^gd$|^ge$|^gf$|^gg$|^gh$|^gi$|^gl$|^gm$|^gn$|^gp$|^gq$|^gr$|^gs$|^gt$|^gu$|^gw$|^gy$|^ma$|^mc$|^md$|^mg$|^mh$|^mk$|^ml$|^mm$|^mn$|^mo$|^mp$|^mq$|^mr$|^ms$|^mt$|^mu$|^mv$|^mw$|^mx$|^my$|^mz$|^na$|^nc$|^ne$|^nf$|^ng$|^ni$|^nl$|^no$|^np$|^nr$|^nu$|^nz$|^om$|^re$|^ro$|^ru$|^rw$|^pa$|^pe$|^pf$|^pg$|^ph$|^pk$|^pl$|^pm$|^pr$|^ps$|^pt$|^pw$|^py$|^qa$|^wf$|^ws$|^sa$|^sb$|^sc$|^sd$|^se$|^sg$|^sh$|^si$|^sj$|^sk$|^sl$|^sm$|^sn$|^so$|^sr$|^st$|^su$|^sv$|^sy$|^sz$|^tc$|^td$|^tf$|^th$|^tg$|^tj$|^tk$|^tm$|^tn$|^to$|^tp$|^tr$|^tt$|^tv$|^tw$|^tz$|^ua$|^ug$|^uk$|^um$|^us$|^uy$|^uz$|^va$|^vc$|^ve$|^vg$|^vi$|^vn$|^vu$|^ye$|^yt$|^yu$|^za$|^zm$|^zr$|^zw$/i";
	if(str.match(pattern)){
		return 1;
	}
	return 0;
} 