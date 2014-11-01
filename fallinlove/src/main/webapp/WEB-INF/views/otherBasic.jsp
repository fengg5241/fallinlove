<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../../resources/css/base.css" rel="stylesheet"
	type="text/css">
<link href="../../resources/css/index.css" rel="stylesheet"
	type="text/css">
<link href="../../resources/css/public.css" rel="stylesheet"
	type="text/css">
<link href="../../resources/css/word.css" rel="stylesheet"
	type="text/css">
<link href="../../resources/css/myService.css" rel="stylesheet"
	type="text/css">
<link href="../../resources/css/word_002.css" rel="stylesheet"
	type="text/css">
<link href="../../resources/css/layer_002.css" rel="stylesheet"
	type="text/css">
<link href="../../resources/css/maplayer.css" rel="stylesheet"
	type="text/css">
<link href="../../resources/css/css.css" rel="stylesheet"
	type="text/css">
<link type="text/css" rel="stylesheet"
	href="../../resources/css/jy_ad.css">
<script src="../../resources/js/beacon.js" async=""></script>
<script type="text/javascript" src="../../resources/js/JY.js"></script>
<!--佳缘桌面弹层开始-->
<link href="../../resources/css/layer.css" rel="stylesheet"
	type="text/css">
<script src="../../resources/js/clickonce.js" type="text/javascript"></script>
</head>
<body>
	<div class="layerTable" id="layerTable" style="display: none;">
		<div class="layerTableTop">
			<a href="javascript:hidelayerTable(0)" class="layerTableClose"></a>
		</div>
		<div class="layerTableBody">
			<table border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td><a href="javascript:hidelayerTable(2)"
							class="layerTableButton"></a></td>
						<td><a href="javascript:hidelayerTable(1)"
							class="layerTableLink">查看详情</a></td>
						<td><a href="javascript:hidelayerTable(0)"
							class="layerTableLink">以后再说</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<script type="text/javascript">
		function hidelayerTable(butt) {
			document.getElementById("layerTable").style.display = "none";
			document.getElementById("header_login_pop_mask").style.display = "none";
			location.href = JY.url.getChannelUrl("usercp");
			if (butt == 1) {
				window.open("http://webim.jiayuan.com/client/download.php");
			}
			if (butt == 2) {
				NavigateTo("jiayuan.com");
			}
		}
	</script>
	<!--佳缘桌面弹层结束-->
	<script type="text/javascript" src="../../resources/js/jy_ad.js"></script>
	<script type="text/javascript" src="../../resources/js/ajax.js"></script>
	<script type="text/javascript" src="../../resources/js/window.js"></script>
	<script type="text/javascript" src="../../resources/js/pv_002.js"></script>
	<script type="text/javascript" src="../../resources/js/jquery-1.js"></script>
	<script type="text/javascript"
		src="../../resources/html/profile_icon.htm"></script>
	<title>个人资料_Icey～豆豆（佳缘ID:104159755）的个人空间_世纪佳缘交友网</title>
	<!--[if lte IE 6]>
     <script type="text/javascript" src="http://images1.jyimg.com/w4/msg/js/dd_belatedpng.js"></script>
     <script>
        DD_belatedPNG.fix('img,.charm,.my_information h1 a,.layer,.vip_tips,.nav,.nav ul li.firston,.nav ul li.on,.charm,.user_left h2,.right_box h2,.my_information h1,.dating_events h2,.facedeco,.mall_tips,.vip_ico,nps_icon_f,.banner_r,.service_introduction, .set_top-1, .set_top_icon, span, .tk_zhuandi_msg');
     </script>
<![endif]-->
	<script type="text/javascript">
		//分地区统计新老版的八大维度

		var getID = function(objName) {
			if (document.getElementById) {
				return eval('document.getElementById("' + objName + '")')
			} else {
				return false
			}
		};

		var chat_url = location.href;

		function init_chaturl() {
			chat_url = chat_url.replace('cnm=', 'flt=');
			chat_url = chat_url.replace('from=art', 'flt=art');
			chat_url = chat_url.replace('from=story', 'flt=story');
			chat_url = chat_url.replace('?t=0&', '?flt=search&');
			chat_url = chat_url.replace('?fr=o&', '?flt=online&');
			chat_url = chat_url.replace('?lt=msgbox', '?flt=msgbox');
			chat_url = chat_url.replace('&t=0&s=', '&flt=search&s=');
			chat_url = chat_url.replace('&fr=o&', '&flt=online&');
		}

		init_chaturl();

		var isIE6 = navigator.userAgent.indexOf("MSIE") > 0 ? (navigator.appVersion
				.match(/6./i) == "6." ? 1 : 0)
				: 0;
		//获取感兴趣的人
		function getInterestedMenbers() {
			var parm = encodeURIComponent('pid:personalmatch_profile|count:6|cachesql:3600|sim_uid:104159755');
			url = 'http://www.jiayuan.com/ajax/interested.php?r='
					+ Math.random() + '&ad_param[]=' + parm;
			ajax(url, '', getInterestedMenbersCallback);
		}

		function getInterestedMenbersCallback(data) {
			if (data) {
				getID('interested').innerHTML = eval(data);
				if (isIE6) {
					DD_belatedPNG.fix('img, .set_top-1, .set_top_icon, span');
				}
			}
			//else alert('请求失败，请重试！');
		}

		function getCommendGift(uid) {
			if (uid)
				ajaxGET('gift_commend',
						'http://www.jiayuan.com/gift_commend.php?uid=' + uid);
		}

		function makecenter(ImgD) {
			if (ImgD.width < 108) {
				ImgD.style.left = (108 - ImgD.width) / 2 + 'px';
			}

			if (ImgD.height < 110) {
				ImgD.style.top = (110 - ImgD.height) / 2 + 'px';
			}
		}

		//出示身份证提示
		function Showtips_sfz() {
			getID("tips_sfz").style.display = "block";
		}
		function Hiddentips_sfz() {
			getID("tips_sfz").style.display = "none";
		}

		function set_agree(_obj) {
			var is_agree = 0;
			var suc_str = '';
			if (_obj.checked == true) {
				is_agree = 1;
				suc_str = '您已选择"我同意第一次见面时出示身份证"。';
				send_jy_pv2('|pro_agree_show_idcard|m|122261858');
			} else {
				suc_str = '您已取消"我同意第一次见面时出示身份证"。';
				send_jy_pv2('|pro_disagree_show_idcard|m|122261858');
			}

			var url = 'http://www.jiayuan.com/ajax/set_agree_showidcard.php?agree='
					+ is_agree;
			ajax(url, '', function(data) {
				if (data == 1) {
					alert(suc_str);
				} else if (data == -1) {
					alert('请登录后进行此项设置.');
				}
			});
		}
		function get_json() {
			var picarr = eval('[' + publish_profile_infos + ']');
			getID("picture").href = picarr[0]['profile_icon']['link_url'];
			getID("picture").style.background = "url("
					+ picarr[0]['profile_icon']['src_url'] + ") no-repeat";
			getID("picture").title = picarr[0]['profile_icon']['explain'];
			getID("picture").innerHTML = picarr[0]['profile_icon']['title'];
			getID("picture").setAttribute(
					"onmousedown",
					"send_jy_pv2('" + picarr[0]['profile_icon']['total_tag']
							+ "');");
		}
	</script>



	<style type="text/css">
.user_scroll_pic .scroll_pic #urer_srcoll_box .img_box .box {
	width: 108px;
	height: 108px;
	background: #f7f7f7;
	border: 1px solid #dcdcdc;
}
</style>
	<!-- 登录弹出开始 -->



	<link type="text/css"
		href="../../resources/css/popupLogin_20110321.css" rel="stylesheet">
	<script src="../../resources/js/popupLogin_v2.js"
		type="text/javascript"></script>
	<script src="../../resources/js/pv.js" type="text/javascript"></script>
	<script type="text/javascript">
		function clear_text(obj) {
			if (obj.value.match(/\//g)) {
				obj.value = "";
			}
		}
		function check_text(obj) {
			if (obj.value == "") {
				obj.value = '注册邮箱/手机号/佳缘ID';
			}
		}
		var base_css_url = 'http://images.jiayuan.com/w4/login/i/dch_2.jpg'

		function popup_count(flag) {
			send_jy_pv2('new_popup_open_' + flag);
		}
	</script>



	<iframe src="" name="login_run" style="display: none" height="0"
		width="0"></iframe>
	<!--alert 1 -->
	<div id="login" style="display: none;">
		<!-- alert 2 -->
		<script language="JavaScript">
		<!--
			loginWindow.onOpen = function() {
				popup_count(2);
			}
		//-->
		</script>
		<div>
			<div class="alert_bg2">
				<div class="clear text_pop_login">
					<a title="close" class="closer"
						onclick="loginWindow.closelogindiv('login');send_jy_pv2('2new_popup_click_close_2');return false;"
						href="#"> </a> <span class="l">老会员登录</span><span class="r">新会员注册</span>
				</div>
				<div class="clear">
					<div class="alert_left">
						<p id="errorInfo" class="red"></p>
						<form target="login_run" action="/login/dologin.php?"
							method="post" id="loginForm" name="loginForm">
							<dl class="login_box pb26 clear">
								<dt>登录帐号：</dt>
								<dd>
									<input value="邮箱/ID/手机号" class="texts gra" name="name"
										onkeyup="loginWindow.onkeyupName(event);"
										onkeydown="if(event.keyCode==9){document.getElementById('login_password').focus(); return false;}"
										onfocus="clear_text(this);this.className='texts';"
										onblur="check_text(this);this.className='texts gra';"
										id="login_email" type="text">
								</dd>
							</dl>
							<dl class="login_box clear">
								<dt>
									密<font color="white">密码</font>码：
								</dt>
								<dd>
									<input class="texts gra"
										onkeyup="loginWindow.onkeyupPass(event);"
										onkeydown="if(event.keyCode==9){document.getElementById('on_sumbit').focus();return false;}"
										id="login_password" autocomplete="off"
										onfocus="this.className='texts';"
										onblur="this.className='texts gra';" name="password"
										type="password">
								</dd>
							</dl>
							<dl class="login_box pt5 clear">
								<dt></dt>
								<dd>
									<span class="check_g"><input id="check_save"
										name="remem_pass" checked="checked" type="checkbox"></span> <span
										class="gray">两周内自动登录</span>
								</dd>
							</dl>
							<dl class="login_box pt13 clear">
								<dt></dt>
								<dd>
									<input onmouseover="this.className='login_btn hov';"
										onmouseout="this.className='login_btn';" value="登 录"
										onclick="loginWindow.dologin();send_jy_pv2('2new_popup_click_submit_2')"
										class="login_btn" type="button"> <span
										class="forget_pw"><a
										href="http://www.jiayuan.com/login/validate.php"
										target="_blank">忘记密码</a></span>
								</dd>
							</dl>
							<input value="1" name="ajaxsubmit" id="ajax" type="hidden">
							<input value="1" name="ljg_login" type="hidden">
						</form>
						<div style="display: block;" id="display_show"
							class="pop_openid clear">
							<span class="l">您也可以用以下方式登录：</span> <span class="r"> <a
								href="http://www.jiayuan.com/general/t/?forward=qqAware&amp;c=11&amp;p=1"
								class="openid_qq pngfix">QQ</a> <a class="openid_weibo pngfix"
								href="http://www.jiayuan.com/general/t/?forward=sinaAware&amp;c=11&amp;p=2">新浪微博</a>
								<a
								href="http://www.jiayuan.com/general/t/?forward=renrenAware&amp;c=11&amp;p=3"
								class="openid_renren pngfix">人人</a> <a
								href="http://www.jiayuan.com/general/t/?forward=baiduOauth&amp;c=11&amp;p=5"
								class="openid_baidu pngfix">百度</a> <a
								href="http://www.jiayuan.com/general/t/?forward=doubanAware&amp;c=11&amp;p=6"
								class="openid_douban pngfix">豆瓣</a> <a
								href="http://www.jiayuan.com/general/t/?forward=kaixinAware&amp;c=11&amp;p=4"
								class="openid_kaixin pngfix">开心</a> <a
								href="http://www.jiayuan.com/general/t/?forward=alipayOauth&amp;c=11&amp;p=7"
								class="openid_alipay pngfix">支付宝</a>
							</span>
						</div>
					</div>
					<div class="alert_right">
						<a class="reg_bg" onclick="send_jy_pv2('2new_popup_click_reg_2');"
							id="reglink" href="http://www.jiayuan.com/register/?bd=14"
							target="_blank">立即注册</a>
					</div>
				</div>
			</div>

		</div>
	</div>

	<script type="text/javascript">
	<!--
		function display_div(data) {
			if (data) {
				document.getElementById("display_show").style.display = "block";
			} else {
				document.getElementById("display_hidden").style.display = "block";
			}
		}
	//-->
	</script>
	<script src="../../resources/html/a.htm" type="text/javascript"></script>




	<script>
		var logo_url = "http://images1.jyimg.com/w4/profile_new/i/logo.jpg";
	</script>
	<!-- <script type="text/javascript" src="../../resources/js/head_white.js"></script> -->
	<script type="text/javascript">
		//会员信息对象
		window.HEAD_USER = {};
		HEAD_USER.uid = 0;
		//通用头功能函数对象
		var jy_head_function = {};
		jy_head_function.in_arry = function(array, value) {//判断value是否在数组array中
			var i = array.length;
			while (i--) {
				if (array[i] === value) {
					return true;
				}
			}
			return false;
		}
		jy_head_function.get_top_domain = function() {//获取顶级域名
			var domain_suffix = [ 'com', 'cn', 'net' ];//域名后缀验证配置，新后缀自行添加
			var host_name = location.hostname.toLowerCase();
			var host_arr = host_name.split('.');
			var host_len = host_arr.length;
			var head_top_domain = '';
			for (var i = host_len - 1; i >= 0; i--) {
				if (this.in_arry(domain_suffix, host_arr[i])) {
					head_top_domain = '.' + host_arr[i] + head_top_domain;
				} else {
					head_top_domain = host_arr[i] + head_top_domain;
					break;
				}
			}
			return head_top_domain;
		};
		jy_head_function.get_userinfo = function() {//获取会员信息
			HEAD_USER.ip_loc = this.get_cookie("ip_loc");//当前会员IP对应的地区
			var profile = this.get_cookie("PROFILE");
			if (profile && profile.length > 10) {
				//说明：0,UID;1,昵称;2,性别;3,头像地址;4,头像标记;5,认证;6,新旧会员标记;7,头像图片名称;8,征友状态;9,俱乐部等级;10,金豆数
				var arr = profile.split(":");
				if (/^\d{7,10}$/.test(arr[0])) {
					HEAD_USER.uid = arr[0];//UID
					HEAD_USER.nickname = decodeURIComponent(arr[1]);//昵称
					HEAD_USER.sex = arr[2];//性别
					HEAD_USER.avatar_flag = arr[4];//头像状态标记
					HEAD_USER.avatar = "http://" + arr[3] + "/" + arr[7];//头像
					HEAD_USER.certify = arr[5];//认证
					HEAD_USER.type = arr[6];//新旧会员标记类型new_msg
					HEAD_USER.status = arr[8];//征友状态
					HEAD_USER.level = '';//俱乐部等级
					HEAD_USER.bean = 0;//俱乐部金豆数
					if (arr.length >= 10) {
						HEAD_USER.level = arr[9];
						HEAD_USER.bean = arr[10];
					}
					HEAD_USER.work_location = 0;
					HEAD_USER.work_sublocation = 0;
					work_loc = this.get_cookie("myloc");
					if (work_loc && work_loc.length > 3) {
						work_loc = work_loc.split("|");
						HEAD_USER.work_location = work_loc[0];//省
						HEAD_USER.work_sublocation = work_loc[1];//市
					}
					HEAD_USER.age = this.get_cookie("myage");//年龄
					HEAD_USER.income = this.get_cookie("myincome");//收入
					HEAD_USER.last_login_time = this
							.get_cookie("last_login_time");//最后登录时间
				}
			}
			return HEAD_USER;
		};
		jy_head_function.get_custom_avatar = function(avatar_url) {//获取小尺寸的头像
			sex = avatar_url.substr(-5);
			sex = sex.substr(0, 1); //获取头像后缀
			var avatar_url_array = new Array();
			if (sex == 'p') { //有头像，获取其他尺寸
				avatar_url_array['avatar_n'] = avatar_url.replace('_p.jpg',
						'_n.jpg');
				avatar_url_array['avatar_s'] = avatar_url.replace('_p.jpg',
						'_s.jpg');
			} else {
				avatar_url_array['avatar_n'] = avatar_url.replace('_' + sex
						+ '.jpg', '_' + sex + '_n.jpg');
				avatar_url_array['avatar_s'] = avatar_url.replace('_' + sex
						+ '.jpg', '_' + sex + '_s.jpg');
			}
			return avatar_url_array;
		};
		jy_head_function.get_channel = function() {//获取频道标识
			host_name = location.hostname.toLowerCase();//当前域名
			var channel_dir_array = Array('/usercp/', '/msg/',
					'/parties/wap_clients/');//频道目录数组
			var head_current_channel = host_name.split('.')[0];//获取二级子域名，处理当前头部选中链接样式
			//域名转换标识
			switch (head_current_channel) {
			case 'www':
				//首页，个人资料页，小龙女频道，爱情测试，我的佳缘（非我的佳缘首页），信件，手机频道
				var head_href = window.location.href; //获取当前URL
				var ch_select = 0; //频道选择标记
				for ( var ch_dir in channel_dir_array) {
					if (channel_dir_array.hasOwnProperty(ch_dir)) {//遍历时限制只遍历自身属性
						if (head_href.indexOf(channel_dir_array[ch_dir]) >= 0) { //根据当前的URL获取频道
							ch_select = 1;
							break;
						}
					}
				}
				if (ch_select == 1) {
					switch (channel_dir_array[ch_dir]) {
					case '/usercp/':
					case '/msg/':
						head_current_channel = 'usercp';
						break;
					case '/parties/wap_clients/':
						head_current_channel = 'mobile';
						break;
					}
				}
				break;
			case 'msg':
				head_current_channel = 'usercp';
				break;
			case 'xingfu':
				head_current_channel = 'love';
				break;
			}
			return head_current_channel;
		};
		jy_head_function.get_cookie = function(c_name) {//获取指定COOKIE内容
			if (document.cookie.length > 0) {
				c_start = document.cookie.indexOf(c_name + "=");
				if (c_start != -1) {
					c_start = c_start + c_name.length + 1;
					c_end = document.cookie.indexOf(";", c_start);
					if (c_end == -1) {
						c_end = document.cookie.length;
					}
					return decodeURIComponent(document.cookie.substring(
							c_start, c_end));
				}
			}
			return null;
		};
		jy_head_function.format_tpl = function(tpl) {//格式化替换输出导航信息
			for (key in common_nav_array) {
				if (common_nav_array.hasOwnProperty(key)) {
					tpl = tpl.replace(eval("/\{" + key + "\}/g"),
							common_nav_array[key]);
				}
			}
			return tpl;
		};
		jy_head_function.format_date = function(t) {//时间戳转换标准日期格式
			var t = new Date(t * 1000);//JS时间戳是毫秒单位
			var year = t.getFullYear();
			var month = t.getMonth() + 1;
			var date = t.getDate();
			var hour = t.getHours();
			var minute = t.getMinutes();
			var second = t.getSeconds();
			return year + "-" + month + "-" + date + " " + hour + ":" + minute
					+ ":" + second;
		};
		jy_head_function.list = function(obj) {//查看对象、数组所有的属性和方法
			var properties = "";
			for ( var p in obj) { //开始遍历
				if (obj.hasOwnProperty(p)) {
					if (typeof (obj[p]) == " function ") {
						obj[p]();
					} else { //p为属性名称，obj[p]为对应属性的值
						properties += p + " = " + obj[p] + "\r\n";
					}
				}
			}
			return properties;
		};
		jy_head_function.set_head_nav_link = function(v) {//设置导航链接显示的状态
			if (v == 'show' || v == 1) {
				if (document.getElementById('head_white_nav')) {
					document.getElementById('head_white_nav').style.display = "inline";
					document.getElementById('head_white_logo').style.background = 'url('
							+ common_nav_array['img_url']
							+ 'w4/common/i/head/jycm_zt_vline.png) no-repeat top right';
				} else if (document.getElementById('head_red_simple_nav')) {
					document.getElementById('head_red_simple_nav').style.display = "";
				} else if (document.getElementById('head_blue_simple_nav')) {
					document.getElementById('head_blue_simple_nav').style.display = "";
				}
			} else if (v == 'hide' || v == 0) {
				if (document.getElementById('head_white_nav')) {
					document.getElementById('head_white_nav').style.display = "none";
					document.getElementById('head_white_logo').style.background = 'none';
				} else if (document.getElementById('head_red_simple_nav')) {
					document.getElementById('head_red_simple_nav').style.display = "none";
				} else if (document.getElementById('head_blue_simple_nav')) {
					document.getElementById('head_blue_simple_nav').style.display = "none";
				}
			}
		};
		jy_head_function.set_head_nav_user = function(v) {//设置导航用户信息显示的状态
			if (v == 'show' || v == 1) {
				if (document.getElementById('head_white_user')) {
					document.getElementById('head_white_user').style.display = "inline";
				} else if (document.getElementById('head_red_simple_user')) {
					document.getElementById('head_red_simple_user').style.display = "";
				} else if (document.getElementById('head_blue_simple_user')) {
					document.getElementById('head_blue_simple_user').style.display = "";
				}
			} else if (v == 'hide' || v == 0) {
				if (document.getElementById('head_white_user')) {
					document.getElementById('head_white_user').style.display = "none";
				} else if (document.getElementById('head_red_simple_user')) {
					document.getElementById('head_red_simple_user').style.display = "none";
				} else if (document.getElementById('head_blue_simple_user')) {
					document.getElementById('head_blue_simple_user').style.display = "none";
				}
			}
		};
		jy_head_function.set_head_title = function(title) {//修改导航头部标题部分
			if (document.getElementById('head_blue_simple')) {
				document.getElementById('head_blue_simple').innerHTML = title;
				document.getElementById('head_blue_simple').style.display = "";
			} else if (document.getElementById('head_red_simple')) {
				document.getElementById('head_red_simple').innerHTML = title;
				document.getElementById('head_red_simple').style.display = "";
			}
		};
		jy_head_function.strlen_ch = function(str) {//返回字符串长度，英文1，汉字2
			var real_length = 0, len = str.length, char_code = -1;
			for (var i = 0; i < len; i++) {
				char_code = str.charCodeAt(i);
				if (char_code >= 0 && char_code <= 128)
					real_length += 1;
				else
					real_length += 2;
			}
			return real_length;
		};
		jy_head_function.substr_ch = function(str, cut_len) {//截取指定长度的字符串，英文1，汉字2
			var real_length = 0, s = "", len = str.length, char_code = -1;
			for (var i = 0; i < len; i++) {
				char_code = str.charCodeAt(i);
				if (char_code >= 0 && char_code <= 128) {
					real_length++;
				} else {
					real_length += 2;
				}
				s += str.charAt(i);
				if (real_length >= cut_len) {
					return s;
				}
			}
			return s;
		};
		jy_head_function.click_pv = function(head_nav_flag) {//通用头自定义的小图片统计方法
			var head_navf_url = "http://pv2.jyimg.com/any/";
			var head_navArr = [ "a", "b", "c", "d", "e", "f", "g", "h", "i",
					"g", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u",
					"v", "x", "y", "z" ];
			var head_navn = Math.floor(Math.random() * head_navArr.length + 1) - 1;
			var head_navurl = head_navf_url + head_navArr[head_navn] + ".gif?|"
					+ head_nav_flag + "|" + new Date().getTime() + "|";
			var head_navsender = new Image();
			head_navsender.onload = function() {
				head_navclear(this);
			};
			head_navsender.onerror = function() {
				head_navclear(this);
			};
			head_navsender.onabort = function() {
				head_navclear(this);
			};
			head_navsender.src = head_navurl;
			function head_navclear(obj) {
				obj.onerror = null;
				obj.onload = null;
				obj.onabort = null;
				obj = null;
			}
		};
		//获取会员登录信息
		jy_head_function.get_userinfo();

		//导航配置
		var jy_img_domain = 'mi' + 'uu.' + 'cn';//图片顶级域名
		var jy_top_domain = jy_head_function.get_top_domain();//佳缘站全站顶级域名
		var izx_top_domain = 'izhenxin.dev';//爱真心等级域名
		if (jy_top_domain == '' || jy_top_domain == 'jiayuan.com') {
			jy_top_domain = 'jiayuan.com';
			jy_img_domain = 'jyimg.com';
			izx_top_domain = 'izhenxin.com';
		}
		//配置域名链接
		var common_nav_array = new Array();
		common_nav_array['www_tag'] = "首页"; //标签名
		common_nav_array['www_url'] = "http://www." + jy_top_domain + "/"; //链接
		common_nav_array['www_css'] = ""; //指定样式
		common_nav_array['www_sta'] = "|head_navigation_www|"; //点击统计标识
		common_nav_array['usercp_tag'] = "我的佳缘";
		common_nav_array['usercp_url'] = "http://usercp." + jy_top_domain + "/";
		common_nav_array['usercp_css'] = "";
		common_nav_array['usercp_sta'] = "|head_navigation_usercp|";
		common_nav_array['club_tag'] = "俱乐部";
		common_nav_array['club_url'] = "http://www." + jy_top_domain + "/club/";
		common_nav_array['club_css'] = "";
		common_nav_array['club_sta'] = "|head_navigation_club|";
		common_nav_array['search_tag'] = "搜索";
		common_nav_array['search_url'] = "http://search." + jy_top_domain
				+ "/v2/";
		common_nav_array['search_css'] = "";
		common_nav_array['search_sta'] = "|head_navigation_search|";
		common_nav_array['new_tag'] = "新会员";
		common_nav_array['new_url'] = "http://search." + jy_top_domain
				+ "/v2/new.php";
		common_nav_array['new_css'] = "";
		common_nav_array['new_sta'] = "|head_navigation_new|";
		common_nav_array['online_tag'] = "聊天";
		common_nav_array['online_url'] = "http://search." + jy_top_domain
				+ "/v2/online.php";
		common_nav_array['online_css'] = "";
		common_nav_array['online_sta'] = "|head_navigation_online|";
		common_nav_array['party_tag'] = "活动";
		common_nav_array['party_url'] = "http://party." + jy_top_domain + "/";
		common_nav_array['party_css'] = "";
		common_nav_array['party_sta'] = "|head_navigation_party|";
		common_nav_array['diary_tag'] = "两性";
		common_nav_array['diary_url'] = "http://diary." + jy_top_domain + "/";
		common_nav_array['diary_css'] = "";
		common_nav_array['diary_sta'] = "|head_navigation_diary|";
		common_nav_array['caipiao_tag'] = "彩票";
		common_nav_array['caipiao_url'] = "http://caipiao." + jy_top_domain
				+ "/";
		common_nav_array['caipiao_css'] = "";
		common_nav_array['caipiao_sta'] = "|head_navigation_caipiao|";
		common_nav_array['game_tag'] = "游戏";
		common_nav_array['game_url'] = "http://game." + jy_top_domain + "/";
		common_nav_array['game_css'] = "";
		common_nav_array['game_sta'] = "|head_navigation_game|";
		common_nav_array['love_tag'] = "晒幸福";
		common_nav_array['love_url'] = "http://love." + jy_top_domain + "/";
		common_nav_array['love_css'] = "";
		common_nav_array['love_sta'] = "|head_navigation_love|";
		common_nav_array['paper_tag'] = "爱情测试";
		common_nav_array['paper_url'] = "http://www." + jy_top_domain
				+ "/paper/";
		common_nav_array['paper_css'] = "";
		common_nav_array['paper_sta'] = "|head_navigation_paper|";
		common_nav_array['master_tag'] = "斑竹小龙女";
		common_nav_array['master_url'] = "http://www." + jy_top_domain
				+ "/master/";
		common_nav_array['master_css'] = "";
		common_nav_array['master_sta'] = "|head_navigation_master|";
		common_nav_array['reg_tag'] = "注册";
		common_nav_array['reg_url'] = "http://reg." + jy_top_domain + "/";
		common_nav_array['reg_css'] = "";
		common_nav_array['reg_sta'] = "|head_navigation_reg|";
		common_nav_array['login_tag'] = "登录";
		common_nav_array['login_url'] = "http://login." + jy_top_domain + "/";
		common_nav_array['login_css'] = "";
		common_nav_array['login_sta'] = "|head_navigation_login|";
		common_nav_array['liehun_tag'] = "红娘一对一";
		common_nav_array['liehun_url'] = "http://vip." + jy_top_domain + "/";
		common_nav_array['liehun_css'] = "";
		common_nav_array['liehun_sta'] = "|head_navigation_liehun|";
		common_nav_array['izhenxin_tag'] = "爱真心";
		common_nav_array['izhenxin_url'] = "http://www." + izx_top_domain
				+ "/login/getSign/?url=http%3A%2F%2Fwww." + jy_top_domain
				+ "%2Fusercp%2Fiz_login.php%3Furl%3Dhttp%253A%252F%252Fwww."
				+ izx_top_domain + "%252F&from=JYDH";
		common_nav_array['izhenxin_css'] = "";
		common_nav_array['izhenxin_sta'] = "|head_navigation_izhenxin|";
		common_nav_array['extend_tag'] = "爱真心";
		common_nav_array['extend_url'] = "http://www." + izx_top_domain
				+ "/login/getSign/?url=http%3A%2F%2Fwww." + jy_top_domain
				+ "%2Fusercp%2Fiz_login.php%3Furl%3Dhttp%253A%252F%252Fwww."
				+ izx_top_domain + "%252F&from=top"
		common_nav_array['extend_url2'] = "http://www." + izx_top_domain
				+ "/login/getSign/?url=http%3A%2F%2Fwww." + jy_top_domain
				+ "/usercp/iz_login.php&from=top";
		common_nav_array['extend_url3'] = "http://www." + izx_top_domain
				+ "/register/landingpagetw";
		common_nav_array['extend_css'] = "";
		common_nav_array['extend_sta'] = "|head_navigation_mobile|";
		common_nav_array['im_tag'] = "佳缘佳信";
		common_nav_array['im_url'] = "http://im." + jy_top_domain + "/";
		common_nav_array['im_css'] = "";
		common_nav_array['im_sta'] = "|head_navigation_im|";
		common_nav_array['img_url'] = "http://images1." + jy_img_domain + "/";

		var mydomain = "www." + jy_top_domain;//拼完整www域名

		var current_nav_flag = jy_head_function.get_channel() + '_css';
		//设置当前频道导航选中样式
		common_nav_array[current_nav_flag] = 'head_nav_cur';
	</script>
	<script type="text/javascript"
		src="../../resources/js/jiayuan_logo_config.js"></script>
	<script type="text/javascript" src="../../resources/js/JY_Alert.js"></script>
	<!--[if lte IE 6]>
<script type="text/javascript" src="http://images1.jyimg.com/w4/common/j/DD_belatedPNG_0.0.8a_IE6.js"></script>
<![endif]-->
	<style type="text/css">
@charset "utf-8";

#head_white_css {
	height: 50px;
	background:
		url(http://images1.jyimg.com/w4/common/i/head/jycm_zt_nav.png)
		repeat-x left top
}

#head_white_css .jycm_zt_nav_main {
	width: 970px;
	margin: 0px auto
}

