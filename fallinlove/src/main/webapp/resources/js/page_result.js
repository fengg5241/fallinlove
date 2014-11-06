/**
 * 结果展示
 */
function get_photo_service_className(serv)
{
	var serv_class={'priority':'pmtq','gold_diamond':'zshy','diamond':'zshy','msg_vip':'kxby','bl':'phb','vip':'gjhy','chat_vip':'_ltby'};
	return serv_class[serv] ? serv_class[serv] : '';
} 
function get_photo_cert_className(cert)
{
	var cert_class={'mobile':'tel','level':'level'};
	return cert_class[cert] ? cert_class[cert] : '';
}
function get_identity_icons(online, serv, cert)
{
	var servNames = {'priority':'排名提前','gold_diamond':'金钻会员','diamond':'钻石会员','msg_vip':'看信包月','bl':'光明榜','vip':'VIP会员','chat_vip':'聊天包月'};
	var certNames = {'mobile':'手机认证','level':'星级会员'};

	//添加新版服务图标
	var servClass = (serv['service_id'] > 500 && serv['service_id'] < 512 )?('serviceclass_' + serv['service_id']):get_photo_service_className(serv['service']);
	var service_name = (serv['service_id'] > 500 && serv['service_id'] < 512 )?(serv['service_name']):servNames[serv['service']];
	var certClass = get_photo_cert_className(cert);
	var icons = (online?'<i class="online" title="在线"></i>':'')+(servClass?'<i class="'+servClass+'" title="'+service_name+'"></i>':'')+(certClass?'<i class="'+certClass+'" title="' + certNames[cert]+'"></i>':'');
	return icons;
}
//2012/5/21 wangyinghao add express_user start
function build_express_user_photo_html(users)
{
	var usersHtml = [], uH, s;
	for (var i in users) {
		uH = [];
		icons = get_identity_icons(users[i]['online'], users[i]['personality'], users[i]['personality']['cert']);
		uH.push('<li id="user_li_'+users[i]['uid']+'" style="z-index: 5;">');
		uH.push('<div class="she_box" onmouseover="showMoreBut(event,'+users[i]['uid']+')" onmouseout="hideMoreBut(event,'+users[i]['uid']+')">');
		uH.push('<div class="con"><div class="top">');
		uH.push('<div style="width:110px;height:135px;background:#f7f7f7;"><a href="'+users[i]['view_url']+'&searchpos=avatar" target="_blank" onmousedown=send_jy_pv2("|1000004_26|")><img src="'+users[i]['avatar']+'"></a></div>');
		uH.push('<div class="user_name">');
		uH.push(icons+'<a href="'+users[i]['view_url']+'&searchpos=nickname" title="'+users[i]['nickname']+'" target="_blank" onmousedown=send_jy_pv2("|1000004_27|")>'+users[i]['nickname']+'</a>');
		uH.push('</div>');
		uH.push('<div class="zh_btn" id="mailbut_'+users[i]['uid']+'"><a id="chatbut_'+users[i]['uid']+'" class="dzh" href="javascript:void show_hello_div('+users[i]['click_argv']+',\''+users[i]['greet_url']+'\')" style="display: none;">打招呼</a></div>');
		uH.push('</div>');
		uH.push('</div>');
		uH.push('</div>');
		uH.push('</li>');
		usersHtml.push(uH.join("\n"));
	}
	JY.$('express_user_container').innerHTML = usersHtml.join("\n");
}
//2012/5/21 wangyinghao add express_user end
function build_priority_user_photo_html(users)
{
	var usersHtml = [], uH, s;
	for (var i in users) {
		uH = [];
		uH.push('<li id="user_li_'+users[i]['uid']+'">');
		if(typeof luckyNum=='number'&&users[i]['uid']%10==luckyNum) uH.push('<div class="num_bg" title="该会员的UID尾数是您今天的幸运数字">'+luckyNum+'</div>');
		uH.push('<div class="pm_box" onmouseover="showMoreBut(event,'+users[i]['uid']+')" onmouseout="hideMoreBut(event,'+users[i]['uid']+')">');
		uH.push('<div class="top"></div>');
		uH.push('<div class="mid">');
		uH.push(get_one_user_vertical_html(users[i], USER['sex'], condition['sex']));
		uH.push('</div>');
		uH.push('<div class="bottom"></div>');
		uH.push('</div>');
		uH.push('</li>');
		usersHtml.push(uH.join("\n"));
	}
	JY.$('priority_user_container').innerHTML = usersHtml.join("\n");
}
function build_normal_user_photo_html(users)
{
	var usersHtml = [], uH;
	for (var i in users) {
		uH = [];
		uH.push('<li id="user_li_'+users[i]['uid']+'">');
		if(typeof luckyNum=='number'&&users[i]['uid']%10==luckyNum) uH.push('<div class="num_bg" title="该会员的UID尾数是您今天的幸运数字">'+luckyNum+'</div>');
		
		backstyle = '';
		service_id = users[i]['personality']['service_id'];
		if (service_id > 500 && service_id < 512 && users[i]['sex'] == '男')
		{
			backstyle = 'style="background-color:rgb(211,238,249);"';
		}
		
		if (service_id > 500 && service_id < 512 && users[i]['sex'] == '女')
		{
			backstyle = 'style="background-color:rgb(248,231,248);"';	
		}
		
		uH.push('<div class="hy_box" ' + backstyle + ' onmouseover="showMoreBut(event,'+users[i]['uid']+')" onmouseout="hideMoreBut(event,'+users[i]['uid']+')">');
		uH.push(get_one_user_vertical_html(users[i], USER['sex'], condition['sex']));
		uH.push('</div>');
		uH.push('</li>');
		usersHtml.push(uH.join("\n"));
	}
	JY.$('normal_user_container').innerHTML = usersHtml.join("\n");
}
function get_one_user_vertical_html(user, mySex, taSex)
{
	var icons = get_identity_icons(user['online'], user['personality'], user['personality']['cert']);
	uH = [];
	uH.push('<div style="width:110px;height:135px;background:#f7f7f7;"><a href="'+user['view_url']+'&searchpos=avatar" onclick="onClickSearchResultUser('+user['click_argv']+')" target="_blank"><img src="'+user['avatar']+'"></a></div>');
	uH.push('<div class="user_name">');
	uH.push( 	icons+'<a href="'+user['view_url']+'&searchpos=nickname" title="'+user['nickname']+'" onclick="onClickSearchResultUser('+user['click_argv']+')" target="_blank">'+user['nickname']+'</a>');
	uH.push('</div>');
	uH.push('<p class="user_info">'+user['age']+'岁,'+user['personality']['location']+'<br/>'+user['personality']['intro']+'</p>');
	uH.push('<p class="detail"><a href="'+user['view_url']+'&searchpos=more_info"  target="_blank"  onclick="onClickSearchResultUser('+user['click_argv']+')" >查看资料</a></p>');	
	uH.push('<div class="zh_btn"><a class="dzh" href="javascript:void show_hello_div('+user['click_argv']+',\''+user['greet_url']+'\')">打招呼</a>');
	if (user['online']) {
		uH.push('<a style="display:none" class="lt" href="javascript:void openChatWindow('+user['uid']+',\''+(user['sex']=='女'?'f':'m')+'\')" id="chatbut_'+user['uid']+'">聊天</a>');
		//uH.push('<a style="display:none" class="yh" href="javascript:void openNewPage(\''+SITE_URL+'/dating/dating.php?uid='+user['dispid']+'&flt=search\')" id="datebut_'+user['uid']+'">约会</a>');
	}
	uH.push('</div>');
	uH.push('<div style="display:none" class="ico_bg" id="mailbut_'+user['uid']+'">');
	var s = '<a href="javascript:void(0);" title="发信" class="fx" onclick="onClickMsgButton('+user['click_argv']+',\''+user['send_url']+'\')"></a>';
	s+= '<a href="javascript:void(0);" title="礼物" class="lw" onclick="sendGift('+user['dispid']+',\''+(''+mySex+'')+'\',\''+(''+taSex+'')+'\')"></a>';
	s+= '<a href="javascript:void(0);" title="关注" class="ql" onclick="addFriend('+user['dispid']+')"></a>';
	uH.push(s);
	uH.push('</div>');
	return uH.join("\n");
}
function showMoreBut(e, uid)
{
	e = e ? e : event;
	if(!e.target) e.target = e.srcElement;
	//alert('in '+e.target.tagName);
	if (window.event) {
		e.cancelBubble=true;
	} else {
		e.stopPropagation();
	}
	if(JY.$('chatbut_'+uid)) JY.$('chatbut_'+uid).style.display = '';
	if(JY.$('datebut_'+uid)) JY.$('datebut_'+uid).style.display = '';
	JY.$('mailbut_'+uid).style.display = 'block';
	JQ('#user_li_'+uid).addClass('hov');
	JQ('#user_li_'+uid).parent().css('zIndex', 10000);
	JQ('#user_li_'+uid).css('zIndex', 10000);
}
function hideMoreBut(e, uid)
{
	e = e ? e : event;
	if(!e.target) e.target = e.srcElement;
	//alert('out '+e.target.tagName);
	if (window.event) {
		e.cancelBubble=true;
	} else {
		e.stopPropagation();
	}
	if(JY.$('chatbut_'+uid)) JY.$('chatbut_'+uid).style.display = 'none';
	if(JY.$('datebut_'+uid)) JY.$('datebut_'+uid).style.display = 'none';
	JY.$('mailbut_'+uid).style.display = 'none';
	JQ('#user_li_'+uid).removeClass('hov');
	JQ('#user_li_'+uid).parent().css('zIndex', 2);
	JQ('#user_li_'+uid).css('zIndex', 2);
}
function build_express_html(express_user)//2012/5/21 wangyinghao add express_user
{
	if (!express_user) express_user = [];//2012/5/21 wangyinghao add express_user
	//2012/5/21 wangyinghao add express_user start
	if (express_user.length) {
		build_express_user_photo_html(express_user);
		JY.$('express_bar').style.display = 'block';
	} else
		JY.$('express_bar').style.display = 'none';
	//2012/5/21 wangyinghao add express_users end
}
function build_user_photo_html(priority_user, normal_user)
{
	if (!priority_user && !normal_user) {
		return;
	}
	if (!priority_user) priority_user = [];
	if (!normal_user) normal_user = [];
	var i, u, l;
	if (priority_user.length>0 && priority_user.length<6 && normal_user.length>0) {
		l = priority_user.length;
		for (i=0; i<6-l; i++) {
			u = normal_user.pop();
			if (!u) { break; }
			priority_user.push(u);
		}
	}
	if (priority_user.length>6) {
		l = priority_user.length;
		for (i=0; i<l-6; i++) {
			u = priority_user.pop();
			if (!u) { break; }
			normal_user.push(u);
		}
	}
	if (priority_user.length) {
		build_priority_user_photo_html(priority_user);
		JY.$('priority_bar').style.display = 'block';
	} else
		JY.$('priority_bar').style.display = 'none';
	if (normal_user.length) build_normal_user_photo_html(normal_user);
}
function build_user_note_html(priority_user, normal_user)
{

	var container = JY.$('note_user_container');
	if (!priority_user && !normal_user) {
		container.innerHTML = '未找到搜索结果，请放宽条件重试。';
		return;
	}
	priority_user = priority_user ? priority_user : [];
	normal_user = normal_user ? normal_user : [];
	var users = JQ.merge(priority_user, normal_user);
	var usersHtml = [], uH, u, icons;
	for (var i in users) {
		u = users[i];
		icons = get_identity_icons(u['online'], u['personality'], u['personality']['cert']);
		info = u['sex']+','+u['age']+'岁,'+u['marriage']+','+u['work_location']+','+u['height']+'cm,'+u['education']+','+u['industry']+','+u['income']+','+u['photo_count']+'张照片';
		uH = [];
		uH.push('<li class="clear">');
		uH.push('<div class="pic">');
		if(typeof luckyNum=='number'&&u['uid']%10==luckyNum)uH.push('<div class="num_bg" title="该会员的UID尾数是您今天的幸运数字">'+luckyNum+'</div>');
		uH.push('	<a href="'+u['view_url']+'&searchpos=avatar" onclick="onClickSearchResultUser('+u['click_argv']+')" target="_blank"><img src="'+u['avatar']+'"></a>');
		uH.push('</div>');
		uH.push('<div class="conts">');
		uH.push('	<div class="user_name clear">');
		uH.push('		<a href="'+u['view_url']+'&searchpos=avatar" title="'+u['nickname']+'" onclick="onClickSearchResultUser('+u['click_argv']+')" target="_blank">'+u['nickname']+'</a>'+icons);
		uH.push('	</div>');
		uH.push('	<div class="tit"><strong>'+info+'</strong><a href="'+u['view_url']+'&searchpos=more_info" style="margin-left: 10px;" target="_blank">更多&gt;&gt;</a></div>');
		uH.push('	<p>'+u['shortnote']+'</p>');
		uH.push('	<div><strong>择友要求：</strong>'+u['match_cond']+'</div>');
		uH.push('	<div class="btn_box">');
		uH.push('		<a class="orange_btn" onclick="onClickMsgButton('+u['click_argv']+',\''+u['send_url']+'\')"><em class="fx_ico"></em>发信</a>');
		uH.push('		<a class="orange_btn" onclick="show_hello_div('+u['click_argv']+',\''+u['greet_url']+'\')"><em class="dzh_ico"></em>打招呼</a>');
		uH.push('		<a class="gray_btn" onclick="openChatWindow('+u['uid']+',\''+(u['sex']=='女'?'f':'m')+'\')"><em class="lt_ico"></em>聊天</a>');
		//uH.push('		<a class="gray_btn" onclick="openNewPage(\''+SITE_URL+'/dating/dating.php?uid='+u['dispid']+'&flt=search\')"><em class="yh_ico"></em>约会</a>');
		uH.push('		<a class="gray_btn" onclick="sendGift('+u['dispid']+',\''+USER['sex']+'\',\''+condition['sex']+'\')"><em class="slw_ico"></em>送礼物</a>');
		uH.push('		<a class="gray_btn" onclick="addFriend('+u['dispid']+')"><em class="gz_ico"></em>关注</a>');
		uH.push('	</div>');
		uH.push('</div>');
		uH.push('</li>');
		usersHtml.push(uH.join("\n"));
	}
	container.innerHTML = usersHtml.join("\n");
	var list=container.getElementsByTagName("li");
	for (var i=0; i<list.length; i++) {
		list[i].onmouseover = function() { this.className="hov"; }
		list[i].onmouseout = function() { this.className=""; }
	}
}
function showResultCount()
{
	var url = location.href;
	var html;
	if (url.indexOf("online.php") >= 0 || url.indexOf("new.php") >= 0)
	{
		if (resultCount<1) {
			html = '<font class="red">共0人符合您的搜索条件，请您放宽搜索条件重试。</font>';
		} else {
			html = '共'+resultCount+'人符合您的搜索条件';
		}
	}
	else
	{
		if (resultCount<1) {
			html = '<font class="red">30天内登录过的会员中，共0人符合条件，请您放宽搜索条件重试。</font>';
		} else {
			html = '30天内登录过的会员中，共'+resultCount+'人符合条件';
		}
	}
	
	JQ('#result_tip').html(html);
}

