<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Language" content="zh-cn">
<meta name="keywords" content="爱一起注册,爱一起网注册,爱一起会员注册">
<meta name="description" content="青春不常在，抓紧谈恋爱！免费注册爱一起交友网会员。现1亿注册会员，让缘分千万里挑一！爱一起交友网：纳斯达克股票代码DATE。">
<title>上传照片_爱一起交友网</title>
<meta http-equiv="Cache-Control" content="no-cache, must-revalidate"> 
<meta http-equiv="expires" content="0">
<link type="text/css" href="resources/css/jquery_002.css" rel="stylesheet" media="all">
<link type="text/css" href="resources/css/reset.css" rel="stylesheet" media="all">
<link type="text/css" href="resources/css/reg_upload_photo.css" rel="stylesheet" media="all">
<style type="text/css">
@charset "utf-8";
/*-上传照片-*/
.jc-demo-box{position:relative;background-color:#e7e7e7;width:395px;height:340px;overflow:hidden;border:1px solid #c8c8c8}
.jc-demo-box ul{padding-top:100px;text-align:center}
.jc-demo-box ul li{font:bold 14px "微软雅黑";color:#333}
.jc-demo-box ul li span{font-size:17px;font-weight:normal;color:#f03b6e;background:url(http://images1.jyimg.com/w4/register/v2/i/arr1.jpg) no-repeat 60px 4px;padding-right:15px}
.jc-demo-box ul li.jy-t3{font:12px "宋体";margin-top:10px;color:#666}
.jc-demo-box .btn7{display:block;height:39px;width:132px;position:absolute;left:50%;margin-left:-66px;top:176px;cursor:pointer;background:url(http://images1.jyimg.com/w4/register/v2/i/btn4.jpg) no-repeat}

.jy-up-ch{position:relative;width:395px}
.jy-up-ch .bch{display:block;position:absolute}
.jy-up-ch .dn{display:none}
.jy-up-ch .bch1{width:15px;height:20px;background:url(http://images1.jyimg.com/w4/register/v2/i/bch.jpg) 0px 0px no-repeat;left:0px;top:10px}
.jy-up-ch .bch2{width:39px;height:24px;background:url(http://images1.jyimg.com/w4/register/v2/i/bch.jpg) -15px 0px no-repeat;left:50%;margin-left:-39px;top:7px}
.jy-up-ch .bch3{width:37px;height:24px;background:url(http://images1.jyimg.com/w4/register/v2/i/bch.jpg) -54px 0px no-repeat;left:50%;top:7px}
.jy-up-ch .bch4{width:15px;height:20px;background:url(http://images1.jyimg.com/w4/register/v2/i/bch.jpg) -91px 0px no-repeat;right:0px;top:10px}
.jy-up-ch .bch1:hover{background:url(http://images1.jyimg.com/w4/register/v2/i/bch.jpg) 0px -27px no-repeat}
.jy-up-ch .bch2:hover{background:url(http://images1.jyimg.com/w4/register/v2/i/bch.jpg) -15px -24px no-repeat}
.jy-up-ch .bch3:hover{background:url(http://images1.jyimg.com/w4/register/v2/i/bch.jpg) -54px -24px no-repeat}
.jy-up-ch .bch4:hover{background:url(http://images1.jyimg.com/w4/register/v2/i/bch.jpg) -91px -27px no-repeat}
.jy-up-ch ul{list-style:none;padding:60px 0 0 0;width:170px;height:31px;overflow:hidden;margin:0 auto}
.jy-up-ch ul li{float:left}
.jy-up-ch ul li.la{margin-left:12px;display:inline}
.jy-up-ch ul li a{display:block;width:79px;height:31px;background-image:url(http://images1.jyimg.com/w4/register/v2/i/btn5.jpg);background-repeat:no-repeat;line-height:31px;text-align:center}
.jy-up-ch ul li a:hover{text-decoration:none}
.jy-up-ch ul li a.btn6{background-position:0px 0px;color:#666}
.jy-up-ch ul li a.btn6:hover{cursor:pointer;background-position:0px -31px}
.jy-up-ch ul li a.btn5{background-position:-79px 0px;color:white}
.jy-up-ch ul li a.btn5:hover{cursor:pointer;background-position:-79px -31px}

.jy-up-3{padding-left:60px}
.jy-up-3l{float:left;width:397px}
.jy-up-3r{float:left;margin-left:26px;display:inline}
.jy-up-3r ul{}
.jy-up-3r ul li{border:1px solid #ccc;margin-bottom:13px;padding:2px}
.jy-up-3r ul li img{display:block}
.jy-up-3r .preview-container{overflow:hidden}

.cut_container_area{width:395px;height:340px;overflow:hidden}
.cut_container_area img{position:absolute}
.pre-1,.pre-2{border:1px solid #c8c8c8;padding:0;height:120px;overflow:hidden;text-align:center}
.pre-1{width:98px;margin-top:15px}
.pre-2{width:120px}

.pre-rectangle,.pre-square{border:1px solid #c8c8c8;padding:0;overflow:hidden;height:120px;text-align:center}
span.preview_text{display:block;font:12px "宋体";color:#CCC;margin:51px auto}
.pre-square{width:120px;background-color: #000;}
.pre-rectangle{width:98px;margin-top:15px;background-color: #000;}
.pre-rectangle-sub{width:109px;margin-left:-11px}
.pre-rectangle .pre-rectangle-sub span.preview_text{margin-left:10px}

.save-tips{display:none;width:80px;padding-left:41px;height:51px;background:url(http://images1.jyimg.com/w4/register/v2/i/suc.jpg) no-repeat;position:absolute;font:bold 14px/51px "宋体";color:#4a5355}
#spanButtonPlaceHolder{color: white;font-size: 14px;position: absolute;left: 46px;top: 9px;font-weight: bold;}
.change_pic_edit{border-top:none;padding: 0 0 0 10px;}
.footer{background:url(http://images1.jyimg.com/w4/center/v2_i/bg.jpg) repeat;}
.wxts{border-top:1px solid #E7E7E7;padding: 10px 0 0 0;}
</style>
<script src="resources/js/beacon.js" async=""></script><script type="text/javascript" src="resources/js/JY_Alert.js"></script>
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script src="resources/js/jquery_002.js" type="text/javascript"></script>
<script type="text/javascript" src="resources/js/JY.js"></script><!--佳缘桌面弹层开始--><link href="resources/css/layer.css" rel="stylesheet" type="text/css"><script src="resources/js/clickonce.js" type="text/javascript"></script></head><body><div class="layerTable" id="layerTable" style="display:none;"><div class="layerTableTop"><a href="javascript:hidelayerTable(0)" class="layerTableClose"></a></div><div class="layerTableBody"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td><a href="javascript:hidelayerTable(2)" class="layerTableButton"></a></td><td><a href="javascript:hidelayerTable(1)" class="layerTableLink">查看详情</a></td><td><a href="javascript:hidelayerTable(0)" class="layerTableLink">以后再说</a></td></tr></tbody></table></div></div><script type="text/javascript">function hidelayerTable(butt){document.getElementById("layerTable").style.display="none";document.getElementById("header_login_pop_mask").style.display="none";location.href=JY.url.getChannelUrl("usercp");if(butt==1){window.open("http://webim.jiayuan.com/client/download.php");}if(butt==2){NavigateTo("jiayuan.com");}}</script><!--佳缘桌面弹层结束-->
<script type="text/javascript" src="resources/js/head_common.js"></script>
<script src="resources/js/tracker.js" type="text/javascript"></script>
<script src="resources/js/pv.js" type="text/javascript"></script>
<!--[if lte IE 6]>
<script type="text/javascript" src="http://images.jiayuan.com/w4/common/j/DD_belatedPNG_0.0.8a_IE6.js"></script>
<script>
    DD_belatedPNG.fix('.pngfix');
</script>
<![endif]-->

<!--专题js-用fancybox-->
<link type="text/css" rel="stylesheet" href="resources/css/jquery.css">
<script src="resources/js/jquery_003.js" type="text/javascript"></script>
<script src="resources/js/case_uicommon.js" type="text/javascript"></script>
<!--美图秀秀-->
<script type="text/javascript">
    document.write('<script src="http://open.web.'+'meitu.'+'com/sources/xiuxiu.js" type="text/javascript"><\/script>')
</script><script src="resources/js/xiuxiu.js" type="text/javascript"></script>
<script type="text/javascript">
//全局变量定义
var jcrop_api, boundx, boundy;
var _Jw,_Jh,_Jw2,_Jh2;
var preview_int = 0, preview_bool = true;
//表单提交
function mysub(){
	if($("#ppp").val() == ''){
		alert('请先上传一张照片');
		return;
	}
	var i_www = $('#cut_area>img').width();		//图片页面显示宽度
	var i_hhh = $('#cut_area>img').height();		//图片页面显示高度
	var i_ttt = parseInt($('#cut_area>img').css('top'));	//图片距离容器顶端距离
	var i_lll = parseInt($('#cut_area>img').css('left'));	//图片距离容器左侧距离
	var dddd = $("#ddd").val();
	var box_w = 395, box_h = 340;	//编辑区宽高
	if(dddd == 90 || dddd == 270){
		if(isIe6() || isIe7() || isIe8()){
			i_www = i_hhh;
		}else{
			i_lll = (box_w - i_hhh) / 2;
			i_ttt = (box_h - i_www) / 2;
		}
	}
	$("#i_w").val(i_www);		//图片页面显示宽度
	$("#i_t").val(i_ttt);	//图片距离容器顶端距离
	$("#i_l").val(i_lll);	//图片距离容器左侧距离
	document.cut_img_form.submit();
}
function onPhotoChage(){
    //document.getElementById('photosubmit').removeAttribute('disabled');
}
//上传照片表单提交判断
function myreview23(){ 
    if($("#picpath").val() == ""){
	   alert("请选择要上传的照片");
	   return false;
	}
     document.Form5.submit();
    location.href="#review";
    return true;
}

//重置图片大小
function avatar_ResizeImage(obj, rx, iw, ry, ih, cx, cy, ow, oh)
{
	if(preview_int > 7){
		show_pre_img();//显示预览
	}else{
		preview_int++;
	}
	obj.css({
		width: Math.round(rx * iw) + 'px',
		height: Math.round(ry * ih) + 'px'
	});
	if( cy > oh && cx > ow){
		obj.css({
			marginLeft: '-' + Math.round(rx * (cx - ow)) + 'px',
			marginTop: '-' + Math.round(ry * (cy - oh)) + 'px'
		});
	}else if( cy < oh && cx > ow){
		obj.css({
			marginLeft: "-" + Math.round(rx * (cx - ow)) + 'px',
			marginTop: Math.round(ry * (oh - cy)) + 'px'
		});
	}else if( cy > oh && cx < ow){
		obj.css({
			marginLeft: Math.round(rx * (ow - cx)) + 'px',
			marginTop: '-' + Math.round(ry * (cy - oh)) + 'px'
		});
	}else if( cy < oh && cx < ow){
		obj.css({
			marginLeft: Math.round(rx * (ow - cx)) + 'px',
			marginTop: Math.round(ry * (oh - cy)) + 'px'
		});
	}
};
//图片预览
function avatar_imgPreview(c)
{
	var iw = $('.cut_container_area>img').width(),
		ih = $('.cut_container_area>img').height(),
		ow = (395 - iw) / 2,
		oh = (340 - ih) / 2,
		rx = 120 / c.w,
		ry = 120 / c.h,
		rx1 = 120 / c.w,
		ry1 = 120 / c.h,
	_data = $(".jc-demo-box").attr("data");
	if((isIe8() || isIe7() || isIe6()) && (_data == 90 || _data == 270)){
		avatar_ResizeImage($('.pre-rectangle img'), rx, ih, ry, iw, c.x, c.y, ow, oh);
		avatar_ResizeImage($('.pre-square img'), rx1, ih, ry1, iw, c.x, c.y, ow, oh);
	}else{
		avatar_ResizeImage($('.pre-rectangle img'), rx, iw, ry, ih, c.x, c.y, ow, oh);
		avatar_ResizeImage($('.pre-square img'), rx1, iw, ry1, ih, c.x, c.y, ow, oh);
	}
	$('#xxx').val(c.x);
	$('#yyy').val(c.y);
	$('#www').val(c.w);
	$('#hhh').val(c.h);
}
//图片旋转
function avatar_imgRotate(deg)
{
    var img1 = $(".cut_container_area>img"),
        _data = parseInt($(".jc-demo-box").attr("data"));
    if(isIe8() || isIe7() || isIe6() ){
        var sin = Math.sin(Math.PI / 180 * (_data + deg));
        var cos = Math.cos(Math.PI / 180 * (_data + deg));
        var _filter = "progid:DXImageTransform.Microsoft.Matrix(M11=" + cos + "," +  "M12=" + (-sin)
            + ",M21=" + sin+ ",M22=" + cos + ",SizingMethod='auto expand')";
        img1.css({
            filter: _filter
        });
        $('.pre-rectangle img,.pre-square img').css({
            filter: _filter
        });
    }else{
        var _deg = deg + _data;
        var _val =  "rotate("+ _deg + "deg)";
        img1.css({
            "-webkit-transform": _val,
               "-moz-transform": _val,
                "-ms-transform": _val,
                 "-o-transform": _val,
                    "transform": _val
        });
        $('.pre-rectangle img,.pre-square img').css({
            "-webkit-transform": _val,
               "-moz-transform": _val,
                "-ms-transform": _val,
                 "-o-transform": _val,
                    "transform": _val
        });
    }
	var fiw = $('.cut_container_area>img').width(),
		fih = $('.cut_container_area>img').height(),
		ow = Math.floor((395 - fiw) / 2),
		oh = Math.floor((340 - fih) / 2),
		cx = $("#small").position().left,
		cy = $("#small").position().top,
		rx = 120 / $("#small").width(),
		ry = 120 / $("#small").height(),
		rx1 = 120 / $("#small").width(),
		ry1 = 120 / $("#small").height();

    if((isIe8() || isIe7() || isIe6())){
        avatar_ResizeImage($('.pre-rectangle img'), rx, fih, ry, fiw, cx, cy, ow, oh);
        avatar_ResizeImage($('.pre-square img'), rx1, fih, ry1, fiw, cx, cy, ow, oh);
    }else{
        avatar_ResizeImage($('.pre-rectangle img'), rx, fiw, ry, fih, cx, cy, ow, oh);
        avatar_ResizeImage($('.pre-square img'), rx1, fiw, ry1, fih, cx, cy, ow, oh);
    }
    $(".cut_container_area img").css({
        left: ow,
        top: oh
    });

    if(deg > 0){
        if(_data == 270){
            _data = 0;
        }else{
            _data = _data + 90;
        }
    }else{
        if(_data == 0){
            _data = 270;
        }else{
            _data = _data - 90;
        }
    }
    $("#ddd").val(_data);
    $(".jc-demo-box").attr("data", _data);
}
function run_avatar_ImgReSize(){
	if(navigator.userAgent.indexOf("MSIE 8.0")>0 && $("#uploaddiv").css("display") != "none"){
		setTimeout(function(){
			avatar_InitImage();
			avatar_ImgReSize(10);
		},50);
	}else{
		setTimeout(function(){
			avatar_ImgReSize(10);
		},50);
	}
}

//图片缩放
function avatar_ImgReSize(size)
{
    var iw = $('.cut_container_area>img').width(),
        ih = $('.cut_container_area>img').height(),
        _data = $(".jc-demo-box").attr("data"),
        _w = Math.round(iw + size),
        _h = Math.round(((iw + size) * ih) / iw);
		if((_w<200 || _h<200) && size<0){
			return false;
		}

    if((isIe8() || isIe7() || isIe6()) && (_data == 90 || _data == 270)){
        $('.cut_container_area>img').width(_h).height(_w);
    }else{
        $('.cut_container_area>img').width(_w).height(_h);
    }

    var fiw = $('.cut_container_area>img').width(),
        fih = $('.cut_container_area>img').height(),
        ow = (395 - fiw) / 2,
        oh = (340 - fih) / 2,
        cx = $("#small").position().left,
        cy = $("#small").position().top,
        rx = 120 / $("#small").width(),
        ry = 120 / $("#small").height(),
        rx1 = 120 / $("#small").width(),
        ry1 = 120 / $("#small").height();

    if((isIe8() || isIe7() || isIe6()) && (_data == 90 || _data == 270)){
        avatar_ResizeImage($('.pre-rectangle img'), rx, fih, ry, fiw, cx, cy, ow, oh);
        avatar_ResizeImage($('.pre-square img'), rx1, fih, ry1, fiw, cx, cy, ow, oh);
    }else{
        avatar_ResizeImage($('.pre-rectangle img'), rx, fiw, ry, fih, cx, cy, ow, oh);
        avatar_ResizeImage($('.pre-square img'), rx1, fiw, ry1, fih, cx, cy, ow, oh);
    }
    $(".cut_container_area img").css({
        left: ow,
        top: oh
    });
};
//阻止默认行为
function stopEvent(e)
{
    var e = e || window.event;
    if(e.preventDefault){
        e.preventDefault();
        e.stopPropagation();
    }else{
        e.returnValue = false;
        e.cancelBubble = true;
    }
}
//初始化（照片适应裁剪框）照片在裁剪框中的显示
function avatar_InitImage()
{
    var obj = $(".cut_container_area img"),
        w = $(".cut_container_area").width(),
        h = $(".cut_container_area").height(),
        iw = obj.width(),
        ih = obj.height();
		//alert(iw);
    if(iw > w || ih > h){
        if(iw / ih > w / h){
            obj.css({
                width: w,
                height: w * ih / iw,
                top: (h - (w * ih / iw)) / 2,
                left: 0
            });
        }else{
            obj.css({
                height: h,
                width: h * iw / ih,
                top: 0,
                left: (w - (h * iw / ih)) / 2
            });
        }
    }else{
        obj.css({
            left: (w - iw) / 2,
            top: (h - ih ) / 2
        });
    }
}
//初始化切图
function avatar_InitCut(image_url,item)
{
	if(jcrop_api){
		show_pre_txt();			//初始化预览区域（显示文字）
		jcrop_api.destroy();	//更新时取消选框，避免多选框出现
	}
	$('#ss_'+item).attr("checked",true);
	//初始化表单
	$("#xxx").val('');	//X坐标
	$("#yyy").val('');	//Y坐标
	$("#www").val('');	//宽度
	$("#hhh").val('');	//高度
	$("#ppp").val('');	//图片URL
	$("#ddd").val('');	//旋转角度
	//初始化切图区域
	$(".jc-demo-box").empty();
	$(".jc-demo-box").append('<div id="cut_area" class="cut_container_area"><img src="" onload="avatar_InitImage();run_avatar_ImgReSize();" /></div>');
	$(".jc-demo-box #cut_area > img").attr({"src":image_url});
	//初始化预览区域（把图片设置到预览图片位置）
	$(".preview_image").attr({"src":image_url});
	//状态切换
	$('#uploaddiv').hide();	//上传DIV
	$('#jcropdiv').show();	//切图DIV
	//初始化基础数据
	$("#ppp").val(image_url);
	$(".jc-demo-box").attr("data","0");
	$(".preview_image").css("-webkit-transform","none");
	$(".preview_image").css("-moz-transform","none");
	$(".preview_image").css("-ms-transform","none");
	$(".preview_image").css("-o-transform","none");
	$(".preview_image").css("transform","none");
	//计算切图框默认情况
	_Jw = ($("#cut_area").width() - 200) / 2;
	_Jh = ($("#cut_area").height() - 200) / 2;
	_Jw2 = _Jw + 200;
	_Jh2 = _Jh + 200;
	//切图功能初始化
	jcrop_api = $.Jcrop('#cut_area',{
		minSize: [80,80],
		setSelect: [_Jw, _Jh, _Jw2, _Jh2],
		onChange: avatar_imgPreview,
		onSelect: avatar_imgPreview,
		aspectRatio: 1/1,
		bgFade: true,
		bgOpacity: .5,
		bgColor: "white",
		keySupport : false,
		allowSelect: false
	});
}
//显示预览图片
function show_pre_img()
{
	if(preview_bool){
		$(".preview_text").hide();	//隐藏提示说明文字
		$(".preview_image").show();	//显示预览效果图片
		preview_bool = false;		//预览处理状态，保证切换功能只执行一次
	}
}
//显示预览文字
function show_pre_txt()
{
	preview_int	= 0;			//初始化显示预览条件
	preview_bool= true;			//初始化显示预览条件
	$(".preview_image").hide();	//隐藏预览效果图片
	$(".preview_text").show();	//显示提示说明文字
}
function setAvatar(item)
{
    var src = $("#" + item + "_big").val();
	avatar_InitCut(src,item);
}
//显示标题
function show_h()
{
    $("#photo_h").show();
}

function add_photo_li(photo_base_url,pid)
{
	var photo_count = $(".change_pic_list").find("li").length + 1;
	$(".change_pic_list").append('<li id="up_'+photo_count+'"><input type="hidden" id="'+photo_count+'_big" value="'+photo_base_url+'/'+pid+'d.jpg?a=b" /><label for="change_pic_01" onclick="javascript:setAvatar('+photo_count+');"><div><img src="'+photo_base_url+'/'+pid+'t.jpg?a=b" id="up_'+photo_count+'_src" style="max-width:110px; max-height:110px;"/></div><input type="radio" id="ss_'+photo_count+'" name="select_avatar"/>设为头像照</label></li>');
	setAvatar(photo_count);
}

//弹出浏览框
function openBrowse()
{ 
	var ie = navigator.appName=="Microsoft Internet Explorer" ? true : false; 
	if(ie){
		document.getElementById("picpath").click(); 
	}else{
		var mouse_events = document.createEvent("MouseEvents");	//FF的处理 
		mouse_events.initEvent("click", true, true);  
		document.getElementById("picpath").dispatchEvent(mouse_events); 
	} 
} 
//判断各种IE浏览器
function isIe()
{
	return ("ActiveXObject" in window);
}
function isIe8()
{
	// alert(!-[1,])//->IE678返回NaN 所以!NaN为true 标准浏览器返回-1 所以!-1为false
	return isIe() && !-[1,]&&document.documentMode;
}
function isIe7()
{
	//只有IE8+才支持document.documentMode
	return isIe() && window.XMLHttpRequest && !document.documentMode;
}
function isIe6()
{
	// ie6是不支持window.XMLHttpRequest的
	return isIe() && !window.XMLHttpRequest;
}

//绑定各个按钮事件
$(function(){
	//左旋转
    $("#btnRotateLeft").click(function(e){
        avatar_imgRotate(-90);
        stopEvent(e);
    });
	//右旋转
    $("#btnRotateRight").click(function(e){
        avatar_imgRotate(90);
        stopEvent(e);
    });
	//放大
    $("#btnZoomBig").click(function(e){
        avatar_ImgReSize(20);
        stopEvent(e);
    });
	//缩小
    $("#btnZoomSmall").click(function(e){
        avatar_ImgReSize(-20);
        stopEvent(e);
    });
	//处理文件域
// 	$("input.pic").filestyle({ 
// 		image: "http://images1.jyimg.com/w4/register/i/upload_photo/upload_bg.gif",
// 		imageheight : 30,
// 		imagewidth : 80,
// 		width : 230,
// 		id : 'picpath'
// 	});	
	if(!(navigator.userAgent.indexOf("MSIE 8.0")>0 || navigator.userAgent.indexOf("MSIE 6.0")>0 || navigator.userAgent.indexOf("MSIE 7.0")>0 || navigator.userAgent.indexOf("MSIE 9.0")>0 || (/MSIE\s+10.0/i.test(navigator.userAgent) && (function(){"use strict";return this === undefined;}())))){
		$("#cxscan").show();
		$("#tskscan").show();
	}else{
		$("#cxscan").parent().css('width','104px');
	}
	
	function Validate()
	  {
//		 var image =document.getElementById("image").value;
//		 if(image!=''){
//			  var checkimg = image.toLowerCase();
//			  if (!checkimg.match(/(\.jpg|\.png|\.JPG|\.PNG|\.jpeg|\.JPEG)$/)){
//				  alert("Please enter  Image  File Extensions .jpg,.png,.jpeg");
//				  document.getElementById("image").focus();
//				  return false;
//			    }
//			 }
		 return true;
	 }
});
</script>


<iframe src="" name="run_fra" id="run_fra" border="0" marginwidth="0" marginheight="0" scrolling="no" frameborder="no" height="0" width="0"></iframe>
<!-- 注册页面标准头 开始 -->
<!-- <script type="text/javascript" src="resources/js/head_red_simple.js"></script> -->
<!-- <script type="text/javascript" src="resources/js/head_pink.js"></script> -->
<script type="text/javascript">
//会员信息对象
window.HEAD_USER = {};
HEAD_USER.uid = 0;
//通用头功能函数对象
var jy_head_function = {};
jy_head_function.in_array = function(array, value){//判断value是否在数组array中
var i = array.length;
while(i--){
if(array[i] === value){
return true; 
}
}
return false;
}
jy_head_function.get_top_domain = function(){//获取顶级域名
var domain_suffix = ['com','cn','net'];//域名后缀验证配置，新后缀自行添加
var host_name= location.hostname.toLowerCase();
var host_arr = host_name.split('.');
var host_len = host_arr.length;
var head_top_domain = '';
for(var i=host_len-1; i>=0; i--){
if(this.in_array(domain_suffix, host_arr[i])){
head_top_domain = '.' + host_arr[i] + head_top_domain;
}else{
head_top_domain = host_arr[i] + head_top_domain;
break;
}
}
return head_top_domain;
};
jy_head_function.get_userinfo = function(){//获取会员信息
HEAD_USER.ip_loc = this.get_cookie("ip_loc");//当前会员IP对应的地区
var profile = this.get_cookie("PROFILE");
if(profile && profile.length > 11){
//说明：0,UID;1,昵称;2,性别;3,头像地址;4,头像标记;5,认证;6,空占位;7,头像图片名称;8,征友状态;9,俱乐部等级;10,金豆数;11,新旧会员标记
var arr = profile.split(":");
if(/^\d{7,10}$/.test(arr[0])){
HEAD_USER.uid = arr[0];//UID
HEAD_USER.nickname = decodeURIComponent(arr[1]);//昵称
HEAD_USER.sex = arr[2];//性别
HEAD_USER.avatar_flag = arr[4];//头像状态标记
HEAD_USER.avatar = "http://" + arr[3] + "/" + arr[7];//头像
HEAD_USER.certify = arr[5];//认证
HEAD_USER.status = arr[8];//征友状态
HEAD_USER.level = '';//俱乐部等级
HEAD_USER.bean = 0;//俱乐部金豆数
HEAD_USER.type = 0;
if(arr.length >= 11){
HEAD_USER.level = arr[9];
HEAD_USER.bean = arr[10];
HEAD_USER.type = arr[11];//新旧会员标记类型new_msg
}
HEAD_USER.work_location = 0;
HEAD_USER.work_sublocation = 0;
work_loc = this.get_cookie("myloc");
if(work_loc && work_loc.length > 3){
work_loc = work_loc.split("|");
HEAD_USER.work_location = work_loc[0];//省
HEAD_USER.work_sublocation = work_loc[1];//市
}
HEAD_USER.age = this.get_cookie("myage");//年龄
HEAD_USER.income = this.get_cookie("myincome");//收入
HEAD_USER.last_login_time = this.get_cookie("last_login_time");//最后登录时间
}
}
return HEAD_USER;
};
jy_head_function.get_custom_avatar = function(avatar_url){//获取小尺寸的头像
sex = avatar_url.substr(-5);
sex = sex.substr(0, 1);	//获取头像后缀
var avatar_url_array = new Array();
if(sex == 'p'){	//有头像，获取其他尺寸
avatar_url_array['avatar_n'] = avatar_url.replace('_p.jpg', '_n.jpg');
avatar_url_array['avatar_s'] = avatar_url.replace('_p.jpg', '_s.jpg');
}else{
avatar_url_array['avatar_n'] = avatar_url.replace('_' + sex + '.jpg', '_' + sex + '_n.jpg');
avatar_url_array['avatar_s'] = avatar_url.replace('_' + sex + '.jpg', '_' + sex + '_s.jpg');
}
return avatar_url_array;
};
jy_head_function.get_channel = function(){//获取频道标识
host_name = location.hostname.toLowerCase();//当前域名
var channel_dir_array = Array('/usercp/','/msg/','/parties/wap_clients/','/9158/','/yindou/');//频道目录数组
var head_current_channel = host_name.split('.')[0];//获取二级子域名，处理当前头部选中链接样式
//域名转换标识
switch(head_current_channel){
case 'www':
case 'case':
//首页，个人资料页，小龙女频道，爱情测试，我的佳缘（非我的佳缘首页），信件，手机频道
var head_href = window.location.href;		//获取当前URL
var ch_select = 0;							//频道选择标记
for(var ch_dir in channel_dir_array){
if(channel_dir_array.hasOwnProperty(ch_dir)){//遍历时限制只遍历自身属性
if(head_href.indexOf(channel_dir_array[ch_dir]) >= 0){		//根据当前的URL获取频道
ch_select = 1;
break;
}
}
}
if(ch_select == 1){
switch(channel_dir_array[ch_dir]){
case '/usercp/':
case '/msg/':
head_current_channel = 'usercp';
break;
case '/9158/':
head_current_channel = 'hd9158';
break;
case '/yindou/':
head_current_channel = 'yindou';
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
jy_head_function.get_cookie = function(c_name){//获取指定COOKIE内容
if(document.cookie.length > 0){
c_start = document.cookie.indexOf(c_name + "=");
if(c_start != -1){ 
c_start = c_start + c_name.length + 1;
c_end = document.cookie.indexOf(";", c_start);
if(c_end == -1){
c_end = document.cookie.length;
}
return decodeURIComponent(document.cookie.substring(c_start, c_end));
}
}
return null;
};
jy_head_function.set_cookie = function(c_name, value, hours){//写入COOKIE，单位为小时
var expire = "";
if(hours != null && !isNaN(hours)){
expire = new Date((new Date()).getTime() + hours * 3600 * 1000);
expire = "; expires=" + expire.toGMTString();
}
document.cookie = c_name + "=" + escape(value) + expire + "; domain=" + jy_head_function.get_top_domain() + "; path=/";
};
jy_head_function.format_tpl = function(tpl){//格式化替换输出导航信息
for(key in common_nav_array){
if(common_nav_array.hasOwnProperty(key)){
tpl = tpl.replace(eval("/\{"+key+"\}/g"), common_nav_array[key]);
}
}
return tpl;
};
jy_head_function.format_date = function(t){//时间戳转换标准日期格式
var t		= new Date(t * 1000);//JS时间戳是毫秒单位
var year	= t.getFullYear();
var month	= t.getMonth() + 1;
var date	= t.getDate();
var hour	= t.getHours();
var minute	= t.getMinutes();
var second	= t.getSeconds();
return year + "-" + month + "-" + date + " " + hour + ":" + minute + ":" + second;
};
jy_head_function.list = function(obj){//查看对象、数组所有的属性和方法
var properties = "" ;
for(var p in obj){	//开始遍历
if(obj.hasOwnProperty(p)){
if(typeof(obj[p]) == " function " ){
obj[p]();
}else{ //p为属性名称，obj[p]为对应属性的值
properties += p + " = " + obj[p] + "\r\n" ;
}
}
}
return properties;
};
jy_head_function.set_head_nav_link = function(v){//设置导航链接显示的状态
if(v == 'show' || v == 1){
if(document.getElementById('head_white_nav')){
document.getElementById('head_white_nav').style.display = "inline";
document.getElementById('head_white_logo').style.background = 'url('+common_nav_array['img_url']+'w4/common/i/head/jycm_zt_vline.png) no-repeat top right';
}else if(document.getElementById('head_red_simple_nav')){
document.getElementById('head_red_simple_nav').style.display = "";
}else if(document.getElementById('head_blue_simple_nav')){
document.getElementById('head_blue_simple_nav').style.display = "";
}
}else if(v == 'hide' || v == 0){
if(document.getElementById('head_white_nav')){
document.getElementById('head_white_nav').style.display = "none";
document.getElementById('head_white_logo').style.background = 'none';
}else if(document.getElementById('head_red_simple_nav')){
document.getElementById('head_red_simple_nav').style.display = "none";
}else if(document.getElementById('head_blue_simple_nav')){
document.getElementById('head_blue_simple_nav').style.display = "none";
}
}
};
jy_head_function.set_head_nav_user = function(v){//设置导航用户信息显示的状态
if(v == 'show' || v == 1){
if(document.getElementById('head_white_user')){
document.getElementById('head_white_user').style.display = "inline";
}else if(document.getElementById('head_red_simple_user')){
document.getElementById('head_red_simple_user').style.display = "";
}else if(document.getElementById('head_blue_simple_user')){
document.getElementById('head_blue_simple_user').style.display = "";
}
}else if(v == 'hide' || v == 0){
if(document.getElementById('head_white_user')){
document.getElementById('head_white_user').style.display = "none";
}else if(document.getElementById('head_red_simple_user')){
document.getElementById('head_red_simple_user').style.display = "none";
}else if(document.getElementById('head_blue_simple_user')){
document.getElementById('head_blue_simple_user').style.display = "none";
}
}
};
jy_head_function.set_head_title = function(title){//修改导航头部标题部分
if(document.getElementById('head_blue_simple')){
document.getElementById('head_blue_simple').innerHTML = title;
document.getElementById('head_blue_simple').style.display = "";
}else if(document.getElementById('head_red_simple')){
document.getElementById('head_red_simple').innerHTML = title;
document.getElementById('head_red_simple').style.display = "";
}
};
jy_head_function.strlen_ch = function(str){//返回字符串长度，英文1，汉字2
    var real_length = 0, len = str.length, char_code = -1;
    for(var i=0; i<len; i++){
        char_code = str.charCodeAt(i);
        if(char_code >= 0 && char_code <= 128) real_length += 1;
        else real_length += 2;
    }
    return real_length;
};
jy_head_function.substr_ch = function(str, cut_len){//截取指定长度的字符串，英文1，汉字2
var real_length = 0, s = "", len = str.length, char_code = -1;
for(var i=0; i<len; i++){
char_code = str.charCodeAt(i);
if(char_code >= 0 && char_code <= 128){
real_length++;
}else{ 
real_length += 2;
}
s += str.charAt(i);
if(real_length >= cut_len){
return s ;
}
}
return s;
};
jy_head_function.click_pv = function(head_nav_flag){//通用头自定义的小图片统计方法
var head_navf_url = "http://pv2.jyimg.com/any/";
var head_navArr = ["a","b","c","d","e","f","g","h","i","g","k","l","m","n","o","p","q","r","s","t","u","v","x","y","z"];
    var head_navn = Math.floor(Math.random() * head_navArr.length + 1) - 1;   
    var head_navurl = head_navf_url + head_navArr[head_navn] + ".gif?|" + head_nav_flag + "|" + new Date().getTime() + "|";
var head_navsender = new Image();
head_navsender.onload = function(){head_navclear(this);};
head_navsender.onerror = function(){head_navclear(this);};
head_navsender.onabort = function(){head_navclear(this);};
head_navsender.src = head_navurl;
function head_navclear(obj){
obj.onerror = null;
obj.onload = null;
obj.onabort = null;
obj = null;
}
};
//获取会员登录信息
jy_head_function.get_userinfo();

//导航配置
var jy_img_domain = 'mi'+'uu.'+'cn';//图片顶级域名
var jy_top_domain = jy_head_function.get_top_domain();//佳缘站全站顶级域名
var izx_top_domain= 'izhenxin.dev';//爱真心等级域名
if(jy_top_domain == '' || jy_top_domain == 'jiayuan.com'){
jy_top_domain = 'jiayuan.com';
jy_img_domain = 'jyimg.com';
izx_top_domain= 'izhenxin.com';
}
//配置域名链接
var common_nav_array = new Array();
common_nav_array['www_tag']		= "首页";								//标签名
common_nav_array['www_url']		= "http://www."+jy_top_domain+"/";		//链接
common_nav_array['www_css']		= "";									//指定样式
common_nav_array['www_sta']		= "|head_navigation_www|";				//点击统计标识
common_nav_array['usercp_tag']	= "我的佳缘";
common_nav_array['usercp_url']	= "http://usercp."+jy_top_domain+"/";
common_nav_array['usercp_css']	= "";
common_nav_array['usercp_sta']	= "|head_navigation_usercp|";
common_nav_array['club_tag']	= "俱乐部";
common_nav_array['club_url']	= "http://www."+jy_top_domain+"/club/";
common_nav_array['club_css']	= "";
common_nav_array['club_sta']	= "|head_navigation_club|";
common_nav_array['search_tag']	= "搜索";
common_nav_array['search_url']	= "http://search."+jy_top_domain+"/v2/";
common_nav_array['search_css']	= "";
common_nav_array['search_sta']	= "|head_navigation_search|";
common_nav_array['new_tag']		= "新会员";
common_nav_array['new_url']		= "http://search."+jy_top_domain+"/v2/new.php";
common_nav_array['new_css']		= "";
common_nav_array['new_sta']		= "|head_navigation_new|";
common_nav_array['online_tag']	= "聊天";
common_nav_array['online_url']	= "http://search."+jy_top_domain+"/v2/online.php";
common_nav_array['online_css']	= "";
common_nav_array['online_sta']	= "|head_navigation_online|";
common_nav_array['party_tag']	= "活动";
common_nav_array['party_url']	= "http://party."+jy_top_domain+"/";
common_nav_array['party_css']	= "";
common_nav_array['party_sta']	= "|head_navigation_party|";
common_nav_array['diary_tag']	= "两性";
common_nav_array['diary_url']	= "http://diary."+jy_top_domain+"/";
common_nav_array['diary_css']	= "";
common_nav_array['diary_sta']	= "|head_navigation_diary|";
common_nav_array['caipiao_tag']	= "彩票";
common_nav_array['caipiao_url']	= "http://caipiao."+jy_top_domain+"/";
common_nav_array['caipiao_css']	= "";
common_nav_array['caipiao_sta']	= "|head_navigation_caipiao|";
common_nav_array['hd9158_tag']	= "互动直播";
common_nav_array['hd9158_url']	= "http://www."+jy_top_domain+"/9158/";
common_nav_array['hd9158_css']	= "";
common_nav_array['hd9158_sta']	= "|head_navigation_hd9158|";
common_nav_array['game_tag']	= "游戏";
common_nav_array['game_url']	= "http://game."+jy_top_domain+"/";
common_nav_array['game_css']	= "";
common_nav_array['game_sta']	= "|head_navigation_game|";
common_nav_array['love_tag']	= "晒幸福";
common_nav_array['love_url']	= "http://love."+jy_top_domain+"/";
common_nav_array['love_css']	= "";
common_nav_array['love_sta']	= "|head_navigation_love|";
common_nav_array['yindou_tag']	= "理财";
common_nav_array['yindou_url']	= "http://case."+jy_top_domain+"/yindou/";
common_nav_array['yindou_css']	= "";
common_nav_array['yindou_sta']	= "|head_navigation_yindou|";
common_nav_array['paper_tag']	= "爱情测试";
common_nav_array['paper_url']	= "http://www."+jy_top_domain+"/paper/";
common_nav_array['paper_css']	= "";
common_nav_array['paper_sta']	= "|head_navigation_paper|";
common_nav_array['master_tag']	= "斑竹小龙女";
common_nav_array['master_url']	= "http://www."+jy_top_domain+"/master/";
common_nav_array['master_css']	= "";
common_nav_array['master_sta']	= "|head_navigation_master|";
common_nav_array['reg_tag']		= "注册";
common_nav_array['reg_url']		= "http://reg."+jy_top_domain+"/";
common_nav_array['reg_css']		= "";
common_nav_array['reg_sta']		= "|head_navigation_reg|";
common_nav_array['login_tag']	= "登录";
common_nav_array['login_url']	= "http://login."+jy_top_domain+"/";
common_nav_array['login_css']	= "";
common_nav_array['login_sta']	= "|head_navigation_login|";
common_nav_array['liehun_tag']	= "红娘一对一";
common_nav_array['liehun_url']	= "http://vip."+jy_top_domain+"/";
common_nav_array['liehun_css']	= "";
common_nav_array['liehun_sta']	= "|head_navigation_liehun|"; 
common_nav_array['izhenxin_tag']= "爱真心";
common_nav_array['izhenxin_url']= "http://www."+izx_top_domain+"/login/getSign/?url=http%3A%2F%2Fwww."+jy_top_domain+"%2Fusercp%2Fiz_login.php%3Furl%3Dhttp%253A%252F%252Fwww."+izx_top_domain+"%252F&from=JYDH";
common_nav_array['izhenxin_css']= "";
common_nav_array['izhenxin_sta']= "|head_navigation_izhenxin|";
common_nav_array['extend_tag']	= "爱真心";
common_nav_array['extend_url']	= "http://www."+izx_top_domain+"/login/getSign/?url=http%3A%2F%2Fwww."+jy_top_domain+"%2Fusercp%2Fiz_login.php%3Furl%3Dhttp%253A%252F%252Fwww."+izx_top_domain+"%252F&from=top"
common_nav_array['extend_url2']	= "http://www."+izx_top_domain+"/login/getSign/?url=http%3A%2F%2Fwww."+jy_top_domain+"/usercp/iz_login.php&from=top";
common_nav_array['extend_url3']	= "http://www."+izx_top_domain+"/register/landingpagetw";
common_nav_array['extend_css']	= "";
common_nav_array['extend_sta']	= "|head_navigation_mobile|";
common_nav_array['im_tag']		= "佳缘佳信";
common_nav_array['im_url']		= "http://im."+jy_top_domain+"/";
common_nav_array['im_css']		= "";
common_nav_array['im_sta']		= "|head_navigation_im|";
common_nav_array['img_url']		= "http://images1."+jy_img_domain+"/";

//兼容旧程序
var mydomain= "www." + jy_top_domain;//拼完整www域名
var profile	= HEAD_USER;
//兼容结束

var current_nav_flag = jy_head_function.get_channel() + '_css';
//设置当前频道导航选中样式
common_nav_array[current_nav_flag] = 'head_nav_cur';
</script>
<script type="text/javascript" src="resources/js/jiayuan_logo_config.js"></script>
<script type="text/javascript" src="resources/js/JY_Alert.js"></script>
<!--[if lte IE 6]>
<script type="text/javascript" src="http://images1.jyimg.com/w4/common/j/DD_belatedPNG_0.0.8a_IE6.js"></script>
<![endif]--> <style type="text/css">
@charset "utf-8";
#head_red_simple_css{background-color:#F03B6E;height:50px;margin:0;padding:0;width:100%}
#head_red_simple_css *{margin:0;padding:0}
#head_red_simple_css .headMain{margin:0 auto;width:970px;height:50px}
#head_red_simple_css .headMain a.logo{background:url(http://images1.jyimg.com/w4/common/i/head/logo_pink.jpg ) no-repeat;float:left;height:50px;margin:0 16px 0 0;width:132px}
#head_red_simple_css .headMain .logoBar{background:url(http://images1.jyimg.com/w4/common/i/head/bg_headLine1.jpg) no-repeat 0 9px;float:left;height:34px;padding:7px 0 0 16px}
#head_red_simple_css .headMain .pageTitle{color:#FFF;float:left;font:20px/34px "Microsoft Yahei";height:34px;padding:7px 16px 0 0;-moz-text-shadow:-1px 1px #A7072B;-webkit-text-shadow:-1px 1px #A7072B;text-shadow:-1px 1px #A7072B}
#head_red_simple_css .headNav{float:left;height:34px;padding:7px 0 0 0}
#head_red_simple_css .headNav a{color:#FFF;float:left;font:12px/34px arial;text-decoration:none;height:34px;padding-top:1px;*padding-top:3px}
#head_red_simple_css .headNav a:hover{text-decoration:underline}
#head_red_simple_css .headNav a.curr{font-weight:bold}
#head_red_simple_css .headNav span.sep{color:#FFF;float:left;font:12px/34px arial;padding:0 7px;height:34px}
#head_red_simple_css .headMain .headRight{color:#FFF;float:right;font:12px/50px arial;height:50px;text-align:right}
#head_red_simple_css .headMain .headRight .sep{margin:0 8px}
#head_red_simple_css .headMain .headRight a.link{color:#FFF;text-decoration:none;font-size:12px}
#head_red_simple_css .headMain .headRight a.link:hover{text-decoration:underline}
</style>
<div id="head_red_simple_css">
<div class="headMain">
<a class="logo"></a>
<div class="logoBar" id="head_logo_bar"></div>
<h1 class="pageTitle" id="head_red_simple" style=""></h1>
<div class="headNav" id="head_red_simple_nav" style="display:none">
<a href="http://www.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_www|');" target="_blank">首页</a><span class="sep">|</span>
<a href="http://usercp.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_usercp|');" target="_blank">我的佳缘</a><span class="sep">|</span>
<a href="http://www.jiayuan.com/club/" onclick="jy_head_function.click_pv('|head_navigation_club|');" target="_blank">俱乐部</a><span class="sep">|</span>
<a href="http://search.jiayuan.com/v2/" onclick="jy_head_function.click_pv('|head_navigation_search|');" target="_blank">搜索</a><span class="sep">|</span>
<a href="http://search.jiayuan.com/v2/new.php" onclick="jy_head_function.click_pv('|head_navigation_new|');" target="_blank">新会员</a><span class="sep">|</span>
<a href="http://search.jiayuan.com/v2/online.php" onclick="jy_head_function.click_pv('|head_navigation_online|');" target="_blank">聊天</a><span class="sep">|</span>
<!--<a href="http://party.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_party|');" target="_blank">活动</a><span class="sep">|</span>
<a href="http://diary.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_diary|');" target="_blank">两性</a><span class="sep">|</span>-->
            <a href="http://www.jiayuan.com/9158/" onclick="jy_head_function.click_pv('|head_navigation_hd9158|');" target="_blank">互动直播</a><span class="sep">|</span>
<a href="http://game.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_game|');" target="_blank">游戏</a><span class="sep">|</span>
<a href="http://love.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_love|');" target="_blank">晒幸福</a><span class="sep">|</span>
            <a href="http://case.jiayuan.com/yindou/" onclick="jy_head_function.click_pv('|head_navigation_yindou|');" target="_blank">理财</a><span class="sep">|</span>
<a href="http://vip.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_liehun|');" target="_blank">红娘一对一</a><span class="sep">|</span>
<a href="http://www.izhenxin.com/login/getSign/?url=http%3A%2F%2Fwww.jiayuan.com%2Fusercp%2Fiz_login.php%3Furl%3Dhttp%253A%252F%252Fwww.izhenxin.com%252F&amp;from=JYDH" onclick="jy_head_function.click_pv('|head_navigation_izhenxin|');" target="_blank">爱真心</a>
</div>
<div class="headRight" id="head_red_simple_user" style="display:none"><span>${loginUser.nickname}</span><span class="sep">|</span><a href="../logout" class="link">退出</a></div>
</div>
</div>
<script type="text/javascript">
document.getElementById('head_red_simple_nav').innerHTML = jy_head_function.format_tpl(document.getElementById('head_red_simple_nav').innerHTML);	//导航信息
if(HEAD_USER.uid > 0){
var loginstr= '<span>'+HEAD_USER.nickname+'</span><span class="sep">|</span><a href="'+common_nav_array['login_url']+'logout2.php" class="link">退出</a>';
}else{
var pre_url	= document.location.href;
var loginstr= '<a href="'+common_nav_array['login_url']+'?channel=200&position=203&pre_url='+encodeURIComponent(pre_url)+'" class="link" onclick="jy_head_function.click_pv(\'|head_navigation_login|\');">登录</a><span class="sep">|</span><a href="'+common_nav_array['reg_url']+'?bd=213" class="link" onclick="jy_head_function.click_pv(\'|head_navigation_reg|\');" target="_blank">注册</a>';
}
document.getElementById('head_red_simple_user').innerHTML = loginstr;	//会员登录信息
</script>
<!-- released time 2014-10-22 15:04:56 -->
 
<script type="text/javascript">
document.getElementById('head_red_simple_user').style.display = 'none'; 
document.getElementById('head_red_simple_nav').style.display = 'none';
</script>
<!-- 注册页面标准头 结束 -->
<div class="change_pic">
<div class="change_pic_in">
<h1><img src="resources/img/title.png" class="pngfix" alt="更换头像照"><span>一张清晰美观的头像照，能让更多异性搜素到您，收信效果提高</span><b>4.6</b><span>倍</span></h1>
<div class="change_pic_upload">

<form:form modelAttribute="uploadItem" name="frm" method="post" action="testUpload"
	enctype="multipart/form-data" onSubmit="return Validate();">		
<table border="0" cellpadding="0" cellspacing="0">
  <tbody><tr>
    <td><h2>上传新头像：</h2></td>
    <td>
    <form:input for="fileData" path="fileData" style="display: inline; width: 230px;" id="upload_photo"
			onchange="javascript:document.getElementById('picpath').value=this.value;onPhotoChage();"
			class="file pic"/>
		<div
				style="width: 80px; height: 30px; background: url(&quot;http://images1.jyimg.com/w4/register/i/upload_photo/upload_bg.gif&quot;) no-repeat scroll 0px 0px transparent; display: inline; position: absolute; overflow: hidden;">
				<form:input path="fileData"
					style="position: relative; height: 30px; width: 230px; display: inline; cursor: pointer; opacity: 0; margin-left: -142px;"
					id="picpath" class="pic" name="upload_photo" type="file"></form:input>
			</div> 
			<input type="submit" value="Upload" />
<!-- 			<a href="http://www.jiayuan.com/parties/2010/photo_zt/boy.html" onmousedown="send_jy_pv2('jira3709|usercp_update_photo|m')" class="line" style="margin: 0 10px 0 90px;" target="_blank">如何上传好照片，收获更多信件&gt;&gt;</a> -->
			</td>
  </tr>
  <tr>
    <td></td>
    <td><p class="change_pic_size">支持格式：jpg、jpeg、gif、png格式照片，大小0K~5M。 </p></td>
  </tr>
</tbody></table>
</form:form>
</div>
<div class="change_pic_edit">
	<h2 id="photo_h" style="display:none;">或选择已有照片，设置为头像：</h2>
	<ul class="change_pic_list fn-clear">
			</ul>
</div>
<div style="padding: 29px 0 29px 150px;">
	<form action="http://upload.jiayuan.com/register/show_ava_2.php" id="cut_img_form" name="cut_img_form" target="run_fra">
        <input id="xxx" name="xxx" value="" type="hidden">  
        <input id="yyy" name="yyy" value="" type="hidden">  
        <input id="www" name="www" value="" type="hidden">  
        <input id="hhh" name="hhh" value="" type="hidden">  
        <input id="ppp" name="ppp" value="" type="hidden">
        <input id="ddd" name="ddd" value="" type="hidden">
		<input id="i_w" name="i_w" value="" type="hidden">
        <input id="i_t" name="i_t" value="" type="hidden">
		<input id="i_l" name="i_l" value="" type="hidden">
		<input name="jump_url" value="http://www.jiayuan.com/usercp/photo.php" type="hidden">
    </form>
    <!--切图区域 开始-->
    <div class="jy-up-3 fn-clear" id="jcropdiv" style="display:none">
        <div class="jy-up-3l">
            <div class="jc-demo-box" data="0" style="background-color:none">
            </div>
            <div class="jy-up-ch">
            	<div class="save-tips">保存成功</div>
            	<a id="btnRotateLeft" title="向左旋转" href="" class="bch bch1"></a>
                <a id="btnZoomSmall" title="缩小" href="" class="bch bch2"></a>
                <a id="btnZoomBig" title="放大" href="" class="bch bch3"></a>
                <a id="btnRotateRight" title="向右旋转" href="" class="bch bch4"></a>
                <ul class="fn-clear">
					<li id="cxscan" style=""><span id="uploadagain"></span><a class="btn6" onclick="openBrowse();" href="###">重新上传</a></li>
                    <li class="la"><a class="btn5 savepic" onclick="javascript:mysub();" href="####">保存</a></li>
                </ul>
            </div>
        </div>
        <div class="jy-up-3r" id="preview-pane">
            <div class="preview-container">
            	<div class="pre-square">
                	<span class="preview_text">图片预览</span>
                	<img src="" class="preview_image" style="display:none">
                </div>
                <div class="pre-rectangle">
                	<div class="pre-rectangle-sub">
                    	<span class="preview_text">图片预览</span>
                		<img src="" class="preview_image" style="display:none">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--切图区域 结束-->
    <!--默认上传提示区域 开始-->
    <div class="jy-up-3 fn-clear" id="uploaddiv">
        <div class="jy-up-3l">
            <div class="jc-demo-box">
                <ul>
                    <li>上传清晰头像，人气提升<span>76.15%</span></li>
                    <li class="jy-t3">支持jpg、jpeg、gif、png格式，不超过5M</li>
                </ul>
                <div id="tskscan" style="" onclick="openBrowse();" class="btn7 hover">
                    <span id="spanButtonPlaceHolder">上传照片</span>
                </div>
                <ul style="padding-top:60px;">
                    <li class="jy-t3" id="loading" style="display:none;">
                    <div style="margin:0px auto;width:48px;height:48px;background:url('http://images1.jyimg.com/w4/register/i/newreg/load_big.gif') no-repeat;text-align:center;line-height:48px;font-size:14px;" id="fsUploadProgress"></div>
                    </li>
                </ul>
            </div>
            <div class="jy-up-ch">
                <a href="" class="bch bch1 dn"></a>
                <a href="" class="bch bch2 dn"></a>
                <a href="" class="bch bch3 dn"></a>
                <a href="" class="bch bch4 dn"></a>
            </div>
        </div>
        <div class="jy-up-3r">
            <div class="preview-container">
            	<div class="pre-2">
                    <span class="preview_text">图片预览</span>
                </div>
                <div class="pre-1">
                    <span class="preview_text">图片预览</span>
                </div>
            </div>
        </div>
    </div>
    <!--默认上传提示区域 结束-->
</div>
<div class="wxts">
	<h3>温馨提示：</h3>
	<ul class="change_pic_tips">
	  <li>1.请上传您的单人真实照片，要求五官清晰。中伦文德律师事务所提醒您：请勿上传明星、名人或他人照片，您将对此负法律责任。如果您的照片被会员投诉为假照片，经查实会将您列入网站黑名单，以后都将无法注册和登录爱一起。</li>
	  <li>2.已通过手机号认证的会员，可将照片添加至彩信内容，在主题或文字处输入爱一起，发送到10663355即可(仅限中国移动用户)。</li>
	</ul>
</div>
</div>
<!-- 注册页面标准尾 开始 -->
<div class="footer">
<script type="text/javascript" src="resources/js/w4-simple.js"></script><style type="text/css">
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
<a class="bot_link_none">中文实名：爱一起</a>
<a class="bot_link_none">ICP证书：沪B2-20100074</a>
<a href="http://www.jiayuan.com/certificate/zengzhi.html" target="_blank">增值电信业务经营许可证：沪B2-20070313</a>
<a href="http://www.jiayuan.com/certificate/iso.html" target="_blank">ISO9001质量体系认证</a>
<a href="http://www.jiayuan.com/certificate/license.html" target="_blank">沪网文[2012]0720-106号</a>
</p>
<p>
©&nbsp;&nbsp;2003-2014&nbsp;版权所有&nbsp;&nbsp;&nbsp;&nbsp;京公网安备110105002124号&nbsp;&nbsp;&nbsp;&nbsp;不良和违法信息举报专线：010-57835066
</p>
<div id="page_bottom_info" style="text-align:center;margin-bottom:10px"></div>
<script type="text/javascript">
//Begin PV statistics
var common_bot_domain_array = new Array();	//参与统计的频道/栏目配置数组
common_bot_domain_array['www_index']= 1;	//佳缘站首页
common_bot_domain_array['www']		= 1;
common_bot_domain_array['msg']		= 1;
common_bot_domain_array['usercp']	= 1;	//我的佳缘首页
common_bot_domain_array['usercp_o']	= 1;	//我的佳缘其他页
common_bot_domain_array['profile']	= 1;
common_bot_domain_array['photo']	= 1;
common_bot_domain_array['search']	= 1;
common_bot_domain_array['diary']	= 1;
common_bot_domain_array['love']		= 1;
common_bot_domain_array['xingfu']	= 1;
common_bot_domain_array['party']	= 1;
common_bot_domain_array['gift']		= 1;
common_bot_domain_array['map']		= 1;
common_bot_domain_array['login']	= 1;
common_bot_domain_array['reg']		= 1;
common_bot_domain_array['game']		= 1;
common_bot_domain_array['caipiao']	= 1;
common_bot_domain_array['webim']	= 1;
common_bot_domain_array['show']		= 1;
common_bot_domain_array['book']		= 1;
common_bot_domain_array['case']		= 1;	//专题
common_bot_domain_array['guard']	= 1;
common_bot_domain_array['help']		= 1;
common_bot_domain_array['mobile']	= 1;	//手机交友
common_bot_domain_array['subject']	= 1;	//专题
common_bot_domain_array['vip']		= 1;	//红娘
common_bot_domain_array['club']		= 1;
common_bot_domain_array['meilistar']= 1;	//魅力之星
common_bot_domain_array['master']	= 1;
common_bot_domain_array['paper']	= 1;	//爱情测试
common_bot_domain_array['news']		= 1;
common_bot_domain_array['cooperation']= 1;	//对外合作

var bot_channel_str = '';					//通用底频道字符串
var jy_foot_statistics = {};
//随机数
jy_foot_statistics.rnd_num = function(d, u){
var rnd = parseInt(Math.random() * (u - d + 1) + d);
return rnd;
}
//获取频道标识
jy_foot_statistics.get_channel = function(){
//频道级别的目录配置数组，URL包含以下目录的单独统计
var bottom_channel_dir_array = Array(
'/usercp/?from=','/usercp/','/msg/','/club/','/meilistar/','/cooperation/','/helpcenter/','/guard/',
'/parties/wap_clients/','/parties/','/subject/','/master/','/paper/','/news/'
);
//获取二级域，做频道标识
var host_name = window.location.host.toLowerCase();		//获取域名
var bottom_current_channel = host_name.split('.')[0];
//针对特殊二级域名做细致拆分
switch(bottom_current_channel){
case 'www':
//将www二级域名里的首页、信件、我的佳缘和个人资料页等单独拿出
var bot_href = window.location.href.toLowerCase();	//获取当前URL
//当前如果是首页，就单独设置标记统计
if(bot_href == 'http://www.jiayuan.com/' || bot_href == 'http://www.jiayuan.com/index.html'){
bottom_current_channel = 'www_index';			//佳缘首页，单独处理首页
break;
}
if(bot_href == 'http://www.jiayuan.com/usercp/'){
bottom_current_channel = 'usercp';				//我的佳缘首页，单独处理特殊的我的佳缘首页访问方式
break;
}
var bottom_channel_select = 0;						//频道选择标记
for(var ch_dir = 0; ch_dir < bottom_channel_dir_array.length; ch_dir++){
if(bot_href.indexOf(bottom_channel_dir_array[ch_dir]) >= 0){		//用当前的URL循环匹配配置好的频道数组，用于判断当前应该属于那个频道（栏目）
bottom_channel_select = 1;
break;
}
}
if(bottom_channel_select == 1){
switch(bottom_channel_dir_array[ch_dir]){
case '/usercp/?from=':
bottom_current_channel = 'usercp';		//我的佳缘首页
break;
case '/usercp/':
bottom_current_channel = 'usercp_o';	//我的佳缘其他页面（除我的佳缘首页）
break;
case '/msg/':
bottom_current_channel = 'msg';			//信件
break;
case '/club/':
bottom_current_channel = 'club';		//俱乐部
break;
case '/meilistar/':
bottom_current_channel = 'meilistar';	//魅力之星
break;
case '/cooperation/':
bottom_current_channel = 'cooperation';	//对外合作
break;
case '/helpcenter/':
bottom_current_channel = 'help';		//帮助中心
break;
case '/guard/':
bottom_current_channel = 'guard';		//安全中心
break;
case '/parties/':
case '/subject/':
bottom_current_channel = 'case';		//专题
break;
case '/parties/wap_clients/':
bottom_current_channel = 'mobile';		//手机交友
break;
case '/vip/':
bottom_current_channel = 'vip';			//红娘
break;
case '/master/':
bottom_current_channel = 'master';		//小龙女频道
break;
case '/paper/':
bottom_current_channel = 'paper';		//爱情测试
break;
case '/news/':
bottom_current_channel = 'news';		//媒体
break;
}
}else{
if(/^(http\:\/\/www\.jiayuan\.com\/\d+\/?)([\?\#])?.*$/.test(bot_href) || /^(http\:\/\/www\.miuu\.cn\/\d+\/?)([\?\#])?.*$/.test(bot_href)){
bottom_current_channel = 'profile';			//个人资料页
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
jy_foot_statistics.run = function(){
//显示版权信息区域
document.getElementById("bottom_site_copyright").style.display = '';
var bot_host = window.location.host.toLowerCase();			//获取域名
bot_channel_str = jy_foot_statistics.get_channel(bot_host);	//获取二级域名（获取相应的频道/栏目标识）
var times = new Date().getTime();							//获取当前时间，配合随机数保证每一次访问小图片参数唯一
if(common_bot_domain_array[bot_channel_str] != 1){
bot_channel_str = 'other';								//其他域名
}
var uid = '';
if(typeof JY != "undefined"){								//判断是否有JY组件
uid = JY.login.getUser().uid;							//获取UID，用于UV统计
if(uid > 0){
uid = uid + '|'										//如果存在UID，拼接UID字符串
}
}
if(bot_channel_str != 'passport'){							//passport使用的是https协议，排除
document.write('<img src="http://pv2.jyimg.com/any/a.gif?||jy_site_all_pv|' + bot_channel_str + '|' + uid + '&t=' + times + jy_foot_statistics.rnd_num(10000, 99999) + '|" style="display:none" />');
}
}
jy_foot_statistics.run();
var common_bot_sub_domain = jy_foot_statistics.get_channel();
//End PV statistics

//Begin comScore Tag 以下，第三方监控代码
var _comscore = _comscore || []; 
_comscore.push({ c1: "2", c2: "15205083" }); 
(function() { 
var s = document.createElement("script"), el = document.getElementsByTagName("script")[0]; s.async = true; 
s.src = (document.location.protocol == "https:" ? "https://sb" : "http://b") + ".scorecardresearch.com/beacon.js"; 
el.parentNode.insertBefore(s, el); 
})(); 
</script><img src="resources/img/a.gif" style="display:none"> 
<noscript> 
<img src="http://b.scorecardresearch.com/p?c1=2&c2=15205083&cv=2.0&cj=1" /> 
</noscript> 
<!-- End comScore Tag -->     </div>
</div>
<style type="text/css">
/*
功能：未登录通用底浮层，引导登录与注册【登录前】
说明：使用前需要包含通用头或者至少要包含head_common.js通用头配置文件
作者：liujianfeng@jiayuan.com
版本：v 1.0
*/
*html{background-image:url(about:blank);background-attachment:fixed}
body{padding:0;margin:0}
#common_footer_guide{width:100%;height:60px;z-index:1001;position:fixed;left:0;bottom:0;_position:absolute;_top:expression(documentElement.scrollTop+documentElement.clientHeight-this.offsetHeight)}
#common_footer_guide .guide_shade{background:#000;width:100%;height:100%;margin:0;padding:0;opacity:.6;filter:alpha(opacity=60)}
#common_footer_guide .guide_layer{position:absolute;width:840px;left:50%;top:0;z-index:1020;margin:0;padding:0;margin-left:-420px;_margin-left:-418px;padding-top:15px}
#common_footer_guide .guide_layer a{diaplay:block;float:left;margin:0;padding:0;width:30px;height:30px;overflow:hidden;margin-left:18px;cursor:pointer;text-decoration:none}
#common_footer_guide .guide_layer .guide_bt{font-size:16px;color:#FFF;font-weight:bold;width:170px;padding-top:4px;height:26px;_padding-top:7px;_height:23px;cursor:text;margin-left:0}
#common_footer_guide .guide_layer .guide_qq{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat 0 0}
#common_footer_guide .guide_layer .guide_qq:hover{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat 0 -31px}
#common_footer_guide .guide_layer .guide_wb{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -31px 0}
#common_footer_guide .guide_layer .guide_wb:hover{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -31px -31px}
#common_footer_guide .guide_layer .guide_bd{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -62px 0}
#common_footer_guide .guide_layer .guide_bd:hover{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -62px -31px}
#common_footer_guide .guide_layer .guide_zf{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -93px 0}
#common_footer_guide .guide_layer .guide_zf:hover{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -93px -31px}
#common_footer_guide .guide_layer .guide_rr{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -124px 0}
#common_footer_guide .guide_layer .guide_rr:hover{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -124px -31px}
#common_footer_guide .guide_layer .guide_kx{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -155px 0}
#common_footer_guide .guide_layer .guide_kx:hover{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -155px -31px}
#common_footer_guide .guide_layer .guide_db{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -186px 0}
#common_footer_guide .guide_layer .guide_db:hover{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat -186px -31px}
#common_footer_guide .guide_layer .guide_zc{margin-left:105px;width:128px;background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat 0 -62px}
#common_footer_guide .guide_layer .guide_zc:hover{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat 0 -92px}
#common_footer_guide .guide_layer .guide_dl{width:128px;background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat 0 -122px}
#common_footer_guide .guide_layer .guide_dl:hover{background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat 0 -152px}
#common_footer_guide .guide_close{display:block;cursor:pointer;z-index:1010;position:absolute;right:15px;top:15px;width:28px;height:28px;background:url(http://images1.jyimg.com/w4/common/i/foot/common_footer_bg.png) no-repeat 0 -183px}
#common_footer_guide .guide_close{-webkit-transition:all 0.4s ease;-moz-transition:all 0.4s ease;-ms-transition:all 0.4s ease;-o-transition:all 0.4s ease;transition:all 0.4s ease;}
#common_footer_guide .guide_close:hover{-webkit-transform:rotate(180deg) scale(0.8);-moz-transform:rotate(180deg) scale(0.8);-ms-transform:rotate(180deg) scale(0.8);-o-transform:rotate(180deg) scale(0.8);transform:rotate(180deg) scale(0.8)}
</style>
<div id="common_footer_guide" style="display:none">
<div class="guide_shade"></div>
    <div class="guide_layer">
        <a class="fixPNG guide_bt">直接使用这些账号登录</a>
        <a class="fixPNG guide_qq" href="###"></a>
        <a class="fixPNG guide_wb" href="###"></a>
        <a class="fixPNG guide_bd" href="###"></a>
        <a class="fixPNG guide_zf" href="###"></a>
        <a class="fixPNG guide_rr" href="###"></a>
        <a class="fixPNG guide_kx" href="###"></a>
        <a class="guide_zc" href="###" target="_blank"></a>
        <a class="guide_dl" href="###"></a>
    </div>
    <a class="fixPNG guide_close" href="javascript:void(0)"></a>
</div>
<script type="text/javascript">
if(typeof(HEAD_USER) != 'undefined' && HEAD_USER.uid == 0){//包含通用头，并且未登录，才会开启浮层
var jy_foot_bar = {};
jy_foot_bar.is_layer_show = true;//默认开启底通条
jy_foot_bar.session_hash = jy_head_function.get_cookie('SESSION_HASH');
//配置底通浮层
jy_foot_bar.set_config = function(){
var hide_cfg = [];
}
//关闭底通浮层
jy_foot_bar.layer_close = function(){
if(document.getElementById('common_footer_guide')){
document.getElementById('common_footer_guide').style.display = 'none';//如果登录弹层打开，无论底通条什么状态，一律关闭
}
};
//判断登录层是否隐藏
jy_foot_bar.is_login_window_show = function(){
if(typeof(loginWindow) == 'undefined' ){
return false;
}else{
return loginWindow.isOpen();
}
};
//重写登录弹层的onOpen事件，实现底部条与登录层展示互斥
if(typeof(loginWindow) != 'undefined'){
loginWindow.onOpen = function(){
jy_foot_bar.layer_close();
};
}
//显示底部状态条
jy_foot_bar.common_guide = function(){
var common_footer_guide = jQuery('#common_footer_guide'),
win = $(window),
triggerScrollTop = 300,
set_footer_guide = function(){
if(win.scrollTop() > triggerScrollTop){
if(jy_foot_bar.is_layer_show && !jy_foot_bar.is_login_window_show()){
common_footer_guide.fadeIn();
}
}else{
common_footer_guide.fadeOut();
}
};
common_footer_guide.find('.guide_close').bind('click', function(){
jy_foot_bar.is_layer_show = false;
common_footer_guide.hide();
});
win.bind('load scroll resize', set_footer_guide);
url = encodeURI(window.location.href);
jQuery(".guide_qq").attr("href","http://www.jiayuan.com/general/t/?forward=qqAware&c=101&p=1&clubsign=1&cluboauthtype=1011&url="+url);
jQuery(".guide_wb").attr("href","http://www.jiayuan.com/general/t/?forward=sinaAware&c=101&p=2&clubsign=1&cluboauthtype=1012&url="+url);
jQuery(".guide_bd").attr("href","http://www.jiayuan.com/general/t/?forward=baiduOauth&c=101&p=3&clubsign=1&cluboauthtype=1013&url="+url);
jQuery(".guide_zf").attr("href","http://www.jiayuan.com/general/t/?forward=alipayOauth&c=101&p=4&clubsign=1&cluboauthtype=1014&url="+url);
jQuery(".guide_rr").attr("href","http://www.jiayuan.com/general/t/?forward=renrenAware&c=101&p=5&clubsign=1&cluboauthtype=1015&url="+url);
jQuery(".guide_kx").attr("href","http://www.jiayuan.com/general/t/?forward=kaixinAware&c=101&p=6&clubsign=1&cluboauthtype=1016&url="+url);
jQuery(".guide_dl").attr("href","http://login.jiayuan.com/?channel=1001&position=1001&pre_url="+url);
jQuery(".guide_zc").attr("href","http://reg.jiayuan.com/?bd=1001");
jQuery(".guide_qq").mousedown(function(){jy_head_function.click_pv('|common_footer_login_qq|'+jy_foot_bar.session_hash);});
jQuery(".guide_wb").mousedown(function(){jy_head_function.click_pv('|common_footer_login_wb|'+jy_foot_bar.session_hash);});
jQuery(".guide_bd").mousedown(function(){jy_head_function.click_pv('|common_footer_login_bd|'+jy_foot_bar.session_hash);});
jQuery(".guide_zf").mousedown(function(){jy_head_function.click_pv('|common_footer_login_zf|'+jy_foot_bar.session_hash);});
jQuery(".guide_rr").mousedown(function(){jy_head_function.click_pv('|common_footer_login_rr|'+jy_foot_bar.session_hash);});
jQuery(".guide_kx").mousedown(function(){jy_head_function.click_pv('|common_footer_login_kx|'+jy_foot_bar.session_hash);});
jQuery(".guide_dl").mousedown(function(){jy_head_function.click_pv('|common_footer_login_btn|'+jy_foot_bar.session_hash);});
jQuery(".guide_zc").mousedown(function(){jy_head_function.click_pv('|common_footer_reg_btn|'+jy_foot_bar.session_hash);});
jQuery(".guide_close").mousedown(function(){jy_head_function.click_pv('|common_footer_close_btn|'+jy_foot_bar.session_hash);});
};
//动态判断加载jQuery插件
if(typeof(jQuery) == 'undefined' || parseFloat(jQuery.fn.jquery) < 1.4){
jy_foot_bar.include_doc = document.getElementsByTagName('head')[0];
jy_foot_bar.include_js = document.createElement('script');
jy_foot_bar.include_js.setAttribute('type', 'text/javascript');
jy_foot_bar.include_js.setAttribute('src', "http://images1.jyimg.com/w4/common/j/jquery-1.7.2.min.js");
jy_foot_bar.include_doc.appendChild(jy_foot_bar.include_js);
if(document.all){//如果是IE
jy_foot_bar.include_js.onreadystatechange = function(){
if(jy_foot_bar.include_js.readyState == 'loaded' || jy_foot_bar.include_js.readyState == 'complete'){
jy_foot_bar.common_guide();
}
}
}else{
jy_foot_bar.include_js.onload = function(){
jy_foot_bar.common_guide();
}
}
}else{
jy_foot_bar.common_guide();
}
//==以下登录弹层相关==
// if(typeof loginWindow != 'object'){
// document.write('<script type="text\/javascript" src="http:\/\/images1.jyimg.com\/w4\/login\/j\/popupLogin_v2.js"><\/script>');
// }
//usercp,msg,login,party相关页面不设置定时弹出登录层。
var login_window_not_allow_channel = ['www_index','usercp','usercp_o','msg','login','party'];
if(!jy_head_function.in_array(login_window_not_allow_channel, common_bot_sub_domain)){
var seed1 = 3000;	//第一次3秒
var seed2 = 10000;	//第二次10秒
if(location.href.indexOf("/master/") >0 || location.href.indexOf("/diary.") > 0){//小龙女频道 与 情感博客（两性） 弹出时间加长
seed1 = 900000;
seed2 = 900000;
}
window.setTimeout(function(){
var c2 = jy_head_function.get_cookie("poplogincount");	//取登录层弹出次数
var ispop = false;
c2 = parseInt(0 + c2);
if(c2 == 2 || c2 == 7 ){
ispop = true;
}else{
c2 = c2 + 1;
jy_head_function.set_cookie("poplogincount", c2, 1);
}
if(typeof loginWindow == "object" && !loginWindow.isLogin()){
loginWindow.loadResource('http://images1.jyimg.com/w4/login/c/popupLogin_20110321.css','css');
loginWindow.onClose = function(e){
jy_head_function.set_cookie("poplogincount", 3, 1);
loginWindow.taskRun(2, seed2, 15);
} 
if(ispop == true){
var c3 = jy_head_function.get_cookie("popup_count_15");
c3 = parseInt(0 + c3);
if(c3 < 2){
loginWindow.openTPL({tplconfig:{key:15},initForm:true});
}
}else{
loginWindow.taskRun(2, seed2, 15);
}
}
}, seed1);
}
//登录层打开方法
jy_foot_bar.show_login = function(bd){
if(isNaN(bd)){
bd = 15;
}
loginWindow.openTPL({tplconfig:{key:bd,callback:function(){
if(url == location.href || !url){
location.reload();
}else{
location.href = url;
}
}}, initForm:true});
}
}
</script><!--[if lte IE 6]>
<script>
DD_belatedPNG.fix('.fixPNG');
</script>
<![endif]-->
<!-- released time 2014-10-20 18:24:31 -->

</div>
<!-- 注册页面标准尾 结束 -->
<!--美图秀秀-->
<div style="display: none;" class="hidder_layer">
    <div id="mtxx-swf" class="mtxx-swf">
        <div id="altContent"></div>
    </div>
</div>

<script type="text/javascript" src="resources/js/tools.js"></script>

</div><div id="fancybox-tmp"></div><div id="fancybox-loading"><div></div></div><div id="fancybox-overlay"></div><div id="fancybox-wrap"><div id="fancybox-outer"><div class="fancybox-bg" id="fancybox-bg-n"></div><div class="fancybox-bg" id="fancybox-bg-ne"></div><div class="fancybox-bg" id="fancybox-bg-e"></div><div class="fancybox-bg" id="fancybox-bg-se"></div><div class="fancybox-bg" id="fancybox-bg-s"></div><div class="fancybox-bg" id="fancybox-bg-sw"></div><div class="fancybox-bg" id="fancybox-bg-w"></div><div class="fancybox-bg" id="fancybox-bg-nw"></div><div id="fancybox-content"></div><a id="fancybox-close"></a><div id="fancybox-title"></div><a href="javascript:void(0);" id="fancybox-left"><span class="fancy-ico" id="fancybox-left-ico"></span></a><a href="javascript:void(0);" id="fancybox-right"><span class="fancy-ico" id="fancybox-right-ico"></span></a></div></div></body></html>