#head_white_css .jycm_zt_logo {
	margin: 0;
	padding: 0;
	width: 153px;
	display: inline;
	float: left;
	background:
		url(http://images1.jyimg.com/w4/common/i/head/jycm_zt_vline.png)
		no-repeat top right
}

#head_white_css .jycm_zt_logo img {
	border: none
}

#head_white_css ul.jycm_zt_nav_list {
	margin: 0;
	padding: 0;
	list-style-type: none;
	display: inline;
	float: left;
	padding: 18px 0 0 6px
}

#head_white_css ul.jycm_zt_nav_list li {
	display: inline;
	float: left;
	padding: 0 7px 0 9px;
	line-height: 14px;
	background:
		url(http://images1.jyimg.com/w4/common/i/head/jycm_zt_vline2.png)
		no-repeat left 2px
}

#head_white_css ul.jycm_zt_nav_list li.first {
	background: none
}

#head_white_css ul.jycm_zt_nav_list li a {
	font-size: 12px;
	color: #666;
	text-decoration: none
}

#head_white_css ul.jycm_zt_nav_list li a:hover {
	text-decoration: underline
}

#head_white_css ul.jycm_zt_nav_list li.head_nav_cur a {
	font-weight: bold
}

#head_white_css ul.jycm_zt_nav_list li a:hover {
	text-decoration: underline
}

#head_white_css div.jycm_zt_login {
	display: inline;
	float: right;
	padding: 18px 0 0 0;
	font-size: 12px;
	line-height: 14px;
	color: #666
}

#head_white_css div.jycm_zt_login a {
	font-size: 12px;
	color: #0066cc;
	text-decoration: none
}

#head_white_css .head_white_css {
	_text-align: center
}

#head_white_css .head_white_css .jycm_zt_nav_main {
	_text-align: center
}
</style>
	<div id="head_white_css">
		<div class="jycm_zt_nav_main">
			<h1 class="jycm_zt_logo" id="head_white_logo">
				<a href="http://www.jiayuan.com/"><img
					src="../../resources/img/jycm_zt_logo.png"></a>
			</h1>
			<ul class="jycm_zt_nav_list" id="head_white_nav" style="">
				<li class="first"><a href="http://www.jiayuan.com/"
					onclick="jy_head_function.click_pv('|head_navigation_www|');"
					target="_blank">首页</a></li>
				<li><a href="http://usercp.jiayuan.com/"
					onclick="jy_head_function.click_pv('|head_navigation_usercp|');"
					target="_blank">我的佳缘</a></li>
				<li><a href="http://www.jiayuan.com/club/"
					onclick="jy_head_function.click_pv('|head_navigation_club|');"
					target="_blank">俱乐部</a></li>
				<li><a href="http://search.jiayuan.com/v2/"
					onclick="jy_head_function.click_pv('|head_navigation_search|');"
					target="_blank">搜索</a></li>
				<li><a href="http://search.jiayuan.com/v2/new.php"
					onclick="jy_head_function.click_pv('|head_navigation_new|');"
					target="_blank">新会员</a></li>
				<li><a href="http://search.jiayuan.com/v2/online.php"
					onclick="jy_head_function.click_pv('|head_navigation_online|');"
					target="_blank">聊天</a></li>
				<!--<li><a href="http://party.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_party|');" target="_blank">活动</a></li>
<li><a href="http://diary.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_diary|');" target="_blank">两性</a></li>-->
				<li><a href="http://caipiao.jiayuan.com/"
					onclick="jy_head_function.click_pv('|head_navigation_caipiao|');"
					target="_blank">彩票</a></li>
				<li><a href="http://game.jiayuan.com/"
					onclick="jy_head_function.click_pv('|head_navigation_game|');"
					target="_blank">游戏</a></li>
				<li><a href="http://love.jiayuan.com/"
					onclick="jy_head_function.click_pv('|head_navigation_love|');"
					target="_blank">晒幸福</a></li>
				<li><a href="http://vip.jiayuan.com/"
					onclick="jy_head_function.click_pv('|head_navigation_liehun|');"
					target="_blank">红娘一对一</a></li>
				<li><a
					href="http://www.izhenxin.com/login/getSign/?url=http%3A%2F%2Fwww.jiayuan.com%2Fusercp%2Fiz_login.php%3Furl%3Dhttp%253A%252F%252Fwww.izhenxin.com%252F&amp;from=JYDH"
					onclick="jy_head_function.click_pv('|head_navigation_izhenxin|');"
					target="_blank">爱真心</a></li>
			</ul>
			<div class="jycm_zt_login" id="head_white_user">
				老公&nbsp;|&nbsp;<a href="http://login.jiayuan.com/logout2.php">退出</a>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		document.getElementById('head_white_nav').innerHTML = jy_head_function
				.format_tpl(document.getElementById('head_white_nav').innerHTML); //导航信息
		document.getElementById('head_white_nav').style.display = "";
		if (HEAD_USER.uid > 0) {
			var loginstr = HEAD_USER.nickname
					+ '&nbsp;|&nbsp;<a href="'+common_nav_array['login_url']+'logout2.php">退出</a>';
		} else {
			var pre_url = document.location.href;
			var loginstr = '<a href="'
					+ common_nav_array['login_url']
					+ '?channel=200&position=204&pre_url='
					+ encodeURIComponent(pre_url)
					+ '" onclick="jy_head_function.click_pv(\'|head_navigation_login|\');">登录</a>&nbsp;|&nbsp;<a href="'
					+ common_nav_array['reg_url']
					+ '?bd=212" class="link" onclick="jy_head_function.click_pv(\'|head_navigation_reg|\');" target="_blank">注册</a>';
		}
		document.getElementById('head_white_user').innerHTML = loginstr;
	</script>
	<!-- released time 2014-09-28 12:41:56 -->

	<div id="bg" style="display: none; width: 1263px; height: 2321px;"></div>
	<!-- head end -->
	<div class="cont">
		<div class="cont_tm"></div>
		<!-- service pop  -->
		<div id="em_kxby12" class="service_introduction"
			style="display: none;">
			原价<strong style="text-decoration: line-through;">1568</strong>元，现价<strong>498</strong>元，现在购买，赠送：12个月VIP会员+12个月聊天包月（价值300元）
		</div>
		<div id="em_kxby06" class="service_introduction"
			style="display: none;">
			原价<strong style="text-decoration: line-through;">998</strong>元，现价<strong>398</strong>元，
			现在购买，赠送：6个月VIP会员+ 6个月聊天包月（价值160元）
		</div>
		<div id="em_kxby03" class="service_introduction" style="display: none">
			原价<strong style="text-decoration: line-through;">598</strong>元，现价<strong>298</strong>元，
			现在购买，赠送：3个月VIP会员+ 3个月聊天包月（价值84元）
		</div>
		<div id="em_kxby01" class="service_introduction" style="display: none">
			原价<strong style="text-decoration: line-through;">268</strong>元，现价<strong>198</strong>元，
			现在购买，赠送：1个月VIP会员+ 1个月聊天包月（价值32元）
		</div>
		<!-- service pop end -->
		<div class="main e_clear">
			<!-- skin -->
			<div id="skin_access">
				<div style="display: none;" id="skin_link">
					<div class="hov_yz"></div>
					<!--<a href="http://show.jiayuan.com/" target="_blank" onmousedown="send_jy_pv2('|1000373_31|');" class="gxzb_btn">个性装份</a>-->
				</div>
				<script type="text/javascript">
					getID('skin_link').style.display = 'none';
				</script>
			</div>
			<!-- skin end -->
			<!--main_left start-->
			<div class="main_left">
				<div class="tips_sfz" style="display: none" id="tips_sfz"
					onmouseover="Showtips_sfz();" onmouseout="Hiddentips_sfz();">
					<strong>见面出示身份证</strong>
					<p>
						选择第一次见面出示身份证，彰显诚信，赢得更多青睐，获得更多来信！<br>
						<a href="http://www.jiayuan.com/parties/2010/id_card/"
							target="_blank">查看佳缘会员对“第一次见面时出示身份证”的投票结果&gt;&gt;</a><br>
						<input name="" value="" onclick="set_agree(this);" type="checkbox">&nbsp;我同意第一次见面出示身份证
					</p>
				</div>
				<div class="nav e_clear">
					<p>
						<a href="http://www.jiayuan.com/104159755?n=1"
							onmousedown="send_jy_pv2('|nextPersonV1|');">下一个我感兴趣的人&gt;&gt;</a>
					</p>
					<ul class="e_clear">
						<li class="firston"><span><a href="javascript:;">基本信息</a></span></li>
						<li><span><a
								onclick="openWindow('','','http://www.jiayuan.com/usercp/photo_scyd_tc.php?tc_type=1&amp;touid=104159755',572,222);return false;"
								href="javascript:;" onmousedown="send_jy_pv2('|navPhotoV1|');">我的照片(6)</a></span></li>
						<li><span><a
								href="http://www.jiayuan.com/more_gift.php?uid=104159755&amp;fxly=cp-eexpress"
								target="_blank" onmousedown="send_jy_pv2('|navGiftV1|');">我的礼物(2)</a></span></li>
					</ul>
				</div>
				<!--user_conent start-->
				<div class="user_conent e_clear">
					<!--user_left start-->
					<div class="user_left">
						<!-- dress avatar -->
						<!-- dress avatar end -->
						<div class="user_operation">
							<div class="user_pic">
								<span class="head_label"> <a
									href="http://case.jiayuan.com/face/?s=0&amp;url=http://a1.jyimg.com/44/4b/ec534301f3a4a313b205115b3b71/ec534301f_avatar_p.jpg&amp;fr=profile&amp;sex=f"
									target="_blank">找像她的人</a>
								</span> <a target="_blank" id="profile_avatar_scyd"
									onmousedown="send_jy_pv2('|avatarV1|')" href="javascript:;"><img
									src="../../resources/img/ec534301f_avatar_p.jpg"></a>
							</div>
							<div class="fly_degrees">
								<p>
									<i></i><a href="javascript:;"
										onclick="openWindow('','','http://www.jiayuan.com/profile/reliable.php?uid=104159755',570,390);"
										onmousedown="send_jy_pv2('|1011197_0|122261858');">[靠谱度查询]</a>
								</p>
								<div class="fly_layer">
									TA靠谱吗？查一下！<a class="fly-close" href="javascript:;"
										onclick="this.parentNode.style.display='none'; return false;"></a>
								</div>
							</div>
							<p class="user_id">佳缘ID：104159755</p>
							<ul>
								<li><a
									href="javascript:openWindowById('open_commend',400);"
									onmousedown="send_jy_pv2('|sendToFriendV1|');"><img
										src="../../resources/img/operation_icon2.png">推荐给好友</a></li>
								<li><a href="http://vip.jiayuan.com/signup.php"
									target="_blank" onmousedown="send_jy_pv2('U_wyzh')"><img
										src="../../resources/img/opera_vip.png">今天我征婚</a></li>
								<li class="last"><img
									src="../../resources/img/operation_icon6.png">最后登录时间：
									<p>
										<a href="javascript:;"
											onclick=" openWindow('','','http://www.jiayuan.com/usercp/service/vip_tstc.php?type=1&amp;to_uid=104159755',600,358); "
											onmousedown="send_jy_pv2('|lastLoginV1|');">点击查看</a>
									</p></li>

								<li><a
									href="http://www.jiayuan.com/complain/inform_photo.php?uid=104159755"
									target="_blank"><img
										src="../../resources/img/operation_icon7.png">举报盗用名人照片</a></li>

							</ul>
						</div>

						<div class="user_gift e_clear">
							<h2>
								<ul class="e_clear">
									<li class="on" id="gift1" onmouseover="tab('gift','1','2')">
										礼物</li>
									<li class="last " id="gift2" onmouseover="tab('gift','2','2')">许愿盒</li>
								</ul>
							</h2>
							<div class="gift_content" id="giftCon1">
								<ul class="e_clear">
									<li>
										<div class="gift_title">
											<p>一起看贺岁片</p>
											<p>魅力值20点</p>
										</div>
										<div class="">
											<img src="../../resources/img/1354761689.gif"
												onclick="openWindow('','','http://gift.jiayuan.com/send_gift.php?uid=104159755&amp;gid=1077',610,610);"
												style="cursor: pointer" height="60" width="60"><span></span>
										</div>
									</li>
									<li>
										<div class="gift_title">
											<p>爱情储蓄罐</p>
											<p>魅力值20点</p>
										</div>
										<div class="">
											<img src="../../resources/img/1354764191.gif"
												onclick="openWindow('','','http://gift.jiayuan.com/send_gift.php?uid=104159755&amp;gid=1081',610,610);"
												style="cursor: pointer" height="60" width="60"><span></span>
										</div>
									</li>
								</ul>
							</div>
							<div class="gift_content" id="giftCon2" style="display: none;">
								<p class="gift_none">
									<a href="javascript:;"
										onclick="openWindow('','','http://gift.jiayuan.com/send_gift.php?uid=104159755',610,610);"
										onmousedown="send_jy_pv2('|buttonGiftUpV1|');"><img
										src="../../resources/img/wish_none.gif"></a>
								</p>
								<p class="more e_clear">
									<font color="black">她还未来得及许愿，挑选礼物赢得好感吧！</font><a
										href="javascript:;"
										onclick="openWindow('','','http://gift.jiayuan.com/send_gift.php?uid=104159755',610,610);"
										onmousedown="send_jy_pv2('|buttonGiftUpV1|');">送礼物&gt;&gt;</a>
								</p>
							</div>
						</div>

						<div class="user_gift e_clear">
							<style>