/**
 * 翻页
 */
function getPageOptions(count, pageSize, p, optionCount)
{
	var maxPage = Math.ceil(count/pageSize);
	maxPage = maxPage>300 ? 300 : maxPage;
	var beginP = p>3 ? p-3 : 1;
	var endP = beginP+9>maxPage ? maxPage : beginP+9;
	var options = {};
	for (var i=beginP; i<=endP; i++) {
		options[i]='第'+i+'页';
	}
	if (typeof optionCount=='object') {
		optionCount[0] = endP-beginP+1;
		optionCount['maxPage'] = maxPage;
	}
	return options;
}
function go_result_page(url, p)
{
	url = addsiftstourl(url);
	
	if (typeof arguments.callee.running=='undefined') {
		arguments.callee.running = 0;
	}
	if (arguments.callee.running == 1) {
		return;
	}
	arguments.callee.running = 1;
	JQ.ajax({'type':"POST", 'url':url, 'dataType':'text', 'data':'p='+p, 'timeout':10000,
		'beforeSend':function(xmlHttpObj){
			show_query_tip();
		},
		'error':function(xmlHttpObj, textStatus, errorThrown){
			if(textStatus=='timeout'){
				alert('请求超时！请稍候重试');
			}
			pageSelect.setValue(searchStatus['p']);
			go_result_page.running = 0;
			hide_query_tip(false);
		},
		'success':function(data, status) {
		go_result_page.running = 0;
		if (typeof data!='string') {
			alert('请求出现错误!请刷新页面重试');
			hide_query_tip(false);
			return;
		}
		try {
			eval('var info = '+data);
		}catch(e){
			alert(e);
			var info = false;
		}
		if (typeof info != 'object') { return; }
		searchStatus = info['searchStatus'];
		resultCount = info['resultCount'];
		express_user = info['result_express_json'];//2012/5/21 wangyinghao add express_user
		priority_user = info['priority_user'];
		normal_user = info['normal_user'];
		logs = info['logs'];
		info = null;
		if (searchStatus['m']==1) {
			build_user_photo_html(priority_user, normal_user);
		} else {
			build_user_note_html(priority_user, normal_user);
		}
		if(express_user!=null) {
			build_express_html(express_user);//2012/5/22 wangyinghao add express_user
		}
		var pageOptions = getPageOptions(resultCount, searchStatus['m']==1?30:13, searchStatus['p']);
		pageSelect.createOptions(pageOptions, searchStatus['p']);
		pageSelect.setValue(searchStatus['p']);
		showResultCount();
		//请求条
		hide_query_tip(true);
		JQ("html,body").animate({scrollTop:JQ("#result_tip").offset().top}, {duration:500,step:function(){query_tip_top()}});
		//日志
		pageViewLogs(logs);
	}});
}
function query_tip_top()
{
	var scrollTop,scrollLeft,clientWidth;
	with(document){
		scrollTop = Math.max(documentElement.scrollTop,body.scrollTop);
		scrollLeft = Math.max(documentElement.scrollLeft,body.scrollLeft);
		clientWidth = Math.max(documentElement.clientWidth,body.clientWidth);
	}
	var t = scrollTop+'px', l = (scrollLeft+clientWidth/2-30)+'px';
	with(JY.$('query_tip').style){top=t,left=l}
}
function show_query_tip()
{
	query_tip_top();
	JQ('#query_tip_div').css('zIndex', 10000);
	JQ('#query_tip').css('zIndex', 10000);
	JQ('#query_tip').text('载入中');
	JQ('#query_tip_div').show();
}
function hide_query_tip(s)
{
	query_tip_top();
	JQ('#query_tip').text(s?'已更新':'');
	setTimeout("with(JQ('#query_tip_div')){fadeOut('slow');css('zIndex','');}JQ('#query_tip').css('zIndex','');", 1500);
}
function result_page_first(url)
{
	if (!pageSelect) {
		return;
	}
	var currP = parseInt(pageSelect.getValue());
	if (currP<2) {
		return;
	}
	go_result_page(url, 1);
	pageSelect.setValue(1);
}
function result_page_up(url)
{
	if (!pageSelect) {
		return;
	}
	var currP = parseInt(pageSelect.getValue());
	if (currP<2) {
		return;
	}
	go_result_page(url, currP-1);
	pageSelect.setValue(currP-1);
}
function result_page_down(url)
{
	if (!pageSelect) {
		return;
	}
	var currP = parseInt(pageSelect.getValue());
	if (currP>299 || currP>=pageSelect.maxPage) {
		return;
	}
	go_result_page(url, currP+1);
	pageSelect.setValue(currP+1);
}


