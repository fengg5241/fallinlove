<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>自己</title>
<meta name="keywords" content="交友,交友网,征婚交友,网上交友,征婚,征婚网,征婚交友网,交友中心,婚恋交友">
<meta name="description" content="青春不常在，抓紧谈恋爱！缘分可遇也可求，该出手时就出手。世纪佳缘是严肃婚恋的交友平台，提供丰富多彩的交友征婚活动，1亿会员，让缘分千万里挑一！">
<link href="resources/css/reset.css" rel="stylesheet" type="text/css">
<style>
.b1{ background:#fff;}
.myseve0113{float:left;width:250px;margin-bottom:10px;background:#fff;}
.myseve0113 .content{ float:left; width:248px; border-right: 1px solid #DDE0E6; border-left: 1px solid #DDE0E6;}

/*== 右侧 我的服务 佳缘邮票 ==*/
.myseve0113 h2{ float:left; width:233px; padding-left:15px; line-height:30px; font-weight:bold; background:#F3F3F3;}
.myseve0113 h2 strong{ float:right; width:20px;padding-right:10px; padding-top:6px;}
.myseve0113 h2 span.span1{ float:left; width:110px; text-align:left;}
.myseve0113 h2 span.span2{ float:left; width:90px; text-align:center;}
.myseve0113 table{ width:218px; margin:0 auto;}
.myseve0113 td{ line-height:26px; border-bottom:1px dashed #999999;}
.myseve0113 td.td1{ width:140px; text-align:left;}
.myseve0113 td.td2{ width:88px; text-align:left;}
.myseve0113 td.td2 span{ color:#E8006D;}
.myseve0113 td.td2 a{ color:#014391; text-decoration:underline;}
.myseve0113 td.td2 a:hover{ color:#014391; text-decoration:underline;}

/*****右边开始****/
.myseve0113 .span2 {font-weight:normal;}
.myseve0113 .span2 em {color:#E6006C;font-weight:bold;}
.myseve0113 .services {padding:15px;padding-top:5px;width:218px;}
.myseve0113 .services li {padding:5px;border-bottom:1px dotted #999999;width:208px;float:left;}
.myseve0113 .services li span {float:left;}
.myseve0113 .services li strong {float:right;}
.myseve0113 .services li strong.red {color:#EB006E;}
.myseve0113 .services li strong a {color:#004491;text-decoration:underline;}
.myseve0113 h2 a {float:right;color:#004491;font-weight:normal;text-decoration:underline;}

.myseve0113 .sub_nav {width:248px;float:left;border-top:1px solid #CDDCF1;}
.myseve0113 .sub_nav span {width:82px;float:left;line-height:21px;background:url(http://images1.jyimg.com/w4/service/gaojihuiyuan/images/right_span.jpg) repeat-x;border-right:1px solid #CDDCF1;text-align:center;cursor:pointer;}
.myseve0113 .sub_nav span.on {background:#fff;}
.myseve0113 .right_zhifu {width:228px;float:left;padding:10px;}
.myseve0113 .right_zhifu .mobile_pay {width:225px;float:left;}
.myseve0113 .right_zhifu .mobile_pay td {border-bottom:0;}
.myseve0113 .right_zhifu .mobile_pay td label {padding-left:18px;background:url(http://images1.jyimg.com/w4/service/gaojihuiyuan/images/new_img2.jpg) no-repeat;padding-top:3px;}
.myseve0113 .right_zhifu .mobile_pay td input[type="radio"] {margin-top:3px;margin-right:2px;*margin-right:0px;}
.myseve0113 .right_zhifu .mobile_pay td label.label2 {background:url(http://images1.jyimg.com/w4/service/gaojihuiyuan/images/new_img3.jpg) no-repeat;}
.myseve0113 .right_zhifu .mobile_pay td .pay_text {width:220px;height:20px;line-height:20px;color:#AAAAAA;}
.myseve0113 td .pay_next {width:73px;height:22px;background:url(http://images1.jyimg.com/w4/service/gaojihuiyuan/images/next_step.jpg) no-repeat;border:0;cursor:pointer;}

.myseve0113 .ali_pay td {padding:10px 0;}
.myseve0113 .ali_pay .youpiao {width:30px;}
.myseve0113 .ali_pay strong {font-weight:bold;}
.myseve0113 .ali_pay strong span {color:#F6830C;}

.myseve0113 .ebank_pay td {padding:5px 0;}
.myseve0113 .ebank_pay .youpiao {width:30px;}
.myseve0113 .ebank_pay strong {font-weight:bold;}
.myseve0113 .ebank_pay strong span {color:#F6830C;}
.myseve0113 .ebank_pay select {width:140px;}

.myseve0113 .tuijian {width:228px;float:left;padding:10px;}
.myseve0113 .tuijian .t_title {width:180px;background:url(http://images1.jyimg.com/w4/service/gaojihuiyuan/images/zuanshihuiyuan.jpg) no-repeat;padding-top:10px;padding-left:35px;padding-bottom:5px;clear:both;height:20px;}
.myseve0113 .tuijian .t_title strong {float:left;font-size:14px;font-weight:bold;color:#AB3281;}
.myseve0113 .tuijian .t_title a {float:right;color:#01438F !important;}
.myseve0113 .tuijian h3 {background:url(http://images1.jyimg.com/w4/service/gaojihuiyuan/images/zuanshihuiyuan.jpg) no-repeat -8px -38px;text-indent:10px;line-height:24px;font-weight:normal;}
.myseve0113 .tuijian td {border-bottom:0;}
.myseve0113 .tuijian td span {font-weight:bold;color:#E7006D;}
.myseve0113 .tuijian table {border-top:1px dotted #B5B5B5;}

.myseve0113 .xj_add {text-align: center;}
/*******充值流程弹出层*******/
.buy_notice {width:226px;height:158px;}
.buy_notice iframe {border:none;margin:0px;padding:0px;width:226px;height:158px;position:relative;top:-158px;left:0px;z-index:-1;}
.buy_notice .notice_title {width:226px;float:left;background:url(http://images1.jyimg.com/w4/service/gaojihuiyuan/images/div2.jpg) repeat-x;line-height:28px;}
.buy_notice .notice_title strong {padding-left:30px;background:url(http://images1.jyimg.com/w4/service/gaojihuiyuan/images/div1.jpg) no-repeat 10px 2px;font-size:12px;color:#374496;float:left;font-weight:bold;}
.buy_notice .notice_content {background-color:#fff;width:206px;float:left;padding:10px;line-height:22px;}
</style>
<link href="resources/css/newly.css" type="text/css" rel="stylesheet">
<link href="resources/css/layer_002.css" rel="stylesheet" type="text/css">
<!--[if ie 6]>
	<script type="text/javascript" src="http://images.jiayuan.com/w4/common/j/DD_belatedPNG_0.0.8a_IE6.js">
	</script>
	<script type="text/javascript">
	DD_belatedPNG.fix('.ie6_png,.from_bg,.point_03,.label_bg,.a_01,.a_02,.a_03,.a_04,.a_box_tt a,.user_bg,.biezhen');
	</script>
<![endif]-->


<style type="text/css">
/*common*/
*{margin:0;padding:0}
#jycm_top{font-size:12px}
#jycm_top input{outline:none}
#jycm_top a{font-size:12px;color:#fff;outline:none}
#jycm_top i,#jycm_top strong,#jycm_head i,#jycm_head strong{font-style:normal;font-weight:normal}
#jycm_top p, #jycm_top ul, #jycm_head p, #jycm_head ul{margin:0;padding:0}
#jycm_top img, #jycm_head img{border:0}
#jycm_top div.w1000, #jycm_head div.jycm_head_top, #jycm_head div.jycm_head_nav{text-align:left}
#jycm_top .va_middle{vertical-align:middle}
.fn-clear:before,.fn-clear:after{content:"";display:table}
.fn-clear:after{clear:both}
.fn-clear{zoom:1}
/*TOP*/
#jycm_top,#jycm_head{text-align:center;width:auto;width:100%;min-width:970px}
#jycm_top{background-color:#444;font-size:12px;color:#fff;position:relative;font-family:\5b8b\4f53,simsun,"宋体";z-index:9}
#jycm_top div,#jycm_top p{line-height:40px;color:#fff}
#jycm_top a.color_fff{color:#fff;text-decoration:underline;font-size:12px;margin-left:6px}
#jycm_top a.color_fff:hover{color:#fbb4bd;text-decoration:underline}
#jycm_top span.color_fff{color:#fff;font-size:12px}
#jycm_top .color_fff:hover span{color:#fbb4bd}
#jycm_top div.w1000{width:970px;margin:0 auto;height:40px;line-height:40px}
/*top-left*/
#jycm_top .jycm_top_wel{width:400px;height:40px;overflow:hidden}
#jycm_top .jycm_top_wel,#jycm_top .jycm_top_wel p{display:inline;float:left;font-size:12px;line-height:40px}
#jycm_top .jycm_top_wel p , .jycm_top_right p{clear:none}
#jycm_top .jycm_top_wel p{margin-right:25px;color:#fff}
#jycm_top .jycm_top_wel p#head_user_nickname{margin-right:25px;margin-left:10px}
#jycm_top .jycm_top_wel p#head_user_logout{margin-right:0}
#jycm_top .jycm_top_wel p#head_user_logout a.color_fff,#jycm_top .jycm_top_wel p#head_user_nickname a.color_fff{margin-left:0}
/*member*/
#jycm_top .jycm_top_wel .memberIcon{padding:12px 0 0 0;margin-right:8px}
#jycm_top .jycm_top_wel .memberIcon a{background:url(http://images1.jyimg.com/w4/club/i/bg_grade.gif) no-repeat 0 0;width:43px;height:16px;display:inline-block;line-height:999em;overflow:hidden}
#jycm_top .jycm_top_wel .iconS1 a{background-position:0 0}
#jycm_top .jycm_top_wel .iconS2 a{background-position:0 -20px}
#jycm_top .jycm_top_wel .iconS3 a{background-position:0 -40px}
#jycm_top .jycm_top_wel .iconS4 a{background-position:0 -60px}
#jycm_top .jycm_top_wel .iconS5 a{background-position:0 -80px}
/*top-right*/
#jycm_top .jycm_top_right,#jycm_top .jycm_top_right p,#jycm_top .jycm_top_izx{display:inline;float:right}
#jycm_top .jycm_top_right p{margin-right:25px;line-height:40px;color:#fff}
#jycm_top .jy_top_icon{background:url(http://images1.jyimg.com/w4/common/i/head/jy_top_icon.png) no-repeat 0 0;_background:url(http://images1.jyimg.com/w4/common/i/head/jy_top_icon.gif) no-repeat 0 0;float:left;width:16px;height:16px;vertical-align:middle;margin:12px 6px 0 0}
#jycm_top .jy_txt{display:inline-block}
#jycm_top span.jy_txt{vertical-align:middle;color:#fff;float:left;/*height:39px;line-height:40px;*/}
#jycm_top span.jy_txt span{color:#fff;margin-right:6px}
#jycm_top .jycm_top_right a.color_fff,#jycm_top .jycm_top_right a.color_fff:hover{margin-left:0;cursor:pointer;text-decoration:none}
/*红娘*/
#jycm_top .jycm_top_right p.jycm_top_zx{padding:0 0 0 10px;background-position:0 0;margin-right:25px}
#jycm_top .jycm_top_right p.jycm_top_zx strong{font-weight:normal;color:#fff}
#jycm_top .jycm_top_right p.jycm_top_zx span{line-height:40px}
/*收藏本站*/
#jycm_top .jycm_top_right .jycm_top_collect{margin-right:11px}
#jycm_top .jy_icon_collect{background-position:-21px 0;_background-position:-21px -1px}
.jycm_top_collect .va_middle,.jycm_top_jx .va_middle{line-height:40px}
/*佳缘佳信*/
#jycm_top .jy_icon_jiaxin{background-position:-80px 0}
/*城市*/
#jycm_head .jycm_head_clickCity{padding:0 2px}
/*head*/
#jycm_head{background-color:#fff;margin-bottom:10px}
#jycm_head a{outline:none}
#jycm_head .jycm_head_top{width:970px;height:70px;margin:0 auto;padding:6px 0}
#jycm_head .jycm_head_top h1.logo{display:inline;float:left;margin:0;padding:0;height:70px;overflow:hidden}
#jycm_head .jycm_head_top h1.logo a{vertical-align:top;display:inline-block}
#jycm_head .jycm_head_top #jy_head_city_select{display:inline;position:relative;float:left;width:60px;height:70px;margin:0 0 0 20px;padding:0;z-index:2}
#jycm_head .jycm_head_ad{text-align:right;height:70px;display:inline;float:right;overflow:hidden}
/*#jycm_head .jycm_head_ad #jycm_head_ad_left{width:470px;height:70px;float:left;overflow:hidden}*/
#jycm_head .jycm_head_ad #ad_pos_70{width:215px;height:70px;float:right;overflow:hidden}
/*nav*/
#jycm_head .jycm_head_navBg{border-bottom:1px solid #d9d9d9;background:#fff}
#jycm_head .jycm_head_nav{width:970px;height:36px;line-height:normal;margin:0 auto;font-size:14px;word-wrap:normal}
/*nav left*/
#jycm_head .jycm_head_nav ul{float:left;list-style-type:none}
#jycm_head .jycm_head_nav ul li{display:inline;float:left;line-height:normal;background:none;text-indent:0;overflow:visible;position:relative;margin-right:1px;padding:0}
#jycm_head .jycm_head_nav ul li a{color:#333;font-size:16px;text-decoration:none;font-family:"微软雅黑";padding:2px 10px 0;display:inline-block;height:32px;_float:left}
#jycm_head .jycm_head_nav ul li a:hover{text-decoration:none;border-bottom:3px solid #ff5b70}
#jycm_head .jycm_head_nav ul li  .jy_top_hot{position:absolute;right:2px;top:-13px}
#jycm_head .jycm_head_nav ul li.head_nav_cur a,#jycm_head .jycm_head_nav ul li.head_nav_cur a:hover{border-bottom:3px solid #ff5b70;color:#ff546a;font-weight:bold}
#jycm_head .jycm_head_nav ul li  .jy_top_hot a,#jycm_head .jycm_head_nav ul li  .jy_top_hot a:hover{padding:0;text-decoration:none;border:0}
#jycm_head .jycm_head_nav ul li .jy_top_hot a{font-size:0;height:auto}
/*nav right*/
#jycm_head .jycm_head_navOthor{display:inline;float:right;line-height:normal}
#jycm_head .jycm_head_navOthor a{color:#888;font-size:16px;font-family:"微软雅黑";text-decoration:none;padding:2px 10px 0;height:32px;float:left}
#jycm_head .jycm_head_navOthor a:hover{text-decoration:none;border-bottom:3px solid #ff5b70}
#jycm_head .jycm_head_navOthor a.jycm_head_nav_azx{margin:0}
#jycm_top .jycm_top_right .jycm_top_jx{margin-right:12px}
/*未登录*/
#jycm_top .jycm_top_form{margin:0;padding:0;display:inline;float:left}
#jycm_top .jycm_top_vline{display:inline;float:left;width:1px;height:40px;color:#dedede;background:url(http://images1.jyimg.com/w4/common/i/head/vline.png) no-repeat left center;_background:url(http://images1.jyimg.com/w4/common/i/head/vline.gif) no-repeat left center;margin:0px 10px}
#jycm_top .jycm_top_login{display:inline;float:left}
#jycm_top .jycm_top_login p{display:inline;float:left;margin:0;padding:0;height:40px;line-height:40px;padding:0 5px 0 0;color:#fff;clear:none}
#jycm_top .jycm_top_login p.jycm_top_zh{margin-left:15px}
#jycm_top .jycm_top_zh span, p.jycm_top_mm span{display:inline;float:left;color:#fff}
#jycm_top .jycm_top_zh input, p.jycm_top_mm input{margin:0;padding:0 0 0 5px;font-size:12px;width:95px;height:16px;line-height:16px;display:inline;float:left;border:2px solid #ededed;margin:10px 0 0 5px;color:#aaa;background-color:#ededed}
#jycm_top .jycm_top_zh input#jycm_focus, p.jycm_top_mm input#jycm_focus{border:2px solid #ffd6db;color:#888}
#jycm_top .jycm_top_login p.jycm_top_zddl{padding:0 5px 0 3px}
#jycm_top .jycm_top_zddl input{display:inline;float:left;margin:14px 6px 0 0;padding:0;*margin:10px 4px 0 0px;_margin:8px 0 0 0 }
#jycm_top .jycm_top_btn_dl{display:inline;float:left;margin:10px 0 0 0;width:50px;height:20px;line-height:21px;text-align:center;color:#fff;background:#0098c2 url(http://images1.jyimg.com/w4/common/i/head/jy_top_btn_dl.png) no-repeat 0 0;_background:#0098c2 url(http://images1.jyimg.com/w4/common/i/head/jy_top_btn_dl.gif) no-repeat 0 0;border:0;cursor:pointer}
#jycm_top .jycm_top_btn_dl:hover{background-position:0 -22px}
#jycm_top .jycm_top_reg{font-size:12px}
#jycm_top .jycm_top_reg a{color:#fff;text-decoration:underline;margin-left:20px}
#jycm_top .jycm_top_login p.jycm_top_login2{margin:0 0 0 20px;padding-right:0;height:40px;line-height:40px}
#jycm_top .jycm_top_login p.jycm_top_login2 .qita_login{vertical-align:middle;display:inline-block}
#jycm_top .jycm_top_login p.jycm_top_login2 a{font-size:0;line-height:normal;margin-left:5px;display:inline-block;width:16px;height:16px;vertical-align:middle;background:url(http://images.jiayuan.com/w4/register/i/qita_login.gif) no-repeat 0 0}
#jycm_top .jycm_top_login p.jycm_top_login2 .openid_qq{background-position:0 0}
#jycm_top .jycm_top_login p.jycm_top_login2 .openid_qq:hover{background-position:0 -16px}
#jycm_top .jycm_top_login p.jycm_top_login2 .openid_weibo{background-position:-16px 0}
#jycm_top .jycm_top_login p.jycm_top_login2 .openid_weibo:hover{background-position:-16px -16px}
#jycm_top .jycm_top_login p.jycm_top_login2 .openid_baidu{background-position:-32px 0}
#jycm_top .jycm_top_login p.jycm_top_login2 .openid_baidu:hover{background-position:-32px -16px}
#jycm_top .jycm_top_login p.jycm_top_login2 .openid_alipay{background-position:-48px 0}
#jycm_top .jycm_top_login p.jycm_top_login2 .openid_alipay:hover{background-position:-48px -16px}
/* 爱真心 */
#jycm_top .jycm_top_izx{margin-right:0;_width:70px;position:relative;*zoom:1}
#jycm_top .jycm_top_izx .jycm_top_izxTit{font-size:12px;padding:0px 12px;text-align:center;margin-right:11px;_width:60px;position:relative;top:1px;height:39px}
#jycm_top .jycm_top_izxTit a{display:block;color:#fff;text-decoration:none}
#jycm_top .jycm_top_izxTit a:hover{text-decoration:none}
#jycm_top .jycm_top_izxTit .icon_izx{background-position:-40px 0}
#jycm_top .jycm_top_izx .jycm_top_izxTit .jy_txt{line-height:38px}
#jycm_top .jycm_top_izx  #izx_point{display:none;position:absolute;top:9px;right:3px;width:10px;height:10px;background:url(http://images1.jyimg.com/w4/common/i/head/remind_b_point.gif) no-repeat}
#jycm_top .jycm_top_izxCn{display:none}
#jycm_top .jycm_top_izxCn li{background:none;text-indent:0}
#jycm_top .jycm_top_izxFocus .jycm_top_izxTit{z-index:9;background-color:#eee;height:39px}
#jycm_top .jycm_top_izxFocus .jycm_top_izxTit a{color:#333;text-decoration:none}
#jycm_top .jycm_top_izxFocus .jycm_top_izxTit .icon_izx{background-position:-60px 0}
#jycm_top .jycm_top_izxFocus .jycm_top_izxCn{display:block;position:absolute;top:40px;right:10px;_right:9px;width:112px;border:1px solid #bbb;border-top:0;z-index:9;padding:6px 0px;*padding:6px 0px 3px;_padding:6px 0px 3px;background:#fff}
#jycm_top .jycm_top_izxFocus .jycm_top_izxCn li{overflow:hidden;zoom:1;height:24px;line-height:24px;font-size:12px}
#jycm_top .jycm_top_izxFocus .jycm_top_izxCn li a{color:#666;padding:0px 8px;font-size:12px;display:inline-block;width:96px;text-decoration:none}
#jycm_top .jycm_top_izxFocus .jycm_top_izxCn li a:hover{background-color:#eee;text-decoration:none}
#jycm_top .jycm_top_izxFocus .jycm_top_izxCn .fl,#jycm_top .jycm_top_izxFocus .jycm_top_izxCn .fr{display:inline;float:left;color:#666;font-size:12px;cursor:pointer;_margin:2px 0;line-height:24px}
#jycm_top .jycm_top_izxFocus .jycm_top_izxCn .fr{float:right}
#jycm_top .jycm_top_izxFocus .jycm_top_izxCn .fr-num{width:30px;margin-top:5px;text-align:center;background:#ff546a;color:#fff;height:14px;line-height:14px;border-radius:10px}
#jycm_top  .jycm_top_izxFocus #izx_point{background:url(http://images1.jyimg.com/w4/common/i/head/remind_w_point.gif) no-repeat}
#jycm_top .jycm_top_izxFocus .color_fff span{color:#333}
#jycm_top .jycm_top_izxFocus .color_fff:hover span{_color:#333}
#jycm_top .jycm_top_izxCn2{display:none;position:absolute;top:40px;_top:42px;right:11px;width:112px;border:1px solid #bbb;border-top:0;z-index:8;padding:3px 0px;background:#fff}
#jycm_top .jycm_top_izxCn2 a{font-size:12px;color:#333}
#jycm_top .jycm_top_izxCn2 a span{padding-left:8px}
#jycm_top .jycm_top_izxCn2 a:hover,#jycm_top .jycm_top_izxCn2 a:hover span{color:#dd1764;font-size:12px}
#jycm_top .jycm_top_izxCn2 a.jycm_top_izxClose{position:absolute;top:5px;right:5px;width:9px;height:9px;font-size:2px;line-height:0px;text-align:left;text-indent:-99999em;background:url(http://images1.jyimg.com/w4/common/i/head/jycm_close.png) no-repeat;_background:url(http://images1.jyimg.com/w4/common/i/head/jycm_close.gif) no-repeat}
#jycm_top .jycm_top_izxCn2 i.point_top{position:absolute;width:12px;height:6px;top:-6px;right:30px;background:url(http://images1.jyimg.com/w4/common/i/head/jycm_head_pointTop.png) no-repeat;_ background:url(http://images1.jyimg.com/w4/common/i/head/jycm_head_pointTop.gif) no-repeat;font-size:0px}
/* 消息中心 */
#jycm_top .jycm_top_inform{position:relative;display:inline;float:right;width:76px;height:40px}
#jycm_top .jy_tixing{line-height:39px}
#jycm_top .jycm_top_inform .jycm_top_informIcon{width:52px;_width:55px;height:39px;padding:0 12px;position:relative;top:1px;z-index:9}
#jycm_top .jycm_top_inform .jycm_top_remind{font-size:12px;width:45px;height:40px;line-height:38px;text-align:center;display:inline}
#jycm_top .jycm_top_inform .jycm_top_remind .va_middle{line-height:40px}
#jycm_top .jy_icon_remind{background-position:-100px 0;margin-top:11px}
#jycm_top .jycm_top_inform #tips_point{display:none;position:absolute;top:9px;left:61px;_left:63px;width:10px;height:10px;background:url(http://images1.jyimg.com/w4/common/i/head/remind_b_point.gif) no-repeat;margin:0;padding:0}
#jycm_top .jycm_top_informFocus .jy_icon_remind{background-position:-120px 0}
#jycm_top .jycm_top_informFocus .jycm_top_informIcon{background-color:#eee}
#jycm_top .jycm_top_informFocus .color_fff,#jycm_top .jycm_top_informFocus .color_fff:hover{color:#333}
#jycm_top .jycm_top_informCn{display:none;position:absolute;top:40px;right:-1px;_right:-2px;width:104px;border:1px solid #bbbbbb;border-top:0;z-index:8;padding:6px 0px;*padding:6px 0px 3px;background:#fff}
#jycm_top .jycm_top_informCn li{overflow:hidden;zoom:1;height:24px;line-height:24px;font-size:12px;background:none;text-indent:0}
#jycm_top .jycm_top_informCn li a{color:#666;font-size:12px;display:inline-block;width:88px;padding:0px 8px;text-decoration:none}
#jycm_top .jycm_top_informCn li a:hover{background-color:#eee;color:#666;font-size:12px}
#jycm_top .jycm_top_informCn .fl,#jycm_top .jycm_top_informCn .fr{display:inline;float:left;color:#666;font-size:12px;cursor:pointer;_margin:2px 0;line-height:24px}
#jycm_top .jycm_top_informCn .fr{float:right}
#jycm_top .jycm_top_informCn span.fr_num{display:inline;float:right;width:30px;margin-top:4.5px;font-size:12px;text-align:center;background:#ff546a;color:#fff;height:14px;line-height:14px;border-radius:10px;_margin:5px 0}
#jycm_top .jycm_top_informFocus #tips_point{background:url(http://images1.jyimg.com/w4/common/i/head/remind_w_point.gif) no-repeat}
@-moz-document url-prefix(){#jycm_top .jycm_top_btn_dl{line-height:18px}}
</style>
<!--登录区域 start-->
<div id="jycm_top" class="jycm_top">
    <div class="w1000" id="head_login" style="">
        <div class="jycm_top_wel">
            <p id="head_user_nickname">Hi，<a class="color_fff" target="_blank" href="http://www.jiayuan.com/122261858">老公</a></p>
            <p class="memberIcon iconS1" id="head_user_level"><a onmousedown="jy_head_function.send_jy_nav_pv('|head_club_level|122261858');" title="S1会员" href="http://www.jiayuan.com/club/" target="_blank">S1会员</a></p>
            <p id="head_user_bean">金豆<a onmousedown="jy_head_function.send_jy_nav_pv('|head_club_bean|122261858');" href="http://www.jiayuan.com/club/" class="color_fff" target="_blank">450</a></p>
            <p id="head_user_uid">佳缘ID<a class="color_fff" target="_blank" href="http://www.jiayuan.com/122261858">122261858</a></p>
            <p id="head_user_logout"><a class="color_fff" href="http://login.jiayuan.com/logout2.php">退出</a></p>
        </div>
        <div class="jycm_top_right">
            <div id="jycm_top_inform" class="jycm_top_inform">
                <div id="jycm_top_informIcon" class="jycm_top_informIcon">
<div class="jycm_top_remind">
<span class="color_fff va_middle"><i class="jy_top_icon jy_icon_remind"></i><strong class="jy_tixing">提醒</strong><i id="tips_point"></i></span>
</div>
                </div>
                <div id="jycm_top_informCn" class="jycm_top_informCn" style="display:none">
                    <ul id="vip_center_all_notes">
                        <li style="display: none;" id="visitor_new_num"><a target="_blank" href="http://www.jiayuan.com/usercp/clicked_new.php" onclick="jy_head_function.send_jy_nav_pv('|1013617_6|');"><strong class="fl">谁看过我</strong><span class="fr">查看</span></a></li>
                        <li style="display: none;" id="praise_me_new_num"><a target="_blank" href="http://www.jiayuan.com/usercp/praiseme.php" onclick="jy_head_function.send_jy_nav_pv('|1013617_7|');"><strong class="fl">谁赞过我</strong><span class="fr">查看</span></a></li>
                        <li style="display: none;" id="fans_new_num"><a target="_blank" href="http://www.jiayuan.com/usercp/myfans.php" onclick="jy_head_function.send_jy_nav_pv('|1013617_8|');"><strong class="fl">谁关注我</strong><span class="fr">查看</span></a></li>
                    </ul>
                </div>
            </div>
            <p class="jycm_top_jx ">
<a class="color_fff va_middle" href="http://im.jiayuan.com/" ><i class="jy_top_icon jy_icon_jiaxin"></i>佳缘佳信</a>
            </p>
            <div id="jycm_top_izx" class="jycm_top_izx">
                <div class="jycm_top_izxTit">
                	<script type="text/javascript">
//输出爱真心链接
                	document.write('<a id="jy_top_izhenxin_url" class="color_fff fn-clear"  target="_blank"><i class="jy_top_icon icon_izx"></i><i id="izx_point"></i></a>');
</script><a id="jy_top_izhenxin_url" class="color_fff fn-clear"  href="http://www.izhenxin.com/register/landingpagetw" target="_blank"><i class="jy_top_icon icon_izx"></i><span class="jy_txt">爱真心</span><i id="izx_point"></i></a>
                </div>
                <div class="jycm_top_izxCn">
                    <ul>
                    	<li id="jy_nav_izhenxin_url"></li>
                    </ul>
                </div>
                <div class="jycm_top_izxCn2" id="jy_top_izx_jihuo">
<a href="http://www.izhenxin.com/login/getSign/?url=http%3A%2F%2Fwww.jiayuan.com%2Fusercp%2Fiz_login.php%3Furl%3Dhttp%253A%252F%252Fwww.izhenxin.com%252F&amp;from=top" target="_blank" onclick="jy_head_function.send_jy_nav_pv('|1013850_9|122261858');"><span>激活爱真心帐号</span></a>
                    <a class="jycm_top_izxClose" style="cursor:pointer">关闭</a><i class="point_top"></i>
                </div>
            </div>
            <p class="jycm_top_collect ">
            	<a id="jycm_top_collect_1" class="color_fff va_middle" onclick="jycm_addFav();" href="javascript:;"><i class="jy_top_icon jy_icon_collect"></i>收藏本站</a>
            </p>
            <p class="jycm_top_zx " id="vip_area_tel" style=""><i class="jy_top_icon jy_icon_tel"></i><span class="jy_txt"><span>红娘专线</span><strong>400-7701-520</strong></span></p>
        </div>
    </div>
    <div class="w1000" id="head_nologin" style="display:none">
        <div class="jycm_top_login">
            <iframe id="hder_hid_login_win" name="hder_hid_login_win" style="display:none" height="50" width="100%"></iframe>
            <form class="jycm_top_form" id="hder_login_form" target="hder_hid_login_win" action="" method="post">
                <input name="channel" value="200" type="hidden">
                <input name="position" value="201" type="hidden">
                <p class="jycm_top_zh"><span>帐号</span><input id="jycm_zh_input" name="name" value="邮箱/手机/ID" type="text"></p>
                <p class="jycm_top_mm"><span>密码</span><input id="jycm_pass_input" autocomplete="off" name="password" type="password"></p>
                <p class="jycm_top_zddl"><label><input onclick="head_login_save_me(this);" checked="checked" type="checkbox">自动登录</label></p>
                <input class="jycm_top_btn_dl" value="登录" type="submit">
                <p class="jycm_top_login2">
<span class="qita_login">其他登录</span><a target="_blank" class="openid_qq" href="http://www.jiayuan.com/general/t/?forward=qqAware&amp;c=10&amp;p=1"></a><a target="_blank" class="openid_weibo" href="http://www.jiayuan.com/general/t/?forward=sinaAware&amp;c=10&amp;p=2"></a><a target="_blank" class="openid_baidu" href="http://www.jiayuan.com/general/t/?forward=baiduOauth&amp;c=10&amp;p=5"></a><a target="_blank" class="openid_alipay" href="http://www.jiayuan.com/general/t/?forward=alipayOauth&amp;c=10&amp;p=7"></a>
</p>
                <p class="jycm_top_reg">
                	<a class="color_fff" href="http://login.jiayuan.com/validate.php" target="_blank">忘记密码</a><a class="color_fff" href="http://reg.jiayuan.com/?bd=9528" >免费注册</a>
                </p>
            </form>
        </div>
        <div class="jycm_top_right">
            <p class="jycm_top_collect ">
            	<a id="jycm_top_collect_2" class="color_fff va_middle"  href="javascript:;"><i class="jy_top_icon jy_icon_collect"></i>收藏本站</a>
            </p>
        </div>
    </div>
</div>
<!--登录区域 end-->
<div id="jycm_head" class="jycm_head fn-clear">
    <div class="jycm_head_top">
        <h1 class="logo">
        	<a id="jy_head_logo" style="" href="http://www.jiayuan.com/"><img src="resources/img/logo_new.png" alt="世纪佳缘" height="70"></a>
        </h1>
        <div id="jy_head_city_select"></div>
        <div class="jycm_head_ad">
        	<!--<div id="jycm_head_ad_left"></div>-->
        	<div id="ad_pos_70"><a target="_blank" href="http://www.jiayuan.com/advert/click.php?pos_id=70&amp;mr_id=5153&amp;ad_id=828&amp;m_id=707&amp;userid=60839512&amp;ip=2093072665&amp;url=http://www.jiayuan.com/usercp/service/do_package_service.php?rid=70&amp;src_key=ad_43_70_828_707_5153"><img id="jy_advert_707_img" src="resources/img/20140617110556574.gif" border="0" height="70" width="215"></a></div>
            <span style="clear:both"></span>
        </div>
        <span style="clear:both"></span>
    </div>
    <div id="jycm_head_nav" class="jycm_head_navBg">
        <div class="jycm_head_nav fn-clear" id="jycm_head_nav_links" style="">
            <ul>
                <li class="">
                    <a href="http://www.jiayuan.com/"  target="_blank">首页</a>
                </li>
                <li class="head_nav_cur">
                    <a href="http://usercp.jiayuan.com/"  target="_blank">我的佳缘</a>
                </li>
                <li class="">
                   <a href="http://www.jiayuan.com/club/"  target="_blank">俱乐部</a>
                </li>
                <li class="">
                    <a href="http://search.jiayuan.com/v2/"  target="_blank">搜索</a>
                </li>
                <li class="">
                    <a href="http://search.jiayuan.com/v2/new.php"  target="_blank">新会员</a>
                </li>
                <li class="">
                    <a href="http://search.jiayuan.com/v2/online.php"  target="_blank">聊天</a>
                </li>
                <li class="">
                    <a href="http://party.jiayuan.com/"  target="_blank">活动</a>
                </li>
                <li class="">
                    <a href="http://diary.jiayuan.com/"  target="_blank">两性</a>
                </li>
                <li class="">
                    <a href="http://caipiao.jiayuan.com/"  target="_blank">彩票</a>
                </li>
                <li class="">
                	<div class="jy_top_hot">
<a href="http://game.jiayuan.com/" target="_blank">
<img src="resources/img/jy_top_hot.gif" border="0" height="17" width="25">
</a>
</div>
                    <a href="http://game.jiayuan.com/"  target="_blank">游戏</a>
                </li>
                <li class="">
                    <a href="http://love.jiayuan.com/"  target="_blank">晒幸福</a>
                </li>
            </ul>
            <div class="jycm_head_navOthor fn-clear">
                <a href="http://vip.jiayuan.com/"  target="_blank">红娘一对一</a>
                <a class="jycm_head_nav_azx" href="http://www.izhenxin.com/login/getSign/?url=http%3A%2F%2Fwww.jiayuan.com%2Fusercp%2Fiz_login.php%3Furl%3Dhttp%253A%252F%252Fwww.izhenxin.com%252F&amp;from=JYDH"  target="_blank">爱真心</a>
            </div>
        </div>
    </div>
</div>


<!-- released time 2014-09-03 09:38:09 -->
 
<!-- 标准头 结束-->

<!-- 主体 开始 two div-->
<div class="doc980" style="padding:0">
<div id="bgdiv" style="position:absolute;display:none;left:0px;top:0px;width:100%;height:100%;filter:alpha(opacity=30);-moz-opacity:0.3;opacity:0.3;background-color:#000000;z-index:111115;"></div>
<div id="zshutj_pop_div" style="display:none"></div>
<div id="zshutj_pop_div_2" style="display:none"></div>
<style type="text/css">
    #jycm_head{ position: relative; z-index: 2;  }
    .new20140509{ position: absolute; left: 50%;margin-left:500px;top:140px;width: 150px; }
    .new-sys-dn a.new20140509-1:link,
    .new-sys-dn a.new20140509-1:hover,
    .new-sys-dn a.new20140509-1:visited,
    .new-sys-dn a.new20140509-1:active{width:105px; height:75px; display:block; padding-top: 30px; background: url(http://images1.jyimg.com/w4/usercp_new/i/bm/new-sys-dn.gif) no-repeat; margin-left: 15px; text-decoration:none;}
    a.new20140509-1 p{text-align: center; }
    a.new20140509-1 p.p1{ font: 12px "Microsoft YaHei"; color: #666; }
    a.new20140509-1:hover p.p1{color: #333; }
    a.new20140509-1 p.p2{ font: 20px Arial; color:#48a1fa; }
    a.new20140509-1:hover p.p2{color:#f64d6a; }
    a.new20140509-1 p.p2 strong{ font: 32px Arial; }
    .new-dn-prize{width:92px;height: 100px;margin-left:30px;
        -webkit-animation: flash_mod_rock 3s linear 0s infinite normal;
-moz-animation: flash_mod_rock 3s linear 0s infinite normal;
animation: flash_mod_rock 1s linear 0s infinite normal;
-webkit-transform-origin: 50% top;
-moz-transform-origin: 50% top;
transform-origin: 50% top;}
a.wendayoujiang:link,
a.wendayoujiang:hover,
a.wendayoujiang:visited,
a.wendayoujiang:active{width:92px; height:100px; display:block; background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/wendayoujiang.png) 0 0 no-repeat;_background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/wendayoujiang.jpg) 0 0 no-repeat; text-decoration:none;outline: none;}
@keyframes flash_mod_rock {
0% {transform: rotate(0deg)}
25% {transform: rotate(-20deg)}
50% {transform: rotate(0deg)}
75% {transform: rotate(20deg)}
100% {transform: rotate(0deg)}
}
@-webkit-keyframes flash_mod_rock {
0% {-webkit-transform: rotate(0deg)}
25% {-webkit-transform: rotate(-10deg)}
50% {-webkit-transform: rotate(0deg)}
75% {-webkit-transform: rotate(10deg)}
100% {-webkit-transform: rotate(0deg)}
}
@-moz-keyframes flash_mod_rock {
0% {-moz-transform: rotate(0deg)}
25% {-moz-transform: rotate(-10deg)}
50% {-moz-transform: rotate(0deg)}
75% {-moz-transform: rotate(10deg)}
100% {-moz-transform: rotate(0deg)}
}
.new20140509-2{ background: url(http://images1.jyimg.com/w4/usercp_new/i/bm/p1.png) no-repeat 0 20px; padding-left: 30px; padding-top: 20px; }
.new20140509-2 p{ font: 12px/24px "Microsoft YaHei"; color: #646464; }
</style>

<script type="text/javascript" src="resources/js/jquery.js"></script>
<div class="new20140509 new-sys-dn" style="">
    <a class="new20140509-1" href="###">
        <p class="p1" style="cursor:pointer" >交友效率</p>
        <p class="p2" style="cursor:pointer" ><strong id="rank_num">16</strong>%</p>
    </a>
    <div class="new-dn-prize">
	<a href="http://www.jiayuan.com/wenda/?from=ucp"  target="_blank" class="wendayoujiang">&nbsp;</a>
    </div>
</div>

<div>
<!-- 左侧菜单 开始-->
<style type="text/css">
/* 在不引入重置样式文件下保持样式正确兼容 */
.cp-menu,.cp-menu div,.cp-menu p,.cp-menu a,.cp-menu li,.cp-menu span,.cp-menu strong,.cp-menu i{font-family:\5b8b\4f53,simsun,'宋体','Hiragino Sans GB',Arial, Helvetica, sans-serif}
.cp-menu{width:170px;float:left;margin:10px 0 15px;}
.cp-menu li,.cp-menu ul{margin:0;padding:0}
.cp-menu ol,.cp-menu ul{list-style:none}
.cp-menu img{border:0}
.cp-menu a:link,
.cp-menu a:hover,
.cp-menu a:visited,
.cp-menu a:active{outline:none}
.cp-menu .fn-clear:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0}
.cp-menu .fn-clear{zoom:1}
.cp-menu .fn-hide{display:none}
.cp-menu .fn-left{float:left}
.cp-menu .fn-right{float:right}
.cp-menu .menu-clear{clear:both;height:0;line-height:0;font-size:0}
/*圆角*/
.cp-menu-radius{width:auto;overflow:visible;font-size:12px;height:14px;line-height:14px;cursor:pointer;
background-image:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-radius.png);
_background-image:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-radius.gif);
background-position:right -15px;
background-repeat:no-repeat}
.cp-menu-radius .cp-menu-radius-num{padding-left:7px;margin-right:6px;color:#fff;white-space:nowrap;text-align:center;line-height:14px;_line-height:15px;font-size:12px;min-width:6px;max-width:48px;
background-image:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-radius.png);
background-image:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-radius.gif)\9;
background-position:0 0;
background-repeat:no-repeat}
/*小ICON，new hot 人气 箭头 奖 灯泡*/
.cp-menu-ico-new{width:9px;height:16px;display:block;font-size:0;line-height:0;overflow:hidden;background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-left-icon-new.gif) 0 0 no-repeat}
.cp-menu-ico-hot{width:9px;height:12px;display:block;font-size:0;line-height:0;overflow:hidden;background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-left-icon-2.gif) 0 -270px no-repeat}
.cp-menu-ico-popularity{width:23px;height:17px;display:block;font-size:0;line-height:0;overflow:hidden;background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/popularity.gif) 0 0 no-repeat}
.cp-menu-ico-specials {width:23px;height:17px;display:block;font-size:0;line-height:0;overflow:hidden;background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/specials.gif) 0 0 no-repeat}
.cp-menu-ico-bulb{width:15px;height:17px;display:block;font-size:0;line-height:0;overflow:hidden;background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-left-icon-2.png) 0 -303px no-repeat;_background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-left-icon-2.gif) 0 -303px no-repeat}
.cp-menu-ico-arrow{width:7px;height:13px;font-size:0;line-height:12px;overflow:hidden;background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-left-icon-2.png) 0 -139px no-repeat;_background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-left-icon-2.gif) 0 -139px no-repeat}
/*服务图标*/
.cp-menu-service-ico{width:30px;height:25px;display:block;cursor:pointer;
background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-left-icon.png) no-repeat 0 0;_background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-left-icon.jpg) no-repeat 0 0}
.cp-menu-ico-zuanshi{background-position:0 0}/*钻石会员*/
.cp-menu-ico-kanxin{background-position:0 -25px}/*看信包月*/
.cp-menu-ico-juguang{background-position:0 -50px}/*聚光灯*/
.cp-menu-ico-paiming{background-position:0 -75px}/*排名提前*/
.cp-menu-ico-vip{background-position:0 -100px}/*VIP会员*/
.cp-menu-ico-gift{background-position:0 -125px}/*礼物商城*/
.cp-menu-ico-paycenter{background-position:0 -150px}/*购买邮票*/
.cp-menu-ico-account{background-position:0 -175px}/*邮票账户*/
.cp-menu-ico-paoxue{background-position:0 -200px}/*恋爱课堂*/
.cp-menu-ico-more{background-position:0 -225px}/*更多应用*/
/*卡片区：头像*/
.cp-menu-card-user{border:solid 1px #d9d9d9;background:#fff;margin-bottom:15px;font:12px/1.5 tahoma,arial,\5b8b\4f53;padding-top:20px}
.cp-menu-card-user .menu-avatar{width:168px;height:168px;overflow:hidden;position:relative;margin:0 auto 7px}
.cp-menu-card-user .menu-avatar .menu-avatar-mask{width:168px;height:35px;background:#000;-moz-opacity:0.5;opacity:.50;filter:alpha(opacity=50);position:absolute;left:0;bottom:0;z-index:10}
.cp-menu-card-user .menu-avatar-110x168{width:110px;height:135px}
.cp-menu-card-user .menu-avatar-110x168 .menu-avatar-mask{width:110px;height:24px}
.cp-menu-card-user .menu-avatar a.modify-infos:link,
.cp-menu-card-user .menu-avatar a.modify-infos:hover,
.cp-menu-card-user .menu-avatar a.modify-infos:visited,
.cp-menu-card-user .menu-avatar a.modify-infos:active{width:110px;height:24px;line-height:24px;text-align:center;text-decoration:none;color:#aaa;display:block;position:absolute;left:0;bottom:0;z-index:11}
.cp-menu-card-user .menu-avatar a.modify-infos:hover{color:#fff}
/*卡片区：链接*/
.cp-menu-card-link{color:#2c81d6;line-height:26px;text-align:left;margin-bottom:14px;padding-left:27px}
.cp-menu-card-link a.menu:link,
.cp-menu-card-link a.menu:hover,
.cp-menu-card-link a.menu:visited,
.cp-menu-card-link a.menu:active{color:#2c81d6;text-decoration:none;display:inline-block;height:26px;line-height:26px}
.cp-menu-card-link a.menu:hover{text-decoration:underline}
.cp-menu-card-link a.cp-menu-ico-jiang:link,
.cp-menu-card-link a.cp-menu-ico-jiang:hover,
.cp-menu-card-link a.cp-menu-ico-jiang:visited,
.cp-menu-card-link a.cp-menu-ico-jiang:active{background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/my-jiayuan-left-icon-jiang.gif) 97px 6px no-repeat;display:block}
.menu-status{display:inline-block;color:#666}
/*卡片区：收件箱谁看过我*/
.cp-menu-card-mail{position:relative}
.cp-menu-card-mail span{font-family:Microsoft YaHei;font-size:14px;color:#fff;line-height:36px}
.cp-menu-card-mail a.menu:link,
.cp-menu-card-mail a.menu:hover,
.cp-menu-card-mail a.menu:visited,
.cp-menu-card-mail a.menu:active{display:block;background:#0098c2;height:36px;font-family:Microsoft YaHei;font-size:14px;color:#fff;line-height:36px;text-align:center;text-decoration:none;position:relative}
.cp-menu-card-mail a.menu:hover{background:#008BB1;text-decoration:none}
.cp-menu-card-mail a.menu-left{width:83px;float:left}
.cp-menu-card-mail a.menu-right{width:84px;float:right}
.cp-menu-card-mail .menu-bulb{width:15px;height:17px;position:absolute;cursor:pointer;left:5px;top:-10px;line-height:0}/*灯泡*/
.cp-menu-card-mail .msglayer{background:url(http://images2.jyimg.com/w4/usercp_new/i/sxLayerBg.png) no-repeat 0 0;width:139px;height:86px;position:absolute;top:-90px;left:0px;z-index:31;display:none}/*引导弹层*/
.cp-menu-card-mail .msglayer .sxLayer{width:139px;height:86px;display:inline-block;background:none}
.cp-menu-card-mail .msglayer .sxLayerClose{cursor:pointer;position:absolute;top:3px;right:14px;width:20px;height:20px;background:none;z-index:50}
.cp-menu-card-mail .number{font-family:\5b8b\4f53,simsun,'宋体','Hiragino Sans GB';font-size:12px;height:14px;line-height:14px;position:absolute;right:0;top:-7px;cursor:pointer}
/*我的佳缘左侧栏目导航*/
.cp-menus{border:solid 1px #d9d9d9;background:#fff;padding-bottom:10px;font-family:\5b8b\4f53,simsun,'宋体','Hiragino Sans GB',Arial, Helvetica, sans-serif}/*菜单外框*/
/*菜单头，我的佳缘首页链接*/
.cp-menu-index{height:40px;border-bottom:solid 1px #d9d9d9;margin-bottom:9px}
.cp-menu-index a.menu:link,
.cp-menu-index a.menu:hover,
.cp-menu-index a.menu:visited,
.cp-menu-index a.menu:active{height:40px;display:block;font-family:Microsoft YaHei;font-size:14px;line-height:40px;color:#333;padding:0 0 0 55px;text-decoration:none;background:url(http://images1.jyimg.com/w4/usercp_new/v2/i/myjiayuan/left/my-jiayuan-left-icon-2.gif) 29px -48px no-repeat}
.cp-menu-index a.menu:hover{background-position:29px -88px;color:#ff546a}
/*顶级菜单样式*/
.cp-menu-items .cp-menu-title{display:block;height:34px}
.cp-menu-items .cp-menu-title a.menu:link,
.cp-menu-items .cp-menu-title a.menu:hover,
.cp-menu-items .cp-menu-title a.menu:visited,
.cp-menu-items .cp-menu-title a.menu:active{display:block;height:34px;color:#333;text-decoration:none}
.cp-menu-items .cp-menu-title a.menu:hover{background:#eee}
.cp-menu-items .cp-menu-title span.menuname{padding-left:24px;height:34px;float:left;display:inline-block;font-size:14px;line-height:34px;color:#333;font-weight:bold;font-family:Microsoft YaHei}
.cp-menu-items .cp-menu-title span.namecur{cursor:pointer}
.cp-menus .cp-menu-title a.menu .cp-menu-ico-arrow{display:inline-block;margin:11px 0 0 8px;_margin-top:10px}
/*二级菜单样式，默认效果（文本类型）*/
.cp-menu-items{padding-top:10px;margin-bottom:8px}
.cp-menu-items li{float:left;width:168px;height:32px;font-size:12px;line-height:32px}
.cp-menu-items li.oning{background:#e5e5e5}
.cp-menu-items li a.menu:link,
.cp-menu-items li a.menu:hover,
.cp-menu-items li a.menu:visited,
.cp-menu-items li a.menu:active{height:32px;line-height:32px;display:block;padding:0 10px 0 24px;color:#666;position:relative;text-decoration:none}
.cp-menu-items li a.menu:hover{background:#eee}
.cp-menu-items li .cp-menu-item-name{font-size:12px;height:32px;line-height:32px;text-align:left;color:#666;cursor:pointer}
.cp-menu-items li .cp-menu-link-place{position:absolute;bottom:15px;right:147px;z-index:10}
.cp-menu-items li .cp-menu-item-name{font-size:12px;height:32px;line-height:32px;text-align:left;color:#666;cursor:pointer;_padding-top:3px;_height:29px;_line-height:29px}
.cp-menu-items li .cp-menu-link-place{position:absolute;bottom:15px;right:147px;z-index:10;cursor:pointer}
.cp-menu-items li .cp-menu-item-number{font-family:\5b8b\4f53,simsun,'宋体','Hiragino Sans GB';font-size:12px;height:14px;line-height:14px;position:absolute;right:10px;top:9px;cursor:pointer}
/*二级菜单样式，图片类型*/
.cp-menu-items ul.cp-menu-image{float:left;padding:0 12px}
.cp-menu-items li.cp-menu-service-img{width:72px;height:43px;text-align:center;background-color:#fff;padding:7px 0}
.cp-menu-items li.cp-menu-service-img a.menu:link,
.cp-menu-items li.cp-menu-service-img a.menu:hover,
.cp-menu-items li.cp-menu-service-img a.menu:visited,
.cp-menu-items li.cp-menu-service-img a.menu:active{height:43px;line-height:18px;width:50px;margin:0 auto;padding-left:0;padding-right:0}
.cp-menu-items li.cp-menu-service-img a.menu:hover{background:#fff}
.cp-menu-items li.cp-menu-service-img i.cp-menu-service-ico{display:block;margin:0 auto;cursor:pointer}
.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-zuanshi{background-position:-30px 0}
.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-kanxin{background-position:-30px -25px}
.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-juguang{background-position:-30px -50px}
.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-paiming{background-position:-30px -75px}
.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-vip{background-position:-30px -100px}
.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-gift{background-position:-30px -125px}
.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-paycenter{background-position:-30px -150px}
.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-account{background-position:-30px -175px}
.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-paoxue{background-position:-30px -200px}
.cp-menu-items li.cp-menu-service-img a.menu:hover i.cp-menu-ico-more{background-position:-30px -225px}
.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-zuanshi{background-position:-60px 0}
.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-kanxin{background-position:-60px -25px}
.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-juguang{background-position:-60px -50px}
.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-paiming{background-position:-60px -75px}
.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-vip{background-position:-60px -100px}
.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-gift{background-position:-60px -125px}
.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-paycenter{background-position:-60px -150px}
.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-account{background-position:-60px -175px}
.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-paoxue{background-position:-60px -200px}
.cp-menu-items li.cp-menu-service-img a.menu:active i.cp-menu-ico-more{background-position:-60px -225px}
.cp-menu-items li.cp-menu-service-img .cp-menu-item-name{width:50px;font-size:12px;height:18px;line-height:18px;text-align:center;color:#666;margin:0 auto;cursor:pointer}
.cp-menu-items li.cp-menu-service-img .cp-menu-link-place{position:absolute;top:-8px;left:-4px;z-index:10;cursor:pointer}
.cp-menu-items li.cp-menu-service-img .cp-menu-item-number{font-family:\5b8b\4f53,simsun,'宋体','Hiragino Sans GB';font-size:12px;height:14px;line-height:14px;position:absolute;right:0px;top:-9px;cursor:pointer;display:none}
/*左侧样式代码结束*/
</style>

<!--[if lte IE 6]>
<script type="text/javascript" src="http://images.jiayuan.com/w4/msg/js/dd_belatedpng.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix(".fix-png");
</script>
<![endif]-->
<!--左侧栏目 开始-->
<div class="cp-menu">
		<!--会员介绍-->
    <div class="cp-menu-card-user">
        <div class="menu-avatar menu-avatar-110x168">
                        	<a href="http://www.jiayuan.com/usercp/photo.php"  target="_blank"><img src="resources/img/lksczp_m.jpg" id="user_avatar" height="135" width="110"></a>
                    </div>
        <div class="cp-menu-card-link">
            <a class="menu" href="http://www.jiayuan.com/122261858#cp_kpd" title="立刻提升" target="_blank" >靠谱度综合评分:3分</a>
            <a class="menu cp-menu-ico-jiang" href="http://www.jiayuan.com/wenda/?from=ucp" target="_blank" >婚恋个性匹配问答</a>
            <a class="menu" href="user/selfBasic"  target="_blank">我的资料50分</a>
                [<a class="menu" href="http://www.jiayuan.com/122261858" target="_blank">预览</a>]
                    </div>
        <div class="cp-menu-card-mail fn-clear">
        	<a class="menu menu-left" href="../msg/notRead"  title="未读信件6封">
                <span>收件箱</span>
                <div class="cp-menu-radius number fn-right">
                	<div class="cp-menu-radius-num">6</div>
                </div>
            </a>
            <a class="menu menu-right" href="http://www.jiayuan.com/usercp/clicked_new.php">
                <span>谁看过我</span>
                <div class="cp-menu-radius number" id="menu_looked_me_box" style="">
                	<div class="cp-menu-radius-num" id="menu_looked_me">0</div>
                </div>
            </a>
            <div class="menu-clear"></div>
                        <div class="menu-bulb"><i class="cp-menu-ico-bulb fix-png"></i></div>
            <div class="msglayer fix-png" id="photo_scyd_fc">
                <a class="sxLayer"  href="http://www.jiayuan.com/usercp/photo.php?no_photo=1&amp;from_type=usercp" target="_blank"></a>
                <a class="sxLayerClose"  title="关闭"></a>
            </div>
                    </div>
    </div>
	<!--会员介绍 结束-->
	      
    <div class="cp-menus">
        <div class="cp-menu-index"><a class="menu" href="http://usercp.jiayuan.com/" >我的佳缘首页</a></div>
        
                	                        
            <div class="cp-menu-items fn-clear">
                <div class="cp-menu-title fn-clear">
                	                        <a class="menu" href="http://www.jiayuan.com/usercp/service/servicenew.php" target="_blank" >
                            <span class="menuname namecur">服务中心</span>
                            <i class="cp-menu-ico-arrow"></i>
                        </a>
                                    </div>
                
                                
                <ul class="cp-menu-image">
                                                                    	   
                 	                    	                        	        
                	                        
                            		                                          
                  						                                                
        <li class=" cp-menu-service-img fn-left">
                                <a class="menu" id="service_1_a_1" target="_blank" href="http://www.jiayuan.com/usercp/service/bmsg_tg2.php?cnm=usercp&amp;zs_from=4&amp;src_key=new_usercp_menu" >
                                	<i class="cp-menu-service-ico cp-menu-ico-zuanshi"></i>	                                    <div class="cp-menu-item-name">钻石会员</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="s41" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                            <i class="cp-menu-ico-specials cp-menu-link-place"></i>		                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" cp-menu-service-img fn-left">
                                <a class="menu" id="service_1_a_2" target="_blank" href="http://www.jiayuan.com/usercp/service/bmsg.php?cnm=usercp&amp;src_key=new_usercp_menu">
                                	<i class="cp-menu-service-ico cp-menu-ico-kanxin"></i>	                                    <div class="cp-menu-item-name">看信包月</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="s37" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" cp-menu-service-img fn-left">
                                <a class="menu" id="service_4" target="_blank" href="http://www.jiayuan.com/usercp/fate_express.php" onmousedown="send_jy_pv2('|1000136_0|');">
                                	<i class="cp-menu-service-ico cp-menu-ico-juguang"></i>	                                    <div class="cp-menu-item-name"><cite style="padding-right:6px">聚</cite><cite style="padding-right:6px">光</cite><cite>灯</cite></div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="fate" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" cp-menu-service-img fn-left">
                                <a class="menu" id="service_1_a_4" target="_blank" href="http://www.jiayuan.com/usercp/service/priority.php" >
                                	<i class="cp-menu-service-ico cp-menu-ico-paiming"></i>	                                    <div class="cp-menu-item-name">排名提前</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="s5" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" cp-menu-service-img fn-left">
                                <a class="menu" id="service_1_a_3" target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php?from=menu&amp;src_key=new_usercp_menu" >
                                	<i class="cp-menu-service-ico cp-menu-ico-vip"></i>	                                    <div class="cp-menu-item-name">VIP 会员</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="s31" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" cp-menu-service-img fn-left">
                                <a class="menu" id="service_3" target="_blank" href="http://gift.jiayuan.com/">
                                	<i class="cp-menu-service-ico cp-menu-ico-gift"></i>	                                    <div class="cp-menu-item-name">礼物商城</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="giftmall" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" cp-menu-service-img fn-left">
                                <a class="menu" id="service_1_a_6" target="_blank" href="http://www.jiayuan.com/usercp/center/charge.php?from=menu&amp;src_key=new_usercp_menu#author_wp">
                                	<i class="cp-menu-service-ico cp-menu-ico-paycenter"></i>	                                    <div class="cp-menu-item-name">购买邮票</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="23" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" cp-menu-service-img fn-left">
                                <a class="menu" id="service_2" target="_blank" href="http://www.jiayuan.com/usercp/center/index.php?from=menu">
                                	<i class="cp-menu-service-ico cp-menu-ico-account"></i>	                                    <div class="cp-menu-item-name">邮票账户</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="stamps" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                                                
        <li class=" cp-menu-service-img fn-left">
                                <a class="menu" id="paoxue" target="_blank" href="http://case.jiayuan.com/paoxue/">
                                	<i class="cp-menu-service-ico cp-menu-ico-paoxue"></i>	                                    <div class="cp-menu-item-name">恋爱秘籍</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="paoxue_id" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                            <i class="cp-menu-ico-popularity cp-menu-link-place"></i>		                                                                    </a>
                            </li>
                        
                                                            				                                                	<li class="cp-menu-service-img fn-left">
                    	<a class="menu" href="http://www.jiayuan.com/usercp/service/servicenew.php" target="_blank" >
	                        <i class="cp-menu-service-ico cp-menu-ico-more"></i>
                        </a>
                    </li>
                                </ul>
                
                                
            </div>
            
        	                	                        
            <div class="cp-menu-items fn-clear">
                <div class="cp-menu-title fn-clear">
                	                        <a class="menu" href="javascript:pop_app();" target="" >
                            <span class="menuname namecur">佳缘应用</span>
                            <i class="cp-menu-ico-arrow"></i>
                        </a>
                                    </div>
                
                                
                <ul>
                                                                    	   
                 	                    	                        	        
                	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="jy_club_id" target="_blank" href="http://www.jiayuan.com/club" >
                                		                                    <div class="cp-menu-item-name">佳缘俱乐部</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="mission_gold" class="cp-menu-radius-num" style="">金豆450</div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                                                
        <li class=" ">
                                <a class="menu" id="menu_id_wenda" target="_blank" href="http://www.jiayuan.com/wenda/">
                                		                                    <div class="cp-menu-item-name">个性匹配问答</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="app_id_wenda" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                            <i class="cp-menu-ico-new cp-menu-link-place"></i>		                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                                                
        <li class=" ">
                                <a class="menu" id="app_yfsp_id" target="_blank" href="http://www.jiayuan.com/parties/app/yfsp/" >
                                		                                    <div class="cp-menu-item-name">谁最养眼？</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="app_yfsp" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                            <i class="cp-menu-ico-new cp-menu-link-place"></i>		                                                                    </a>
                            </li>
                        
                                                                        
        	                                                        	      
              	                    	                        	           
             	                        
                            		                                          
                  						                                                
        <li class=" ">
                                <a class="menu" id="dafuweng_m" target="_blank" href="http://www.jiayuan.com/parties/2012/dafuweng/index.php" >
                                		                                    <div class="cp-menu-item-name">爱情大富翁</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="dafuweng_flag" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                            <i class="cp-menu-ico-hot cp-menu-link-place"></i>		                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                                                
        <li class=" ">
                                <a class="menu" id="zt2012_zhanbu_id" target="_blank" href="http://www.jiayuan.com/parties/2012/zhanbu/" >
                                		                                    <div class="cp-menu-item-name">星座占卜屋</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="zt2012_zhanbu" class="cp-menu-radius-num" style="">15</div>
                                        </div>
                                    </div>
                                                                            <i class="cp-menu-ico-new cp-menu-link-place"></i>		                                                                    </a>
                            </li>
                        
                                                                        
        	                                                        	      
              	                    	                        	           
             	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="usercp_case2013_bubble" target="_blank" href="http://case.jiayuan.com/2013/bubble/" >
                                		                                    <div class="cp-menu-item-name">泡泡大拯救</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="case2013_bubble" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="app_fishingjoy" target="_blank" href="http://case.jiayuan.com/2012/fishingjoy/" >
                                		                                    <div class="cp-menu-item-name">捕鱼寻缘 </div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="app_fishingjoy_id" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="app_11" target="_blank" href="http://www.jiayuan.com/parties/2012/zadan/index.php" >
                                		                                    <div class="cp-menu-item-name">暴走的金蛋</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="app11" class="cp-menu-radius-num" style="">3</div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                						                                                  
                                      <li class=" ">
                                <a class="menu" id="app_0" target="_blank" href="http://www.jiayuan.com/map/result.php" >
                                		                                    <div class="cp-menu-item-name">地图搜索</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="app0" class="cp-menu-radius-num">新版</div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="app_1" target="_blank" href="http://www.jiayuan.com/parties/2012/telepathy/index.php" >
                                		                                    <div class="cp-menu-item-name">心电感应</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="app1" class="cp-menu-radius-num" style="">14</div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="app_4" target="_blank" href="http://www.jiayuan.com/parties/2011/yjzq/" >
                                		                                    <div class="cp-menu-item-name">一键钟情</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="app4" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                                                
        <li class=" ">
                                <a class="menu" id="Usercp_app_flowerball" target="_blank" href="http://www.jiayuan.com/parties/app/guesslike/" >
                                		                                    <div class="cp-menu-item-name">猜你喜欢</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="Usercp_apps_guesslike" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                            <i class="cp-menu-ico-new cp-menu-link-place"></i>		                                                                    </a>
                            </li>
                        
                                                            				                                                </ul>
                
                                
            </div>
            
        	                	                        
            <div class="cp-menu-items fn-clear">
                <div class="cp-menu-title fn-clear">
                							<span class="menuname">交友记录</span>
                                    </div>
                
                                
                <ul>
                                                                    	   
                 	                    	                        	        
                	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="friends_1" target="_self" href="http://www.jiayuan.com/usercp/friends.php?from=menu" >
                                		                                    <div class="cp-menu-item-name">好友与联系人</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="friends" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class="oning ">
                                <a class="menu" id="visitor_new_id" target="_self" href="http://www.jiayuan.com/usercp/clicked_new.php" >
                                		                                    <div class="cp-menu-item-name">谁看过我</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="visitor_new" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="click_new_id" target="_self" href="http://www.jiayuan.com/usercp/ilooked.php" >
                                		                                    <div class="cp-menu-item-name">我看过谁</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="click_new" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="praise_me_new_id" target="_self" href="http://www.jiayuan.com/usercp/praiseme.php" >
                                		                                    <div class="cp-menu-item-name">谁赞过我</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="praise_me_new" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="fans_new_id" target="_self" href="http://www.jiayuan.com/usercp/myfans.php" >
                                		                                    <div class="cp-menu-item-name">谁关注我</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="fans_new" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                            				                                                </ul>
                
                                
            </div>
            
        	                	                        
            <div class="cp-menu-items fn-clear">
                <div class="cp-menu-title fn-clear">
                							<span class="menuname">完善资料</span>
                                    </div>
                
                                
                <ul>
                                                                    	   
                 	                    	                        	        
                	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="info_1" target="_blank" href="http://www.jiayuan.com/usercp/profile.php?action=base" >
                                		                                    <div class="cp-menu-item-name">我的资料</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="0" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="info_1_1" target="_blank" href="http://www.jiayuan.com/usercp/photo.php?from=menu" >
                                		                                    <div class="cp-menu-item-name">我的相册</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="0" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="info_1_2" target="_self" href="http://www.jiayuan.com/usercp/article.php?from=menu" >
                                		                                    <div class="cp-menu-item-name">我的博客</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="111" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="info_2" target="_self" href="http://www.jiayuan.com/usercp/validateemail/certificate.php" >
                                		                                    <div class="cp-menu-item-name">身份验证</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="12" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                						                                                  
                                      <li class=" ">
                                <a class="menu" id="info_2_1" target="_self" href="http://www.jiayuan.com/usercp/validateemail/certificate.php?menu=4" >
                                		                                    <div class="cp-menu-item-name">手机验证</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="s121" class="cp-menu-radius-num">有奖</div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="info_2_2" target="_self" href="http://www.jiayuan.com/usercp/validateemail/certificate.php?menu=5" >
                                		                                    <div class="cp-menu-item-name">邮箱认证</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="s122" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="info_3" target="_self" href="http://www.jiayuan.com/usercp/condition.php?from=menu" >
                                		                                    <div class="cp-menu-item-name">修改择友条件</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="13" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="info_4" target="_self" href="http://www.jiayuan.com/story/space_create.php?LeftNav=1&amp;from=menu" >
                                		                                    <div class="cp-menu-item-name">发表成功故事</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="15" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                            				                                                </ul>
                
                                
            </div>
            
        	                	                        
            <div class="cp-menu-items fn-clear">
                <div class="cp-menu-title fn-clear">
                							<span class="menuname">我的账号</span>
                                    </div>
                
                                
                <ul>
                                                                    	   
                 	                    	                        	        
                	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="account_1" target="_self" href="http://www.jiayuan.com/usercp/dingyue.php?from=menu">
                                		                                    <div class="cp-menu-item-name">我的订阅</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="100" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="account_2" target="_self" href="http://www.jiayuan.com/usercp/password.php?from=menu" >
                                		                                    <div class="cp-menu-item-name">账号安全</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="password" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                                        
        	                    	                    	                     
   	                        	                        
                            		                                          
                  						                               	                
                                        <li class=" ">
                                <a class="menu" id="account_4" target="_self" href="http://www.jiayuan.com/usercp/share.php?from=menu" >
                                		                                    <div class="cp-menu-item-name">分享资料</div>	                                    <div class="cp-menu-item-number">	                                        <div class="cp-menu-radius fn-right">
                                        	                                            <div id="share" class="cp-menu-radius-num" style="display:none"></div>
                                        </div>
                                    </div>
                                                                    </a>
                            </li>
                        
                                                            				                                                </ul>
                
                                
            </div>
            
        	                
    </div>
</div>
<script type="text/javascript">
/*
*/
	//获取佳缘应用的数字
</script>
<!--左侧栏目 结束--><!-- 左侧菜单 结束-->

<!-- 中 右 内容开始 -->
<div class="grid790right" style="margin:10px 0 0;padding:0">
<!-- ==============================框架内内容========================================= -->

<div id="newly" class="newly">
	<!--导航 B-->
	<div class="tab-search cf">
        <ul class="tab-box">
            <li class="tab-selected">
				<a href="http://www.jiayuan.com/usercp/clicked_new.php"><i></i>谁看过我</a>
							</li>
            <li>
				<a href="http://www.jiayuan.com/usercp/ilooked.php"><i></i>我看过谁</a>
							</li>
            <li>
				<a href="http://www.jiayuan.com/usercp/praiseme.php"><i></i>谁赞过我</a>
							</li>            
            <li>
				<a href="http://www.jiayuan.com/usercp/myfans.php"><i></i>谁关注我</a>
							</li>
        </ul>
		<!--猜你喜欢专题在谁看过我页面加入口-->
		<p style="margin-left:11px; float:left; display:inline;"><a href="http://www.jiayuan.com/parties/app/guesslike/" target="_blank"><img src="resources/img/Male_banner.gif"></a></p>
		<!--猜你喜欢专题在谁看过我页面加入口end-->
	</div>
	<!--导航 E-->
	<div class="newly_tt cf">
		<h2 class="fl">最近来访<b>14</b></h2>
		<div id="imp" class="imp fr">	
			<a style="border-color: rgb(255, 255, 255);" class="imp_a" href="###">我要提高访问量</a>
			<div style="display: none;" class="imp_wd">
				<h3 class="imp_q1 ie6_png">问题：想要提高来访人数及收信量？</h3>
				<p>
					解决方案：<span class="color_999">试试</span>
					<a href="http://www.jiayuan.com/usercp/service/priority.php" target="_blank" >排名提前</a>
				</p>
				<p class="color_999">
					优先推荐您，更多访问量，海量信件收不停.
				</p>
				<p class="line_xx">
				</p>
				<h3 class="imp_q2 ie6_png">问题：想要符合你要求的人来看你？</h3>
				<p>
					解决方案：<span class="color_999">试试</span>
					<a href="http://www.jiayuan.com/usercp/fate_express.php" target="_blank">超级聚光灯</a>
				</p>
				<p class="color_999">
					精准展示，锁定心仪异性，收信全合心意.
				</p>
			</div>
		</div>
	</div>
	<div class="newly_txt">
		<p>
			这里记录了最近60个浏览过您的异性会员。开通VIP会员，可享查看谁看过我等23项给力交友特权。<a href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_clicked_new" target="_blank" style="color:#2C81D6;">去看看&gt;&gt;</a>
		</p>
	</div>
	<div id="show_style_01" class="show_style_01">
		<ul class="cf">
		<c:forEach var="user" items="${seeMeUsers}" >
				<li>
					<div class="pic">
						<a href="user/search/${user.userId}" target="_blank">
<!-- 							onmousedown="send_jy_pv2('|clicked_new_fvip_zpdjrc|');send_jy_pv2('|clicked_new_fvip_zpdjrs|122261858');"> -->
							<img src="resources/img/a4526fa13_2_avatar_p.jpg"></a>
						<!--<div class="from_bg ie6png">
			来自<a href="###">缘分速递</a>
		</div>-->
					</div>
					<div class="label_bg label_gsr">高收入</div>
					<div class="user_info">
						<a href="user/search/${user.userId}" target="_blank">29岁&nbsp;&nbsp;${user.address}</a>
					</div>
<!-- 					<div class="date">到访：2014-09-21</div> -->
					<div class="check_zl">
						<a href="user/search/${user.userId}">查看资料</a>
					</div>
				</li>
		</c:forEach>
		</ul>
	</div>
	</div>
<div id="bg" style="display:none"></div>
<!--弹出层 start-->
<div class="layer" id="open_window" style="display:none;background:none;">
	<div class="layer_box" style="background:none;border:none;">
		<div class="layer_title" id="open_window_head"><h2><img src="resources/img/op_but_close.gif"  title="关闭"><span id="open_window_title"></span></h2></div>
		<div class="layer_content" id="open_window_content"></div>
		<div id="iframe_loading" style="position: absolute;"><img id="loading_focus" src="resources/img/loading.gif"></div>
	</div>
</div>
<!--弹出层 end-->


<!-- ==============================框架内内容========================================= -->

</div>
<!-- 中 右 内容结束 -->
<div class="clear_line"></div>
</div>
</div>
<!-- 主体 结束 two div-->

<!-- 标准尾 开始-->
<script type="text/javascript" src="resources/js/foot.js"></script><script type="text/javascript" src="resources/js/w4-simple.js"></script><style type="text/css">
*{padding:0;margin:0}
.hf_wapper {width:950px;margin:0 auto;clear:both;font-family:SimSun,Arial,Helvetica,sans-serif}
.hf_wapper img, .hf_wapper img a{border:none}
#common_footer{width:950px;font-size:12px;padding:20px 0;text-align:center;line-height:2;color:#636363}
#common_footer p{text-align:center}
#common_footer p a{margin:0 8px;padding:0;color:#636363;text-decoration:none}
#common_footer p a:hover{margin:0 8px;color:#E7417F;text-decoration:underline}
#common_footer p .bot_link_none:hover{color:#636363;text-decoration:none}
</style>
<div class="hf_wapper">
    <div class="hf_foot" id="common_footer">
    <p id="bottom_nav_link">
<a name="foot_nav_link" href="http://www.jiayuan.com/helpcenter/postmail.php" target="_blank">联系客服</a>
<a name="foot_nav_link" href="http://www.jiayuan.com/bottom/index.html" target="_blank">关于我们</a>
<a name="foot_nav_link" href="http://www.jiayuan.com/bottom/connect.html" target="_blank">联系我们</a>
<a name="foot_nav_link" href="http://www.jiayuan.com/bottom/business.html" target="_blank">无线业务</a>
<a name="foot_nav_link" href="http://www.jiayuan.com/bottom/declare.html" target="_blank">注册条款</a>
<a name="foot_nav_link" href="http://www.jiayuan.com/bottom/links.php" target="_blank">友情链接</a>
<a name="foot_nav_link" href="http://www.jiayuan.com/bottom/jobs.html" target="_blank">招聘信息</a>
<a name="foot_nav_link" href="http://www.jiayuan.com/bottom/notice.html" target="_blank">交友信息</a>
<a name="foot_nav_link" href="http://www.jiayuan.com/bottom/private.html" target="_blank">隐私保护</a>
<a name="foot_nav_link" href="http://www.jiayuan.com/helpcenter/" target="_blank">帮助中心</a>
<a name="foot_nav_link" href="http://www.jiayuan.com/guard/" target="_blank">安全中心</a>
</p>
<p id="bottom_site_copyright" style="">
<a class="bot_link_none">中文实名：世纪佳缘</a>
<a class="bot_link_none">ICP证书：沪B2-20100074</a>
<a href="http://www.jiayuan.com/certificate/zengzhi.html" target="_blank">增值电信业务经营许可证：沪B2-20070313</a>
<a href="http://www.jiayuan.com/certificate/iso.html" target="_blank">ISO9001质量体系认证</a>
<a href="http://www.jiayuan.com/certificate/license.html" target="_blank">沪网文[2012]0720-106号</a>
</p>
<p>
©&nbsp;&nbsp;2003-2014&nbsp;版权所有&nbsp;&nbsp;&nbsp;&nbsp;京公网安备110105002124号&nbsp;&nbsp;&nbsp;&nbsp;不良和违法信息举报专线：010-57835066
</p>
<div id="page_bottom_info" style="text-align:center;margin-bottom:10px"></div>
<img src="resources/img/a.gif" style="display:none"> 
<noscript> 
  <img src="http://b.scorecardresearch.com/p?c1=2&c2=15205083&cv=2.0&cj=1" /> 
</noscript> 
<!-- End comScore Tag -->     </div>
</div>

<!-- released time 2014-09-09 15:19:30 -->
	<style type="text/css"> 	*{margin:0;padding:0;}	.winpopfoot{width:284px;height:203px;overflow:hidden;word-wrap:break-word;word-break:break-all;font-size:12px;font-family:Arial,SimSun;color:#636363;}	.pngforsjjy{behavior:expression((T=this,T.runtimeStyle.behavior="none")&&(T.p?0:((T.runtimeStyle.backgroundImage = "none",T.runtimeStyle.filter ="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+T.src+"',sizingMethod='image')",T.src = "http://images.jiayuan.com/w3/global/i/bg.gif")),T.p=1));}	.winpopfoot em,.winpopfoot span,.winpopfoot strong{font-weight:normal;font-style:normal;font-size:12px;}	.winpopfoot_box{position:absolute;top:8px;left:10px;width:264px;height:192px;overflow:hidden;border-bottom:3px solid #E876B2;background:url(http://images1.jyimg.com/w4/index/i/bg100804_02.gif) repeat-x 0 -100px;}	.winpopfoot_t{width:264px;height:30px;overflow:hidden;}	.winpopfoot_t em{float:left;width:67px;height:25px;overflow:hidden;margin:5px 0 0 10px;cursor:pointer;}	.winpopfoot_t em strong{width:67px;height:25px;display:block;line-height:25px;font-weight:bold;text-align:center;}	.winpopfoot_t em strong.str2{position:relative;}	.winpopfoot_t em.on{background:url(http://images1.jyimg.com/w4/index/i/bg100804_01.gif) no-repeat 0 0;}	.winpopfoot_t em.on strong.str1{color:#DCDCDC;}	.winpopfoot_t em.on strong.str2{top:-26px;color:#444444;}	.winpopfoot_t em.over strong.str1{color:#C23174;}	.winpopfoot_t em.over strong.str2{top:-24px;color:#FFFFFF;}	.winpopfoot_t span{float:right;width:18px;height:18px;overflow:hidden;margin:7px 5px 0 0;cursor:pointer;background-image:url(http://images1.jyimg.com/w4/index/i/bg100804_01.gif);}	.winpopfoot_t span.sp1{background-position:-70px 0;}	.winpopfoot_t span.sp2{background-position:-90px 0;}	.winpopfoot_t span.sp3{background-position:-110px 0;}	.winpopfoot_c{width:258px;height:162px;overflow:hidden;margin:0 auto;background:#FFFDFD;}	.winpopfoot_c dl{width:228px;height:140px;margin:10px auto 0;overflow:hidden;line-height:20px;}	.winpopfoot_c dd{width:100%;text-align:left;}	.winpopfoot_c dd.martop15{margin-top:15px;}	.winpopfoot_c dd span{float:right;width:100%;text-align:right;}	.winpopfoot_c dd a,.winpopfoot_c dd a:hover{color:#BC0073;text-decoration:underline;}	.winpopfoot_c dd img{display:block;margin:0 auto;border:none;}	</style>		<div style="position: absolute; z-index: 99999; overflow: hidden; border-width: 0px; width: 280px; height: 0px; right: 0px; bottom: 0px; display: none; top: 1090px; left: 1263px;" id="bulletin"> 		<div class="winpopfoot" style="position:absolute;z-index:2;left:0;" id="pop_div"> 	<img src="resources/img/bg100804.png" class="pngforsjjy"> 	<div class="winpopfoot_box"> 	<div class="winpopfoot_t"> 	<span class="sp2" title="关闭" onclick="_close();" id="closeButton"></span> 	<span class="sp3" title="最大化" onclick="_mini();" id="switchButton"></span> 	<em id="div_1" class="on"><div><div id="link_1"><strong class="str1">互动消息</strong><strong class="str2">互动消息</strong></div></div></em> 	<em id="div_3" class="over"><div><div id="link_3"><strong class="str1">最新活动</strong><strong class="str2">最新活动</strong></div></div></em> 	</div>	<div class="winpopfoot_c"> 	<dl> 	<dd style="" id="con_1" class="martop15"><img src="resources/img/logo_prompt_002.jpg"></dd> 	<dd style="display: none;" id="con_2" class="martop15"></dd> 	<dd style="display: none;" id="con_3"><img src="resources/img/logo_prompt_002.jpg"></dd> 	</dl> 	<iframe scrolling="no" id="run_fra" name="run_fra" src="" frameborder="0" height="0" width="0"></iframe> 	</div> 	 	</div> 	</div> 	 	</div> 	<script type="text/javascript" src="resources/js/pop.js"></script><div id="bgdiv_foot" style="position:absolute;display:none; left:0px; top:0px; width:100%; height:100%; filter:alpha(opacity=30); opacity:0.3; background-color:#000000; z-index:12000;"></div> <div class="dragdiv" id="bg_div_float_foot" style="z-index:12001;position:absolute;top:0px;left:0px;display:none"></div><link href="resources/css/jyim3.css" type="text/css" rel="stylesheet"><audio preload="auto" id="audio_347161"><source src="myself_files/msg1.mp3" type="audio/mpeg"><source src="resources/img/msg1.ogg" type="audio/ogg"></audio><div class="im_bar_min" style="display: block;" id="im_bar"><div t="#im_friend" id="contact" class="im_btn fr im_btn_last oneCity pr im_attached_pop"><a class="im_inner_btn">联系人</a><span style="display: none;" class="amount fl"><span class="amount_leftBg fl"></span><span class="amount_centerBg fl">0</span><span class="amount_rightBg fl"></span></span><div id="im_friend" class="im_win im_samecity_div"><div class="pr im_win_title webimTop"><ul><li class="oning">初次联系</li><li>关注</li><li>好友</li></ul><div class="im_t_close webimClose"></div></div><div class="im_list"><div class="webimZaixian"><div class="webimZaixianRS">在线（<span></span><span></span><span></span>）</div><div class="webimCakanquanbu"><a href="###">查看全部&gt;&gt;</a></div></div><div class="webimList"><ul></ul><ul></ul><ul></ul></div><div class="im_loading"><table><tbody><tr><td><img src="resources/img/loading_002.gif"><span>正在加载，请稍候</span></td></tr></tbody></table></div><div class="webimListAnzhuang"><a href="#">安装佳缘佳信3.0，与她免费视频聊天</a></div></div></div></div><div t="#im_chatx" id="onlineTalk" class="im_btn fr im_btn_second onlineTalk pr im_attached_pop"><a class="im_inner_btn">聊天</a><span style="display: none;" class="amount fl"><span class="amount_leftBg fl"></span><span class="amount_centerBg fl">0</span><span class="amount_rightBg fl"></span></span><div id="im_chatx" class="im_win onlineTalk_content"><div class="pr im_win_title onlineTalk_content_title"><div class="title_leftBg fl"></div><h1 class="title_centerBg">聊天</h1><div class="title_rightBg fl"><a class="pr im_t_close"></a><a target="_blank" href="http://webim.jiayuan.com/messages.php" class="notes">查看全部聊天记录</a></div></div><div class="im_list"><div id="im_rec_chat_con"><span class="im_list_no_chat">暂无未读消息</span><div class="im_rec_chat"><img><span>和我聊天</span></div><div class="im_rec_chat"><img><span>和我聊天</span></div><div class="im_rec_chat"><img><span>和我聊天</span></div></div></div></div></div><div t="#im_msgx" class="im_btn fr im_btn_first message pr im_attached_pop"><a class="im_inner_btn">消息</a><span style="display: none;" class="amount fl"><span class="amount_leftBg fl"></span><span class="amount_centerBg fl">0</span><span class="amount_rightBg fl"></span></span><div id="im_msgx" class="im_win message_content"><div class="pr im_win_title message_content_title"><div class="title_leftBg fl"></div><h1 class="title_centerBg">消息</h1><div class="title_rightBg fl"><a class="pr im_t_close"></a></div></div><div class="im_list"><img class="im_jy_logo" src="resources/img/logo_prompt.jpg"></div></div></div><div class="im_btn fr letter"><a href="msg/notRead" target="_blank" class="im_inner_btn">收件箱</a><span style="display: inline;" class="amount fl"><span class="amount_leftBg fl"></span><span class="amount_centerBg fl">6</span><span class="amount_rightBg fl"></span></span></div><div style="display: none;" id="im_pop_win" class="pa im_win"><div class="im_title"><div class="im_t_tab">互动消息</div><div class="im_t_tab">交友活动</div><div class="title_rightBg fr im_t_close"></div></div><div class="im_pop_content"><img src="resources/img/logo_prompt.jpg"></div><div class="im_pop_content"><img src="resources/img/logo_prompt.jpg"></div></div><div style="display: none;" class="im_yfms_tpl0" id="im_yfms"></div><div style="display: none;" id="im_chat_pop_win" class="pa im_win"><div class="im_chat_win_title"><div class="im_chat_win_nick"></div><div class="fr im_t_close"></div></div><div class="im_chat_win_content  im_pop_content"><div><span></span><span><a class="im_tosee_chatmsg">查看详情</a></span></div></div></div><div style="display: none;" id="im_zhuanti"></div><div style="display: none;" id="im_profile_pop_win"><div class="dzhLayer"><div class="dzhLayer_top"><a href="javascript:void(0);" class="im_t_close dzhLayer_close">&nbsp;</a><div class="dzhLayer_set"><a href="javascript:void(0);" class="dzhLayer_bxs" style="display: none;">今日不再提醒</a></div></div><div class="dzhLayer_text"><p>对方在线，和TA聊聊吧</p></div><div class="dzhLayer_icon"><div class="dzhLayer_iconImg"><a href="javascript:void(0);" class="hi"><span></span><div class="tishilayer1"><p class="tishilayer_hi">想了解你更多,可以聊聊么?</p></div></a><a href="javascript:void(0);" class="face"><span></span><div class="tishilayer2"><p class="tishilayer_face">想了解你更多,可以聊聊么?</p></div></a><a href="javascript:void(0);" class="flower"><span></span><div class="tishilayer3"><p class="tishilayer_flower">想了解你更多,可以聊聊么?</p></div></a><a href="javascript:void(0);" class="heart"><span></span><div class="tishilayer4"><p class="tishilayer_xin">想了解你更多,可以聊聊么?</p></div></a></div><div class="dzhLayer_loading"><img src="resources/img/jx3_loading.gif">发送中...</div><div class="dzhLayer_loaded"><img src="resources/img/send_ok.gif">发送成功</div></div></div></div><div style="display: none;" id="im_jiaxin_pop_win"><div class="jx3_0_1_adv jx3_0_1_adv1"><div class="jx3_0_1_advTop"><a href="javascript:void(0);" class="im_t_close jx3_0_1_advClose">&nbsp;</a></div><div class="jx3_0_1_advBody"><a href="http://im.jiayuan.com/?from=rightbottom" target="_blank" class="jx3_0_1_advButton">&nbsp;</a></div></div></div><div t="#im_myjy" class="im_btn fl myJiayuan pr im_attached_pop"><a class="im_inner_btn">我的服务</a><div id="im_myjy" class="im_win myjiayuan_content"><div class="pr im_win_title myjiayuan_content_title"><div class="title_leftBg fl"></div><h1 class="title_centerBg">我的服务</h1><div class="title_rightBg fl"><a class="pr im_t_close"></a></div></div><div class="im_list"></div></div></div><ul class="fl im_service_list" id="service_list"><li class="jystamp" title="佳缘邮票"><a target="_blank" href="http://www.jiayuan.com/usercp/center/index.php">佳缘邮票</a></li><li class="speedpost" title="特快专递"><a target="_blank" href="http://www.jiayuan.com/msgapp/ems/?a=info">特快专递</a></li><li class="diamond_g" title="钻石会员"><a target="_blank" href="http://www.jiayuan.com/usercp/service/bmsg_tg2.php">钻石会员</a></li><li class="vip_g" title="VIP会员"><a target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php">VIP会员</a></li><li class="readmail_g" title="看信包月"><a target="_blank" href="http://www.jiayuan.com/usercp/service/bmsg.php">看信包月</a></li><li class="forground_g" title="排名提前"><a target="_blank" href="http://www.jiayuan.com/usercp/service/priority.php">排名提前</a></li><li class="express_g" title="超级聚光灯"><a target="_blank" href="http://www.jiayuan.com/usercp/fate_express.php">超级聚光灯</a></li></ul><div t="#im_jyapp" class="im_btn fl jiayuanCenter pr im_attached_pop"><a class="im_inner_btn">佳缘应用</a><div id="im_jyapp" class="im_win jiayuanCenter_content"><div class="pr im_win_title jiayuanCenter_content_title"><div class="title_leftBg fl"></div><h1 class="title_centerBg">佳缘应用</h1><div class="title_rightBg fl"><a class="pr im_t_close"></a></div></div><div class="im_list"></div></div></div><div style="display: none;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">专享特惠--钻石会员立减200元！仅298元/年！马上开通&gt;&gt;</a></div><div style="display: none;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">亲，教你淘最佳配偶！试下“超级聚光灯”</a></div><div style="display: none;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">做大富翁，赢大奖！</a></div><div style="display: block;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">选对“真像”，爱情“不在囧途”</a></div><div style="display: none;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">帮你快速精准锁定心仪异性，快来看看！</a></div></div>
<script type="text/javascript" src="myself_files/ad.htm"></script>
<!-- 标准尾 结束--> 

<div style="position: absolute; width: 1px; height: 1px;" id="typeAContainer"><object data="myself_files/typeA4.swf" id="typeA" type="application/x-shockwave-flash" height="1" width="1"><param value="false" name="menu"><param value="noScale" name="scale"><param value="true" name="allowFullscreen"><param value="always" name="allowScriptAccess"><param value="#FFFFFF" name="bgcolor"></object></div></body></html>