.mapText {
	padding: 8px 0 8px 5px;
	text-align: left;
	width: 120px;
	margin: 0 auto;
}

.mapText a {
	color: #06f;
	text-decoration: underline;
}
</style>
							<h2>我的地图</h2>
							<div class="gift_content" id="mapCon1">
								<div
									style="padding-left: 5px; padding-top: 5px; color: #666; margin-bottom: 5px;">我还没标注位置</div>
								<a
									href="http://www.jiayuan.com/map/result.php?from=profile&amp;uid=104159755"
									target="_blank" onmousedown="send_jy_pv2('|220167_4|');"><img
									src="../../resources/img/inMap.gif"></a>
							</div>
							<div class="gift_content" id="mapCon2" style="display: none;">
								<p class="mapText">
									<a href="http://www.jiayuan.com/map/citydate/index.php?cid="
										target="_blank" onmousedown="send_jy_pv2('|220341_22|');"></a>
								</p>
								<p>
									<a href="http://www.jiayuan.com/map/citydate/index.php?cid="
										target="_blank" onmousedown="send_jy_pv2('|220341_21|');"><img
										src="../../resources/img/map_.jpg" alt="" height="100"
										width="120"></a>
								</p>
							</div>
						</div>


						<div class="complaints">
							<h2>投诉</h2>
							<div class="complaints_content">
								<p>若您发现此会员有交友动机不纯、故意中伤、侮辱、提供虚假资料、散布广告等恶劣行为</p>
								<a
									href="http://www.jiayuan.com/complain/?uid_hash=44ec534301f3a4a313b205115b3b714b&amp;old=1"
									target="_blank">请向网站投诉 &gt;&gt;</a>
							</div>
						</div>

						<style type="text/css">
.jy-attention {
	position: absolute;
	left: -1px;
	border: 1px solid #ccc;
	padding: 8px;
	width: 143px;
}

.jy-attention h3 {
	font-weight: bold;
	text-align: left;
	font-size: 12px;
	line-height: 1;
	color: #333;
	border-bottom: 1px solid #e5e5e5;
	padding-bottom: 7px;
}

.jy-attention .con {
	padding-top: 10px;
}

.jy-attention .con .l {
	float: left;
	margin-right: 8px;
}

.jy-attention .con .r {
	float: left;
}

.jy-attention .con .r-c {
	display: none;
	position: absolute;
	left: 0px;
	top: 64px;
	width: 159px;
	background-color: #e1e2e6;
	text-align: center;
	padding-top: 8px;
	padding-bottom: 5px;
}

.jy-attention .con .r-c p {
	color: #666;
	line-height: 14px;
	padding-top: 5px;
}
</style>
						<div>
							<h2>关注世纪佳缘</h2>
							<div class="jy-attention">
								<div class="con fn-clear">
									<!--     shanf -->
									<!--     	<div class="l"> -->
									<!-- 			<iframe scrolling="no" src="../../resources/html/followbutton.htm" border="0" marginheight="0" marginwidth="0" allowtransparency="true" frameborder="0" height="24" width="63"></iframe> -->
									<!--         </div> -->
									<div class="r" id="weixin_r">
										<img src="../../resources/img/wx.png" alt="" height="25"
											width="72">
									</div>
									<div class="r-c" id="weixin_r_c">
										<img src="../../resources/img/er.png" alt="" height="147"
											width="147">
										<p>微信扫描</p>
										<p>添加世纪佳缘官方微信</p>
									</div>
								</div>
							</div>
						</div>
						<script type="text/javascript">
							var IframeOnClick = {
								resolution : 200,
								iframes : [],
								interval : null,
								Iframe : function() {
									this.element = arguments[0];
									this.cb = arguments[1];
									this.hasTracked = false;
								},
								track : function(element, cb) {
									this.iframes.push(new this.Iframe(element,
											cb));
								},
								doit : function() {
									setInterval(function() {
										IframeOnClick.checkClick();
									}, this.resolution);
								},
								checkClick : function() {
									if (document.activeElement) {
										var activeElement = document.activeElement;
										for ( var i in this.iframes) {
											if (activeElement === this.iframes[i].element) { // user is in this Iframe
												if (this.iframes[i].hasTracked == false) {
													this.iframes[i].cb.apply(
															activeElement, []);
													this.iframes[i].hasTracked = true;
												}
											} else {
												this.iframes[i].hasTracked = false;
											}
										}
									}
								}
							};
							jQuery(function() {
								var allframe = document
										.getElementsByTagName('iframe');
								for (i = 0; i < allframe.length; i++) {
									if (allframe[i].src.substr(0, 24) == 'http://widget.weibo.com/') {
										IframeOnClick.track(allframe[i],
												function() {
													send_jy_pv2('|1014290_0|');
												});
									}
								}
								IframeOnClick.doit();
							});

							jQuery(function() {
								jQuery(".jy-attention .r").hover(function() {
									jQuery(".jy-attention .r-c").show();
								}, function() {
									jQuery(".jy-attention .r-c").hide();
								});
							});
						</script>
					</div>
					<!--user_left end-->
					<!--user_right start-->
					<div class="user_right">
						<!--my_information start-->
						<div class="my_information">
							<div class="charm e_clear" onclick="javascript:;"
								onmousedown="send_jy_pv2('|charmIndexV1|');">
								<table border="0" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td><p class="text">
													<a href="http://www.jiayuan.com/meilistar" target="_blank">101</a>
												</p></td>
										</tr>
										<tr>
											<td><p class="charm_tips">魅力</p></td>
										</tr>
									</tbody>
								</table>
							</div>
							<style>
.my_information h1 span {
	float: left;
	padding: 0 22px;
	clear: none;
}

.my_information h1 span.liaotian_con {
	padding: 10px 0 0;
}