/**
 * 联系按钮
 */
function openChatWindow(touid, sex)
{
	var	touid1 = touid-1000000;
	if(JY.login.getUser()['uid']>0){
		startNewChat(touid1, sex);
	}else{
		_showLoginDiv(SITE_URL+'/'+touid1);
		_showLoginDiv("index.php");
	}
}
function openNewPage(url)
{
	if(JY.login.getUser()['uid']>0){
		window.open(url);
	}else{
		_showLoginDiv(url);
	}
}
function sendGift(uid, mysex, tosex)
{
	var url = SITE_URL+'/giftmall/index.php?profile_uid='+uid;
	if(JY.login.getUser()['uid']>0){
		if(mysex==tosex){
			alert('不能给同性发送礼物！');
			return;
		}
		window.open(url);
	}else{
		_showLoginDiv(url);
	}
}
function sendGift_v2(uid)
{
	var url = SITE_URL+'/giftmall/index.php?profile_uid='+uid;
	if(JY.login.getUser()['uid']>0){
		window.open(url);
	}else{
		_showLoginDiv(url);
	}
}
function addFriend(dispuid)
{
	if(JY.login.getUser()['uid']<1){
		_showLoginDiv();return;
	}
	if (typeof arguments.callee.running=='undefined') { arguments.callee.running = 0; }
	if (arguments.callee.running == 1) { return false; }
	arguments.callee.running = 1;
	var url = '../ajax_addfriend.php?uid='+dispuid;
	JQ.ajax({'type':"GET", 'url':url, 'dataType':'text', 'timeout':6000,
	'error':function(xmlHttpObj, textStatus, errorThrown){
		if(textStatus=='timeout'){
			alert('请求超时！');
		}
		addFriend.running = 0;
	},
	'success':function(data, status){
		addFriend.running = 0;
		switch(parseInt(data)){
			case  1: alert('添加关注成功！'); break;
			case -1: alert('不能添加已在好友列表中的会员'); break;
			case -2: alert('不能添加在阻止名单中的会员'); break;
			case -3: alert('不能添加相同性别的会员'); break;
			default: alert('参数错误');
		}
	}});
}
function _showLoginDiv(url){
	loginWindow.openlogindiv('login',location.href, function(){location.reload();});
	// loginWindow.loadResource('http://images1.jyimg.com/w4/login/c/popupLogin_20110321.css?d=0701','css');
	// loginWindow.openTPL({tplconfig:{key:55,callback:function(){
	
	// if(url==location.href||!url)
	// 		location.reload();
	// 	else
	// 		location.href = url;
	
	// }},initForm:true});
}



