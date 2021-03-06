//add by hihus for register-v2
var sysy = RegConfig.sysdate.split(/\-|\//)[0];
var sysm = RegConfig.sysdate.split(/\-|\//)[1];
var sysd = RegConfig.sysdate.split(/\-|\//)[2];
var province=RegConfig.province || RegConfig.clientLocal || "";
var city=RegConfig.city || province+"01";
var byear = RegConfig.byear || "";
var bmonth = RegConfig.bmonth || "";
var bday = RegConfig.bday || "";
var defaultNote = "听说你上得了厅堂，下得了厨房，杀得了木马，翻得了围墙，但是为什么没有人知道呢？快写下你的优秀，让TA看到吧!";
$(function () {
	var loc_url = location.href;
	var url_arr = loc_url.split("http://");
	var url_dom_arr = url_arr[1].split("/");
	var loc_domain = url_dom_arr[0];
	var loc_referrer = document.referrer;
	if (loc_referrer != "") {
		if (loc_referrer.indexOf(loc_domain) < 0) {
			loc_referrer = encodeURIComponent(loc_referrer);
			var loc_h = encodeURIComponent(location.href);
			var expires = new Date();
			expires.setTime(expires.getTime() + 60 * 60 * 1000);
			document.cookie = ("REG_URL_COOKIE=" + loc_referrer + ";expires=" + expires.toGMTString());
			document.cookie = ("in_time=" + RegConfig.systime + ";expires=" + expires.toGMTString());
			document.cookie = ("out_referer=" + loc_referrer + ";expires=" + expires.toGMTString());
			document.cookie = ("inner_host=" + loc_h + ";expires=" + expires.toGMTString());
		}
	}
	initShow();
	//带邮箱地址的注册
	var login_cookie_name = getCookie('REG_N_N');
	if(login_cookie_name != null && login_cookie_name != 'deleted'){
		init_with_name(base64decode(login_cookie_name),1);
	}else{
		if(RegConfig.initEmail != ""){
			init_with_name(RegConfig.initEmail);
		}
	}
	//end
});

//初始化有邮箱的注册
function init_with_name(name,is_mao){
    var type = is_mobile(name) ? 'm' : 'e';
    if(type == 'e'){
    	$("#email").attr("checked",true);
    	$(".email-dl").show();
        $(".phone-dl").hide();
        $('.getBtn').hide();
        $('#p_zx').hide();
        $('#aizx').attr("checked",false);
        reg_trace("emailc","processTraceUser",{},true);
        $("#emailAdd").val(name);
        setTimeout("$('#emailAdd').blur()",100);
        setTimeout("$('#password').focus()",300);
    }else{
    	$("#mobile").val(name);
    	$("#phoneNumber").val(name);
    	setTimeout("$('#phoneNumber').blur()",100);
    	setTimeout("$('#mobile_vali').focus()",100);
    }
    if(is_mao == 1){
    	setTimeout("$('#password').val('')",300);
    	 mao_help(".form-line",0);
    }
    return true;
}

$(document).click(function(event){
	var target  = $(event.target);
    //触发的事件方法
    if($("#self").val().length < 5 ){
		$("#self-text").show();	
	}else{
		$("#self-text").hide();
	}
	if(!target.parent("div").hasClass("oth-con")){
		$(".oth-con").hide();
	}
	$('#emailAdd-o').hide();
});
//Count string byte number, return integer
String.prototype.ByteCount = function(html)
{
    if(typeof html =="undefined" || html == false)
	{
		txt = this.replace(/(<.*?>)/ig,"");
		txt = txt.replace(/([\u0391-\uFFE5])/ig, "11");
	}else
	{
		txt = this.replace(/([\u0391-\uFFE5])/ig, "11");
	}
	
	var count = txt.length;
	return count;
}
function DBC2SBC(str) {
        var i;
        var result='';
        for(i=0; i < str.length; i++)
        {
                code = str.charCodeAt(i);

                if (code == 12290)
                {
                        result += String.fromCharCode(46);
                }
                else if (code == 183)
                {
                        result += String.fromCharCode(64);
                }
                else if(code >= 65281 && code<65373)
                {
                        result += String.fromCharCode(str.charCodeAt(i)-65248);
                }
                else
                {
                        result += str.charAt(i);
                }
        }
        return result;
}
//锚点滚动
function scrollToHere(id,time,add){
    if(!add) add = 0;
    if(!time) time = 500;
    var pos = $(id).offset().top-add;
    // 实现平滑移动 time代表时间ms
    $("html,body").animate({scrollTop: pos},time);
    return true;
}
//阻止默认行为
var stopEvent = function (e) {
    var e = e || window.event;
    if (e.preventDefault) {
        e.preventDefault();
        e.stopPropagation();
    } else {
        e.returnValue = false;//IE
        e.cancelBubble = true;//IE
    }
}
//延迟出发事件
var DelayedTask = function (fn, scope, args) {
	var me = this, id, call = function () {
		clearInterval(id);
		id = null;
		fn.apply(scope, args || []);
	};
	me.delay = function (delay, newFn, newScope, newArgs) {
		me.cancel();
		fn = newFn || fn;
		scope = newScope || scope;
		args = newArgs || args;
		id = setInterval(call, delay);
	};
	/**
	 * Cancel the last queued timeout
	 */
	me.cancel = function () {
		if (id) {
			clearInterval(id);
			id = null;
		}
	};
};

var taskSendMsg = new DelayedTask(function(){});

function getAge(year){
	var aDate = new Date();   
 	var thisYear=aDate.getFullYear();
 	return thisYear-year;
}
// 验证未满18岁
function soYoung_this(){
	var jydate = {
		y: new Date().getFullYear(),
		m: new Date().getMonth() + 1,
		d: new Date().getDate(),
		min: 18,
		max: 99
	};
    var mInput = parseInt($("#month").val());
    var dInput = parseInt($("#day").val());
    if(jydate.y - $("#year").val() === jydate.min && mInput > jydate.m){
        $("#ageTip").addClass("errorTip").children("p").text("未满18岁哦！");
        $("#ageTip").show();
        $('#cant_ch_age').hide();
        return true;
    }else if(jydate.y - $("#year").val() === jydate.min && mInput == jydate.m && dInput > jydate.d){
        $("#ageTip").addClass("errorTip").children("p").text("未满18岁哦！");
        $("#ageTip").show();
        $('#cant_ch_age').hide();
         return true;
    }else{
        $("#ageTip").hide();
        $('#cant_ch_age').show();
        return false;
    }
}

function init_info_show(){
	var status = $("#get_init_info").val();
	var is_young = soYoung_this();
	if(status == 0 || is_young){
		$(".above-t,.above-b").hide();
        $(".m-form .mod").show();
		return false;
	} 
	var age = getAge(RegConfig.byear);
	var age_str = age+"岁";
	var sex_str = (RegConfig.sex =='f') ? "女士":"男士";
	mar_arr = {1:"未婚",2:"离异",3:"丧偶"};
	var mar_str = mar_arr[RegConfig.marriage];
	//黑龙江未知临时踢出,待修复love_location_array.js 后可去掉
	if(RegConfig.city == 2313){
		RegConfig.city = 2301;
	}
	if(city != 9901 ) {
		var loc = LSK[RegConfig.province]+LOK[RegConfig.province][RegConfig.city];
	} else {
		var loc = LSK[RegConfig.province];
	}
	if(status == 2){
		$('#s_sex_2').html(sex_str);
		$('#s_age_2').html(age+"岁");
		$('#s_loc_2').html(loc);
		$('#s_marriage_2').html(mar_str);
		$('#modHei').val(RegConfig.high+"厘米");
		$('#modEdu').val(RegConfig.edu_str);
		$('#modSal').val(RegConfig.income_str);
	}else if(status == 1){
		$('#s_sex_1').html(sex_str);
		$('#s_age_1').html(age+"岁");
		$('#s_loc_1').html(loc);
		$('#s_marriage_1').html(mar_str);
		$('#s_edu_1').html(RegConfig.edu_str);
		$('#s_income_1').html(RegConfig.income_str);
		$('#s_height_1').html(RegConfig.high+"cm");
	}
}
function initShow(){
	//根据初始数据选择显示类型
	init_info_show();
	checkAddress();
	//折叠项统计
    top_stat();
	//初始化常驻地
	var city = RegConfig.city;
	var province = RegConfig.province;
	if(province>0) {
		$("#input_city").val(city);
		$("#input_province").val(province);
		if(city != 9901 && city != "") {
			$("#input_city").val(city);
			$("#address").val(LSK[province]+" "+LOK[province][city]);
		} else {
			$("#address").val(LSK[province]);
		}
	}
	//独白随机标签
	getTagsShow();
}

function reg_v2_trace_help(id){
	p = {};
	if(id == 'email'){
		p['email'] = ($("#emailAdd").length > 0) ? $("#emailAdd").val() : "";
	}else if(id == "mobilec"){
		p["register_type"] = 1;
		p['id'] = "register_type";
	}else if(id == "emailc"){
		p["register_type"] = 0;
		p['id'] = "register_type";
	}else if(id == "nan"){
		p["sex"] = $("#nan").val();
		p['id'] = "sex";
	}else if(id == "nv"){
		p["sex"] = $("#nv").val();
		p['id'] = "sex";
	}else if(id == "mobile_vali"){
		p["mobile"] = $("#mobile").val();
		p["mobile_vali"] = $("#mobile_vali").val();
	}else if(id == "province"){
		p["province"] = $("#input_province").val();
	}else if(id == "city"){
		p["city"] = $("#input_city").val();
	}else if(id == "height"){
		var height = $("#" + id).val();
		p["height"] = height.replace(/厘米/ig,"");
	}else if(id == "degree"){
		p["degree"] = $("#education").val();
	}else if(id.indexOf("marriage") != -1){
		var value = id.replace(/[^0-9]/ig,"");
		p["marriage"] = value;
		p['id'] = "marriage";
	}else if(id == "note1"){
		p["note"] = $("#note1").val();
		p['id'] = "note";
	}else if(id == "note2"){
		p["note"] = $("#self").val();
		p['id'] = "note";
	}else if(id == "note3"){
		p["note"] = $("#note3").val();
		p['id'] = "note";
	}else{
		p[id] = ($("#" + id).length > 0) ? $("#" + id).val() : "";
	}
	if(typeof(p["id"]) == "undefined"){
		p['id'] = id;
	}
	return p;
}
function reg_trace(id, method, cb, array) {
	var paras = [];
	var p = {};
	p = reg_v2_trace_help(id);
	id = p["id"];
	delete  p["id"];

	if (array || id == "validate_code" || id == "email" || (id == "mobile" && method != "processUserMobile") || id == "mobile_vali") {
		paras = ["<xjxquery><q>" + $.param(p) + "</q></xjxquery>", id];
	} else {
		paras = ["<xjxquery><q>" + $.param(p) + "</q></xjxquery>"];
	}
//	$.ajaxSetup({"beforeSend":function (xhr, s) {
//		xhr.setRequestHeader("sid", $("#sid").val());
//	}});
//	$.post(RegConfig.ajaxUrl + "libs/xajax/reguser.server.php?" + method, {xajax:method, xajaxargs:paras, xajaxr:new Date().getTime()}, function (data) {
//		var type = $(data).find("cmd").eq(0).text();
//		var s2 = $(data).find("cmd").eq(1).text();
//		if (type == "show null") {
//			if (typeof(cb) != "undefined" && typeof(cb.onError) == "function") {
//				cb.onError(id, s2);
//			}
//		} else {
//			if (typeof(cb) != "undefined" && typeof(cb.onSuccess) == "function") {
//				cb.onSuccess(id, s2);
//			}
//		}
//	});
}

function is_mobile(val){
	if(/^0?(13[0-9]|15[0-9]|18[0-9]|14[0-9]|17[0-9])[0-9]{8}$/g.test(val) || /^(13[0-9]|15[0-9]|18[0-9]|14[0-9]|17[0-9])(\*{0,})(\d{4})$/g.test(val)){
		return true;
	}
	return false;
}

function warn(msg){
	JY_Alert("提示",msg);
}
function validate_age() {
	var age = get_age();
	if (age < 18 || age > 99) {
		return false;
	} else {
		return true;
	}
}
var mao_staus = false;
function mao_help(id,add){
	if(mao_staus == true){
		return false;
	}
	scrollToHere(id,300,add);
	return true;
}
function validator(){
	var is_validator_success = true;
	var _force_id_error = "";
	var _force_id_msg = "";
	var error_msg = "";
	var sex = 'm';
	var uhash = $('#sthash').val();
	mao_staus = false;
	if($("#nv").attr("checked")) sex = 'f';
	//性别验证
	if (!$("#nan").attr("checked") && !$("#nv").attr("checked")) {
		is_validator_success = false;
		if (_force_id_error == "") {
			_force_id_error = "#sex";
		}
		if (_force_id_msg == "") {
			_force_id_msg = "#sexinfo";
		}
		if (error_msg == "") {
			error_msg = "性别未选择";
		}
		send_jy_pv2("validator_err_sex|"+uhash);
	}
	if ($("#year").val() == "" || $("#month").val()=="" || $("#day").val()=="") {
		if ($("#year").val()=="") {
			if (_force_id_error == "") {
				_force_id_error = "#year";
			}
			send_jy_pv2("validator_err_year|"+uhash);
		} else {
			if ($("#month").val()=="") {
				if (_force_id_error == "") {
					_force_id_error = "#month";
				}
				send_jy_pv2("validator_err_month|"+uhash);
			} else {
				if ($("#day").val()=="") {
					if (_force_id_error == "") {
						_force_id_error = "#day";
					}
				}
				send_jy_pv2("validator_err_day|"+uhash);
			}
		}
		if (_force_id_msg == "") {
			_force_id_msg = "#birthinfo";
		}
		if (error_msg == "") {
			error_msg = "生日未选择";
		}
		is_validator_success = false;
	}
	//年龄检测
	if(soYoung_this()){
		is_validator_success = false;
	}

	var check_city = checkAddress();
	if (!check_city || $("#input_city").val()=="") {
		if (_force_id_error == "") {
			_force_id_error = "#input_city";
		}
		is_validator_success = false;
		if (_force_id_msg == "") {
			_force_id_msg = "#locationinfo";
		}
		if (error_msg == "") {
			error_msg = "请填写常驻地址";
		}
		send_jy_pv2("validator_err_loc|"+uhash);
		mao_help("#address",10);
		mao_staus = true;
	}
	var marriage = parseInt($('input[name="marriage"]:checked').val());
	if(marriage != 1 && marriage != 2 && marriage != 3){
		is_validator_success = false;
		if(_force_id_error=="")
		_force_id_error="#marriage";
		if(_force_id_msg=="")
		_force_id_msg="#marriageinfo";
		if(error_msg=="")
		error_msg = "请选择婚姻状况";
		send_jy_pv2("validator_err_marriage|"+uhash);
	}
	var height = parseInt($('#height').val().replace(/[^0-9]/ig,""));
	if(height <130 || height > 226){
		is_validator_success = false;
		if(_force_id_error=="")
		_force_id_error="#height";
		if(_force_id_msg=="")
		_force_id_msg="#heightTip";
		if(error_msg=="")
		error_msg = "请选择身高";
		send_jy_pv2("validator_err_height|"+uhash);
	}
	var education = parseInt($('#education').val());
	if($('#education').val() == "" || education <= 0){
		is_validator_success = false;
		if(_force_id_error=="")
		_force_id_error="#education";
		if(_force_id_msg=="")
		_force_id_msg="#educationTip";
		if(error_msg=="")
		error_msg = "请选择学历";
		send_jy_pv2("validator_err_edu|"+uhash);
	}
	var income = parseInt($('#income').val());
	if($('#income').val() == "" || income <= 0){
		is_validator_success = false;
		if(_force_id_error=="")
		_force_id_error="#income";
		if(_force_id_msg=="")
		_force_id_msg="#incomeTip";
		if(error_msg=="")
		error_msg = "请选择月薪";
		send_jy_pv2("validator_err_income|"+uhash);
	}
	// if(is_validator_success == false){
	// 	warn("请检查基本信息填写是否有误！"+error_msg);
	// 	return false;
	// }
    if ($("#nickname").val() == "" ) {
    	$("#nickname").parent().addClass("err");
        $("#nickname").next().addClass("error").show();
        $("#nicknameTip").addClass("errorTip").children("p").text("请输入至少1个汉字或2个字母");
		is_validator_success = false;
		if (_force_id_error == "") {
		_force_id_error = "#nickname";
		}
		if (_force_id_msg == "") {
		_force_id_msg = "#nicknameTip";
		}
		if (error_msg == "") {
		error_msg = "昵称未填写";
		}
		send_jy_pv2("validator_err_nick|"+uhash);
	}

	if (is_validator_success && $("#nickname").val().trim().ByteCount(true) < 2) {
        $("#nickname").parent().addClass("err");
        $("#nickname").next().addClass("error").show();
        $("#nicknameTip").addClass("errorTip").children("p").text("请输入至少1个汉字或2个字母");
		is_validator_success = false;
		if (_force_id_error == "") {
		_force_id_error = "#nickname";
		}
		if (_force_id_msg == "") {
		_force_id_msg = "#nicknameTip";
		}
		if (error_msg == "") {
		error_msg = "昵称至少需要1个汉字或2个字母";
		}
		send_jy_pv2("validator_err_snick|"+uhash);
	}
    
    if (is_validator_success && $("#nickname").val().trim().ByteCount(true) > 20) {
		$("#nickname").parent().addClass("err");
        $("#nickname").next().addClass("error").show();
        $("#nicknameTip").addClass("errorTip").children("p").text("昵称超过10个汉字或20个字母，无法输入更多");
		is_validator_success = false;
		if (_force_id_error == "") {
		_force_id_error = "#nickname";
		}
		if (_force_id_msg == "") {
		_force_id_msg = "#nicknameTip";
		}
		if (error_msg == "") {
		error_msg = "昵称超过10个汉字或20个字母，无法输入更多";
		}
		send_jy_pv2("validator_err_lnick|"+uhash);
	}
	var pwditem = "#password";
	 //密码
	if ($(pwditem).val() == "") {
		$(pwditem).parent().addClass("err");
        $(pwditem).next().addClass("error").show();
    	$("#passwordTip").addClass("errorTip").children("p").text("密码不能为空");
		is_validator_success = false;
		if (_force_id_error == "") {
			_force_id_error = pwditem;
		}
		if (_force_id_msg == "") {
			_force_id_msg = "#passwordeTip";
		}
		if (error_msg == "") {
			error_msg = "密码未填写";
		}
		send_jy_pv2("validator_err_pass|"+uhash);
	}

    if (is_validator_success && $(pwditem).val().trim().ByteCount(true) < 6) {
        $(pwditem).parent().addClass("err");
        $(pwditem).next().addClass("error").show();
    	$("#passwordTip").addClass("errorTip").children("p").text("密码太短了，至少6位");

        is_validator_success = false;
		if (_force_id_error == "") {
			_force_id_error = pwditem;
		}
		if (_force_id_msg == "") {
			_force_id_msg = "#passwordeTip";
		}
		if (error_msg == "") {
			error_msg = "密码太短了，至少6位";
		}
		send_jy_pv2("validator_err_spass|"+uhash);
	}
    if (is_validator_success && $(pwditem).val().trim().ByteCount(true) > 20) {
        $(pwditem).parent().addClass("err");
        $(pwditem).next().addClass("error").show();
    	$("#passwordTip").addClass("errorTip").children("p").text("密码超过20位，无法输入更多");

        is_validator_success = false;
		if (_force_id_error == "") {
			_force_id_error = pwditem;
		}
		if (_force_id_msg == "") {
			_force_id_msg = "#passwordeTip";
		}
		if (error_msg == "") {
			error_msg = "密码超过20位，无法输入更多";
		}
		send_jy_pv2("validator_err_lpass|"+uhash);
	}
	//手机邮箱
	if ($("#email").attr("checked")){
		if($("#validate_code").val() == ""){
    		$("#validate_code").parent().addClass("err");
        	$("#validate_code").next().addClass("error").show();
        	$("#emailchaTip").addClass("errorTip").children("p").text("请输入图片中的字符");
			is_validator_success = false;
			if (_force_id_error == "") {
				_force_id_error = "#validate_code";
			}
			if (_force_id_msg == "") {
				_force_id_msg = "#verEmailCodeTip";
			}
			if (error_msg == "") {
				error_msg = "验证码未填写";
			}
			send_jy_pv2("validator_err_ecode|"+uhash);
    	}
		if ($("#validate_code").val().length != 4 || ( $("#validate_code").next().hasClass("error") && /验证码有误/.test($("#emailchaTip").text())) ) {
        	$("#validate_code").parent().addClass("err");
        	$("#validate_code").next().addClass("error").show();
        	$("#emailchaTip").addClass("errorTip").children("p").text("验证码有误");
			is_validator_success = false;
			if (_force_id_error == "") {
				_force_id_error = "#verEmailCodeTip";
			}
			if (_force_id_msg == "") {
				_force_id_msg = "#verEmailCodeTip";
			}
			if (error_msg == "") {
				error_msg = "验证码有误";
			}
			send_jy_pv2("validator_err_errecode|"+uhash);
		}
		 //邮箱注册
		if ($("#emailAdd").val() == "") {
			$("#emailTip").addClass("errorTip").children("p").text("邮箱地址必填");    
            $("#emailAdd").parent().addClass("err");
            $("#emailAdd").next().addClass("error").show();
			is_validator_success = false;
			if (_force_id_error == "") {
				_force_id_error = "#email";
			}
			if (_force_id_msg == "") {
				_force_id_msg = "#emailTip";
			}
			if (error_msg == "") {
				error_msg = "请输入常用邮箱";
			}
			send_jy_pv2("validator_err_email|"+uhash);
		}
		var re = /^[_a-zA-Z0-9\-\.]+@([\-_a-zA-Z0-9]+\.)+[a-zA-Z0-9]{2,4}$/;
		if (!$("#emailAdd").val().trim().match(re)) {
			$("#emailTip").addClass("errorTip").children("p").text("邮箱格式不正确");    
            $("#emailAdd").parent().addClass("err");
            $("#emailAdd").next().addClass("error").show();

			is_validator_success = false;
			if (_force_id_error == "") {
				_force_id_error = "#email";
			}
			if (_force_id_msg == "") {
				_force_id_msg = "#emailTip";
			}
			if (error_msg == "") {
				error_msg = "邮箱格式不正确";
			}
			send_jy_pv2("validator_err_emailg|"+uhash);
		}
		if (/该邮箱已/.test($("#emailTip").children("p").html())) {
			$("#emailTip").addClass("errorTip").children("p").text("该邮箱已注册，重新填写");    
            $("#emailAdd").parent().addClass("err");
            $("#emailAdd").next().addClass("error").show();

			is_validator_success = false;
			if (_force_id_error == "") {
				_force_id_error = "#email";
			}
			if (_force_id_msg == "") {
				_force_id_msg = "#emailTip";
			}
			if (error_msg == "") {
				error_msg = "该邮箱已注册，重新填写";
			}
			send_jy_pv2("validator_err_emailhas|"+uhash);
		}
	}else{
	     //手机号注册
		if ($("#phoneNumber").val() == "") {
			$("#phoneNumber").parent().addClass("err");
        	$("#phoneNumber").next().addClass("error").show();
			$("#phoneTip").children("p").text("手机号码不能为空");

			is_validator_success = false;
			if (_force_id_error == "") {
				_force_id_error = "#phoneNumber";
			}
			if (_force_id_msg == "") {
				_force_id_msg = "#phoneTip";
			}
			if (error_msg == "") {
				error_msg = "请填写有效的手机号";
			}
			send_jy_pv2("validator_err_emobile|"+uhash);
		}
		if (!is_mobile($("#mobile").val())) {
            $("#phoneNumber").parent().addClass("err");
        	$("#phoneNumber").next().addClass("error").show();
			$("#phoneTip").addClass("errorTip").children("p").text("请填写有效的手机号");

			is_validator_success = false;
			if (_force_id_error == "") {
				_force_id_error = "#mobile";
			}
			if (_force_id_msg == "") {
				_force_id_msg = "#phoneTip";
			}
			if (error_msg == "") {
				error_msg = "请填写有效的手机号";
			}
			send_jy_pv2("validator_err_errmobile|"+uhash);
		}
		 //验证码
		if ($("#mobile_vali").val() == "" || $("#captchaTip").hasClass("errorTip")) {
            $("#mobile_vali").parent().addClass("err");
            $("#mobile_vali").next().addClass("error").show();  
            $("#captchaTip").addClass("errorTip").children("p").text("请填写手机短信收到的验证码");

			is_validator_success = false;
			if (_force_id_error == "") {
				_force_id_error = "#captchaTip";
			}
			if (_force_id_msg == "") {
				_force_id_msg = "#captchaTip";
			}
			if (error_msg == "") {
				error_msg = "请填写手机短信收到的验证码";
			}
			send_jy_pv2("validator_err_mobilecode|"+uhash);
		}
	}

	var fasdasd = document.getElementsByTagName("input");
    for(i = 0;i < fasdasd.length;i++) {
        if(fasdasd[i].name == "" && fasdasd[i].id.length>30) {
            fasdasd[i].name = fasdasd[i].id;
            fasdasd[i].value = document.getElementById("sid").value;
        }
    }
	//贴标签
	var note_which = $('#note_which').val();
	var note_succ = false;
	if(note_which == 1){
		if( $(".note_tag li").length < 3){
			$("#tab-text").show();
            $("#tab-text").removeClass("gray_tab1");
		}else{
			note_succ = 1;
			//$("#tab-text").hide();
			$("#tab-text").addClass("gray_tab1");

			var note = make_tage_note();
			$('#note1').val(note);
			reg_trace("note1","processTraceUser",{},true);
		}
	}else if(note_which == 2){
		//自己写
		if($("#self").val().length < 5 || $("#self").val() == defaultNote){
			$("#self-text").show();	
		}else{
			note_succ = 2;
			$("#self-text").hide();
			reg_trace("note2","processTraceUser",{},true);
		}
	}else if(note_which == 3){
		//帮你写
		var helpI = 0;
		$(".intro-tc dl dd .ti").each(function(){
			var val = $(this).val();
			if( val === '' ){
				helpI = helpI + 1;
			}
		});
		if( helpI < 4 ){
			note_succ = 3;
			$("#help-text").hide();
			var note = help_note(sex);
			$('#note3').val(note);
			reg_trace("note3","processTraceUser",{},true);
		}else{
			$("#help-text").show();
		}
	}else{
		is_validator_success = false;
		if (_force_id_error == "") {
			_force_id_error = "#note";
		}
		if (_force_id_msg == "") {
			_force_id_msg = "#noteTip";
		}
		if (error_msg == "") {
			error_msg = "需要填写自我介绍";
		}
	}
	if(note_succ == false ){
		is_validator_success = false;
		if (_force_id_error == "") {
			_force_id_error = "#note";
		}
		if (_force_id_msg == "") {
			_force_id_msg = "#noteTip";
		}
		if (error_msg == "") {
			error_msg = "需要填写自我介绍";
		}
		send_jy_pv2("validator_err_note_"+note_which+"|"+uhash);
	}
	//注册条款
	if (!$("#policy").attr("checked")){
		is_validator_success = false;
		if (_force_id_error == "") {
			_force_id_error = "#readme";
		}
		if (_force_id_msg == "") {
			_force_id_msg = "#readmeTip";
		}
		if (error_msg == "") {
			error_msg = "需要同意条款";
		}
		send_jy_pv2("validator_err_policy|"+uhash);
		warn("请勾选同意注册条款");
	}else if(!is_validator_success){
		if(soYoung_this()){
			mao_help(".bg1",0);
		}else{
			mao_help(".form-line",0);
		}
		
	}

	return is_validator_success;
}
function reg_submit(){
	send_jy_pv2("reg_v2_regpost|"+$('#sthash').val());
	setTimeout(function(){$('#Form1').submit();},300);
	return true;
}
function make_tage_note(){
	var note = '';
	$(".note_tag li").each(function(){
		var type = $(this).attr('will');
		var val  = $(this).text();
		note += "#"+type+"-"+val;
	});
	return note;
}
//刷新验证码
$("#refresh").click(function () {
	var img = $("#refresh").attr("src") + "?d=" + Math.random();
	$("#refresh").attr("src", img);
	return false;
});
// 帮你写生成独白
function help_note(sex){
	var note = '';
	var sex_ta = "她";
	var sex_name = "女孩";
	if(sex =='f') {
		sex_ta = "他";
		sex_name = "男孩";
	}
	var note_pre = {
					1:["我是一个#RE#的人，","我的性格比较#RE#，","朋友们都说我性格#RE#，","生活中，我很#RE#，"],
					2:["平时喜欢#RE#什么的，","我的业余时间都放在了#RE#上，","喜欢#RE#，","爱好#RE#，"],
					3:["我憧憬#RE#一般的生活，","一直向往#RE#的生活，"],
					4:["希望对方是一个#RE#的"+sex_name+"，","期待可以碰到一个#RE#的"+sex_name+"，","心中的"+sex_ta+"也许是#RE#这样子的，"]
				   };
	var note_last = [
					 "缘分，是一种人与人之间无形的连结，也是某种必然相遇和无限的可能。我期待在这里遇见你。",
					 "我在这里等着一份缘定的爱情，等着你的到来。",
					 "我期待与你一起走过这段人生的历程，一起分享生活的酸甜苦涩。"
					];
	$(".note_help").each(function(){
		var st = $(this).attr('data');
		var val = $(this).val();
		if( val != '' ){
			var pre_index = Math.floor(Math.random() * note_pre[st].length + 1)-1;
			note += note_pre[st][pre_index].replace("#RE#",val);
		}
	});
	var last_index = Math.floor(Math.random() * note_last.length+ 1)-1;
	note += note_last[last_index];
	return note;
}
//我承诺
function openWin(oMain) {
	var oBg = document.getElementById("bg");
	var oMain = document.getElementById(oMain);
	var clientW = document.documentElement.clientWidth || document.body.clientWidth;
	var clientH = document.documentElement.clientHeight || document.body.clientHeight;
	var offsetW = document.documentElement.scrollWidth || document.body.scrollWidth;
	var offsetH = document.documentElement.scrollHeight || document.body.scrollHeight;
	var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
	var scrollLeft = document.documentElement.scrollLeft || document.body.scrollLeft;
	var bodyW = (offsetW > clientW) ? offsetW : clientW;
	var bodyH = (offsetH > clientH) ? offsetH : clientH;
	with (oBg.style) {
		display = "block";
		width = bodyW + "px";
		height = bodyH + "px";
	}
	with (oMain.style) {
		display = "block";
		left = (clientW - oMain.offsetWidth) / 2 + scrollLeft + "px";
		top = (clientH - oMain.offsetHeight) / 2 + scrollTop + "px";
	}
}
//标签随机生成
function getTags(flag){
	var res = [];
	var sex = (RegConfig.sex =='f') ? 'f' :'m';
	if(flag == 1){
		//var cls = {"xg":4, "xq":3, "wm":2, "gz":2, "zy":2, "jt":2, "shzt":2, "sp":2, "ds":2};
		var cls = {"xg":8, "xq":6, "wm":4, "gz":4, "zy":4, "jt":4, "shzt":4, "sp":4, "ds":4};
		var data = (sex == 'f') ? tags_f : tags_m;
		var cls1 = getRandTag(["gz", "zy", "jt","wm"],2);
		var cls2 = getRandTag(["shzt", "sp", "ds"],2);
		for(var i in cls1) delete cls[cls1[i]];
		for(var i in cls2) delete cls[cls2[i]];
		for(var i in data){
			if(typeof(cls[i]) != "undefined"){
				var temp = getRandTag(data[i],cls[i]);
				for(var t in temp){
					res.push(temp[t]);
				}
			}
		}
	}else{
		var cls = {"xg":4,"wm":2, "gz":3, "zy":3, "jt":2};
		var data = (sex == 'm') ? tags_f : tags_m;
		var cls1 = getRandTag(["gz", "zy"],1);
		for(var i in cls1) delete cls[cls1[i]];
		for(var i in data){
			if(typeof(cls[i]) != "undefined"){
				var temp = getRandTag(data[i],cls[i]);
				for(var t in temp){
					res.push(temp[t]);
				}
			}
		}
	}
	return res;
}
function getRandTag(d,cnt){
	var n = d;
	n.sort(randomsort);
	return n.slice(0,cnt);
}
function getTagsShow(){
	var data1 = getTags(1);
	//var data2 = getTags(2);
	$('#note_tage_1').html('');
	//$('#note_tage_2').html('');
	var note_1 = '';
	//var note_2 = '';
	var cc = 1;
	for(var i in data1){
		if(cc == 4) cc =1;
		note_1 += '<li class="b'+cc+'"><a href="">'+data1[i]+'</a></li>';
		cc++;
	}
	cc = 1;
	// for(var i in data2){
	// 	if(cc == 4) cc =1;
	// 	note_2 += '<li class="b'+cc+'"><a href="">'+data2[i]+'</a></li>';
	// 	cc++;
	// }
	$('#note_tage_1').html(note_1);
	//$('#note_tage_2').html(note_2);
	$(".intro-2 li a").bind("click", function(){
        var flag = 1;
        if($(this).parent().parent().hasClass("tnote_2")) flag = 2;
		insertTag($(this),flag);
		return false;	
	});
	return true;
}
var tags_m = {
		"xg":["憨厚","有责任心","正直","诚信","靠谱","孝顺","内敛","阳光","完美主义","宅","张扬","包容","执着","幽默","独立","开朗","爱挑战","低调","稳重","冷静","简单","乐观","大大咧咧"],
		"xq":["美食","运动","健身","小酌两杯","网游","旅行","摄影","听歌","麦霸","游泳","追剧","NBA","电影","话剧","看书","听音乐会","画画","跳舞"],
		"wm":["高大","健康","有腹肌","中等身材","比较瘦","有点发福","帅","有男人味","长腿"],
		"gz":["在国企","在私企","政府机关","自己创业","外企","知名企业"],
		"zy":["IT业","金融业","媒体业","医务工作者","教育行业","设计行业","娱乐行业","销售","自由职业","公务员","建筑行业","企业高管"],
		"jt":["三口之家","单亲家庭","高知家庭","四世同堂"],
		"shzt":["单身求解救","努力挣钱","奋斗中","正在减肥","想结婚","戒烟ing","静待缘分","攒钱ing","寂寞","车奴","房奴","非诚勿扰"],
		"sp":["好厨艺","过目不忘","狂吃不胖","力大无穷","晒不黑","特别能睡","千杯不醉","不挑食"],
		"ds":["潮男","胖子","工作狂","麦霸","学霸","话唠"]
	};

var tags_f = {
		"xg":["文静","细心","正直","诚信","靠谱","孝顺","温柔","简单","粗枝大叶","宅","顾家","执着","温柔","独立","开朗","体贴","可爱","纯真","大大咧咧","善良","乐观"],
		"xq":["美食","运动","健身","逛街","瑜伽","旅行","摄影","听歌","麦霸","游泳","追剧","电影","话剧","音乐会","弹钢琴","画画","跳舞","看书","养猫","养狗","淘宝","自拍"],
		"wm":["微胖","大眼睛","小酒窝","身材匀称","苗条","皮肤白皙","漂亮","时尚","高挑","唇红齿白"],
		"gz":["在国企","在私企","政府机关","自己创业","外企","知名企业"],
		"zy":["IT业","金融业","媒体业","医务工作者","教育行业","设计行业","娱乐行业","销售","自由职业","公务员","建筑行业"],
		"jt":["三口之家","单亲家庭","高知家庭"],
		"shzt":["单身求解救","努力挣钱","奋斗中","正在减肥","非诚勿扰","平平淡淡","静待缘分","攒钱ing","有点寂寞","求牵走","房奴"],
		"sp":["好厨艺","过目不忘","狂吃不胖","力大无穷","晒不黑","特别能睡","整理癖","不挑食"],
		"ds":["胖纸","美食家","萌妹纸","麦霸","学霸","女强人"]
	};
//独白推荐
function getIntroData(){
	var sex = RegConfig.sex;
	var data = male_intro;
	if(sex == 'f') data = fmale_intro;
	data.sort(randomsort);
	data = data.slice(0,3);
	$('.oth-con').html("");
	var ninfo  = "";
	ninfo += '<span class="ie6"> </span>';
	ninfo += '<p>'+data[0]+'</p>';
	ninfo += '<p>'+data[1]+'</p>';
	ninfo += '<p class="la">'+data[2]+'</p>';
	$('.oth-con').html(ninfo);

}

function randomsort(a, b) {
	return Math.random()>.5 ? -1 : 1;
}

var male_intro = ["小胜凭智，大胜凭德。万法随缘,自然而然。好婚姻没有固定模式。但进入一段好的婚姻之前，一定要先了解自我。要选择最合适自己的，而不是最好的。不要有太多的条条框框，放低一个标准可能回收获更多的幸福。",
"每天简单地工作，简单地跑步，简单地在大街马路上四处张望看漂亮美眉，然后转身回家听下乡村音乐。听到情深处，不禁就嘁嘁暧暧自言自语念叨两句：我怎么还没女朋友啊。",
"我容易相处，为人实在，低调做人，踏实做事，懂得照顾呵护自己的女人是我最大的优点。习惯换位思考，只是些许大男子主义，不过也仅限于很偶然的那么几天，算是男性每个月的生理期，俗称大姨夫。性格开朗温顺的我是你值得信任和依靠托付一生的人。",
"去爱吧，像不曾受伤一样；跳舞吧，像没人欣赏一样；唱歌吧，像没人聆听一样；生活吧，像每天是末日一样；学习吧，像生命没有尽头一样；珍惜吧，像从未曾得到过一样！",
"不要觉得自己的过去受到了很深的伤害，从此就不敢也没有能力再爱。这世界上有那么多的人，每一个人的人生都是不同的，发生在他们身上的感情也会不同。",
"一百个人会有一百种对爱情的定义。我的爱情解读不了你的爱情，同样的，过去失败的情感，一样不该影响到未来属于你的人生。",
"谁也不是先知，谁也不知道我们下一次的付出，是否真的可以得到同等的回报。但是我相信上帝对每个人都是公平的。当他拿走你一样东西的时候，一定会为你带来另一种幸福和好运。",
"被一个不爱你的人抛弃，事实上是一种幸运。而放弃一个真心爱你的人，留给自己的却可能是一辈子无法挽回的遗憾。为一个伤害了你的人哭泣是不值得的，因为真正值得你流泪的人是永远不会让你哭。",
"总是任性的想要去寻找一种命定的缘分，就如同寻找一片脉络与掌心的纹路相同的叶子一样。那都是可遇而不可求的。生活的可贵在于珍惜，而珍惜源自于对幸福的把握。",
"想象远不及生活的步伐遥远，绕了一个弯，也许又回到起点，或者改道走向下一个终点。人总要有很多经过，绚烂过、懵懂过、付出过、得到过、失去过、庆幸过、遗憾过、失望过、满足过，每个人也就在这些经历中浓缩出精彩的人生。",
"不要因为怕被伤害就不再去爱。如果不曾心动，又怎么能够体会思念的美好？如果不曾真心爱过，又怎知痛也是一种爱到极致？不要太在乎是不是会再次受伤，因为你曾经拥有的快乐已经是经过所赋予你的最美好的礼物。受过伤害的你也该敞开胸怀，我在这里等着你。",
"不要害怕离去，因为你曾经拥有了幸福。保持微笑，不再忧伤，太过小心翼翼的人生是无法看到生活的美丽的。我愿与你一起微笑，一同悲伤，携手美丽人生。",
"不要太在乎一些无伤大雅的细节，有时候放开一些反而会让你得到更多。不拘小节的人容易得到快乐，和不拘小节的人一起生活是一个轻松自由人生的开始，牵住我的手，让我带你走。",
"幸福是什么？幸福就是以一种悄无声息的方式温柔的渗透，然后蔓延。即使沉溺于那些揪心的感伤，也要用力的明媚微笑！你在我眼中是最美，我要你是我幸福的可爱女人。",
"性：男，好：女。没破事，没洁癖，巨简单，善恶搞。讲义气，重感情。不拜金，不势力，乐天派，爱家长，爱干净，爱工作，喜竞技，爱足球。情专一，善做饭，常家务，轻自恋，不打扮。人低调，不吝啬，好面子。很简单的一个人，你懂的。",
"对整个世界来说，你是一个人，而对一个人来说，你就是整个世界。我会在这里等着你的到来，期待我们的爱情开花结果，期待把我们的小窝布置得浪漫温馨，一回到家就有幸福的感觉。",
"我想用我的真心换你我一生幸福的生活！还没找到你怎么办呢？其实无所谓合适不合适，重要在于，你是否愿意为对方包容，你是否把中心放在他身上，愿我就是你的天，你的肩膀，你的依靠。",
"我相信，我会找到我的百分百女孩的。这是给自己定的目标。时间渐渐地磨平了我的冲动，冲淡了我的激情，抹杀了我的爱。也许你的出现能让我豁然开朗，所以等待你的出现。",
"其实，你喜欢一个人，就像喜欢富士山。你可以看到它，但是不能搬走它。你有什么方法可以移动一座富士山呢？回答是，你自己走过去。爱情也是如此。",
"当年迈的Karen用直硬的丹麦英语追忆非洲大草原上与Denys的历历往昔，当Darcy在薄雾的晨曦中轻轻拥着Lizzie，当张静初躺在屋顶上仰望蔚蓝天空中掠过的飞机，我就相信，你在，你一定会在。",
"幻象中批驳实在，异色中解构灰蓝；尘世中的的艳与寂，归与离，随流光掠过，随来去无碍，云衣淡卷，此心悠然。前世佳缘，遗留印记，只因期待今生与你重逢在这轮回的宿命中。",
"这是一棵充塞宇宙的大树，无边无际。星星是它的果实，可它的树干在哪里？向西行去攀那根天柱，也许它这棵大树的树干？我想你一定能攀上这棵大树，安坐枝杈间饕餮蜜桃。你如同西部璀璨的星空，长久地闪亮我心底，我常在梦中回返，像从浊世重登天堂。",
"人生的浮云总会遮断望眼，荆棘总会绊住双脚，斗志总会被曲折消磨，我早已在这个熟悉的城市遗失了一颗感恩的心。却在你出现时重拾，与你一同感恩苍生，感恩大地。",
"你的世界，是我忘记旋律的一首歌；我的寂寞，却哭不出声响。你的苍桑，路遇我的繁华凄凉，我反复吟唱，却成了年华无法停驻的忧伤。",
"上苍把人分成两性就把世界分成了两半，男人无法明白女人就和女人无法明白男人一样顺应天理。但我想靠近你，认识你，爱上你，像研究一枚娇艳的花朵般诠释你，歌唱你。",
"刘德华和阿汤哥那种才貌双全的郎君是不会来交你的友的。当然我也没做诺丁山的梦，您要真是一仙女我也接不住。明白这点，我们以结婚为目的，生子为总目标的恋爱就可以开始了。",
"人生就像舞台一样，演义出形形色色的人生，每个人都有它理想的人生，同样也有它理想伴侣，为此，我们我们努力地奋斗着，努力地寻找着，通过自己的努力来实现自己的目标，通过自己一颗真诚心，打动她，来到她的身旁，一起走过这段人生的历程，来一起分享生活的酸甜苦涩。",
"不知道是什么奇异的风，将我的一滴眼泪吹落入污浊的灰土，却没有一丝要闯进眼泪。身体在身边静静地聆听，它倾听到眼泪心底的抽搐，一波波微跳的颤栗似孤独的草原上一颗石子，显得寂寞。这样的我期待你掀起我的心灵，细心阅读。",
"来到这里是个偶然，遇见你也许也是偶然，我们都不知道下一颗巧克力的味道，无数个偶然或许就是生活送给我们最美的礼物，你的偶然出现或许就是我生命中最美的必然。",
"上天也许早已安排我们遇见，指引我历尽千山万水来到你身边，在我们终于遇见心仪的人时，便应当心存感激。我在这里等着一份缘定的爱情，等着你的到来。"];

var fmale_intro =["对整个世界来说，你是一个人，而对一个人来说，你就是整个世界。我会在这里等着你的到来，期待我们的爱情开花结果，期待把我们的小窝布置得浪漫温馨，一回到家就有幸福的感觉。",
"如果你花心，请别近入我的花园。如果你假意，请别进入我的世界。如果我们的文字能会意，那么请珍惜缘分。如果你能读懂我的内心世界，我会恋上你，为你，我什么都愿意。",
"有时候望着地平线的方向，我在想，自己一路走来，明天又将去向哪里呢。快乐过也失落过，一个人旅途太漫长，如果你愿意，我希望能拉着你的手，一起奔跑，一起去寻找我们的幸福。",
"一杯清茶，一本小说，一张碟片还有一首老歌。我们生来时，什么也没有带来，同样的死后也带不走什么。所以,亲爱的，我们简简单单过完这辈子，然后把这份感情留到下辈子好不好？",
"关于金钱，不要求你有金山银山，够花就行。关于房子，我想你总要给我一个能遮风挡雨的小窝，和你一副宽阔的肩膀叫我依靠。我愿与你一同走在看见高山的雄伟，经历大海的宽阔。",
"也许我很平凡，但是我绝不缺乏生活的热情和生命的梦想，也许我会孤单，但是我会一路找寻你的踪迹。遇见你，将是我生命中最绚烂的时刻。",
"天空飘着云还有梦，看冬天的雪越来越远，咫尺天涯，一个温柔善良的女人，能等到你的到来吗？能否能给我个温暖的怀抱，让我飘泊的心灵能寻找到家。以后的岁月，我愿长伴你左右，风雨共度。与你相亲相爱、相依相守。",
"我是烟，谁能将我的心事读懂？今生种种皆是前生因果，你我的相遇又是前生怎样的缘分。我想我的你可以与我一直不说话也不会觉得尴尬、只是幸福着的感受着。",
"一个人走得久了，会累，有个人，陪你在冬日的午后晒太阳，为你递上一杯热气腾腾的绿茶，和心爱的人慢慢变老，还有什么比这更幸福呢？",
"这个世界上，总有一个人在等你，总有一个人会给你安心的幸福，总有一个人会陪你到老，这个人，要珍惜，要感恩。你是我要找的幸福吗？",
"也许我很平凡，但是我绝不缺乏生活的热情和生命的梦想，也许我会孤单，但是我会一路找寻你的踪迹。遇见你，将是我生命中最绚烂的时刻，我想留下来被你生活。",
"是我没有遇见缘分，还是没有遇见你，无论外面的世界如何纷繁复杂，只想和你过一种简单的生活，相濡以沫，白头到老。",
"你认识我时，我不认识你，你喜欢我时，我认识你，你爱上我时，我喜欢你，不想在你离开我时，我才爱上你。所以请珍惜缘分，相信它就是这样让我们遇见。",
"当爱不能完美，我宁愿选择无悔，不管来生多么美丽，我不愿失去今生对你的记忆，我不求天长地久的美景，我只要生生世世的轮回里有你。",
"快乐要有悲伤作陪，雨过应该就有天晴。如果雨后还是雨，如果忧伤之后还是忧伤，请让我们从容面对这离别之后的离别。微笑地去寻找一个下一个出现的你。",
"我爱你是我的自己的事，所以你也许不知道我的存在。但如果遇见那个你，我希望不只是我爱你，而是在一起。有你的日子，阳光明媚，没你的日子，人生灰暗。",
"这一辈子，我需要的不多，一碗饭一杯茶而已，但是我希望饭是你做的，茶是你泡的。阳光明媚，鸟语花香，都是每个有你的日子才会有的童话。",
"快乐的日子，总是令人期待。美好的踪影，正在不远的地方，轻轻召唤，我从千里之外，遍寻你的足迹，只为了合上你的节拍，与你共度此生。",
"于千万人之中遇见你所要遇见的人，于千万年之中，时间的无涯的于千万人之中遇见你所要遇见的人，于千万年之中，时间的无涯的荒野里，没有早一步，也没有晚一步，刚巧赶上了，那也没有别的话可说，惟有轻轻地问一声：“噢，你也在这里。”",
"曾有人说：前世五百次的回眸，才换来今生的一次擦肩而过。那个将和我牵手一起走过的人，一定是前世与我许下了今生的约定，我在寻觅你，寻觅你伟岸的背影和坚实的背脊，你呢？",
"如果让我在这里遇见你，会不会是个奇迹呢，曾经无数次幻想过未来另一半的样子，朦胧而亲切，找寻至今，我才相信，爱情终究是缘分，茫茫人海两个人的相识相爱，本身就是一种巧合，你会是我的那个巧合吗？",
"那些等待化了思念，说不清楚已经累积了多少。从桃花开，到李花落。只记得今早的鹊儿报了喜讯。不是那熟悉的清湖畔， 不是那绿油油的稻田旁。不是坐在机杼前。也不是站在柴门前翘首以望等你归来。",
"一个细微动作，一个飘忽眼神，抑或是一个转身的距离，相爱的人应该有着缘分的默契，找一个爱我懂我的人，与他一起漫步，与他一起读诗，共享人世繁华。",
"这一生，牵她的手爱了，就要牢牢地，牢牢地靠近，不要在茫茫人海中丢失了彼此。还是，你是你，我是我，互不相欠，各奔幸福。",
"我在等一个人，一个愿意走进我的生命分享我的喜怒哀乐的人，一个知道我曾经无尽的等待因而更加珍惜我的人，一个也许没能参与我的昨天却愿意和我携手走过每一个明天的人， 一个知道我不完美却依然喜欢我甚至连我的不完美也一并欣赏的人!",
"爱我，要爱我一生一世；爱我，爱，只且爱我一个；爱我，必须爱我的一切缺点；爱我，必须懂我；我爱看小说，你可以不爱；我爱猜谜语，你必须配合，哪怕你不会；我爱猜谜语，如果你会，你要装不会，但是最后要会。",
"也许世界很复杂，但我希望生活简单化，单纯化。 世界无完美的人，完美的人也看不上不完美的我。 所以，我将世界中纷繁复杂的品行在乱序中粗粗勾画，形成我所追求的那个他。 善良、包容、 才华、 幽默、 能看顺眼的外貌，以上五点的前提——相信这个世界有真爱。",
"憧憬中国传统的婚姻人生：一夫一妻，同甘共苦，白头到老，老爷爷老奶奶，直到生命终了！年华岁月，悄悄而逝，您我雷同，人生洗礼，渐渐长大！风吹雨打，脚步坚定，自尊自强谦卑中又自信！",
"首先为你鼓掌，我想说： 你这么有眼光 ，小女子佩服佩服 ！嘿嘿， 因为在这么多佳人之中你正选择了我，这是你一生的运气，一世的才气，一辈子的福气。",
"一个人的天空很蓝，蓝的有点忧郁。一个人的日子自由，自由的有点孤单；一个人的日子，背影多了份孤独，身边少了份快乐；一个人的日子，心灵多了份宁静，面容添了一丝忧郁……有人心疼我的那一份孤独，有人羡慕我的那一份宁静……而我，总是一个人在等待你的出现。"];

function getCookie(name){
    var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
    if(arr != null) return unescape(arr[2]); return null;
}

var base64EncodeChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
var base64DecodeChars = new Array(
     -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
     -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
     -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63,
     52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1,
     -1,   0,   1,   2,   3,   4,   5,   6,   7,   8,   9, 10, 11, 12, 13, 14,
     15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1,
     -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
     41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1);

function base64encode(str) {
     var out, i, len;
     var c1, c2, c3;

     len = str.length;
     i = 0;
     out = "";
     while(i < len) {
         c1 = str.charCodeAt(i++) & 0xff;
         if(i == len)
         {
             out += base64EncodeChars.charAt(c1 >> 2);
             out += base64EncodeChars.charAt((c1 & 0x3) << 4);
             out += "==";
             break;
         }
         c2 = str.charCodeAt(i++);
         if(i == len)
         {
             out += base64EncodeChars.charAt(c1 >> 2);
             out += base64EncodeChars.charAt(((c1 & 0x3)<< 4) | ((c2 & 0xF0) >> 4));
             out += base64EncodeChars.charAt((c2 & 0xF) << 2);
             out += "=";
             break;
         }
         c3 = str.charCodeAt(i++);
         out += base64EncodeChars.charAt(c1 >> 2);
         out += base64EncodeChars.charAt(((c1 & 0x3)<< 4) | ((c2 & 0xF0) >> 4));
         out += base64EncodeChars.charAt(((c2 & 0xF) << 2) | ((c3 & 0xC0) >>6));
         out += base64EncodeChars.charAt(c3 & 0x3F);
     }
     return out;
}

function base64decode(str) {
     var c1, c2, c3, c4;
     var i, len, out;

     len = str.length;
     i = 0;
     out = "";
     while(i < len) {
         /* c1 */
         do {
             c1 = base64DecodeChars[str.charCodeAt(i++) & 0xff];
         } while(i < len && c1 == -1);
         if(c1 == -1)
             break;

         /* c2 */
         do {
             c2 = base64DecodeChars[str.charCodeAt(i++) & 0xff];
         } while(i < len && c2 == -1);
         if(c2 == -1)
             break;

         out += String.fromCharCode((c1 << 2) | ((c2 & 0x30) >> 4));

         /* c3 */
         do {
             c3 = str.charCodeAt(i++) & 0xff;
             if(c3 == 61)
                 return out;
             c3 = base64DecodeChars[c3];
         } while(i < len && c3 == -1);
         if(c3 == -1)
             break;

         out += String.fromCharCode(((c2 & 0XF) << 4) | ((c3 & 0x3C) >> 2));

         /* c4 */
         do {
             c4 = str.charCodeAt(i++) & 0xff;
             if(c4 == 61)
                 return out;
             c4 = base64DecodeChars[c4];
         } while(i < len && c4 == -1);
         if(c4 == -1)
             break;
         out += String.fromCharCode(((c3 & 0x03) << 6) | c4);
     }
     return out;
}