.my_information h1 a.tk_zhuandi_btn {
	width: 92px;
	height: 31px;
	background: url(http://images1.jyimg.com/w4/msgapp/ems/i/tkzd_new.png)
		no-repeat;
	float: left;
	margin-top: 3px;
	padding-left: 0;
}

.tk_zhuandi_r {
	position: relative;
	float: left;
	width: 1px;
}

.tk_zhuandi_msg {
	width: 167px;
	height: 104px;
	background:
		url(http://images1.jyimg.com/w4/msgapp/ems/i/tkzd_new_tc.png)
		no-repeat;
	position: absolute;
	top: -92px;
	left: 75px;
	cursor: default;
}

.tk_zhuandi_close {
	cursor: pointer;
	position: absolute;
	top: 3px;
	right: 22px;
	width: 20px;
	height: 20px;
}
</style>
							<script type="text/javascript">
								//添加cookie
								function addCookie(objName, objValue, objHours) {
									var str = objName + "=" + escape(objValue);
									if (objHours > 0) {//为0时不设定过期时间，浏览器关闭时cookie自动消失
										var date = new Date();
										var ms = objHours;
										date.setTime(date.getTime() + ms);
										str += "; expires="
												+ date.toGMTString();
									}
									document.cookie = str;
								}
								//获取指定名称的cookie的值
								function getCookie(objName) {
									var arrStr = document.cookie.split("; ");
									for (var i = 0; i < arrStr.length; i++) {
										var temp = arrStr[i].split("=");
										if (temp[0] == objName)
											return unescape(temp[1]);
									}
									return '';
								}
								//判断是否显示特快专递的弹层
								window.onload = function() {
									if (getCookie("tkzd_122261858") != 'happy') {
										var myDate = new Date();
										var now_hours = myDate.getHours();
										var now_minutes = myDate.getMinutes();
										var now_seconds = myDate.getSeconds();
										var cookies_time = ((24 - now_hours)
												* 3600 - now_minutes * 60 - now_seconds) * 1000;
										addCookie('tkzd_122261858', 'happy',
												cookies_time);
										getID('tk_zhuandi_msg').style.display = '';
									}
								}
								//关闭特快专递弹层
								function close_tk_zhuangdi_tc() {
									getID('tk_zhuandi_msg').style.display = 'none';
								}
							</script>
							<h1 class="e_clear" style="position: relative;">
								<span>${operatingUser.nickname}</span>
								<div class="tk_zhuandi_r">
									&nbsp;
									<div class="tk_zhuandi_msg" id="tk_zhuandi_msg"
										style="display: none;">
										<div class="tk_zhuandi_close"
											onclick="close_tk_zhuangdi_tc();"></div>
									</div>
								</div>
								<a id="picture"
									href="http://www.jiayuan.com/parties/2012/dafuweng/"
									style="text-indent: -9999px; overflow: hidden; display: block; width: 32px; height: 32px; position: absolute; top: 8px; left: 0px; background: url(&quot;http://images1.jyimg.com/w4/parties/2012/dafuweng/i/shaizi.gif&quot;) no-repeat scroll 0% 0% transparent;"
									title="做大富翁！赢大奖！" target="_blank"
									onmousedown="send_jy_pv2('|1003562_8|');">爱情大富翁</a> <a
									target="_blank"
									href="http://www.jiayuan.com/msgapp/ems/?uid_hash=44ec534301f3a4a313b205115b3b714b&amp;from=profile"
									class="tk_zhuandi_btn"></a>
							</h1>
							<script type="text/javascript">
								get_json();
							</script>

							<dl class="e_clear">
								<dt>会员身份：</dt>
								<dd>普通会员</dd>
							</dl>
							<dl class="e_clear">
								<dt>诚信等级：</dt>
								<dd>
									<ul id="levellayer">
										<li>无，建议您优先联系提交过身份证明的会员</li>
										<li><a
											href="javascript:openWindow('','','http://www.jiayuan.com/about.php',560,610)">[说明]</a></li>
									</ul>
								</dd>
							</dl>
							<h2>
								<a href="#detail" onmousedown="send_jy_pv2('|detailV1|');">查看详细信息&gt;&gt;</a>女，${operatingUser.age}岁，${operatingUser.constellation}，${operatingUser.address}
							</h2>
							<ul class="details">
								<li class="e_clear"><span class="w100"><b>身高：</b>${operatingUser.height}</span><span
									class="w160"><b>学历：</b>${operatingUser.education}</span><span
									class="w100"><b>婚姻：</b>未婚</span><span class="w140"><b>月薪：</b>${operatingUser.salary}</span></li>
								<li class="e_clear"><span class="w100"><b>民族：</b>汉族</span><span
									class="w160"><b>职业：</b>设计/创意</span><span class="w100"><b>购车：</b>暂未购车</span><span
									class="w140"><b>住房：</b>独自租房</span></li>
							</ul>
							<!-- JiaThis Button BEGIN -->
							<div class="e_clear" id="share_box">
								<div id="ckepop" class="ckepop">
									<span class="jiathis_txt">分享：</span> <span class="share_img"
										id="share_img"><img
										src="../../resources/img/share_new.gif"></span>
									<div class="tips" id="share_tips" style="display: none">
										<div class="tips_hd">佳缘新增分享资料功能 帮你更快找到她</div>
										<div class="tips_con">
											<p>抱歉，此用户目前未同意分享个人资料，可能她没注意本功能，你可以提醒她.</p>
											<p align="center">
												<a href="javascript:;"
													onclick="getID('share_tips').style.display='none';ajax('http://www.jiayuan.com/ajax/share_invite.php?uid=104159755','',function(data){ if(data==1){ openWindowById('open_share_invite'); setTimeout('closeWindowById(\'open_share_invite\')',5000);}else {getID('open_follow_error_text').innerHTML='参数错误';openWindowById('open_follow_error');}});;send_jy_pv2('|220235_1|');"
													class="btn_share">邀请分享</a>
											</p>
											<p align="center">
												<a
													href="http://www.jiayuan.com/usercp/share.php?from=profile"
													target="_blank" onmousedown="send_jy_pv2('|220235_3|');">去设置我的分享</a>
											</p>
										</div>
										<div class="close" onclick="hiddenById('share_tips');">X</div>
									</div>
								</div>
							</div>
							<script type="text/javascript">
								var share_tips = getID('share_tips');
								var share_img = getID('share_img');

								if (share_tips) {
									share_img.onclick = function() {
										if (share_tips.style.display == 'none')
											share_tips.style.display = '';
										else
											share_tips.style.display = 'none'
									}
								}
							</script>
							<!-- JiaThis Button END -->


							<div class="user_scroll_pic e_clear">
								<div class="left_btn_no" id="user_prev"></div>
								<div class="scroll_pic w452" id="urer_srcoll">
									<ul id="urer_srcoll_box"
										style="overflow: hidden; width: 678px;">
										<li>
											<div class="img_box">
												<div class="box">
													<a
														onclick="openWindow('','','http://www.jiayuan.com/usercp/photo_scyd_tc.php?tc_type=1&amp;touid=104159755',572,222);return false;"
														href="javascript:;"
														onmousedown="send_jy_pv2('|photoThumbnailV1|');"><img
														style="max-width: 108px; max-height: 110px; top: 1px;"
														src="../../resources/img/96663128t.jpg"
														onload="makecenter(this);"></a>
												</div>
											</div>
										</li>
										<li>
											<div class="img_box">
												<div class="box">
													<a
														onclick="openWindow('','','http://www.jiayuan.com/usercp/photo_scyd_tc.php?tc_type=1&amp;touid=104159755',572,222);return false;"
														href="javascript:;"
														onmousedown="send_jy_pv2('|photoThumbnailV1|');"><img
														style="max-width: 108px; max-height: 110px; top: 1px;"
														src="../../resources/img/96077907t.jpg"
														onload="makecenter(this);"></a>
												</div>
											</div>
										</li>
										<li>
											<div class="img_box">
												<div class="box">
													<a
														onclick="openWindow('','','http://www.jiayuan.com/usercp/photo_scyd_tc.php?tc_type=1&amp;touid=104159755',572,222);return false;"
														href="javascript:;"
														onmousedown="send_jy_pv2('|photoThumbnailV1|');"><img
														style="max-width: 108px; max-height: 110px; top: 4px;"
														src="../../resources/img/95773839t.jpg"
														onload="makecenter(this);"></a>
												</div>
											</div>
										</li>
										<li>
											<div class="img_box">
												<div class="box">
													<a
														onclick="openWindow('','','http://www.jiayuan.com/usercp/photo_scyd_tc.php?tc_type=1&amp;touid=104159755',572,222);return false;"
														href="javascript:;"
														onmousedown="send_jy_pv2('|photoThumbnailV1|');"><img
														style="max-width: 108px; max-height: 110px; top: 1px;"
														src="../../resources/img/95683314t.jpg"
														onload="makecenter(this);"></a>
												</div>
											</div>
										</li>
										<li>
											<div class="img_box">
												<div class="box">
													<a
														onclick="openWindow('','','http://www.jiayuan.com/usercp/photo_scyd_tc.php?tc_type=1&amp;touid=104159755',572,222);return false;"
														href="javascript:;"
														onmousedown="send_jy_pv2('|photoThumbnailV1|');"><img
														style="max-width: 108px; max-height: 110px; top: 1px;"
														src="../../resources/img/95606480t.jpg"
														onload="makecenter(this);"></a>
												</div>
											</div>
										</li>
										<li>
											<div class="img_box">
												<div class="box">
													<a
														onclick="openWindow('','','http://www.jiayuan.com/usercp/photo_scyd_tc.php?tc_type=1&amp;touid=104159755',572,222);return false;"
														href="javascript:;"
														onmousedown="send_jy_pv2('|photoThumbnailV1|');"><img
														style="max-width: 108px; max-height: 110px; top: 14.5px;"
														src="../../resources/img/95522911t.jpg"
														onload="makecenter(this);"></a>
												</div>
											</div>
										</li>
									</ul>
								</div>
								<div class="right_btn" id="user_next"></div>
							</div>
							<div class="operation_btn">
								<ul>

									<!-- 										<li class="wirte_btn"><a onclick="window.open('http://www.jiayuan.com/msg/send.php?uhash=44ec534301f3a4a313b205115b3b714b&amp;fxly=cp-eexpress&amp;src=none&amp;cnj=profile3&amp;pre_url='+location.href)" href="javascript:;" onmousedown="send_jy_pv2('|buttonMailUpV1|');"></a></li> -->
									<li class="wirte_btn"><a href="../../msg/send/${operatingUser.userId}" target="_blank"></a></li>

									<%-- 										<li class="greet_btn"><a href="../../sendLetter/${operatingUserId}" onclick="openWindow('','','http://www.jiayuan.com/msg/hello.php?type=20&amp;fxly=cp-eexpress&amp;src=none&amp;uhash=44ec534301f3a4a313b205115b3b714b&amp;cnj=profile2',612,600);" onmousedown="send_jy_pv2('|buttonGreetUpV1|');"></a></li> --%>
									<!-- 																				<li class="gift_btn" id="gift_btn"> -->
									<!-- 																				<a href="javascript:;" onclick=" openWindow('','','http://gift.jiayuan.com/send_gift.php?uid=104159755',610,610); " onmousedown="send_jy_pv2('|buttonGiftUpV1|');"></a></li> -->
									<!-- 										<li class="concern_btn"><a href="javascript:;" onclick="ajax('http://www.jiayuan.com/follow.php?uid=104159755','',function(data){ if(data==1){ openWindowById('open_follow_success');}else if(data==-1){getID('open_follow_error_text').innerHTML='不能添加已在好友列表中的会员';openWindowById('open_follow_error');}else if(data==-2){getID('open_follow_error_text').innerHTML='不能添加在阻止名单中的会员';openWindowById('open_follow_error');} else if(data==-3){getID('open_follow_error_text').innerHTML='不能添加相同性别的会员';openWindowById('open_follow_error');} else {getID('open_follow_error_text').innerHTML='参数错误';openWindowById('open_follow_error');}});" onmousedown="send_jy_pv2('|buttonAttentionUpV1|');"></a></li> -->
								</ul>
							</div>
						</div>
						<!--my_information end-->
						<!--internal_monolog start-->
						<div class="internal_monolog">
							<h2>我的内心独白</h2>
							<div class="internal_monolog_content">
								<p>一句“我难受”可以换来谁的一句“你在哪？我马上到”</p>
							</div>
						</div>
						<!--internal_monolog end-->
						<div class="claim">
							<h2>
								<a
									href="http://www.jiayuan.com/paper/match/basic_match.php?uhash=44ec534301f3a4a313b205115b3b714b"
									target="_blank" onmousedown="send_jy_pv2('|matchV1|');">查看与我的匹配度&gt;&gt;</a>我的择友要求
							</h2>
							<div class="claim_content">
								<ul class="e_clear">
									<li><span>年 龄：</span>27-37岁之间</li>
									<li><span>诚信星级：</span>不限</li>
									<li><span>身 高：</span>175-190厘米</li>
									<li><span>婚姻状况：</span>不限</li>
									<li><span>学 历：</span>本科</li>
									<li><span>有无照片：</span>有照片</li>
									<li><span>民 族：</span>不限</li>
									<li style="width: 500px"><span>所在地区：</span>不限</li>
								</ul>
								<p>（标有*的择友条件是必须符合的条件）</p>
							</div>
						</div>
						<div class="aspect claim">
							<a name="detail"></a>
							<h2>外貌体型</h2>
							<div class="claim_content">
								<ul class="e_clear">
									<li><span>相貌自评：</span>青春活泼</li>
									<li><span>体 型：</span>匀称</li>
									<li><span>脸 型：</span>未填</li>
									<li><span>发 型：</span>卷曲长发</li>
									<li><span>魅力部位：</span>未填</li>
									<li><span>体 重：</span>未填</li>
									<li><span>发 色：</span>未填</li>
									<li><span>眼睛颜色：</span>未填</li>
								</ul>
							</div>
						</div>
						<div class="work_life claim">
							<h2>详细资料</h2>
							<div class="work_life_content">
								<ul class="e_clear">
									<li><span>生 肖：</span>龙</li>
									<li><span>血 型：</span>A型</li>
									<li><span>户口地区：</span>江苏扬州</li>
									<li><span>籍 贯：</span>江苏扬州</li>
									<li><span>国 籍：</span>中国大陆</li>
									<li><span>宗教信仰：</span>无宗教信仰</li>
									<li><span>工作状态：</span>朝九晚五</li>
									<li><span>公司类型：</span>外企企业</li>
									<li><span>公司行业：</span>服装/纺织/皮革</li>
									<li><span>公司名称：</span>未填</li>
									<li><span>收入描述：</span>事业刚起步</li>
									<li><span>最大消费：</span>未填</li>
									<li><span>毕业学校：</span>国外某大学</li>
									<li><span>入学年份：</span>未填</li>
									<li><span>专业类型：</span>艺术类</li>
									<li><span>语言能力：</span>未填</li>
									<li><span>作息习惯：</span>未填</li>
									<li><span>锻炼习惯：</span>未填</li>
									<li><span>是否吸烟：</span>未填</li>
									<li><span>是否饮酒：</span>未填</li>
									<li><span>个 性：</span>未填</li>
									<li><span>喜欢制造浪漫：</span>未填</li>
									<li><span>家中排行：</span>独生子女</li>
									<li><span>愿意要孩子：</span>未填</li>
									<li><span>对自己影响最大的人：</span>未填</li>
									<li><span>影响的原因：</span>未填</li>
									<li><span>愿与Ta父母同住吗：</span>未填</li>
									<li><span>擅长的生活技能：</span>未填</li>
								</ul>
							</div>
						</div>
						<div class="hobbies claim">
							<h2>兴趣爱好</h2>
							<div class="hobbies_content">
								<ul class="e_clear">
									<li><span>业余爱好：</span>未填</li>
									<li><span>愿意养宠物：</span>未填</li>
									<li><span>喜欢运动：</span>未填</li>
									<li><span>喜爱的影片：</span>未填</li>
									<li><span>喜欢美食：</span>未填</li>
									<li><span>最近看的书籍：</span>未填</li>
									<li><span>喜欢旅游：</span>未填</li>
									<li><span>关注的节目：</span>未填</li>
								</ul>
							</div>
						</div>
						<div class="operation_btn pb20">
							<ul>

								<li class="wirte_btn"><a
									onclick="window.open('http://www.jiayuan.com/msg/send.php?uhash=44ec534301f3a4a313b205115b3b714b&amp;fxly=cp-eexpress&amp;src=none&amp;cnj=profile3&amp;pre_url='+location.href)"
									href="javascript:;"
									onmousedown="send_jy_pv2('|buttonMailDownV1|');"></a></li>
								<li class="greet_btn"><a href="javascript:;"
									onclick="openWindow('','','http://www.jiayuan.com/msg/hello.php?type=20&amp;fxly=cp-eexpress&amp;src=none&amp;uhash=44ec534301f3a4a313b205115b3b714b&amp;cnj=profile2',612,600);"
									onmousedown="send_jy_pv2('|buttonGreetDownV1');"></a></li>
								<li class="gift_btn"><a href="javascript:;"
									onclick="openWindow('','','http://gift.jiayuan.com/send_gift.php?uid=104159755',610,610);"
									onmousedown="send_jy_pv2('|buttonGiftDownV1|');"></a></li>
								<li class="concern_btn"><a href="javascript:"
									onclick="ajax('http://www.jiayuan.com/follow.php?uid=104159755','',function(data){ if(data==1){ openWindowById('open_follow_success');}else if(data==-1){getID('open_follow_error_text').innerHTML='不能添加已在好友列表中的会员';openWindowById('open_follow_error');}else if(data==-2){getID('open_follow_error_text').innerHTML='不能添加在阻止名单中的会员';openWindowById('open_follow_error');}  else if(data==-3){getID('open_follow_error_text').innerHTML='不能添加相同性别的会员';openWindowById('open_follow_error');} else {getID('open_follow_error_text').innerHTML='参数错误';openWindowById('open_follow_error');}});"
									onmousedown="send_jy_pv2('|buttonAttentionDownV1|');"></a></li>
							</ul>
						</div>
					</div>
					<!--user_right end-->
				</div>
				<!--user_conent end-->
			</div>
			<!--main_left end-->
			<div class="main_right">

				<div class="mobile">
					<div id="skin_ad" onmousedown="send_jy_pv2('|220144_29|');">
						<!--<a href="http://show.jiayuan.com/" target="_blank" onmousedown="send_jy_pv2('|1000373_32|');">
					<img src="http://images1.jyimg.com/w4/profile_new/i/skin_ad.gif" width="250" height="45" />
				</a>-->
						<!--<a href="http://subject.jiayuan.com/2013Q3/bqbbq/bqbbq.html" target="_blank" onmousedown="send_jy_pv2('|1009849_5|');">
					<img src="http://images1.jyimg.com/w4/profile_new/i/vip_mzyx.gif" width="250" height="45" />
				</a>-->
						<div id="ad_pos_29">
							<div style="overflow: hidden; width: 250; height: 45;"
								id="jy_advert_91">
								<a
									href="http://www.jiayuan.com/advert/click.php?pos_id=29&amp;mr_id=926&amp;ad_id=83&amp;m_id=91&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/usercp/fate_express.php&amp;src_key=ad_3_29_83_91_926"
									target="_blank"><img
									src="../../resources/img/20130722032155599.gif"
									id="jy_advert_91_img" height="45" width="250"></a>
							</div>
						</div>
					</div>
				</div>
				<!--  
			<div class="money">
			  
			<iframe  src="http://www.jiayuan.com/ajax/ad.php?position=1" 
			scrolling="no"
			frameborder="0"
			width="250px"
			height="250px"> </iframe>

					 </div>
-->
				<!-- <script type='text/javascript' src='http://ads.jiayuan.com/ad.php?pos_id=11'></script> -->
				<div id="ad_pos_11">
					<div id="jy_ad_513">
						<ul>
							<li style="display: none;"><a
								href="http://www.jiayuan.com/advert/click.php?pos_id=11&amp;mr_id=6205&amp;ad_id=810&amp;m_id=513&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/parties/2012/dafuweng/index.php&amp;src_key=ad_3_11_810_513_6205"
								target="_blank"><img
									src="../../resources/img/20131219042940664.gif" alt=""></a></li>
							<li style="display: none;"><a
								href="http://www.jiayuan.com/advert/click.php?pos_id=11&amp;mr_id=6206&amp;ad_id=810&amp;m_id=513&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/parties/2011/yjzq/&amp;src_key=ad_3_11_810_513_6206"
								target="_blank"><img
									src="../../resources/img/20140925045247943.jpg" alt=""></a></li>
							<li style="display: block;"><a
								href="http://www.jiayuan.com/advert/click.php?pos_id=11&amp;mr_id=6207&amp;ad_id=810&amp;m_id=513&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/usercp/service/do_package_service.php?rid=70&amp;src_key=ad_3_11_810_513_6207"
								target="_blank"><img
									src="../../resources/img/20140925044902265.jpg" alt=""></a></li>
						</ul>
					</div>
				</div>
				<!--VIP start-->
				<style>
.myVipBd {
	padding: 6px;
}

.vipTop {
	padding: 4px 0 10px 0;
	border-bottom: 1px dashed #dcdcdc;
}

.fn-clr {
	zoom: 1
}

.fn-clr:after {
	content: '';
	display: block;
	line-height: 0;
	font-size: 0;
	clear: both;
	visibility: hidden;
}

.vipLeft {
	float: left;
	display: inline;
	padding: 4px 0 0 6px;
	width: 76px;
	height: 76px;
	background-position: 6px 4px;
	background-repeat: no-repeat;
}

.vipRight {
	float: left;
	display: inline;
	padding-left: 17px;
}

.vipRight p {
	line-height: 22px;
	color: #999;
	text-align: left;
}

.vipRight p.vipTi {
	font-size: 18px;
	font-family: "microsoft yahei";
	line-height: 35px;
	color: #ff7906;
}

.vipRight p.c_666 {
	color: #666;
}

.vipBottom {
	text-align: center;
	padding-bottom: 10px;
}

.vipBottom p {
	color: #666;
	line-height: 40px;
}

.vipBottom p span {
	color: #ff7906;
	font-weight: bold;
}

.vipbtn {
	width: 114px;
	height: 25px;
	line-height: 24px;
	font-size: 14px;
	font-weight: bold;
	color: #fff;
	background: url(http://images1.jyimg.com/w4/profile_new/i/a1_07.png)
		no-repeat;
	display: inline-block;
}

a.vipbtn {
	color: #fff;
}

a.vipbtn:hover {
	text-decoration: none;
	color: #fff;
}

.vipbtn:hover {
	background: url(http://images1.jyimg.com/w4/profile_new/i/a1_10.png)
		no-repeat;
}

.ylsr .vipLeft {
	background-image:
		url(http://images1.jyimg.com/w4/profile_new/i/a1_12.png);
}

.kbkp .vipLeft {
	background-image:
		url(http://images1.jyimg.com/w4/profile_new/i/a1_03.png);
}

.kryb .vipLeft {
	background-image:
		url(http://images1.jyimg.com/w4/profile_new/i/a1_14.png);
}

.zwdt .vipLeft {
	background-image:
		url(http://images1.jyimg.com/w4/profile_new/i/a1_16.png);
}

.bxcg .vipLeft {
	background-image:
		url(http://images1.jyimg.com/w4/profile_new/i/a1_18.png);
}

.xlx .vipLeft {
	background-image:
		url(http://images1.jyimg.com/w4/profile_new/i/a1_20.png);
}

.xyyx .vipLeft {
	background-image:
		url(http://images1.jyimg.com/w4/profile_new/i/a1_22.png);
}
/*New Privilege*/
.wkgs .vipLeft {
	background-image:
		url(http://images1.jyimg.com/w4/profile_new/i/a1_23.png);
}

.lszgw .vipLeft {
	background-image:
		url(http://images1.jyimg.com/w4/profile_new/i/a1_24.png);
}

.sgzw .vipLeft {
	background-image:
		url(http://images1.jyimg.com/w4/profile_new/i/a1_25.png);
}

.xjhhy .vipLeft {
	background-image:
		url(http://images1.jyimg.com/w4/profile_new/i/a1_26.png);
}

.yhtq .vipLeft {
	background-image:
		url(http://images1.jyimg.com/w4/profile_new/i/a1_27.png);
}
/*moblie*/
.vipBottom p.moblieTxt {
	text-align: left;
	padding: 13px 0 0 5px;
	line-height: normal;
}

.vipBottom p.moblieBox {
	text-align: left;
	padding: 8px 0 0 5px;
	line-height: normal;
}

.vipBottom p span.colorOrange {
	color: #ff7906;
	font-weight: normal;
}

.send {
	color: #fff;
	background-color: #fc8618;
	line-height: 15px;
	width: 14px;
	height: 15px;
	margin-left: 5px;
	text-align: center;
	display: inline-block;
	padding: 0 1px;
}

#moblieInput {
	width: 169px;
	height: 20px;
	line-height: 20px;
	color: #c2c2c2;
	padding: 0 3px;
	vertical-align: middle;
	border: 1px solid #a4a4a4;
}

.moblieButton:link,.moblieButton:visited,.moblieButton:active {
	vertical-align: middle;
	margin-left: 6px;
	background: #fb8c21
		url(http://images1.jyimg.com/w4/profile_new/i/mobileButton.jpg)
		no-repeat 0 0;
	width: 47px;
	height: 25px;
	color: #fff;
	font: bold 14px/25px SimSun;
	display: inline-block;
	text-align: center;
}

.moblieButton:hover {
	text-decoration: none;
	color: #fff;
}
</style>

				<div class="right_box mt10 lszgw">
					<h2>
						<a
							href="http://www.jiayuan.com/usercp/service/upgrade.php?from=menu&amp;src_key=profile_vip_more"
							onmousedown="send_jy_pv2('|1012817_5|');" target="_blank">全部23项特权&gt;&gt;</a>VIP会员
					</h2>
					<div class="myVipBd">
						<div class="vipTop fn-clr">
							<div class="vipLeft"></div>
							<div class="vipRight">
								<p class="vipTi">我这型，谁最爱</p>
								<p class="c_666">查看谁赞过我</p>
								<p>
									查看赞过我照片的人<br>了解谁对我有眼缘
								</p>
							</div>
						</div>
						<div class="vipBottom">
							<p>
								尝鲜VIP会员1个月 只需<span>16</span>元 <a
									href="http://www.jiayuan.com/usercp/service/st_run.php?product_id=31&amp;src_key=profile_vip_B"
									class="vipbtn" target="_blank"
									onmousedown="send_jy_pv2('|1012817_4|');">马上激活特权</a>
							</p>
						</div>
					</div>
				</div>

				<!--interested start-->
				<div class="interested right_box mt10">
					<h2>
						<a href="javascript:getInterestedMenbers();"
							onmousedown="send_jy_pv2('|InterestedV1|');">换一组</a>您可能感兴趣的人
					</h2>
					<div id="interested">
						<div class="ptb15">
							<ul class="e_clear">
								<li><a
									href="http://www.jiayuan.com/85414802?src=personalmatch_profile_c&amp;fxly=tj-ymtj-grzlytj"
									target="_blank"><img
										src="../../resources/img/9735cfc8a_5_avatar_n.jpg"
										onmousedown="send_jy_pv2('|all_tag_m|122261858')" height="90"
										width="74"></a><a title="无聊的人"
									href="http://www.jiayuan.com/85414802?src=personalmatch_profile_c&amp;fxly=tj-ymtj-grzlytj"
									target="_blank"
									onmousedown="send_jy_pv2('|all_tag_m|122261858')"><p>
											<i>无聊的人</i>
										</p>
										<p>25岁，其他国家</p></a></li>
								<li><a
									href="http://www.jiayuan.com/62474627?src=personalmatch_profile_c&amp;fxly=tj-ymtj-grzlytj"
									target="_blank"><img
										src="../../resources/img/dd6cb8cd0_4_avatar_n.jpg"
										onmousedown="send_jy_pv2('|all_tag_m|122261858')" height="90"
										width="74"></a><a title="佳缘用户"
									href="http://www.jiayuan.com/62474627?src=personalmatch_profile_c&amp;fxly=tj-ymtj-grzlytj"
									target="_blank"
									onmousedown="send_jy_pv2('|all_tag_m|122261858')"><p>
											<img src="../../resources/img/diamond_icon.png" title="钻石会员"><i>佳缘用户</i>
										</p>
										<p>23岁，其他国家</p></a></li>
								<li><a
									href="http://www.jiayuan.com/28186251?src=personalmatch_profile_c&amp;fxly=tj-ymtj-grzlytj"
									target="_blank"><img
										src="../../resources/img/xjhykj_f_n.jpg"
										onmousedown="send_jy_pv2('|all_tag_m|122261858')" height="90"
										width="74"></a><a title="纳兰瑾萱"
									href="http://www.jiayuan.com/28186251?src=personalmatch_profile_c&amp;fxly=tj-ymtj-grzlytj"
									target="_blank"
									onmousedown="send_jy_pv2('|all_tag_m|122261858')"><p>
											<i>纳兰瑾萱</i>
										</p>
										<p>27岁，其他国家</p></a></li>
								<li><a
									href="http://www.jiayuan.com/121748899?src=personalmatch_profile_c&amp;fxly=tj-ymtj-grzlytj"
									target="_blank"><img
										src="../../resources/img/yzphykj_f_n.jpg"
										onmousedown="send_jy_pv2('|all_tag_m|122261858')" height="90"
										width="74"></a><a title="peiwen"
									href="http://www.jiayuan.com/121748899?src=personalmatch_profile_c&amp;fxly=tj-ymtj-grzlytj"
									target="_blank"
									onmousedown="send_jy_pv2('|all_tag_m|122261858')"><p>
											<img src="../../resources/img/diamond_icon.png" title="钻石会员"><i>peiwen</i>
										</p>
										<p>22岁，其他国家</p></a></li>
								<li><a
									href="http://www.jiayuan.com/118274292?src=personalmatch_profile_c&amp;fxly=tj-ymtj-grzlytj"
									target="_blank"><img
										src="../../resources/img/42669b904_5_avatar_n.jpg"
										onmousedown="send_jy_pv2('|all_tag_m|122261858')" height="90"
										width="74"></a><a title="炸炸"
									href="http://www.jiayuan.com/118274292?src=personalmatch_profile_c&amp;fxly=tj-ymtj-grzlytj"
									target="_blank"
									onmousedown="send_jy_pv2('|all_tag_m|122261858')"><p>
											<i>炸炸</i>
										</p>
										<p>25岁，其他国家</p></a></li>
								<li><a
									href="http://www.jiayuan.com/43871464?src=personalmatch_profile_c&amp;fxly=tj-ymtj-grzlytj"
									target="_blank"><img
										src="../../resources/img/4d5fd19bc_avatar_n.jpg"
										onmousedown="send_jy_pv2('|all_tag_m|122261858')" height="90"
										width="74"></a><a title="bohany"
									href="http://www.jiayuan.com/43871464?src=personalmatch_profile_c&amp;fxly=tj-ymtj-grzlytj"
									target="_blank"
									onmousedown="send_jy_pv2('|all_tag_m|122261858')"><p>
											<i>bohany</i>
										</p>
										<p>26岁，其他国家</p></a></li>
							</ul>
						</div>
					</div>
				</div>
				<!--interested end-->


				<!--recommended_gift start-->
				<div class="recommended_gift right_box mt10">
					<h2>
						<a href="javascript:getCommendGift(104159755);"
							onmousedown="send_jy_pv2('|InterestedV1|');">换一组</a>礼物推荐
					</h2>
					<div class="" id="gift_commend">
						<ul class="e_clear">
							<li class="list">
								<div class="gift_title">
									<p>二人世界</p>
									<p>魅力值30点</p>
								</div>
								<div class=""
									onmouseover="if(typeof(t1)!='undefined') clearTimeout(t1);showById('tips_left');if(typeof(t2)!='undefined'){ clearTimeout(t2);hiddenById('tips_right')}"
									onmouseout="t1=setTimeout('hiddenById(\'tips_left\')',1000);">
									<a href="javascript:;"
										onclick="openWindow('','','http://gift.jiayuan.com/send_gift.php?uid=104159755&amp;gid=106',610,300);"
										onmousedown="send_jy_pv2('|charmIndexV1|');"><img
										src="../../resources/img/1305609743.gif"></a>
									<div class="mall_tips" id="tips_left">
										赠送礼物，可免费发信哦！<br>[<a href="http://gift.jiayuan.com/"
											target="_blank">更多礼物</a>]
									</div>
									<span></span>
								</div>
								<p>二人世界</p>
								<p class="price">3张佳缘邮票</p> <a href="javascript:;"
								onclick="openWindow('','','http://gift.jiayuan.com/send_gift.php?uid=104159755&amp;gid=106',610,300);"
								class="handsel_btn"
								onmousedown="send_jy_pv2('|sendRecGiftV1|');"></a> <a
								href="javascript:;"
								onclick="openWindow('','','http://gift.jiayuan.com/send_gift.php?gid=106&amp;dowish=1',407,220);"
								class="favorites_btn"
								onmousedown="send_jy_pv2('|collectRecGiftV1|');"></a>
							</li>
							<li>
								<div class="gift_title">
									<p>爱之花</p>
									<p>魅力值20点</p>
								</div>
								<div class=""
									onmouseover="if(typeof(t2)!='undefined') clearTimeout(t2);showById('tips_right');if(typeof(t1)!='undefined'){ clearTimeout(t1);hiddenById('tips_left')}"
									onmouseout="t2=setTimeout('hiddenById(\'tips_right\')',1000);">
									<a href="javascript:;"
										onclick="openWindow('','','http://gift.jiayuan.com/send_gift.php?uid=104159755&amp;gid=222',610,300);"
										onmousedown="send_jy_pv2('|charmIndexV1|');"><img
										src="../../resources/img/1305620326.gif"></a>
									<div class="mall_tips" id="tips_right">
										赠送礼物，可免费发信哦！<br>[<a href="http://gift.jiayuan.com/"
											target="_blank">更多礼物</a>]
									</div>
									<span></span>
								</div>
								<p>爱之花</p>
								<p class="price">2张佳缘邮票</p> <a href="javascript:;"
								onclick="openWindow('','','http://gift.jiayuan.com/send_gift.php?uid=104159755&amp;gid=222',610,300);"
								class="handsel_btn"
								onmousedown="send_jy_pv2('|sendRecGiftV1|');"></a> <a
								href="javascript:;"
								onclick="openWindow('','','http://gift.jiayuan.com/send_gift.php?gid=222&amp;dowish=1',407,220);"
								class="favorites_btn"
								onmousedown="send_jy_pv2('|collectRecGiftV1|');"></a>
							</li>
						</ul>
					</div>
				</div>
				<!--recommended_gift end-->
				<!--fate start-->
				<div id="ad_pos_52">
					<div class="myServiceBoxdiv right_box mt10">
						<h2 class="fuwubanTitle">推荐服务</h2>
						<div class="myServiceBoxdivBody">
							<div class="myServiceTitle zhuanshi">
								<a
									href="http://www.jiayuan.com/usercp/service/bmsg_tg2.php?src_key=recommend_txt"
									target="_blank" class="more" style="margin-right: 8px;">了解更多&gt;&gt;</a>
							</div>
							<div class="myServiceNR">
								<p>无限量免费看信，发信附邮票</p>
								<p>包含VIP会员（共23项特权）</p>
								<p>在线聊天，无需邀请</p>
							</div>
							<div class="buy_jiage">
								<ul>
									<li><a
										href="http://www.jiayuan.com/advert/click.php?pos_id=52&amp;mr_id=5516&amp;ad_id=820&amp;m_id=551&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/usercp/service/do_package_service.php?rid=70&amp;src_key=ad_3_52_820_551_5516"
										class="zsRadius" target="_blank"><span class="condi1">12个月</span><span
											class="ssPink"><font color="#ff0066">已直减200元</font></span><span
											class="zs_open">开通</span><span class="ss2"><font
												color="#ff0033">￥</font><font class="mony" color="#ff0033">298</font></span></a></li>
									<li><a
										href="http://www.jiayuan.com/advert/click.php?pos_id=52&amp;mr_id=5517&amp;ad_id=820&amp;m_id=551&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/usercp/service/dobmsg.php?pro_id=43&amp;src_key=ad_3_52_820_551_5517"
										class="zsRadius" target="_blank"><span class="condi1">6个月</span><span
											class="ssPink"></span><span class="zs_open">开通</span><span
											class="ss2">￥<font class="mony">398</font></span></a></li>
									<li><a
										href="http://www.jiayuan.com/advert/click.php?pos_id=52&amp;mr_id=5518&amp;ad_id=820&amp;m_id=551&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/usercp/service/dobmsg.php?pro_id=41&amp;src_key=ad_3_52_820_551_5518"
										class="zsRadius" target="_blank"><span class="condi1">3个月</span><span
											class="ssPink"></span><span class="zs_open">开通</span><span
											class="ss2">￥<font class="mony">298</font></span></a></li>
									<li><a
										href="http://www.jiayuan.com/advert/click.php?pos_id=52&amp;mr_id=5519&amp;ad_id=820&amp;m_id=551&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/usercp/service/dobmsg.php?pro_id=44&amp;src_key=ad_3_52_820_551_5519"
										class="zsRadius" target="_blank"><span class="condi1">1个月</span><span
											class="ssPink"></span><span class="zs_open">开通</span><span
											class="ss2">￥<font class="mony">198</font></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!--fate end-->


				<!--recharge start-->
				<div class="recharge right_box mt10">
					<h2>
						<a
							href="http://www.jiayuan.com/usercp/center/charge.php?src_key=mod_quickpay"
							target="_blank">更多支付方式</a>佳缘邮票快速充值
					</h2>
					<div class="recharge_content">
						<ul class="list e_clear">
							<li class="on" id="recharge1"
								onmouseover="tab('recharge','1','3')">网上银行</li>
							<li id="recharge2" onmouseover="tab('recharge','2','3')">手机充值卡</li>
							<li class="last" id="recharge3"
								onmouseover="tab('recharge','3','3')">支付宝</li>
						</ul>
						<div class="recharge_tab" id="rechargeCon1">
							<table width="222" cellpadding="0" cellspacing="0">
								<form
									action="http://www.jiayuan.com/usercp/center/bank_run.php?src_key=profile_quick_charge&amp;pid=2"
									method="POST" id="buy_gj_yinhang" name="buy_gj_yinhang"
									target="_blank"></form>
								<tbody>
									<tr>
										<td class="f600">邮票数量：<img
											src="../../resources/img/new_img1.jpg"
											onmouseover="showById('rechargelayer1')"
											onmouseout="hiddenById('rechargelayer1')"></td>
									</tr>
									<tr>
										<td><label><input name="number" value="100"
												onclick="changecostyinhang('50','a');" type="radio">50张</label>
											<label><input name="number" checked="checked"
												value="200" onclick="changecostyinhang('100','a');"
												type="radio">100张</label> <label><input
												name="number" id="yinhang_youpiaocc" value="0"
												onclick="changecostyinhang('50','qita');" type="radio">其他</label>
											<input name="yinhang_youpiao1" id="yinhang_youpiao1"
											onclick="getID('yinhang_youpiaocc').checked = true;"
											onchange="check_form('yh');"
											onkeyup="changecostyinhang('50','qita');" size="5"
											class="other" style="text-indent: 0px" type="text">张
										</td>
									</tr>
									<tr>
										<td class="f600">支付金额：<span id="cost_total_yinhang">200</span>元
										</td>
									</tr>
									<tr>
										<td class="f600">支付银行：<select name="bank"><option
													value="6" selected="selected">招商银行</option>
												<option value="7">交通银行</option>
												<option value="12">兴业银行</option>
												<option value="1">中国工商银行</option>
												<option value="10">上海浦东发展银行</option>
												<option value="5">中国银行</option>
												<option value="2">中国建设银行</option>
												<option value="4">中国民生银行</option>
												<option value="11">平安银行</option>
												<option value="3">中国农业银行</option>
												<option value="9">广东发展银行</option>
												<option value="8">中国光大银行</option></select></td>
									</tr>
									<input name="show_menu" value="1" type="hidden">
									<tr>
										<td style="padding-top: 5px;" align="center"><input
											class="next"
											onclick="if(typeof(send_jy_pv2)=='function'){ send_jy_pv2('profile_buy|yinhang|122261858');};getID('buy_gj_yinhang').submit();"
											type="button"></td>
									</tr>

								</tbody>
							</table>
							<!--recharge_layer start-->
							<div class="recharge_layer" id="rechargelayer1"
								style="display: none;">
								<div class="layer_box">
									<h2>充值流程</h2>
									<div class="rechargelist">
										<ul>
											<li>1、选择购买数量</li>
											<li>2、点”下一步“进入支付中心</li>
											<li>3、再次核对相关信息</li>
											<li>4、进入第三方银行支付界面</li>
											<li>5、操作完成，充值成功</li>
										</ul>
									</div>
								</div>
								<iframe></iframe>
							</div>
							<!--recharge_layer end-->
						</div>
						<div class="recharge_tab" id="rechargeCon2" style="display: none;">
							<table width="222" cellpadding="0" cellspacing="0">
								<form
									action="http://www.jiayuan.com/usercp/center/charge.php?src_key=mod_quickpay"
									method="POST" id="buy_gj_shouji" name="buy_gj_shouji"
									target="_blank"></form>
								<tbody>
									<tr>
										<td class="f600">充值卡种类：<img
											src="../../resources/img/new_img1.jpg"
											onmouseover="showById('rechargelayer2')"
											onmouseout="hiddenById('rechargelayer2')"></td>
									</tr>
									<tr>
										<td><label><input name="show_menu" value="3"
												checked="checked" type="radio"><span class="mobile">移动充值卡</span></label>&nbsp;&nbsp;<label
											class="label2"><input name="show_menu" value="10"
												type="radio"><span class="unicom">联通充值卡</span></label></td>
									</tr>
									<tr>
										<td class="f600">充值卡面额：</td>
									</tr>
									<tr>
										<td><label><input name="shouji_qian" value="50"
												type="radio">50元</label><label><input
												name="shouji_qian" checked="checked" value="100"
												type="radio">100元</label><label><input
												name="shouji_qian" value="300" type="radio">300元</label><label><input
												name="shouji_qian" value="500" type="radio">500元</label></td>
									</tr>
									<tr>
										<td class="f600">充值卡序列号：</td>
									</tr>
									<tr>
										<td><input name="shouji_kahao" class="text"
											onfocus="if(this.value=='全国卡、地方卡；苏/浙/闽/粤、易宝卡'){this.value='';this.style.color='#000';}"
											value="全国卡、地方卡；苏/浙/闽/粤、易宝卡" type="text"></td>
									</tr>
									<tr>
										<td class="f600">充值卡密码：</td>
									</tr>
									<tr>
										<td><input name="shouji_mima" class="text"
											value="输入后请认真核对密码"
											onfocus="if(this.value=='输入后请认真核对密码'){this.value='';this.style.color='#000';}"
											type="text"></td>
									</tr>
									<tr>
										<td style="padding-top: 5px;" align="center"><input
											class="next"
											onclick="if(typeof(send_jy_pv2)=='function'){ send_jy_pv2('profile_buy|shouji|122261858');};getID('buy_gj_shouji').submit();"
											type="button"></td>
									</tr>

								</tbody>
							</table>
							<!--recharge_layer start-->
							<div class="recharge_layer" id="rechargelayer2"
								style="display: none;">
								<div class="layer_box">
									<h2>充值流程</h2>
									<div class="rechargelist">
										<ul>
											<li>1、选择充值卡种类、面额<br>输入充值卡序列号、密码
											</li>
											<li>2、点”下一步“进入支付中心</li>
											<li>3、再次核对相关信息并输入密码</li>
											<li>4、确定充值、操作完成，充值成功</li>
										</ul>
									</div>
								</div>
							</div>
							<!--recharge_layer end-->
						</div>
						<div class="recharge_tab" id="rechargeCon3" style="display: none;">
							<table width="222" cellpadding="0" cellspacing="0">
								<form
									action="http://www.jiayuan.com/usercp/center/charge.php?src_key=mod_quickpay"
									method="POST" id="buy_gj_zhifubao" name="buy_gj_zhifubao"
									target="_blank"></form>
								<tbody>
									<tr>
										<td class="f600">邮票数量：<img
											src="../../resources/img/new_img1.jpg"
											onmouseover="showById('rechargelayer3')"
											onmouseout="hiddenById('rechargelayer3')"></td>
									</tr>
									<tr>
										<td><label><input name="zhifubao_youpiao"
												value="24" onclick="changecostzhifubao('24','a');"
												type="radio">24张</label><label><input
												name="zhifubao_youpiao" checked="checked" value="49"
												onclick="changecostzhifubao('49','a');" type="radio">49张</label><label><input
												name="zhifubao_youpiao" id="zhifubao_youpiaocc" value="qita"
												onclick="changecostzhifubao('24','qita');" type="radio">其他</label><input
											name="zhifubao_youpiao2" class="youpiao"
											id="yinhang_zhifubao1" onchange="check_form('zfb');"
											onclick="getID('zhifubao_youpiaocc').checked = true;"
											onkeyup="changecostzhifubao('50','qita');" size="5"
											type="text">张</td>
									</tr>
									<tr>
										<td class="f600">支付金额：<span id="cost_total_zhifubao">98</span>元
										</td>
									</tr>
									<input name="show_menu" value="2" type="hidden">
									<tr>
										<td style="padding-top: 5px;" align="center"><input
											class="next"
											onclick="if(typeof(send_jy_pv2)=='function'){ send_jy_pv2('profile_buy|zhifubao|122261858');};getID('buy_gj_zhifubao').submit();"
											type="button"></td>
									</tr>

								</tbody>
							</table>
							<!--recharge_layer start-->
							<div class="recharge_layer" id="rechargelayer3"
								style="display: none;">
								<div class="layer_box">
									<h2>充值流程</h2>
									<div class="rechargelist">
										<ul>
											<li>1、选择购买数量</li>
											<li>2、点”下一步“进入支付中心</li>
											<li>3、再次核对相关信息</li>
											<li>4、进入支付宝支付界面</li>
											<li>5、操作完成，充值成功</li>
										</ul>
									</div>
								</div>
							</div>
							<!--recharge_layer end-->
						</div>
					</div>
				</div>
				<!--recharge end-->


				<div class="mobile mt10">
					<iframe src="../../resources/html/self_1_2_5.htm" scrolling="no"
						frameborder="0" height="70px" width="250px"> </iframe>
				</div>
			</div>
		</div>

	</div>

	<!-- 通栏广告 开始 -->
	<div class="container confix">
		<div class="app04">
			<!-- <iframe src="http://images.jiayuan.com/w4/html/self_1_6_5.html"
scrolling="no"
frameborder="0"
width="930px"
height="90px"> </iframe> -->
			<!-- <script type='text/javascript' src='http://ads.jiayuan.com/ad.php?pos_id=2'></script> -->
			<div id="ad_pos_2">
				<div id="jy_ad_714">
					<ul>
						<li style="display: none;"><a
							href="http://www.jiayuan.com/advert/click.php?pos_id=2&amp;mr_id=6166&amp;ad_id=3&amp;m_id=714&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/advert/click.php?pos_id=2&amp;mr_id=6167&amp;ad_id=3&amp;m_id=714&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/club/draw.php&amp;src_key=ad_3_2_3_714_6167&amp;src_key=ad_3_2_3_714_6166"
							target="_blank"><img
								src="../../resources/img/20140923060917422.jpg" alt=""></a></li>
						<li style="display: none;"><a
							href="http://www.jiayuan.com/advert/click.php?pos_id=2&amp;mr_id=6166&amp;ad_id=3&amp;m_id=714&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/advert/click.php?pos_id=2&amp;mr_id=6167&amp;ad_id=3&amp;m_id=714&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/club/draw.php&amp;src_key=ad_3_2_3_714_6167&amp;src_key=ad_3_2_3_714_6166"
							target="_blank"><img
								src="../../resources/img/20140923060917422.jpg" alt=""></a></li>
						<li style="display: block;"><a
							href="http://www.jiayuan.com/advert/click.php?pos_id=2&amp;mr_id=6168&amp;ad_id=3&amp;m_id=714&amp;userid=121261858&amp;ip=1951866301&amp;url=http://www.jiayuan.com/wenda/subject.php?fr=ad&amp;src_key=ad_3_2_3_714_6168"
							target="_blank"><img src="../../resources/img/wenda.jpg"
								alt=""></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 通栏广告 结束 -->
	<!-- <script type='text/javascript' src='http://ads.jiayuan.com//ad.php?pd_id=3'></script> -->
	<script type="text/javascript">
	<!--
		var head = document.getElementsByTagName("head")[0];
		var js = document.createElement("script");
		js.src = "http://ads.jiayuan.com/adajax.php?pd_id=3";
		js.onload = js.onreadystatechange = function() {
			if (!this.readyState || this.readyState == "loaded"
					|| this.readyState == "complete") {
				head.removeChild(js);
			}
		}
		head.appendChild(js);
	//-->
	</script>
	<!--关注 start-->
	<div class="layer" id="open_follow_success" style="display: none;">
		<div class="layer_box">
			<h2>
				<img src="../../resources/img/op_but_close.gif"
					onclick="closeWindowById('open_follow_success')">关注成功
			</h2>
			<div class="friends_layer">
				<h3>你成功的关注了Icey～豆豆</h3>
				<p>
					你可以在<a href="http://www.jiayuan.com/usercp/friends.php">关注与联系人</a>中找到她
				</p>
				<p>
					<a href="http://www.jiayuan.com/usercp/friends_new.php"
						target="_blank" style="margin-left: 0px;">设置上线提醒</a>,短信通知不错过联系她的任何机会
				</p>
				<p>有好感？马上联系她吧！</p>
			</div>
			<div class="operation_btn pb20">
				<ul>
					<li class="wirte_btn"><a
						onclick="window.open('http://www.jiayuan.com/msg/send.php?uhash=44ec534301f3a4a313b205115b3b714b&amp;fxly=cp-eexpress&amp;src=none&amp;cnj=profile3&amp;pre_url='+location.href)"
						href="javascript:;"></a></li>
					<li class="greet_btn"><a href="javascript:;"
						onclick="closeWindowById('open_follow_success');openWindow('','','http://www.jiayuan.com/msg/hello.php?type=20&amp;fxly=cp-eexpress&amp;src=none&amp;uhash=44ec534301f3a4a313b205115b3b714b&amp;cnj=profile2',612,600);"></a></li>
					<li class="gift_btn"><a href="javascript:;"
						onclick="closeWindowById('open_follow_success');openWindow('','','http://gift.jiayuan.com/send_gift.php?uid=104159755',610,610);"></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="layer" id="open_follow_error" style="display: none;">
		<div class="layer_box">
			<h2>
				<img src="../../resources/img/op_but_close.gif"
					onclick="closeWindowById('open_follow_error')">关注好友失败
			</h2>
			<div class="friends_layer">
				<img src="../../resources/img/warn_icon.jpg">&nbsp;&nbsp;&nbsp;<span
					id="open_follow_error_text"></span>
			</div>
			<div class="operation_btn pb20">
				<ul>
					<li class="fixed_btn"><a
						href="javascript:closeWindowById('open_follow_error');"></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!--关注 end-->

	<!--邀请上传更多照片-->
	<div class="layer" id="open_invite_more" style="display: none;">
		<div class="layer_box">
			<h2>
				<img src="../../resources/img/op_but_close.gif"
					onclick="closeWindowById('open_invite_more')"><span
					id="invite_pic_title">发送邀请成功</span>
			</h2>
			<div class="friends_layer"
				style="text-align: center; padding: 15px 10px 15px 0px;">
				<span id="invite_pic_text">TA已经收到了你的邀请</span>
			</div>
			<div class="operation_btn pb20">
				<ul>
					<li class="fixed_btn"><a
						href="javascript:closeWindowById('open_invite_more');"></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!---->

	<!--推荐给好友 start-->
	<div class="layer" id="open_commend" style="display: none;">
		<div class="layer_box">
			<h2>
				<img src="../../resources/img/op_but_close.gif"
					onclick="closeWindowById('open_commend')">将Icey～豆豆推荐给好友
			</h2>
			<div class="recommended_layer">
				<p class="c_e94684 f600">觉得Icey～豆豆不错，复制以下链接发送给好友吧！</p>
				<p>
					<span>征友地址：</span><input value="http://www.jiayuan.com/104159755"
						type="text">
				</p>
			</div>
			<div class="operation_btn pb20">
				<ul>
					<li class="copy_btn"><a
						href="javascript:if(-[1,]){%20%20closeWindowById('open_commend');%20openWindowById('open_commend_error');%20}%20else{%20window.clipboardData.setData('text','http://www.jiayuan.com/104159755');closeWindowById('open_commend');openWindowById('open_commend_success');}"></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="layer" id="open_commend_success" style="display: none;">
		<div class="layer_box">
			<h2>
				<img src="../../resources/img/op_but_close.gif"
					onclick="closeWindowById('open_commend_success')">将Icey～豆豆推荐给好友
			</h2>
			<div class="recommended_layer">
				<p class="pt20">
					<img src="../../resources/img/success_icon.jpg">&nbsp;&nbsp;成功复制了Icey～豆豆的征友地址，您可以将地址通过QQ或MSN发送给朋友
				</p>
			</div>
			<div class="operation_btn pb20">
				<ul>
					<li class="fixed_btn"><a
						href="javascript:closeWindowById('open_commend_success')"></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="layer" id="open_commend_error" style="display: none;">
		<div class="layer_box">
			<h2>
				<img src="../../resources/img/op_but_close.gif"
					onclick="closeWindowById('open_commend_error')">将Icey～豆豆推荐给好友
			</h2>
			<div class="recommended_layer">
				<p class="pt20">
					<img src="../../resources/img/error_icon.jpg">&nbsp;&nbsp;对不起，当前浏览器暂不支持复制功能，请手动复制！
				</p>
				<p>
					<span>征友地址：</span><input value="http://www.jiayuan.com/104159755"
						type="text">
				</p>
			</div>
			<div class="operation_btn pb20">
				<ul>
					<li class="fixed_btn"><a
						href="javascript:closeWindowById('open_commend_error')"></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!--推荐给好友 end-->

	<!--魅力值 start-->
	<div class="layer" id="open_meili" style="display: none;">
		<div class="layer_box">
			<h2>
				<img src="../../resources/img/op_but_close.gif"
					onclick="closeWindowById('open_meili')">温馨提示
			</h2>
			<div class="recommended_layer">
				<p class="pt20">您的诚意铸就TA的魅力，快去挑选一款最代表您诚意的礼物送给TA吧～</p>
			</div>
			<div class="operation_btn pb20">
				<ul>
					<li class="fixed_btn"><a
						onclick="closeWindowById('open_meili');openWindow('','','http://gift.jiayuan.com/send_gift.php?uid=104159755',610,610);"
						onmousedown="send_jy_pv2('|givenCharmV1|');" href="javascript:;"></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!--魅力值 end-->

	<!--弹出层 start-->
	<div class="layer" id="open_window"
		style="top: 238.5px; left: 345.5px; width: 572px; display: none;">
		<div class="layer_box">
			<div style="display: none;" class="layer_title" id="open_window_head">
				<h2>
					<img src="../../resources/img/op_but_close.gif"
						onclick="closeWindow()" title="关闭"><span
						id="open_window_title"></span>
				</h2>
			</div>
			<div class="layer_content" id="open_window_content">
				<iframe src="../../resources/html/photo_scyd_tc.htm"
					style="display: block;" id="open_window_iframe" scrolling="no"
					allowtransparency="true" frameborder="0" height="222" width="572"></iframe>
			</div>
			<div id="iframe_loading"
				style="position: absolute; left: 182px; top: 101px; display: none;">
				<img id="loading_focus" src="../../resources/img/loading.gif">
			</div>
		</div>
	</div>
	<!--弹出层 end-->

	<!--我的地图 start-->
	<div class="layer" id="open_map" style="display: none;">
		<div class="map_layer">
			<div class="mapclose">
				<a href="javascript:;" onclick="closeWindowById('open_map')"
					class="close"></a>
				<div class="clear"></div>
			</div>
			<div class="mapiframe">
				<iframe src="" scrolling="no" id="mapiframe" frameborder="0"
					height="263" width="494"></iframe>
			</div>
			<div class="mapbotton">
				<a href="http://www.jiayuan.com/map/result.php?from=profile"
					target="_blank" onmousedown="send_jy_pv2('|220167_6|');"><img
					src="../../resources/img/mapbotton.jpg" border="0" height="41"
					width="138"></a>
			</div>
		</div>
	</div>
	<!--我的地图 end-->

	<!--vip start-->
	<div class="layer" id="open_vip" style="display: none;">
		<div class="layer_box">
			<h2>
				<img src="../../resources/img/op_but_close.gif"
					onclick="closeWindowById('open_vip')">温馨提示
			</h2>
			<div class="recommended_layer">
				<p class="pt20">
					您还不是VIP会员，<a
						href="http://www.jiayuan.com/usercp/service/upgrade.php?from=skin"
						target="_blank">立即开通</a>尊享个性装扮，全部免费！
				</p>
			</div>
			<div class="operation_btn pb20">
				<ul>
					<li class="fixed_btn"><a
						onclick="closeWindowById('open_vip'); window.open('http://www.jiayuan.com/usercp/service/upgrade.php?from=skin');"
						href="javascript:;"></a></li>
				</ul>
			</div>
		</div>
	</div>
	<!--vip end-->

	<!--邀请分享 start-->
	<div class="layer" id="open_share_invite" style="display: none;">
		<div class="layer_box">
			<h2>
				<img src="../../resources/img/op_but_close.gif"
					onclick="closeWindowById('open_share_invite')">邀请成功
			</h2>
			<div class="min_layer">
				<h3>
					您的邀请已成功发送。<span>请耐心等待对方开通吧！</span>
				</h3>
				<p>
					<a onclick="closeWindowById('open_share_invite'); " onmousedown=""
						href="javascript:;">继续浏览该用户资料</a>
				</p>
			</div>
		</div>
	</div>
	<!--邀请分享 start-->

	<script type="text/javascript">
		//设置域 为了弹出页面的js操作
		var reg_host_const_flag = 0;
		var reg_host_const_test = 0;
		var reg_host_domain = document.domain;

		function setDomainForIframe() {
			if (reg_host_const_flag == 0 || reg_host_const_flag == 7) {
				if (reg_host_const_test == 1) {
					document.domain = 'miuu.cn';
				} else {
					document.domain = 'jiayuan.com';
				}
			} else {
				if (reg_host_const_test == 1) {
					document.domain = 'miuu.cn';
				} else {
					document.domain = 'msn.com.cn';
				}
			}
		}

		function isIE() {
			var browser = navigator.appVersion;
			if (browser.indexOf("MSIE") >= 1) {
				return true;
			} else {
				return false;
			}
		}

		function showServiceInfo(id, event_hdl) {
			xpos = 0;
			ypos = 0;
			if (isIE()) {
				var Ypos;
				var Xpos;
				var Offwidth;
				var Offheight;
				var standardCompat = document.compatMode.toLowerCase();

				if (standardCompat == "css1compat") {
					Ypos = document.documentElement.scrollTop;
				} else if (standardCompat == "backcompat"
						|| standardCompat == "quirksmode") {
					Ypos = document.body.scrollTop;
				}
				var top_tmp = event_hdl.clientY + Ypos;
				var left_tmp = event_hdl.clientX;
			} else {
				var top_tmp = event_hdl.pageY;
				var left_tmp = event_hdl.pageX;
			}

			if (id == 'charm') {
				left_tmp += xpos + 10;
				top_tmp += ypos - 50;
			} else {
				left_tmp += xpos + 30;
				top_tmp += ypos - 20;
			}

			getID(id).style.left = left_tmp + 'px';
			getID(id).style.top = top_tmp + 'px';
			getID(id).style.display = 'block';
			getID(id).style.display = 'block';
		}

		function showById(id) {
			getID(id).style.display = 'block';
		}

		function hiddenById(id) {
			getID(id).style.display = 'none';
		}

		function cutImage() {
			if (getID('urer_srcoll_box')) {
				var objs = getID('urer_srcoll_box').getElementsByTagName('img');
				for (var i = 0; i < objs.length; i++)
					setImage(objs.item(i));
			}
		}

		//截取图片
		function setImage(obj) {
			var box = obj.parentNode;//照片对象
			var size = 110;//截取尺寸
			var over_width = (obj.width - size) / 2;//溢出宽度
			var old_width = obj.width;//原始宽度
			var top_size = 10;//距离顶部的高度百分比
			var offset_height = 0;//垂直偏移

			//设置图片大小
			box.style.width = size;
			box.style.height = size;
			box.setAttribute('style', 'width:' + size + 'px;height:' + size
					+ 'px;');
			offset_height = obj.style.height - obj.height * top_size / 100;//距离顶部的高度百分比

			//垂直位置
			if (obj.height > size && obj.width > obj.height) {
				if (top_size == 0) {
					obj.style.top = 0;
					obj.setAttribute('style', 'top:0px');
				} else {
					obj.style.top = offset_height;
					obj.setAttribute('style', 'top:' + offset_height + 'px');
				}
			}

			//水平位置
			if (obj.height < size) {
				obj.width = size / obj.height * old_width;//重置尺寸
				over_width = (obj.width - size) / 2;
				obj.style.left = obj.style.width - over_width;
				obj.setAttribute('style', 'left:-' + over_width + 'px');
			}
		}

		function tab(name, cur, n) {
			for (i = 1; i <= n; i++) {
				var h = getID(name + i);
				var c = getID(name + 'Con' + i);
				if (h.className == 'on')
					h.className = '';
				if (i == cur) {
					h.className += ' on';
					c.style.display = 'block';
				} else {
					h.className = h.className.replace("on", "");
					h.className = h.className.replace(" on", "");
					c.style.display = 'none';
				}
			}
		}

		function showIcons(id) {
			iconlayer("viplayer");
			iconlayer("levellayer");
			iconlayer("giftCon1");
			iconlayer("giftCon2");
		}

		function iconlayer(id) {
			var tipsid = getID(id);
			if (getID(id)) {
				var tipsid = getID(id);
				var tipslist = tipsid.getElementsByTagName("li");
				var tipsdiv;
				for (var i = 0; i < tipslist.length; i++) {
					tipslist[i].onmouseover = function() {
						tipsdiv = this.getElementsByTagName("div");
						if (typeof (tipsdiv[0]) != "undefined")
							tipsdiv[0].style.display = "block";
					}
					tipslist[i].onmouseout = function() {
						tipsdiv = this.getElementsByTagName("div");
						if (typeof (tipsdiv[0]) != "undefined")
							tipsdiv[0].style.display = "none";
					}
				}
			}
		}

		function addLoadEvent(func) {
			var oldonload = window.onload;
			if (typeof window.onload != 'function') {
				window.onload = func;
			} else {
				window.onload = function() {
					if (oldonload) {
						oldonload();
					}
					func();
				}
			}
		}

		addLoadEvent(function() {
			showIcons();
			//cutImage();
			scrollImage();
		});

		if (typeof loginWindow == "object") {
			loginWindow.set("config", {
				key : 23,
				aid : 0,
				callback : function() {
					location.reload();
				}
			});
		}

		//图片滚动
		function scrollImage() {
			var left_button = getID("user_prev");
			var right_button = getID("user_next");

			if (getID("user_prev")) {
				left_button.onmousedown = function() {
					goLeftStart();
					changeStyle();
				}
				left_button.onmouseup = function() {
					goLeftStop();
				}

				right_button.onmousedown = function() {
					goRightStart();
					changeStyle();
				}
				right_button.onmouseup = function() {
					goRightStop();
				}
				changeStyle();
			}
		}

		if (getID('urer_srcoll')) {
			var wrap = getID("urer_srcoll");
			var iwidth = 113;
			var objs = wrap.getElementsByTagName('li');
			var wrap_width = objs.length * iwidth;
			getID("urer_srcoll_box").style.width = wrap_width + 'px';
		}

		//按钮样式
		function changeStyle() {
			var left_button = getID("user_prev");
			var right_button = getID("user_next");

			if (objs.length <= 4) {
				left_button.className = "left_btn_no";
				right_button.className = "right_btn_no";
			} else {
				if (wrap.scrollLeft <= 0) {
					left_button.className = "left_btn_no";
				} else {
					left_button.className = "left_btn";
				}

				if (wrap.scrollLeft >= Number(wrap_width - iwidth * 4)) {
					right_button.className = "right_btn_no";
				} else {
					right_button.className = "right_btn";
				}
			}
		}

		var browse = window.navigator.appName.toLowerCase();
		var Speed = 10; //速度(毫秒)
		Speed = (browse.indexOf("opera") > -1) ? Speed / 2 : Speed; //opera速度加倍
		var Space = 15; //每次移动(px)
		var PageWidth = 113; //翻页宽度
		var fill = 0; //整体移位
		var MoveLock = false; //移动锁
		var MoveTimeObj; //移动对象
		var MoveWay = "right"; //移动方向
		var Comp = 0;
		var no_change_left = 0;
		var no_change_right = 0;
		var showArea_width = wrap_width;

		function goLeftStart() {
			clearInterval(MoveTimeObj);
			if (MoveLock)
				return;
			changeStyle();
			MoveLock = true;
			MoveWay = "left";
			goLeft();
			MoveTimeObj = setInterval('goLeft();', Speed);
		}

		function goLeftStop() {
			if (MoveWay == "right")
				return;
			clearInterval(MoveTimeObj);
			if ((wrap.scrollLeft - fill) % PageWidth != 0) {
				Comp = fill - (wrap.scrollLeft % PageWidth);
				doScroll();
			} else {
				MoveLock = false;
			}
		}

		function goLeft() {
			wrap.scrollLeft -= Space;
			if (wrap.scrollLeft == 0) {
				changeStyle();
			}
		}

		function goRightStart() {
			clearInterval(MoveTimeObj);
			if (MoveLock)
				return;
			changeStyle();
			MoveLock = true;
			MoveWay = "right";
			goRight();
			MoveTimeObj = setInterval('goRight()', Speed);
		}

		function goRightStop() {
			if (MoveWay == "left")
				return;
			clearInterval(MoveTimeObj);
			if (wrap.scrollLeft % PageWidth - (fill >= 0 ? fill : fill + 1) != 0) {
				Comp = PageWidth - wrap.scrollLeft % PageWidth + fill;
				doScroll();
			} else {
				MoveLock = false
			}
		}

		function goRight() {
			wrap.scrollLeft += Space;
			if (wrap.scrollLeft == (showArea_width - PageWidth * 4)) {
				changeStyle();
			}
		}

		//平滑滚动
		function doScroll() {
			var num, TempSpeed = Speed, TempSpace = Space;
			if (Comp == 0) {
				MoveLock = false;
				return;
			}
			if (Math.abs(Comp) < PageWidth / 2) {
				TempSpace = Math.round(Math.abs(Comp / Space));
				if (TempSpace < 1)
					TempSpace = 1;
			}
			if (Comp < 0) {
				if (Comp < -TempSpace) {
					Comp += TempSpace;
					num = TempSpace;
				} else {
					num = -Comp;
					Comp = 0;
				}
				wrap.scrollLeft -= num;
				if (wrap.scrollLeft == 0) {
					changeStyle();
				}
				setTimeout('doScroll()', TempSpeed)
			} else {
				if (Comp > TempSpace) {
					Comp -= TempSpace;
					num = TempSpace;
				} else {
					num = Comp;
					Comp = 0;
				}
				wrap.scrollLeft += num;
				if (wrap.scrollLeft == (showArea_width - PageWidth * 4)) {
					changeStyle();
				}
				setTimeout('doScroll()', TempSpeed);
			}
		}

		function profile_register() {
			var sex = radio_value('sex');
			var year = getID('year').value;
			var month = getID('month').value;
			var day = getID('day').value;
			var province = getID('province').value;
			var city = getID('city').value;
			var marriage = radio_value('marriage');
			var email = getID('username').value;

			var mydomain = "";
			var host_name = location.hostname;
			var host_arr = host_name.split(".");
			var host_length = host_arr.length;

			//当前域名
			if (host_arr[1] == 'com' || host_arr[1] == 'cn') {
				for (var i = 0; i < host_length; i++) {
					mydomain += "." + host_arr[i];
				}
			} else {
				for (var i = 1; i < host_length; i++) {
					mydomain += "." + host_arr[i];
				}
			}

			window.open('http://reg' + mydomain + '/?hao123=1&sex=' + sex
					+ '&year=' + year + '&month=' + month + '&day=' + day
					+ '&email=' + email + '&province=' + province + '&city='
					+ city + '&marriage=' + marriage + '&bd=9');
		}

		function radio_value(radio_name) {
			var radio_arr = document.getElementsByName(radio_name);
			for (var i = 0; i < radio_arr.length; i++) {
				if (radio_arr[i].checked == true) {
					return radio_arr[i].value;
				}
			}
			return 0;
		}

		function changecostzhifubao(typea, typeb) {
			if (typeb == 'qita') {
				yinhang_qianshua = getID('yinhang_zhifubao1').value;
				var reg_zfb = new RegExp("^[0-9]*$");
				if (!reg_zfb.test(yinhang_qianshua)) {
					alert("请输入数字!");
					getID('yinhang_zhifubao1').value = '';
					getID('cost_total_zhifubao').innerHTML = '0';
					getID("yinhang_zhifubao1").focus();
					return false;
				}
				yinhang_qianshua_int = parseInt(yinhang_qianshua, 10);//十进制整形
				if (isNaN(yinhang_qianshua_int)) {
					yinhang_qianshua_int = 0;
					getID('yinhang_zhifubao1').value = '';
					getID('cost_total_zhifubao').innerHTML = '0';
				} else {
					getID('cost_total_zhifubao').innerHTML = yinhang_qianshua_int * 2
				}
			} else {
				getID('cost_total_zhifubao').innerHTML = typea * 2
			}
		}

		function changecostyinhang(typea, typeb) {
			if (typeb == 'qita') {
				yinhang_qianshua = getID('yinhang_youpiao1').value;
				var reg_yh = new RegExp("^[0-9]*$");
				if (!reg_yh.test(yinhang_qianshua)) {
					alert("请输入数字!");
					getID('yinhang_youpiao1').value = '';
					getID('cost_total_yinhang').innerHTML = '0';
					getID('yinhang_youpiaocc').value = '0';
					getID("yinhang_youpiao1").focus();
					return false;
				}
				yinhang_qianshua_int = parseInt(yinhang_qianshua, 10);//十进制整形
				if (isNaN(yinhang_qianshua_int)) {
					yinhang_qianshua_int = 0;
					getID('yinhang_youpiao1').value = '';
					getID('cost_total_yinhang').innerHTML = '0';
				} else {
					getID('cost_total_yinhang').innerHTML = yinhang_qianshua_int * 2;
					getID('yinhang_youpiaocc').value = yinhang_qianshua_int * 2;
				}
			} else {
				getID('cost_total_yinhang').innerHTML = typea * 2;
			}
		}
		function check_form(zf_type) {
			if (zf_type == 'yh') {
				yinhang_qianshua = getID('yinhang_youpiao1').value;
				var reg_yh = new RegExp("^[0-9]*$");
				if (!reg_yh.test(yinhang_qianshua)) {
					alert("请输入数字!");
					getID('yinhang_youpiao1').value = '';
					getID('cost_total_yinhang').innerHTML = '0';
					getID('yinhang_youpiaocc').value = '0';
					getID("yinhang_youpiao1").focus();
					return false;
				}
			} else {
				yinhang_qianshua = getID('yinhang_zhifubao1').value;
				var reg_zfb = new RegExp("^[0-9]*$");
				if (!reg_zfb.test(yinhang_qianshua)) {
					alert("请输入数字!");
					getID('yinhang_zhifubao1').value = '';
					getID('cost_total_zhifubao').innerHTML = '0';
					getID("yinhang_zhifubao1").focus();
					return false;
				}
			}
		}
		function orderService() {
			var pro_id = getRadioValue("radios3");
			if (pro_id != null) {
				send_jy_pv2('service_bmsg_zuanshi_' + pro_id + '|');
				setYxCookie('gaoji_kanxin', pro_id);
				window
						.open("http://www.jiayuan.com/usercp/service/dobmsg.php?src_key=recommend_form&pro_id="
								+ pro_id + "&jyyx=1&uid=");
			} else
				alert('请选择服务类型');
		}

		function order_service(name) {
			var golddiamond_pid = getRadioValue(name);
			if (golddiamond_pid != null) {
				send_jy_pv2('service_bmsg_jinzuan_' + golddiamond_pid
						+ '|122261858');
				setYxCookie('gaoji_kanxin', golddiamond_pid);
				window
						.open("http://www.jiayuan.com/usercp/service/st_run.php?src_key=recommend_form&product_id="
								+ golddiamond_pid + "&jyyx=1&uid=122261858");
			} else
				alert('请选择服务类型');
		}

		function setYxCookie(c_name, value, expiredays) {
			var exdate = new Date();
			exdate.setDate(exdate.getDate() + expiredays);
			document.cookie = c_name + "=" + escape(value)
					+ ((expiredays == null) ? "" : ";expires=" + exdate);
		}

		function getRadioValue(objradioName) {
			var obj_radio;
			obj_radio = document.getElementsByName(objradioName);
			if (obj_radio != null) {
				var i;
				for (i = 0; i < obj_radio.length; i++) {
					if (obj_radio[i].checked) {
						return obj_radio[i].value;
					}
				}
			}
			return null;
		}

		function closeMask(str) {
			setDomainForIframe();
			closeWindow();
		}

		//2013.03.04 学校名称长字符处理
		function getByClass(oParent, sClass) {
			var aEle = oParent.getElementsByTagName('*');
			var result = [];
			var re = new RegExp('\\b' + sClass + '\\b', 'i');

			for (var i = 0; i < aEle.length; i++) {
				if (re.test(aEle[i].className)) {
					result.push(aEle[i]);
				}
				;
			}
			;
			return result;
		};
		var re = /现更名/g;
		var aWorkLi = getByClass(document, 'work_life_content')[0]
				.getElementsByTagName('li');
		if (re.test(aWorkLi[12].innerHTML)) {
			aWorkLi[12].style.width = '238px';
			aWorkLi[12].style.height = '50px';
			aWorkLi[12].style.paddingRight = '14px';
		};

		var is_online = 0;
		var is_link = 0;
		var uid_disp = 104159755;
		send_jy_pv2('|1009622_4|104159755');
		if (document.location.href.substring(document.location.href.length - 7) == "#cp_kpd") {
			openWindow(
					'',
					'',
					'http://www.jiayuan.com/profile/reliable.php?uid=104159755',
					570, 380);
			document.location.href = document.location.href + "#1";
		}
		var avatar_scyd = getID("profile_avatar_scyd");
		if (avatar_scyd) {
			avatar_scyd.href = "javascript:;";
			avatar_scyd.onclick = function() {
				openWindow(
						'',
						'',
						'http://www.jiayuan.com/usercp/photo_scyd_tc.php?tc_type=1&touid=104159755',
						572, 222);
				return false;
			}
		}
	</script>
	<!-- footer -->
	<div class="footer">
		<script type="text/javascript"
			src="../../resources/js/profile_foot.js"></script>
		<script type="text/javascript" src="../../resources/js/w4-simple.js"></script>
		<style type="text/css">
* {
	padding: 0;
	margin: 0
}

.hf_wapper {
	width: 950px;
	margin: 0 auto;
	clear: both;
	font-family: SimSun, Arial, Helvetica, sans-serif
}

.hf_wapper img,.hf_wapper img a {
	border: none
}

#common_footer {
	width: 950px;
	font-size: 12px;
	padding: 20px 0;
	text-align: center;
	line-height: 2;
	color: #636363
}

#common_footer p {
	text-align: center
}

#common_footer p a {
	margin: 0 8px;
	padding: 0;
	color: #636363;
	text-decoration: none
}

#common_footer p a:hover {
	margin: 0 8px;
	color: #E7417F;
	text-decoration: underline
}

#common_footer p .bot_link_none:hover {
	color: #636363;
	text-decoration: none
}
</style>
		<div class="hf_wapper">
			<div class="hf_foot" id="common_footer">
				<p id="bottom_nav_link">
					<a name="foot_nav_link"
						href="http://www.jiayuan.com/helpcenter/postmail.php"
						target="_blank">联系客服</a> <a name="foot_nav_link"
						href="http://www.jiayuan.com/bottom/index.html" target="_blank">关于我们</a>
					<a name="foot_nav_link"
						href="http://www.jiayuan.com/bottom/connect.html" target="_blank">联系我们</a>
					<a name="foot_nav_link"
						href="http://www.jiayuan.com/bottom/business.html" target="_blank">无线业务</a>
					<a name="foot_nav_link"
						href="http://www.jiayuan.com/bottom/declare.html" target="_blank">注册条款</a>
					<a name="foot_nav_link"
						href="http://www.jiayuan.com/bottom/links.php" target="_blank">友情链接</a>
					<a name="foot_nav_link"
						href="http://www.jiayuan.com/bottom/jobs.html" target="_blank">招聘信息</a>
					<a name="foot_nav_link"
						href="http://www.jiayuan.com/bottom/notice.html" target="_blank">交友信息</a>
					<a name="foot_nav_link"
						href="http://www.jiayuan.com/bottom/private.html" target="_blank">隐私保护</a>
					<a name="foot_nav_link" href="http://www.jiayuan.com/helpcenter/"
						target="_blank">帮助中心</a> <a name="foot_nav_link"
						href="http://www.jiayuan.com/guard/" target="_blank">安全中心</a>
				</p>
				<p id="bottom_site_copyright" style="">
					<a class="bot_link_none">中文实名：世纪佳缘</a> <a class="bot_link_none">ICP证书：沪B2-20100074</a>
					<a href="http://www.jiayuan.com/certificate/zengzhi.html"
						target="_blank">增值电信业务经营许可证：沪B2-20070313</a> <a
						href="http://www.jiayuan.com/certificate/iso.html" target="_blank">ISO9001质量体系认证</a>
					<a href="http://www.jiayuan.com/certificate/license.html"
						target="_blank">沪网文[2012]0720-106号</a>
				</p>
				<p>
					©&nbsp;&nbsp;2003-2014&nbsp;版权所有&nbsp;&nbsp;&nbsp;&nbsp;京公网安备110105002124号&nbsp;&nbsp;&nbsp;&nbsp;不良和违法信息举报专线：010-57835066
				</p>
				<div id="page_bottom_info"
					style="text-align: center; margin-bottom: 10px"></div>
				<script type="text/javascript">
					//Begin PV statistics
					var common_bot_domain_array = new Array(); //参与统计的频道/栏目配置数组
					common_bot_domain_array['www_index'] = 1; //佳缘站首页
					common_bot_domain_array['www'] = 1;
					common_bot_domain_array['msg'] = 1;
					common_bot_domain_array['usercp'] = 1; //我的佳缘首页
					common_bot_domain_array['usercp_o'] = 1; //我的佳缘其他页
					common_bot_domain_array['profile'] = 1;
					common_bot_domain_array['photo'] = 1;
					common_bot_domain_array['search'] = 1;
					common_bot_domain_array['diary'] = 1;
					common_bot_domain_array['love'] = 1;
					common_bot_domain_array['xingfu'] = 1;
					common_bot_domain_array['party'] = 1;
					common_bot_domain_array['gift'] = 1;
					common_bot_domain_array['map'] = 1;
					common_bot_domain_array['login'] = 1;
					common_bot_domain_array['reg'] = 1;
					common_bot_domain_array['game'] = 1;
					common_bot_domain_array['caipiao'] = 1;
					common_bot_domain_array['webim'] = 1;
					common_bot_domain_array['show'] = 1;
					common_bot_domain_array['book'] = 1;
					common_bot_domain_array['case'] = 1; //专题
					common_bot_domain_array['guard'] = 1;
					common_bot_domain_array['help'] = 1;
					common_bot_domain_array['mobile'] = 1; //手机交友
					common_bot_domain_array['subject'] = 1; //专题
					common_bot_domain_array['vip'] = 1; //红娘
					common_bot_domain_array['club'] = 1;
					common_bot_domain_array['meilistar'] = 1; //魅力之星
					common_bot_domain_array['master'] = 1;
					common_bot_domain_array['paper'] = 1; //爱情测试
					common_bot_domain_array['news'] = 1;
					common_bot_domain_array['cooperation'] = 1; //对外合作

					var bot_channel_str = ''; //通用底频道字符串
					var jy_foot_statistics = {};
					//随机数
					jy_foot_statistics.rnd_num = function(d, u) {
						var rnd = parseInt(Math.random() * (u - d + 1) + d);
						return rnd;
					}
					//获取频道标识
					jy_foot_statistics.get_channel = function() {
						//频道级别的目录配置数组，URL包含以下目录的单独统计
						var bottom_channel_dir_array = Array('/usercp/?from=',
								'/usercp/', '/msg/', '/club/', '/meilistar/',
								'/cooperation/', '/helpcenter/', '/guard/',
								'/parties/wap_clients/', '/parties/',
								'/subject/', '/master/', '/paper/', '/news/');
						//获取二级域，做频道标识
						var host_name = window.location.host.toLowerCase(); //获取域名
						var bottom_current_channel = host_name.split('.')[0];
						//针对特殊二级域名做细致拆分
						switch (bottom_current_channel) {
						case 'www':
							//将www二级域名里的首页、信件、我的佳缘和个人资料页等单独拿出
							var bot_href = window.location.href.toLowerCase(); //获取当前URL
							//当前如果是首页，就单独设置标记统计
							if (bot_href == 'http://www.jiayuan.com/'
									|| bot_href == 'http://www.jiayuan.com/index.html') {
								bottom_current_channel = 'www_index'; //佳缘首页，单独处理首页
								break;
							}
							if (bot_href == 'http://www.jiayuan.com/usercp/') {
								bottom_current_channel = 'usercp'; //我的佳缘首页，单独处理特殊的我的佳缘首页访问方式
								break;
							}
							var bottom_channel_select = 0; //频道选择标记
							for (var ch_dir = 0; ch_dir < bottom_channel_dir_array.length; ch_dir++) {
								if (bot_href
										.indexOf(bottom_channel_dir_array[ch_dir]) >= 0) { //用当前的URL循环匹配配置好的频道数组，用于判断当前应该属于那个频道（栏目）
									bottom_channel_select = 1;
									break;
								}
							}
							if (bottom_channel_select == 1) {
								switch (bottom_channel_dir_array[ch_dir]) {
								case '/usercp/?from=':
									bottom_current_channel = 'usercp'; //我的佳缘首页
									break;
								case '/usercp/':
									bottom_current_channel = 'usercp_o'; //我的佳缘其他页面（除我的佳缘首页）
									break;
								case '/msg/':
									bottom_current_channel = 'msg'; //信件
									break;
								case '/club/':
									bottom_current_channel = 'club'; //俱乐部
									break;
								case '/meilistar/':
									bottom_current_channel = 'meilistar'; //魅力之星
									break;
								case '/cooperation/':
									bottom_current_channel = 'cooperation'; //对外合作
									break;
								case '/helpcenter/':
									bottom_current_channel = 'help'; //帮助中心
									break;
								case '/guard/':
									bottom_current_channel = 'guard'; //安全中心
									break;
								case '/parties/':
								case '/subject/':
									bottom_current_channel = 'case'; //专题
									break;
								case '/parties/wap_clients/':
									bottom_current_channel = 'mobile'; //手机交友
									break;
								case '/vip/':
									bottom_current_channel = 'vip'; //红娘
									break;
								case '/master/':
									bottom_current_channel = 'master'; //小龙女频道
									break;
								case '/paper/':
									bottom_current_channel = 'paper'; //爱情测试
									break;
								case '/news/':
									bottom_current_channel = 'news'; //媒体
									break;
								}
							} else {
								if (/^(http\:\/\/www\.jiayuan\.com\/\d+\/?)([\?\#])?.*$/
										.test(bot_href)
										|| /^(http\:\/\/www\.miuu\.cn\/\d+\/?)([\?\#])?.*$/
												.test(bot_href)) {
									bottom_current_channel = 'profile'; //个人资料页
								}
							}
							break;
						case 'xingfu':
							bottom_current_channel = 'love';
							break;
						case 'subject':
							bottom_current_channel = 'case';
							break;
						}
						return bottom_current_channel;
					}
					//开始统计
					jy_foot_statistics.run = function() {
						//显示版权信息区域
						document.getElementById("bottom_site_copyright").style.display = '';
						var bot_host = window.location.host.toLowerCase(); //获取域名
						bot_channel_str = jy_foot_statistics
								.get_channel(bot_host); //获取二级域名（获取相应的频道/栏目标识）
						var times = new Date().getTime(); //获取当前时间，配合随机数保证每一次访问小图片参数唯一
						if (common_bot_domain_array[bot_channel_str] != 1) {
							bot_channel_str = 'other'; //其他域名
						}
						var uid = '';
						if (typeof JY != "undefined") { //判断是否有JY组件
							uid = JY.login.getUser().uid; //获取UID，用于UV统计
							if (uid > 0) {
								uid = uid + '|' //如果存在UID，拼接UID字符串
							}
						}
						if (bot_channel_str != 'passport') { //passport使用的是https协议，排除
							document
									.write('<img src="http://pv2.jyimg.com/any/a.gif?||jy_site_all_pv|'
											+ bot_channel_str
											+ '|'
											+ uid
											+ '&t='
											+ times
											+ jy_foot_statistics.rnd_num(10000,
													99999)
											+ '|" style="display:none" />');
						}
					}
					jy_foot_statistics.run();
					var common_bot_sub_domain = jy_foot_statistics
							.get_channel();
					//End PV statistics

					//Begin comScore Tag 以下，第三方监控代码
					var _comscore = _comscore || [];
					_comscore.push({
						c1 : "2",
						c2 : "15205083"
					});
					(function() {
						var s = document.createElement("script"), el = document
								.getElementsByTagName("script")[0];
						s.async = true;
						s.src = (document.location.protocol == "https:" ? "https://sb"
								: "http://b")
								+ ".scorecardresearch.com/beacon.js";
						el.parentNode.insertBefore(s, el);
					})();
				</script>
				<img src="../../resources/img/a.gif" style="display: none">
				<noscript>
					<img
						src="http://b.scorecardresearch.com/p?c1=2&c2=15205083&cv=2.0&cj=1" />
				</noscript>
				<!-- End comScore Tag -->
			</div>
		</div>
		<style type="text/css">
* html{
	background-image: url(about:blank);
	background-attachment: fixed
}

body {
	padding: 0;
	margin: 0
}

#common_footer_guide {
	width: 100%;
	height: 60px;
	z-index: 1001;
	position: fixed;
	left: 0;
	bottom: 0;
	_position: absolute;
	_top: expression(documentElement.scrollTop +
		documentElement.clientHeight-this.offsetHeight)
}

#common_footer_guide .guide_shade {
	background: #000;
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
	opacity: .6;
	filter: alpha(opacity = 60)
}

#common_footer_guide .guide_layer {
	position: absolute;
	width: 840px;
	left: 50%;
	top: 0;
	z-index: 1020;
	margin: 0;
	padding: 0;
	margin-left: -420px;
	_margin-left: -418px;
	padding-top: 15px
}

#common_footer_guide .guide_layer a {
	diaplay: block;
	float: left;
	margin: 0;
	padding: 0;
	width: 30px;
	height: 30px;
	overflow: hidden;
	margin-left: 18px;
	cursor: pointer;
	text-decoration: none
}

#common_footer_guide .guide_layer .guide_bt {
	font-size: 16px;
	color: #FFF;
	font-weight: bold;
	width: 170px;
	padding-top: 4px;
	height: 26px;
	_padding-top: 7px;
	_height: 23px;
	cursor: text;
	margin-left: 0
}

#common_footer_guide .guide_layer .guide_qq {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat 0 0
}

#common_footer_guide .guide_layer .guide_qq:hover {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat 0 -31px
}

#common_footer_guide .guide_layer .guide_wb {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -31px 0
}

#common_footer_guide .guide_layer .guide_wb:hover {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -31px -31px
}

#common_footer_guide .guide_layer .guide_bd {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -62px 0
}

#common_footer_guide .guide_layer .guide_bd:hover {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -62px -31px
}

#common_footer_guide .guide_layer .guide_zf {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -93px 0
}

#common_footer_guide .guide_layer .guide_zf:hover {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -93px -31px
}

#common_footer_guide .guide_layer .guide_rr {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -124px 0
}

#common_footer_guide .guide_layer .guide_rr:hover {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -124px -31px
}