////////////////////////// hello div //////////////////////////
function show_hello_div(argv, url)
{
	if(JY.login.getUser()['uid']<1){
		_showLoginDiv();return;
	}
	if(!JY.$('bg_div_float')){
		var s='<div id="bgdiv" style="position:absolute;display:none;left:0px;top:0px;width:100%;height:100%;filter:alpha(opacity=30);opacity:0.3;background-color:#000000;z-index:10001;"></div>';
		s+='<div class="dragdiv" id="bg_div_float" style="z-index:10002;position:absolute;top:0px;left:0px;display:none"></div>';
		JQ('body').append(s);
	}
	popup_bgdiv(url, '', 0, 610, 600);
	
	if (location.href.indexOf('msn') < 0)
	{
		document.domain = JY.url.getSiteInfo()['topDomain']; //msg iframe要调close_popup
	}
	else
	{
		document.domain = 'msn.com.cn';
	}
	searchProfileOpenLog('greet', searchStatus, activeUser, argv);
}


function show_hello_div_v2(argv, url)
{
	if(JY.login.getUser()['uid']<1){
		_showLoginDiv("index.php");return;
	}
	if(!JY.$('bg_div_float')){
		var s='<div id="bgdiv" style="position:absolute;display:none;left:0px;top:0px;width:100%;height:100%;filter:alpha(opacity=30);opacity:0.3;background-color:#000000;z-index:10001;"></div>';
		s+='<div class="dragdiv" id="bg_div_float" style="z-index:10002;position:absolute;top:0px;left:0px;display:none"></div>';
		JQ('body').append(s);
	}
	popup_bgdiv(url, '', 0, 610, 600);
	
	if (location.href.indexOf('msn') < 0)
	{
		document.domain = JY.url.getSiteInfo()['topDomain']; //msg iframe要调close_popup
	}
	else
	{
		document.domain = 'msn.com.cn';
	}
	//searchProfileOpenLog('greet', searchStatus, activeUser, argv);
}