#common_footer_guide .guide_layer .guide_kx {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -155px 0
}

#common_footer_guide .guide_layer .guide_kx:hover {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -155px -31px
}

#common_footer_guide .guide_layer .guide_db {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -186px 0
}

#common_footer_guide .guide_layer .guide_db:hover {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat -186px -31px
}

#common_footer_guide .guide_layer .guide_zc {
	margin-left: 105px;
	width: 128px;
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat 0 -62px
}

#common_footer_guide .guide_layer .guide_zc:hover {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat 0 -92px
}

#common_footer_guide .guide_layer .guide_dl {
	width: 128px;
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat 0 -122px
}

#common_footer_guide .guide_layer .guide_dl:hover {
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat 0 -152px
}

#common_footer_guide .guide_close {
	display: block;
	cursor: pointer;
	z-index: 1010;
	position: absolute;
	right: 15px;
	top: 15px;
	width: 28px;
	height: 28px;
	background:
		url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png)
		no-repeat 0 -183px
}

#common_footer_guide .guide_close {
	-webkit-transition: all 0.4s ease;
	-moz-transition: all 0.4s ease;
	-ms-transition: all 0.4s ease;
	-o-transition: all 0.4s ease;
	transition: all 0.4s ease;
}

#common_footer_guide .guide_close:hover {
	-webkit-transform: rotate(180deg) scale(0.8);
	-moz-transform: rotate(180deg) scale(0.8);
	-ms-transform: rotate(180deg) scale(0.8);
	-o-transform: rotate(180deg) scale(0.8);
	transform: rotate(180deg) scale(0.8)
}
</style>
		<div id="common_footer_guide" style="display: none">
			<div class="guide_shade"></div>
			<div class="guide_layer">
				<a class="fixPNG guide_bt">直接使用这些账号登录</a> <a class="fixPNG guide_qq"
					href="###"></a> <a class="fixPNG guide_wb" href="###"></a> <a
					class="fixPNG guide_bd" href="###"></a> <a class="fixPNG guide_zf"
					href="###"></a> <a class="fixPNG guide_rr" href="###"></a> <a
					class="fixPNG guide_kx" href="###"></a>
				<!--<a class="guide_db"></a>-->
				<a class="guide_zc" href="###" target="_blank"></a> <a
					class="guide_dl" href="###"></a>
			</div>
			<a class="fixPNG guide_close" href="javascript:void(0)"></a>
		</div>
		<script type="text/javascript">
			//开启未登录底部状态条判断
			if (typeof (HEAD_USER) != 'undefined' && HEAD_USER.uid == 0) {
				var jy_foot_layer = {};
				jy_foot_layer.is_layer_show = true; //默认开启底通条
				jy_foot_layer.session_hash = jy_head_function
						.get_cookie('SESSION_HASH');
				//配置底通浮层
				jy_foot_layer.set_config = function() {
					var hide_cfg = [];
				}
				//关闭底通浮层
				jy_foot_layer.layer_close = function() {
					if (document.getElementById('common_footer_guide')) {
						document.getElementById('common_footer_guide').style.display = 'none';//如果登录弹层打开，无论底通条什么状态，一律关闭
					}
				};
				//判断登录层是否隐藏
				jy_foot_layer.is_login_window_show = function() {
					if (typeof (loginWindow) == 'undefined') {
						return false;
					} else {
						return loginWindow.isOpen();
					}
				};
				//重写登录弹层的onOpen事件，实现底部条与登录层展示互斥
				if (typeof (loginWindow) != 'undefined') {
					loginWindow.onOpen = function() {
						jy_foot_layer.layer_close();
					};
				}
				//显示底部状态条
				jy_foot_layer.common_guide = function() {
					var common_footer_guide = jQuery('#common_footer_guide'), win = $(window), triggerScrollTop = 300, set_footer_guide = function() {
						if (win.scrollTop() > triggerScrollTop) {
							if (jy_foot_layer.is_layer_show
									&& !jy_foot_layer.is_login_window_show()) {
								common_footer_guide.fadeIn();
							}
						} else {
							common_footer_guide.fadeOut();
						}
						;
					};
					common_footer_guide.find('.guide_close').bind('click',
							function() {
								jy_foot_layer.is_layer_show = false;
								common_footer_guide.hide();
							});
					win.bind('load scroll resize', set_footer_guide);
					url = encodeURI(window.location.href);
					jQuery(".guide_qq").attr(
							"href",
							"http://www.jiayuan.com/general/t/?forward=qqAware&c=101&p=1&url="
									+ url);
					jQuery(".guide_wb").attr(
							"href",
							"http://www.jiayuan.com/general/t/?forward=sinaAware&c=101&p=2&url="
									+ url);
					jQuery(".guide_bd").attr(
							"href",
							"http://www.jiayuan.com/general/t/?forward=baiduOauth&c=101&p=3&url="
									+ url);
					jQuery(".guide_zf").attr(
							"href",
							"http://www.jiayuan.com/general/t/?forward=alipayOauth&c=101&p=4&url="
									+ url);
					jQuery(".guide_rr").attr(
							"href",
							"http://www.jiayuan.com/general/t/?forward=renrenAware&c=101&p=5&url="
									+ url);
					jQuery(".guide_kx").attr(
							"href",
							"http://www.jiayuan.com/general/t/?forward=kaixinAware&c=101&p=6&url="
									+ url);
					jQuery(".guide_dl").attr(
							"href",
							"http://login.jiayuan.com/?channel=1001&position=1001&pre_url="
									+ url);
					jQuery(".guide_zc").attr("href",
							"http://reg.jiayuan.com/?bd=1001");
					jQuery(".guide_qq").mousedown(
							function() {
								jy_head_function
										.click_pv('|common_footer_login_qq|'
												+ jy_foot_layer.session_hash);
							});
					jQuery(".guide_wb").mousedown(
							function() {
								jy_head_function
										.click_pv('|common_footer_login_wb|'
												+ jy_foot_layer.session_hash);
							});
					jQuery(".guide_bd").mousedown(
							function() {
								jy_head_function
										.click_pv('|common_footer_login_bd|'
												+ jy_foot_layer.session_hash);
							});
					jQuery(".guide_zf").mousedown(
							function() {
								jy_head_function
										.click_pv('|common_footer_login_zf|'
												+ jy_foot_layer.session_hash);
							});
					jQuery(".guide_rr").mousedown(
							function() {
								jy_head_function
										.click_pv('|common_footer_login_rr|'
												+ jy_foot_layer.session_hash);
							});
					jQuery(".guide_kx").mousedown(
							function() {
								jy_head_function
										.click_pv('|common_footer_login_kx|'
												+ jy_foot_layer.session_hash);
							});
					jQuery(".guide_dl").mousedown(
							function() {
								jy_head_function
										.click_pv('|common_footer_login_btn|'
												+ jy_foot_layer.session_hash);
							});
					jQuery(".guide_zc").mousedown(
							function() {
								jy_head_function
										.click_pv('|common_footer_reg_btn|'
												+ jy_foot_layer.session_hash);
							});
					jQuery(".guide_close").mousedown(
							function() {
								jy_head_function
										.click_pv('|common_footer_close_btn|'
												+ jy_foot_layer.session_hash);
							});
				};
				if (typeof (jQuery) == 'undefined'
						|| parseFloat(jQuery.fn.jquery) < 1.4) {
					//加载jquery
					jy_foot_layer.include_doc = document
							.getElementsByTagName('head')[0];
					jy_foot_layer.include_js = document.createElement('script');
					jy_foot_layer.include_js.setAttribute('type',
							'text/javascript');
					jy_foot_layer.include_js
							.setAttribute('src',
									"http://images1.jyimg.com/w4/common/j/jquery-1.7.2.min.js");
					jy_foot_layer.include_doc
							.appendChild(jy_foot_layer.include_js);
					if (document.all) {//如果是IE
						jy_foot_layer.include_js.onreadystatechange = function() {
							if (jy_foot_layer.include_js.readyState == 'loaded'
									|| jy_foot_layer.include_js.readyState == 'complete') {
								jy_foot_layer.common_guide();
							}
						}
					} else {
						jy_foot_layer.include_js.onload = function() {
							jy_foot_layer.common_guide();
						}
					}
				} else {
					jy_foot_layer.common_guide();
				}
			}
		</script>
		<!--[if lte IE 6]>
<script>
DD_belatedPNG.fix('.fixPNG');
</script>
<![endif]-->
		<!-- released time 2014-09-28 09:54:05 -->

		<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

.winpopfoot {
	width: 284px;
	height: 203px;
	overflow: hidden;
	word-wrap: break-word;
	word-break: break-all;
	font-size: 12px;
	font-family: Arial, SimSun;
	color: #636363;
}

.pngforsjjy {
	behavior: expression(( T = this, T.runtimeStyle.behavior = "none")&&(T.p?0:((T.runtimeStyle.backgroundImage=
		 "none", T.runtimeStyle.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+T.src+"',sizingMethod='image')",
		T.src= "http://images.jiayuan.com/w3/global/i/bg.gif")), T.p=1));
}

.winpopfoot em,.winpopfoot span,.winpopfoot strong {
	font-weight: normal;
	font-style: normal;
	font-size: 12px;
}

.winpopfoot_box {
	position: absolute;
	top: 8px;
	left: 10px;
	width: 264px;
	height: 192px;
	overflow: hidden;
	border-bottom: 3px solid #E876B2;
	background: url(http://images1.jyimg.com/w4/index/i/bg100804_02.gif)
		repeat-x 0 -100px;
}

.winpopfoot_t {
	width: 264px;
	height: 30px;
	overflow: hidden;
}

.winpopfoot_t em {
	float: left;
	width: 67px;
	height: 25px;
	overflow: hidden;
	margin: 5px 0 0 10px;
	cursor: pointer;
}

.winpopfoot_t em strong {
	width: 67px;
	height: 25px;
	display: block;
	line-height: 25px;
	font-weight: bold;
	text-align: center;
}

.winpopfoot_t em strong.str2 {
	position: relative;
}

.winpopfoot_t em.on {
	background: url(http://images1.jyimg.com/w4/index/i/bg100804_01.gif)
		no-repeat 0 0;
}

.winpopfoot_t em.on strong.str1 {
	color: #DCDCDC;
}

.winpopfoot_t em.on strong.str2 {
	top: -26px;
	color: #444444;
}

.winpopfoot_t em.over strong.str1 {
	color: #C23174;
}

.winpopfoot_t em.over strong.str2 {
	top: -24px;
	color: #FFFFFF;
}

.winpopfoot_t span {
	float: right;
	width: 18px;
	height: 18px;
	overflow: hidden;
	margin: 7px 5px 0 0;
	cursor: pointer;
	background-image:
		url(http://images1.jyimg.com/w4/index/i/bg100804_01.gif);
}

.winpopfoot_t span.sp1 {
	background-position: -70px 0;
}

.winpopfoot_t span.sp2 {
	background-position: -90px 0;
}

.winpopfoot_t span.sp3 {
	background-position: -110px 0;
}

.winpopfoot_c {
	width: 258px;
	height: 162px;
	overflow: hidden;
	margin: 0 auto;
	background: #FFFDFD;
}

.winpopfoot_c dl {
	width: 228px;
	height: 140px;
	margin: 10px auto 0;
	overflow: hidden;
	line-height: 20px;
}

.winpopfoot_c dd {
	width: 100%;
	text-align: left;
}

.winpopfoot_c dd.martop15 {
	margin-top: 15px;
}

.winpopfoot_c dd span {
	float: right;
	width: 100%;
	text-align: right;
}

.winpopfoot_c dd a,.winpopfoot_c dd a:hover {
	color: #BC0073;
	text-decoration: underline;
}

.winpopfoot_c dd img {
	display: block;
	margin: 0 auto;
	border: none;
}
</style>
		<div
			style="position: absolute; z-index: 99999; overflow: hidden; border-width: 0px; width: 280px; height: 0px; right: 0px; bottom: 0px; display: none;"
			id="bulletin">
			<div class="winpopfoot"
				style="position: absolute; z-index: 2; left: 0;" id="pop_div">
				<img src="../../resources/img/bg100804.png" class="pngforsjjy">
				<div class="winpopfoot_box">
					<div class="winpopfoot_t">
						<span class="sp2" title="关闭" onclick="_close();" id="closeButton"></span>
						<span class="sp3" title="最大化" onclick="_mini();" id="switchButton"></span>
						<em id="div_1" class="on"><div>
								<div id="link_1">
									<strong class="str1">互动消息</strong><strong class="str2">互动消息</strong>
								</div>
							</div></em> <em id="div_3" class="over"><div>
								<div id="link_3">
									<strong class="str1">最新活动</strong><strong class="str2">最新活动</strong>
								</div>
							</div></em>
					</div>
					<div class="winpopfoot_c">
						<dl>
							<dd style="" id="con_1" class="martop15">
								<img src="../../resources/img/logo_prompt_002.jpg">
							</dd>
							<dd style="display: none;" id="con_2" class="martop15"></dd>
							<dd style="display: none;" id="con_3">
								<img src="../../resources/img/logo_prompt_002.jpg">
							</dd>
						</dl>
						<iframe scrolling="no" id="run_fra" name="run_fra" src=""
							frameborder="0" height="0" width="0"></iframe>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="../../resources/js/pop.js"></script>
		<div id="bgdiv_foot"
			style="position: absolute; display: none; left: 0px; top: 0px; width: 100%; height: 100%; filter: alpha(opacity = 30); opacity: 0.3; background-color: #000000; z-index: 12000;"></div>
		<div class="dragdiv" id="bg_div_float_foot"
			style="z-index: 12001; position: absolute; top: 0px; left: 0px; display: none"></div>
		<script src="../../resources/js/pop_template.php"></script>
		<script src="../../resources/js/jyim2.js"></script>
		<link href="../../resources/css/jyim3.css" type="text/css"
			rel="stylesheet">
		<!-- 	<audio preload="auto" id="audio_7340"> -->
		<!-- 	<source src="otherBasic_files/msg1.mp3" type="audio/mpeg"> -->
		<!-- 	<source src="otherBasic_files/msg1.ogg" type="audio/ogg"></audio> -->
		<div class="im_bar_min" style="display: block;" id="im_bar">
			<div t="#im_friend" id="contact"
				class="im_btn fr im_btn_last oneCity pr im_attached_pop">
				<a class="im_inner_btn">联系人</a><span style="display: none;"
					class="amount fl"><span class="amount_leftBg fl"></span><span
					class="amount_centerBg fl">0</span><span class="amount_rightBg fl"></span></span>
				<div id="im_friend" class="im_win im_samecity_div">
					<div class="pr im_win_title webimTop">
						<ul>
							<li class="oning">初次联系</li>
							<li>关注</li>
							<li>好友</li>
						</ul>
						<div class="im_t_close webimClose"></div>
					</div>
					<div class="im_list">
						<div class="webimZaixian">
							<div class="webimZaixianRS">
								在线（<span></span><span></span><span></span>）
							</div>
							<div class="webimCakanquanbu">
								<a href="###">查看全部&gt;&gt;</a>
							</div>
						</div>
						<div class="webimList">
							<ul></ul>
							<ul></ul>
							<ul></ul>
						</div>
						<div class="im_loading">
							<table>
								<tbody>
									<tr>
										<td><img src="../../resources/img/loading_002.gif"><span>正在加载，请稍候</span></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="webimListAnzhuang">
							<a href="#">安装佳缘佳信3.0，与她免费视频聊天</a>
						</div>
					</div>
				</div>
			</div>
			<div t="#im_chatx" id="onlineTalk"
				class="im_btn fr im_btn_second onlineTalk pr im_attached_pop">
				<a class="im_inner_btn">聊天</a><span style="display: none;"
					class="amount fl"><span class="amount_leftBg fl"></span><span
					class="amount_centerBg fl">0</span><span class="amount_rightBg fl"></span></span>
				<div id="im_chatx" class="im_win onlineTalk_content">
					<div class="pr im_win_title onlineTalk_content_title">
						<div class="title_leftBg fl"></div>
						<h1 class="title_centerBg">聊天</h1>
						<div class="title_rightBg fl">
							<a class="pr im_t_close"></a><a target="_blank"
								href="http://webim.jiayuan.com/messages.php" class="notes">查看全部聊天记录</a>
						</div>
					</div>
					<div class="im_list">
						<div id="im_rec_chat_con">
							<span class="im_list_no_chat">暂无未读消息</span>
							<div class="im_rec_chat">
								<img><span>和我聊天</span>
							</div>
							<div class="im_rec_chat">
								<img><span>和我聊天</span>
							</div>
							<div class="im_rec_chat">
								<img><span>和我聊天</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div t="#im_msgx"
				class="im_btn fr im_btn_first message pr im_attached_pop">
				<a class="im_inner_btn">消息</a><span style="display: none;"
					class="amount fl"><span class="amount_leftBg fl"></span><span
					class="amount_centerBg fl">0</span><span class="amount_rightBg fl"></span></span>
				<div id="im_msgx" class="im_win message_content">
					<div class="pr im_win_title message_content_title">
						<div class="title_leftBg fl"></div>
						<h1 class="title_centerBg">消息</h1>
						<div class="title_rightBg fl">
							<a class="pr im_t_close"></a>
						</div>
					</div>
					<div class="im_list">
						<img class="im_jy_logo" src="../../resources/img/logo_prompt.jpg">
					</div>
				</div>
			</div>
			<div class="im_btn fr letter">
				<a class="im_inner_btn">收件箱</a><span style="display: inline;"
					class="amount fl"><span class="amount_leftBg fl"></span><span
					class="amount_centerBg fl">10</span><span class="amount_rightBg fl"></span></span>
			</div>
			<div style="display: none;" id="im_pop_win" class="pa im_win">
				<div class="im_title">
					<div class="im_t_tab">互动消息</div>
					<div class="im_t_tab">交友活动</div>
					<div class="title_rightBg fr im_t_close"></div>
				</div>
				<div class="im_pop_content">
					<img src="../../resources/img/logo_prompt.jpg">
				</div>
				<div class="im_pop_content">
					<img src="../../resources/img/logo_prompt.jpg">
				</div>
			</div>
			<div style="display: none;" class="im_yfms_tpl0" id="im_yfms"></div>
			<div style="display: none;" id="im_chat_pop_win" class="pa im_win">
				<div class="im_chat_win_title">
					<div class="im_chat_win_nick"></div>
					<div class="fr im_t_close"></div>
				</div>
				<div class="im_chat_win_content  im_pop_content">
					<div>
						<span></span><span><a class="im_tosee_chatmsg">查看详情</a></span>
					</div>
				</div>
			</div>
			<div style="display: none;" id="im_zhuanti"></div>
			<div style="display: none;" id="im_profile_pop_win">
				<div class="dzhLayer">
					<div class="dzhLayer_top">
						<a href="javascript:void(0);" class="im_t_close dzhLayer_close">&nbsp;</a>
						<div class="dzhLayer_set">
							<a href="javascript:void(0);" class="dzhLayer_bxs"
								style="display: none;">今日不再提醒</a>
						</div>
					</div>
					<div class="dzhLayer_text">
						<p>对方在线，和TA聊聊吧</p>
					</div>
					<div class="dzhLayer_icon">
						<div class="dzhLayer_iconImg">
							<a href="javascript:void(0);" class="hi"><span></span>
							<div class="tishilayer1">
									<p class="tishilayer_hi">想了解你更多,可以聊聊么?</p>
								</div></a><a href="javascript:void(0);" class="face"><span></span>
							<div class="tishilayer2">
									<p class="tishilayer_face">想了解你更多,可以聊聊么?</p>
								</div></a><a href="javascript:void(0);" class="flower"><span></span>
							<div class="tishilayer3">
									<p class="tishilayer_flower">想了解你更多,可以聊聊么?</p>
								</div></a><a href="javascript:void(0);" class="heart"><span></span>
							<div class="tishilayer4">
									<p class="tishilayer_xin">想了解你更多,可以聊聊么?</p>
								</div></a>
						</div>
						<div class="dzhLayer_loading">
							<img src="../../resources/img/jx3_loading.gif">发送中...
						</div>
						<div class="dzhLayer_loaded">
							<img src="../../resources/img/send_ok.gif">发送成功
						</div>
					</div>
				</div>
			</div>
			<div style="display: none;" id="im_jiaxin_pop_win">
				<div class="jx3_0_1_adv jx3_0_1_adv1">
					<div class="jx3_0_1_advTop">
						<a href="javascript:void(0);" class="im_t_close jx3_0_1_advClose">&nbsp;</a>
					</div>
					<div class="jx3_0_1_advBody">
						<a href="http://im.jiayuan.com/?from=rightbottom" target="_blank"
							class="jx3_0_1_advButton">&nbsp;</a>
					</div>
				</div>
			</div>
			<div t="#im_myjy" class="im_btn fl myJiayuan pr im_attached_pop">
				<a class="im_inner_btn">我的服务</a>
				<div id="im_myjy" class="im_win myjiayuan_content">
					<div class="pr im_win_title myjiayuan_content_title">
						<div class="title_leftBg fl"></div>
						<h1 class="title_centerBg">我的服务</h1>
						<div class="title_rightBg fl">
							<a class="pr im_t_close"></a>
						</div>
					</div>
					<div class="im_list"></div>
				</div>
			</div>
			<ul class="fl im_service_list" id="service_list">
				<li class="jystamp" title="佳缘邮票"><a target="_blank"
					href="http://www.jiayuan.com/usercp/center/index.php">佳缘邮票</a></li>
				<li class="speedpost" title="特快专递"><a target="_blank"
					href="http://www.jiayuan.com/msgapp/ems/?a=info">特快专递</a></li>
				<li class="diamond_g" title="钻石会员"><a target="_blank"
					href="http://www.jiayuan.com/usercp/service/bmsg_tg2.php">钻石会员</a></li>
				<li class="vip_g" title="VIP会员"><a target="_blank"
					href="http://www.jiayuan.com/usercp/service/upgrade.php">VIP会员</a></li>
				<li class="readmail_g" title="看信包月"><a target="_blank"
					href="http://www.jiayuan.com/usercp/service/bmsg.php">看信包月</a></li>
				<li class="forground_g" title="排名提前"><a target="_blank"
					href="http://www.jiayuan.com/usercp/service/priority.php">排名提前</a></li>
				<li class="express_g" title="超级聚光灯"><a target="_blank"
					href="http://www.jiayuan.com/usercp/fate_express.php">超级聚光灯</a></li>
			</ul>
			<div t="#im_jyapp" class="im_btn fl jiayuanCenter pr im_attached_pop">
				<a class="im_inner_btn">佳缘应用</a>
				<div id="im_jyapp" class="im_win jiayuanCenter_content">
					<div class="pr im_win_title jiayuanCenter_content_title">
						<div class="title_leftBg fl"></div>
						<h1 class="title_centerBg">佳缘应用</h1>
						<div class="title_rightBg fl">
							<a class="pr im_t_close"></a>
						</div>
					</div>
					<div class="im_list"></div>
				</div>
			</div>
			<div style="display: none;" class="im_btn fl brand_mid not_hover">
				<a style="width: 300px;" class="im_inner_btn">专享特惠--钻石会员立减200元！仅298元/年！马上开通&gt;&gt;</a>
			</div>
			<div style="display: none;" class="im_btn fl brand_mid not_hover">
				<a style="width: 300px;" class="im_inner_btn">亲，教你淘最佳配偶！试下“超级聚光灯”</a>
			</div>
			<div style="display: block;" class="im_btn fl brand_mid not_hover">
				<a style="width: 300px;" class="im_inner_btn">做大富翁，赢大奖！</a>
			</div>
			<div style="display: none;" class="im_btn fl brand_mid not_hover">
				<a style="width: 300px;" class="im_inner_btn">选对“真像”，爱情“不在囧途”</a>
			</div>
			<div style="display: none;" class="im_btn fl brand_mid not_hover">
				<a style="width: 300px;" class="im_inner_btn">帮你快速精准锁定心仪异性，快来看看！</a>
			</div>
		</div>
		<script type="text/javascript" src="../../resources/js/pop_freq.js"></script>
	</div>
	<!-- footer end -->








</body>
</html>
<!-- 登录弹出结束 -->
<!-- head start -->