function popup_bgdiv(url, msg, flag, _width, _height)
{
	if(!_width){
		_width = 435;
	}
	if(!_height){
		_height = 600;
	}
	// var __scroll = (document.documentElement.scrollTop + 30) + "px";
	
	var scrolltop = document.documentElement.scrollTop || window.pageYOffset || 0; //for webkit
	var scroll_height = String(scrolltop + (document.documentElement.clientHeight - _height)/2) + "px";

	if(url != '') {
		JY.$('bg_div_float').innerHTML = '<iframe id="bg_div_iframe" scrolling="no" width="'+_width+'" height="'+_height+'" allowTransparency="true" frameborder="0"></iframe>';
		JY.$('bg_div_iframe').src = url;
	} else if(msg != '') {
		JY.$('bg_div_float').innerHTML = msg;
	} else {
		alert('参数错误');
		return false;
	}
	JY.$('bgdiv').style.display = '';
	JY.$('bgdiv').style.height	=  Math.max(document.body.scrollHeight,document.documentElement.scrollHeight) + 'px';
	JY.$('bgdiv').style.width	= Math.max(document.body.scrollWidth,document.documentElement.scrollWidth) + 'px';
	JY.$('bg_div_float').style.top	= scroll_height;
	JY.$('bg_div_float').style.left = (document.body.clientWidth/2-_width/2) + "px";
	JY.$('bg_div_float').style.display = '';
}
//关闭弹出窗 清空iframe的url
function close_popup(flag)
{
	JY.$('bgdiv').style.display = 'none';
	JY.$('bg_div_float').style.display = 'none';
	if(!flag) {
		JY.$('bg_div_iframe').src = '';
	}
}
////////////////////////// hello div end //////////////////////////






//点击触发函数
function onClickSearchResultUser(argv)
{
	searchProfileOpenLog('profile', searchStatus, activeUser, argv);
	clickServLog(argv.first_serv, argv.uid);
	
	set_pv(argv.uid);
}
function onClickMsgButton(argv, url2)
{
	if(JY.login.getUser()['uid']<1){
		_showLoginDiv();return;
	}
	window.open(url2);
	searchProfileOpenLog('msg', searchStatus, activeUser, argv);
}
function onClickMsgButton_v2(argv, url2)
{
	if(JY.login.getUser()['uid']<1){
		_showLoginDiv();return;
	}
	window.open(url2);
	//searchProfileOpenLog('msg', searchStatus, activeUser, argv);
}
//////////
//个人资料点击和发信点击统计
function searchProfileOpenLog(which, searchStatus, activeUser, passiveUser)
{
	if(which == 'profile'){
		var logStr = 'SEARCH_PROFILE_CLICK|';
	}else if(which == 'msg'){
		var logStr = 'SEARCH_SENDMSG_CLICK|';
	}else if(which == 'greet'){
		var logStr = 'SEARCH_HELLO_CLICK|';
	}else{return false;}
	logStr += activeUser['uid'] +'@'+ activeUser['sex'] +'@'+ activeUser['loc'] +'@'+ activeUser['age'] +'@'+ activeUser['income'];
	logStr += '@'+ activeUser['edu'] +'@'+ activeUser['firstServ'];
	logStr += '|'+ searchStatus['t'] +'@'+ searchStatus['m'] +'@'+ searchStatus['p'] +'@'+ passiveUser['showpos'];
	logStr += '@'+ condition.sex +'@'+ Math.floor((new Date).getTime()/1000);
	logStr += '|'+ passiveUser['uid'] +'@'+ passiveUser['sex'] +'@'+ passiveUser['first_serv'];
	try{window.setTimeout('send_jy_pv2("'+logStr+'")', 2000);}catch(e){}
}
function clickServLog(serv, uid)
{
	var hour = (new Date).getHours();
	if (hour<11 || (hour>=13 && hour<21) || hour>=23) {
		return;
	}
	if (!serv) { return; }
	if (serv=='msg_vip' || serv=='diamond') {
		serv = 'msg_vip_diamond';
	}
	var logStr = 'SEARCH_SERV_PROFILE|'+serv+'|'+uid;
	try { send_jy_pv2(logStr); }catch(e){}
}
function pageViewLogs(logs)
{
	for(var i in logs){
		try{setTimeout('send_jy_pv2("'+logs[i]+'")', 2000);}catch(e){}
	}
}
function set_pv(uid)
{
	var url = 'ajax_pv.php?uid='+uid;
	JQ.ajax({'type':"GET", 'url':url, 'dataType':'text', 'timeout':10000});
}

//增加我的标签
function keyAdd(){
	if(JY.login.getUser()['uid']<1){
		_showLoginDiv();return;
	}
	//统计
	send_jy_pv2("|search_v2_addMyTag|");
	var myTag = "./mytags.php";
	test = new jy_COW(596, 500, myTag, 9999, 50);
	test.begin();
}