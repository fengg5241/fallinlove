<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
<meta name="keywords" content="交友,交友网,征婚交友,网上交友,征婚,征婚网,征婚交友网,交友中心,婚恋交友">
<meta name="description" content="青春不常在，抓紧谈恋爱！缘分可遇也可求，该出手时就出手。世纪佳缘是严肃婚恋的交友平台，提供丰富多彩的交友征婚活动，1亿会员，让缘分千万里挑一！">
<title>我的相册_世纪佳缘交友网</title>
<link href="../../resources/css/style.css" type="text/css" rel="stylesheet">
<link type="text/css" rel="stylesheet" href="../../resources/css/jy_ad.css">
<link rel="stylesheet" type="text/css" href="../../resources/css/jquery_002.css" media="screen">
<link rel="stylesheet" type="text/css" href="../../resources/css/neixindubai.css">
<link href="../../resources/css/layer_002.css" rel="stylesheet" type="text/css">


<script src="../../resources/js/beacon.js" async=""></script><script type="text/javascript" src="../../resources/js/jy_ad.js"></script>
<script src="../../resources/js/global.js" type="text/javascript"></script>
<script src="../../resources/js/pv.js" type="text/javascript"></script><!--统计-->
<script type="text/javascript" src="../../resources/js/JY.js"></script><!--佳缘桌面弹层开始--><link href="../../resources/css/layer.css" rel="stylesheet" type="text/css"><script src="../../resources/js/clickonce.js" type="text/javascript"></script><style media="screen" type="text/css">#altContent {visibility:hidden}</style><style media="screen" type="text/css">#altContent {visibility:hidden}</style></head><body><div class="layerTable" id="layerTable" style="display:none;"><div class="layerTableTop"><a href="javascript:hidelayerTable(0)" class="layerTableClose"></a></div><div class="layerTableBody"><table border="0" cellpadding="0" cellspacing="0"><tbody><tr><td><a href="javascript:hidelayerTable(2)" class="layerTableButton"></a></td><td><a href="javascript:hidelayerTable(1)" class="layerTableLink">查看详情</a></td><td><a href="javascript:hidelayerTable(0)" class="layerTableLink">以后再说</a></td></tr></tbody></table></div></div><script type="text/javascript">function hidelayerTable(butt){document.getElementById("layerTable").style.display="none";document.getElementById("header_login_pop_mask").style.display="none";location.href=JY.url.getChannelUrl("usercp");if(butt==1){window.open("http://webim.jiayuan.com/client/download.php");}if(butt==2){NavigateTo("jiayuan.com");}}</script><!--佳缘桌面弹层结束-->
<script type="text/javascript">
var ie = navigator.userAgent.toLowerCase().indexOf('msie');
var isChanged = false;


function initAjax()
{
    var ajax = false;
    if(window.XMLHttpRequest)
    {
        ajax = new XMLHttpRequest();
    }else{
        try{
            ajax = new ActiveXObject('Msxml2.XMLHTTP');
        }catch(e){
            ajax = new ActiveXObject('Microsoft.XMLHTTP');
        }
    }
    return ajax;
}

function show_category(_id){
	_obj = document.getElementById(_id);
	if(_obj.style.display == "none"){
		_obj.style.display = "";
	}else{
		_obj.style.display = "none";
	}
}

function openDiv(_id, _width, _height){
	var m = "mask";
	if(document.getElementById(m)) document.body.removeChild(document.getElementById(m));
	var newMask = document.createElement("div");
	newMask.id = m;
	newMask.style.position = "absolute";
	newMask.style.zIndex = "1";
	_scrollWidth = Math.max(document.body.scrollWidth,document.documentElement.scrollWidth);
	_scrollHeight = Math.max(document.body.scrollHeight,document.documentElement.scrollHeight);
	newMask.style.width = _scrollWidth + "px";
	newMask.style.height = _scrollHeight + "px";
	newMask.style.top = "0px";
	newMask.style.left = "0px";
	newMask.style.background = "#33393C";
	newMask.style.filter = "alpha(opacity=40)";
	newMask.style.opacity = "0.30";
	document.body.appendChild(newMask);

	_width = _width ? _width : 488;
	_height = _height ? _height : 314;
	showDiv = document.getElementById(_id);
	showDiv.style.display = "block";
	showDiv.style.position = "absolute";
	showDiv.style.zIndex = "9999";
	showDivWidth = _width;
	showDivHeight = _height;
	var scrollTop = document.documentElement.scrollTop || window.pageYOffset || 0;
	showDiv.style.top = String(scrollTop + document.documentElement.clientHeight/2 - showDivHeight/2) + "px";
	showDiv.style.left = (document.documentElement.scrollLeft + document.documentElement.clientWidth/2 -  showDivWidth/2) + "px";
}

function closeDiv(_id){
	document.getElementById("mask").style.display = "none";
	document.getElementById(_id).style.display = "none";
}

function select_changed(){
	isChanged = true;
}

function change(_num){
	isChanged = true;
}

function check_count(_obj, _num)
{
	var chks = document.getElementsByName(_obj.name);
	var count = 0;
	for(var i=0; i<chks.length; i++)
	{
		if(chks[i].checked == true)
		{
			count ++;
		}
		if(count > _num)
		{
			_obj.checked = false;
			alert('最多只能选择' + _num + '项');
			return false;
		}
	}
}
</script>
<script type="text/javascript" src="../../resources/js/jquery-1.js"></script>
<script type="text/javascript" src="../../resources/js/jquery.js"></script>
<script type="text/javascript" src="../../resources/js/window.js"></script>
<script src="../../resources/js/pv_002.js" type="text/javascript"></script><!--统计-->
<!--专题js-用fancybox-->
<link type="text/css" rel="stylesheet" href="../../resources/css/jquery.css">
<script src="../../resources/js/jquery_002.js" type="text/javascript"></script>
<script src="../../resources/js/case_uicommon.js" type="text/javascript"></script>
<script src="../../resources/js/xiuxiu.js" type="text/javascript"></script>
<script type="text/javascript">
    var mtxx_type=""//判断编辑的是头像还是生活照
    var pid="";//当前照片id
    var mtxx_img_url = "";
    var mtxx_upload_url = "";
    var xiuxiuInited = false;
    var upload_pic_limit = 6;
    var mtxx_pos = 0;//我的生活照中，当前编辑的美化图的位置
    xiuxiu.setLaunchVars("uploadBtnLabel", "保存", "lite");
    xiuxiu.setLaunchVars("language", "zh");
    xiuxiu.embedSWF("altContent", 1, 700, 600, "lite");
    xiuxiu.onInit = function(id){xiuxiuInited=true;}
    xiuxiu.onBeforeUpload = function(data, id) {
        if(mtxx_type=='pro'){
                        send_jy_pv2('|meitu_pro_m_submit|122261858');
                            }
                if(mtxx_type=='album'){
                                        send_jy_pv2('|meitu_album_m_submit|122261858');
                                            }
        var size = data.size;
        var limit = parseInt(my_getbyid('max_file_size').value);
        if(size > limit){
            alert("优化后照片文件过大,图片不能超过5M");
            return false;
        }

                if(upload_pic_limit<0){
            alert("亲，超出上传图片数目限制，请开通vip");
            return false;
        }
        //        openDiv("uploading");
        return true;
    }


    xiuxiu.onUploadResponse = function (data)
    {
//        closeDiv("uploading");
//        alert(data);
        var ptn_succes = /照片上传成功/i;//danten
        if(ptn_succes.test(data)){
//            alert(mtxx_pos);
            if(pid){
//                document.getElementById("upload_photo_iframe").src="/usercp/photodel.php?type=js&pid="+pid;
                var url = "http://upload.jiayuan.com/usercp/photodel.php?type=js&pid="+pid;
//                alert(url);
//                var xmlHttp;
//                try {    // Firefox, Opera 8.0+, Safari
//                    xmlHttp=new XMLHttpRequest();
//                } catch (e) {    // Internet Explorer
//                    try {
//                        xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
//                    } catch (e) {
//                        try {
//                            xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
//                        } catch (e) {
//                            alert("Your browser does not support AJAX!");
//                            return false;
//                        }
//                    }
//                }
//                xmlHttp.onreadystatechange=function(){
//                    if(xmlHttp.readyState==4 || xmlHttp.status==200){
//                        alert('响应成功'+xmlHttp.responseText);
//                    }else{alert('响应失败!');}
//                }
//                xmlHttp.open('GET',url,true);
////                httpAdapter.setRequestHeader();
//                xmlHttp.send(null);
            }
            var jump_url = "http://upload.jiayuan.com/usercp/photo.php?mtxx_pos="+mtxx_pos.toString();//重刷是为了获得审核的图片
            //            alert(jump_url);
//            document.write("\<script type=\'text\/javascript\'\>alert('照片上传成功，请等待审核~')\;self.parent.location.href=\'"+jump_url+"\';\<\/script\>");//避免删除弹窗
            alert('照片上传成功，请等待审核~');
            self.location.href= jump_url;
        }

    }

    xiuxiu.onDebug = function (data,id)
    {
        alert("错误响应" + data);
    }
    xiuxiu.onClose = function (id)
    {
//        $.uicommon.myself_fancybox_close();
        closeDiv("mtxx-swf");
        $("#mtxx-swf").html("<div id='altContent'></div>");
        xiuxiuInited = false;
    }


    function mtxx_click(obj){
        if(mtxx_type=='pro'){
                            send_jy_pv2('|meitu_pro_m_edit|122261858');
                    }
        if(mtxx_type=='album'){
                            send_jy_pv2('|meitu_album_m_edit|122261858');
                    }

        mtxx_img_url = $(obj).parent().parent().find("#img_mt").attr('src');
        var patn_img = /t.jpg|t.jpeg|t.gif|t.png/i;//t、d分别是审核后的小，大图，o是上传的原图(2010/11/03之后才有)。
        var patn_pid = /\/([0-9]+)(t.jpg|t.jpeg|t.gif|t.png)/i;
        if(patn_pid.test(mtxx_img_url)){
            pid = mtxx_img_url.match(patn_pid)[1];
        }
        var pos = mtxx_img_url.search(patn_img);
        if(patn_img.test(mtxx_img_url)){
            mtxx_img_url = mtxx_img_url.substr(0,pos)+"d"+mtxx_img_url.substr(pos+1);
        }
        if(pid){
            mtxx_upload_url = "http://upload.jiayuan.com/usercp/photoupload.php?type=js&pid="+pid;
        }else{
            mtxx_upload_url = "http://upload.jiayuan.com/usercp/photoupload.php?type=js&uid=122261858";
        }

                if(xiuxiuInited){
                    var id = 'lite';
                    xiuxiu.loadPhoto(mtxx_img_url,false, id);
                    xiuxiu.setUploadURL(mtxx_upload_url, id);
                    xiuxiu.setUploadType(2, id);//表单上传 Content-type:multipart/form-data；
                    xiuxiu.setUploadDataFieldName("upload_file[]");
                    xiuxiu.setUploadArgs({}, id);
                }else{

                    xiuxiu.setLaunchVars("uploadBtnLabel", "保存", "lite");
                    xiuxiu.setLaunchVars("language", "zh");
                    xiuxiu.embedSWF("altContent", 1, 700, 600, "lite");
                    xiuxiu.onInit = function(id){
                        xiuxiu.loadPhoto(mtxx_img_url,false, id);
                        xiuxiu.setUploadURL(mtxx_upload_url, id);
                        xiuxiu.setUploadType(2, id);//表单上传 Content-type:multipart/form-data；
                        xiuxiu.setUploadDataFieldName("upload_file[]");
                        xiuxiu.setUploadArgs({}, id);
                    }
                }

//        $.uicommon.myself_fancybox("#mtxx-swf");
        openDiv("mtxx-swf",700,600);//弹层
    }
	</script>

<script type="text/javascript">
send_jy_pv2('|vip_entry_scgdzp_show|');//统计上传更多照片vip入口的展示次数
var more_pic = 6;
function initAjax()
{
    var ajax = false;
    if(window.XMLHttpRequest)
    {
        ajax = new XMLHttpRequest();
    }else{
        try{
            ajax = new ActiveXObject('Msxml2.XMLHTTP');
        }catch(e){
            ajax = new ActiveXObject('Microsoft.XMLHTTP');
        }
    }
    return ajax;
}
//add by liuwei at 2010-05-07
function clickCount(args){
    
     //var ajax = initAjax();
     var url2 = location.href ;
     var i="www"; 
     if(/msn/.test(url2)){
      i="msn";
     }
     if(/sina/.test(url2)){
      i="sina";
     }
     //alert(i);
	 send_jy_pv2(i+"_change_button_upload_"+args);
     //ajax.open("GET","/register/notecount.class.php?method=addPhotoChange&data="+args+"&url="+i,true);
     //ajax.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
     //ajax.send(null);
}

function delavatar()
{
    if (confirm('删除头像照后，如果不上传新的头像照，在＂搜索有照片的人＂时，您将不会被搜到')) {
        document.getElementById("upload_photo_iframe").src='/usercp/avatardel.php?type=js';
    }
}

function delphoto(pid)
{
    if (confirm('确认删除?')) {
		document.getElementById("upload_photo_iframe").src='/usercp/photodel.php?type=js&pid='+pid;
    }
}

function dohide(id,status)
{
    var xmlHttp;
    try {    // Firefox, Opera 8.0+, Safari    
        xmlHttp=new XMLHttpRequest();
    } catch (e) {    // Internet Explorer    
        try {
            xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
        } catch (e) {
            try {
                xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e) {
                alert("Your browser does not support AJAX!");
                return false;
            }
        }
    }
    status = status ? 1 : 0;
    url = '/usercp/photohide.php?id='+id+'&hide='+status;
    xmlHttp.onreadystatechange=function()
    {
        if(xmlHttp.readyState==4) {
            if (xmlHttp.responseText == 1) {
                alert('私密照片设置成功');
				my_getbyid('hidden_display_'+id).style.display = "";
				my_getbyid('hidden_control_'+id).style.display = "none";
				my_getbyid('unhidden_control_'+id).style.display = "";
                //my_getbyid('hidden_'+id).onclick=function(){dohide(id,0);}
            } else if(xmlHttp.responseText == 0) {
                alert('公开照片设置成功');
				my_getbyid('hidden_display_'+id).style.display = "none";
				my_getbyid('hidden_control_'+id).style.display = "";
				my_getbyid('unhidden_control_'+id).style.display = "none";
                //my_getbyid('hidden_'+id).onclick=function(){dohide(id,1);}
            } else {
                alert('操作失败');
            }
        }
    }
    xmlHttp.open("GET",url,true);
    xmlHttp.send(null);
}

function upload_photo(index)
{
	if(index == 0){
		if(check_form(0)){
			var upload_form = document.getElementById("frm_upload");
			closeDiv("upload_photo");
			openDiv("uploading");
			upload_form.submit();
		}
	}else{
		if(check_form(1)){
			var upload_form = document.getElementById("wl_frm_upload");
			closeDiv("upload_photo");
			openDiv("uploading");
			upload_form.submit();
		}
	}
}

function check_form(index){
	    if(more_pic == 0) { 
        alert("照片数量已达6张，请至少删除1张之后再上传");
        return false;
    }
		
    var oP, haveP=0;
    var patn = /.jpg$|.jpeg$|.gif$|.png$/i;
	var patn_wl = /^http:\/\//i;
	if(index == 0){
		var files = document.getElementsByName('upload_file[]');
	}else{
		var files = document.getElementsByName('wl_upload_file[]');
	}
    for (var i=0,j=0; i<files.length; i++) {
        if (files[i].value.length > 1) {
            haveP = 1;
			if(index == 0){
				if(!patn.test(files[i].value)) {
					j = i+1;
					alert('第'+j+'个不是合法的图片文件,请重新选择');
					return false;
				}
			}else{
				if(!patn.test(files[i].value) || !patn_wl.test(files[i].value)) {
					j = i+1;
					alert('第'+j+'个不是合法的图片文件,请重新选择');
					return false;
				}
			}
        }
    }
    if (haveP == 0) {
        alert("请选择要上传的照片");
        return false;
    }
    if (my_getbyid('uptitle')) {
        strlength = my_getbyid('uptitle').value.length;
        if(strlength > 20) {
            alert('照片标题文字太长，请控制在20字以内');
            return false;
        }
    }
	return true;
}

function upload_photo_quick(index){
	if(index == 0){
		document.getElementById('upload_quick').value = 1;
		document.getElementById('show_pay').style.display='none';
		openDiv('upload_photo');
		upload_photo(0);
	}else{
		document.getElementById('wl_upload_quick').value = 1;
		document.getElementById('wl_show_pay').style.display='none';
		openDiv('upload_photo');
		upload_photo(1);
	}
	setDomainForIframe();
}

function check_fileszie(filePicker,index)
{
    var patn = /.jpg$|.jpeg$|.gif$|.png$/i; 
	var patn_wl = /^http:\/\//i;
    if(patn.test(filePicker.value)&&index == 0) {
		img_temp = my_getbyid('oFileChecker');
		img_temp.src = filePicker.value;
	}else if(patn.test(filePicker.value)&&patn_wl.test(filePicker.value)&&index == 1){
		img_temp = my_getbyid('wl_oFileChecker');
		img_temp.src = filePicker.value;
	}else {
          alert('您选择的不是合法的图片文件,请重新选择');
		  if (filePicker.outerHTML) {
              filePicker.outerHTML = filePicker.outerHTML;
		  } else {
             filePicker.value = "";
          }
          return false;
    }
}

function check_photo_size(index)
{
	if(index == 0){
		img_temp = my_getbyid('oFileChecker');
	}else{
		img_temp = my_getbyid('wl_oFileChecker');
	}
    var limit = parseInt(my_getbyid('max_file_size').value);
    if (img_temp.fileSize > limit) {
        alert("照片文件过大，请选择5M以下的文件上传");
        return false;
    }
}
//添加获取class
function getElementsByClassName(node,classname) {
  if (node.getElementsByClassName) { 
    return node.getElementsByClassName(classname);
  } else {
    return (function getElementsByClass(searchClass,node) {
        if ( node == null )
          node = document;
        var classElements = [],
            els = node.getElementsByTagName("*"),
            elsLen = els.length,
            pattern = new RegExp("(^|\\s)"+searchClass+"(\\s|$)"), i, j;

        for (i = 0, j = 0; i < elsLen; i++) {
          if ( pattern.test(els[i].className) ) {
              classElements[j] = els[i];
              j++;
          }
        }
        return classElements;
    })(classname, node);
  }
}
function add_file_item(index)//index是序列,对应获取元素ID
{
	var wrap;
    var text;
    var htmlStr;
    if(index==0) {
        wrap = document.getElementById('localPic');
        htmlStr = '照片';
        text = '：<input type="file" class="file uploadFile" name="upload_file[]" onchange="check_fileszie(this,0);" size="40" style="width:300px;" />'
        add_item(wrap,'t')
    } else if(index==1) {
        wrap = document.getElementById('networkPic');
        htmlStr = '照片地址：';
        text = '<input type="text" class="file uploadFile inputBg" name="wl_upload_file[]" onchange="check_fileszie(this,1);" size="40" style="width:275px;" />'
        add_item(wrap)
    }
	function add_item(w,num)//w:父元素,num:是否显示index_num
    {
	var files = getElementsByClassName(w,'uploadFile')
		if (files.length >= more_pic) {
		/*if (more_pic == 0) {
			alert("每人最多可以上传6张，您已经上传了6张。");
		} else {
			alert("您最多可以上传"+more_pic+"张");
		}*/
		closeDiv('upload_photo');
		openWindow('','','http://www.jiayuan.com/usercp/service/vip_tstc.php?type=2',600,358);
		return;
	}
	    var index_num;
	if(num){index_num = files.length + 1} else {index_num=''}
	var newfile = document.createElement("dd");
	var oContainter = getElementsByClassName(w,'upfile_containter')[0]
	oContainter.appendChild(newfile);
	htmlStr += index_num + text;
	newfile.innerHTML = htmlStr;
    }
}

function del_file_item()
{
	var oContainter = document.getElementById("upfile_containter");
	var lastChild = oContainter.lastChild;
	oContainter.removeChild(lastChild);
}

$(function() {
	//$('#life_pic .showpic a').lightBox();
});

function skip(){
	if(isChanged){
		if(confirm("您尚有未保存的资料，确定要离开吗？")){
			location.href='/usercp/profile.php?action=map';
		}
	}else{
		location.href='/usercp/profile.php?action=map';
	}
}

function edit_photo_desc(_pid){//photo_describe
		openDiv("photo_describe", 560, 400);
	}

function close_edit_photo_desc(_pid){
	document.getElementById("desc_title_"+_pid).className = "";
	document.getElementById("desc_show_"+_pid).style.display = "";
	document.getElementById("desc_edit_"+_pid).style.display = "none";
	document.getElementById("desc_button_"+_pid).style.display = "none";

}

function photo_desc_sub(_uid, _pid){
	var _desc = document.getElementById("desc_text_"+_pid).value;
	if(_desc == ""){
		alert("请输入照片描述！");
		document.getElementById("desc_text_"+_pid).focus();
		return false;
	}

	if(_desc.length > 20){
		alert("照片描述最多只能输入20个字符！");
		document.getElementById("desc_text_"+_pid).focus();
		return false;
	}

	var _rd = Math.ceil((new Date().getTime() - 1262164318867) / 100);

	var xmlHttp_desc = initAjax();
	var url = 'photodesc.php?uid='+_uid+'&pid='+_pid+'&rd='+_rd;
    xmlHttp_desc.onreadystatechange=function(){
		 if(xmlHttp_desc.readyState==4){
			if(xmlHttp_desc.status==200){
				var text = xmlHttp_desc.responseText;
				if(text == "1"){
					alert("操作成功！通过审核后显示！");
					close_edit_photo_desc(_pid);
					document.getElementById("desc_title_"+_pid).className = "on";
					document.getElementById("desc_title_"+_pid).onclick = "";
					document.getElementById("desc_title_"+_pid).innerHTML = "修改描述";
					document.getElementById("desc_show_span_"+_pid).innerHTML = _desc;
				}else{
					alert("操作失败！");
					alert(text);
					close_edit_photo_desc(_pid);
				}
			}
		 }
	};
    xmlHttp_desc.open("POST", url, true);
	xmlHttp_desc.setRequestHeader("Content-Type","application/x-www-form-urlencoded"); 
    xmlHttp_desc.send("photo_desc="+_desc);
}
/***
 * 说明：添加了文本输入框字符个数限制
 * 作者：闫争棵
 * 日期：2014-01-06
 * 参数：pid int textaId
 *      num int strNum
 * 返回：boll 
 */
function verify_str_num(pid,num){
    var desc = document.getElementById("desc_text_"+pid).value;
    var num  = typeof num == 'undefined' ? 20 : parseInt(num);
    if(desc.length > num){
	var newstr = desc.substr(0,20);
        document.getElementById("desc_text_"+pid).value = newstr;
            alert("照片描述最多只能输入"+num+"个字符！");
		document.getElementById("desc_text_"+pid).focus();
		return false;
    }
    return true;
}

</script>




<!-- 标准头 开始 -->
<script type="text/javascript">
//会员信息对象
window.HEAD_USER = {};
HEAD_USER.uid = 0;
//通用头功能函数对象
var jy_head_function = {};
jy_head_function.in_arry = function(array, value){//判断value是否在数组array中
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
if(this.in_arry(domain_suffix, host_arr[i])){
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
if(profile && profile.length > 10){
//说明：0,UID;1,昵称;2,性别;3,头像地址;4,头像标记;5,认证;6,新旧会员标记;7,头像图片名称;8,征友状态;9,俱乐部等级;10,金豆数
var arr = profile.split(":");
if(/^\d{7,10}$/.test(arr[0])){
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
if(arr.length >= 10){
HEAD_USER.level = arr[9];
HEAD_USER.bean = arr[10];
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
var channel_dir_array = Array('/usercp/','/msg/','/parties/wap_clients/');//频道目录数组
var head_current_channel = host_name.split('.')[0];//获取二级子域名，处理当前头部选中链接样式
//域名转换标识
switch(head_current_channel){
case 'www':
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
common_nav_array['game_tag']	= "游戏";
common_nav_array['game_url']	= "http://game."+jy_top_domain+"/";
common_nav_array['game_css']	= "";
common_nav_array['game_sta']	= "|head_navigation_game|";
common_nav_array['love_tag']	= "晒幸福";
common_nav_array['love_url']	= "http://love."+jy_top_domain+"/";
common_nav_array['love_css']	= "";
common_nav_array['love_sta']	= "|head_navigation_love|";
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
<script type="text/javascript" src="../../resources/js/jiayuan_logo_config.js"></script>
<script type="text/javascript" src="../../resources/js/JY_Alert.js"></script>
<!--[if lte IE 6]>
<script type="text/javascript" src="http://images1.jyimg.com/w4/common/j/DD_belatedPNG_0.0.8a_IE6.js"></script>
<![endif]--> <script type="text/javascript">
//获取登录信息和会员基本信息
if(HEAD_USER){
profile				= HEAD_USER;			//获取用户信息，兼容旧页面（页面中请不要继续使用）
head_user_uid		= HEAD_USER.uid;		//UID
head_user_nickname	= HEAD_USER.nickname;	//昵称
}else{
profile				= {};
profile.uid			= 0;
head_user_uid		= 0;
head_user_nickname	= '';
}
</script>
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
            <p id="head_user_nickname">Hi，<a class="color_fff" target="_blank" href="user/selfBasic/${loginUser.userId}">${loginUser.nickname}</a></p>
<!--             <p class="memberIcon iconS1" id="head_user_level"><a onmousedown="jy_head_function.click_pv('|head_club_level|122261858');" title="S1会员" href="http://www.jiayuan.com/club/" target="_blank">S1会员</a></p> -->
<!--             <p id="head_user_bean">金豆<a onmousedown="jy_head_function.click_pv('|head_club_bean|122261858');" href="http://www.jiayuan.com/club/" class="color_fff" target="_blank">600</a></p> -->
            <p id="head_user_uid">佳缘ID<a class="color_fff" target="_blank" href="user/selfBasic/${loginUser.userId}">122261858</a></p>
            <p id="head_user_logout"><a class="color_fff" href="../logout">退出</a></p>
        </div>
    <!--     <div class="jycm_top_right">
            <div id="jycm_top_inform" class="jycm_top_inform">
                <div id="jycm_top_informIcon" class="jycm_top_informIcon">
<div class="jycm_top_remind">
<span class="color_fff va_middle"><i class="jy_top_icon jy_icon_remind"></i><strong class="jy_tixing">提醒</strong><i style="display: inline;" id="tips_point"></i></span>
</div>
                </div>
                <div id="jycm_top_informCn" class="jycm_top_informCn" style="display:none">
                    <ul id="vip_center_all_notes">
                        <li id="visitor_new_num"><a target="_blank" href="http://www.jiayuan.com/usercp/clicked_new.php" onclick="jy_head_function.click_pv('|1013617_6|');"><strong class="fl">谁看过我</strong><span class="fr fr_num"> 41</span></a></li>
                        <li style="display: none;" id="praise_me_new_num"><a target="_blank" href="http://www.jiayuan.com/usercp/praiseme.php" onclick="jy_head_function.click_pv('|1013617_7|');"><strong class="fl">谁赞过我</strong></a></li>
                        <li id="fans_new_num"><a target="_blank" href="http://www.jiayuan.com/usercp/myfans.php" onclick="jy_head_function.click_pv('|1013617_8|');"><strong class="fl">谁关注我</strong><span class="fr fr_num"> 1</span></a></li>
                    </ul>
                </div>
            </div>
            <p class="jycm_top_jx ">
            	<script type="text/javascript">
//输出IM链接
document.write('<a class="color_fff va_middle" href="'+common_nav_array['im_url']+'" onclick="jy_head_function.click_pv(\'|head_navigation_im|\');" target="_blank"><i class="jy_top_icon jy_icon_jiaxin"></i>'+common_nav_array['im_tag']+'</a>');
                </script><a class="color_fff va_middle" href="http://im.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_im|');" target="_blank"><i class="jy_top_icon jy_icon_jiaxin"></i>佳缘佳信</a>
            </p>
            <div id="jycm_top_izx" class="jycm_top_izx">
                <div class="jycm_top_izxTit">
                	<script type="text/javascript">
//输出爱真心链接
                	document.write('<a id="jy_top_izhenxin_url" class="color_fff fn-clear" onclick="jy_head_function.click_pv(\'|head_navigation_mobile|\');" href="'+common_nav_array['extend_url3']+'" target="_blank"><i class="jy_top_icon icon_izx"></i><span class="jy_txt">'+common_nav_array['extend_tag']+'</span><i id="izx_point"></i></a>');
</script><a id="jy_top_izhenxin_url" class="color_fff fn-clear" onclick="jy_head_function.click_pv('|head_navigation_mobile|');" href="http://www.izhenxin.com/register/landingpagetw" target="_blank"><i class="jy_top_icon icon_izx"></i><span class="jy_txt">爱真心</span><i id="izx_point"></i></a>
                </div>
                <div class="jycm_top_izxCn">
                    <ul>
                    	<li id="jy_nav_izhenxin_url"></li>
                    </ul>
                </div>
                <div class="jycm_top_izxCn2" id="jy_top_izx_jihuo">
                	<script type="text/javascript">
//输出爱真心激活链接
                    document.write('<a href="'+common_nav_array['extend_url']+'" target="_blank" onclick="jy_head_function.click_pv(\'|1013850_9|'+head_user_uid+'\');"><span>激活爱真心帐号</span></a>');
</script><a href="http://www.izhenxin.com/login/getSign/?url=http%3A%2F%2Fwww.jiayuan.com%2Fusercp%2Fiz_login.php%3Furl%3Dhttp%253A%252F%252Fwww.izhenxin.com%252F&amp;from=top" target="_blank" onclick="jy_head_function.click_pv('|1013850_9|122261858');"><span>激活爱真心帐号</span></a>
                    <a class="jycm_top_izxClose" style="cursor:pointer">关闭</a><i class="point_top"></i>
                </div>
            </div>
            <p class="jycm_top_collect ">
            	<a id="jycm_top_collect_1" class="color_fff va_middle" onclick="jycm_addFav();" href="javascript:;"><i class="jy_top_icon jy_icon_collect"></i>收藏本站</a>
            </p>
            <p class="jycm_top_zx " id="vip_area_tel" style=""><i class="jy_top_icon jy_icon_tel"></i><span class="jy_txt"><span>红娘专线</span><strong>400-7701-520</strong></span></p>
        </div> -->
    </div>
   <!--  <div class="w1000" id="head_nologin" style="display:none">
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
                	<script type="text/javascript">
//输出忘记密码和注册链接
                    document.write('<a class="color_fff" href="'+common_nav_array['login_url']+'validate.php" target="_blank">忘记密码</a><a class="color_fff" href="'+common_nav_array['reg_url']+'?bd=9528" onclick="jy_head_function.click_pv(\'|head_navigation_reg|\');" target="_blank">免费注册</a>');
</script><a class="color_fff" href="http://login.jiayuan.com/validate.php" target="_blank">忘记密码</a><a class="color_fff" href="http://reg.jiayuan.com/?bd=9528" onclick="jy_head_function.click_pv('|head_navigation_reg|');" target="_blank">免费注册</a>
                </p>
            </form>
        </div>
        <div class="jycm_top_right">
            <p class="jycm_top_collect ">
            	<a id="jycm_top_collect_2" class="color_fff va_middle" onclick="jycm_addFav();" href="javascript:;"><i class="jy_top_icon jy_icon_collect"></i>收藏本站</a>
            </p>
        </div>
    </div> -->
</div>
<!--登录区域 end-->
<div id="jycm_head" class="jycm_head fn-clear">
    <div class="jycm_head_top">
        <h1 class="logo">
        	<a id="jy_head_logo" style="" href="http://www.jiayuan.com/"><img src="../../resources/img/logo_new.png" alt="世纪佳缘" height="70"></a>
        </h1>
        <div id="jy_head_city_select"></div>
        <div class="jycm_head_ad">
        	<!--<div id="jycm_head_ad_left"></div>-->
        	<div id="ad_pos_70"><a target="_blank" href="http://www.jiayuan.com/advert/click.php?key=cG9zX2lkPTcwJm1yX2lkPTYzMTAmYWRfaWQ9ODI4Jm1faWQ9NzA3JnVzZXJpZD04NjQ3NTUxNyZpcD0yMDkzMDcyNjY1JnVybD1odHRwOi8vY2FzZS5qaWF5dWFuLmNvbS95aXhpbi8mc3JjX2tleT1hZF80M183MF84MjhfNzA3XzYzMTA="><img id="jy_advert_707_img" src="../../resources/img/20141010093719185.jpg" border="0" height="70" width="215"></a></div>
            <span style="clear:both"></span>
        </div>
        <span style="clear:both"></span>
    </div>
    <div id="jycm_head_nav" class="jycm_head_navBg">
        <div class="jycm_head_nav fn-clear" id="jycm_head_nav_links" style="">
            <ul>
                <li class="">
                    <a href="http://www.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_www|');" target="_blank">首页</a>
                </li>
                <li class="head_nav_cur">
                    <a href="http://usercp.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_usercp|');" target="_blank">我的佳缘</a>
                </li>
                <li class="">
                   <a href="http://www.jiayuan.com/club/" onclick="jy_head_function.click_pv('|head_navigation_club|');" target="_blank">俱乐部</a>
                </li>
                <li class="">
                    <a href="http://search.jiayuan.com/v2/" onclick="jy_head_function.click_pv('|head_navigation_search|');" target="_blank">搜索</a>
                </li>
                <li class="">
                    <a href="http://search.jiayuan.com/v2/new.php" onclick="jy_head_function.click_pv('|head_navigation_new|');" target="_blank">新会员</a>
                </li>
                <li class="">
                    <a href="http://search.jiayuan.com/v2/online.php" onclick="jy_head_function.click_pv('|head_navigation_online|');" target="_blank">聊天</a>
                </li>
                <li class="">
                    <a href="http://party.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_party|');" target="_blank">活动</a>
                </li>
                <li class="">
                    <a href="http://diary.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_diary|');" target="_blank">两性</a>
                </li>
                <li class="">
                    <a href="http://caipiao.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_caipiao|');" target="_blank">彩票</a>
                </li>
                <li class="">
                	<div class="jy_top_hot">
<a href="http://game.jiayuan.com/" target="_blank">
<img src="../../resources/img/jy_top_hot.gif" border="0" height="17" width="25">
</a>
</div>
                    <a href="http://game.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_game|');" target="_blank">游戏</a>
                </li>
                <li class="">
                    <a href="http://love.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_love|');" target="_blank">晒幸福</a>
                </li>
            </ul>
            <div class="jycm_head_navOthor fn-clear">
                <a href="http://vip.jiayuan.com/" onclick="jy_head_function.click_pv('|head_navigation_liehun|');" target="_blank">红娘一对一</a>
                <a class="jycm_head_nav_azx" href="http://www.izhenxin.com/login/getSign/?url=http%3A%2F%2Fwww.jiayuan.com%2Fusercp%2Fiz_login.php%3Furl%3Dhttp%253A%252F%252Fwww.izhenxin.com%252F&amp;from=JYDH" onclick="jy_head_function.click_pv('|head_navigation_izhenxin|');" target="_blank">爱真心</a>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
//头部计时调用
function head_wait(cond, exec){setTimeout(function(){if(!cond()){setTimeout(arguments.callee, 25);return;}exec();}, 0);}
//获取导航链接信息替换显示
document.getElementById('jycm_head_nav_links').innerHTML = jy_head_function.format_tpl(document.getElementById('jycm_head_nav_links').innerHTML);	//导航信息
document.getElementById('jycm_head_nav_links').style.display = "";
if(HEAD_USER.uid > 0){
//写登录信息
if(jy_head_function.strlen_ch(head_user_nickname) > 8){
head_user_nickname = jy_head_function.substr_ch(head_user_nickname, 6) + '...';
}
document.getElementById('head_user_uid').innerHTML = '佳缘ID<a class="color_fff" target="_blank" href="' + common_nav_array['www_url'] + head_user_uid + '">' + head_user_uid + '</a>';
document.getElementById('head_user_nickname').innerHTML = 'Hi，<a class="color_fff" target="_blank" href="' + common_nav_array['www_url'] + head_user_uid + '">' + head_user_nickname + '</a>';
document.getElementById('head_user_level').className = 'memberIcon iconS' + HEAD_USER.level;
document.getElementById('head_user_level').innerHTML = '<a onmousedown="jy_head_function.click_pv(\'|head_club_level|' + head_user_uid + '\');" title="S' + HEAD_USER.level + '会员" href="http://' + mydomain + '/club/" target="_blank">S' + HEAD_USER.level + '会员</a>';
document.getElementById('head_user_bean').innerHTML = '金豆<a onmousedown="jy_head_function.click_pv(\'|head_club_bean|' + head_user_uid + '\');" href="http://' + mydomain + '/club/" class="color_fff" target="_blank">' + HEAD_USER.bean + '</a>';
document.getElementById('head_user_logout').innerHTML = '<a class="color_fff" href="' + common_nav_array['login_url'] + 'logout2.php">退出</a>';
}
//去空格函数
String.prototype.trim = function()
{
return this.replace(/(^\s*)|(\s*$)/g, "");
}
//获取顶部数据
function get_jiayuan_contacts()
{
jQuery.ajax({
type : "GET",
url : "http://" + mydomain + "/usercp/dynmatch/ajax/get_contacts.php",
dataType : "jsonp",
jsonp : "jsoncallback",
jsonpCallback : "jy_jsonp",
success : function(ret){
if(typeof(ret) != 'undefined'){
if(ret['vip_tel']){
  jQuery("#vip_area_tel").html('<i class="jy_top_icon jy_icon_tel"></i>'+'<span class="jy_txt"><span>红娘专线</span><strong>' + ret['vip_tel'] + '</strong>');
  jQuery("#vip_area_tel").show();
  jQuery("#vip_area_tel_bar").show();
}
if(ret['jy_vip_center']){
set_vip_center_default(ret['jy_vip_center']['visitor_new_num'], ret['jy_vip_center']['praise_me_new_num'], ret['jy_vip_center']['fans_new_num']);
if(vip_center_all_num === 0){

}else{
//有信息，显示通知提示
jQuery('#tips_point').show();
//jQuery('#jycm_top_inform').addClass("jycm_top_informFocus");
//jQuery('#jycm_top_informCn').show();
}
//绑定鼠标事件
jQuery("#jycm_top_inform").mouseenter(function(){
//if(vip_center_all_num === 0){
jQuery('#jycm_top_informCn').show();							//显示下拉层
jQuery('#jycm_top_inform').addClass("jycm_top_informFocus");	//显示铃铛被选中的效果
//}
jQuery('#vip_center_all_notes > li').each(function(){
jQuery(this).show();
});
});
jQuery("#jycm_top_inform").mouseleave(function(){
//if(vip_center_all_num === 0){
jQuery('#jycm_top_informCn').hide();
jQuery('#jycm_top_inform').removeClass("jycm_top_informFocus");
//}else{
jQuery('#vip_center_all_notes > li').each(function(){
//if(ret['jy_vip_center'][jQuery(this).attr("id")] === 0){	//将没有数字的下拉项隐藏
jQuery(this).hide();
//}
});
//}
});
}
if(ret['izhenxin']){
if(ret['izhenxin']['is_bind'] == 1){
jQuery('a#jy_top_izhenxin_url').attr('href', common_nav_array['izhenxin_url']);
if(ret['izhenxin']['is_active'] == 1){
if(parseInt(ret['izhenxin']['msg_count']) > 0){
//jQuery('#jycm_top_izx').addClass('jycm_top_izxFocus');
jQuery('#izx_point').show();
jQuery('#jy_nav_izhenxin_url').html('<a  href="'+common_nav_array['extend_url2']+'" target="_blank" onclick="jy_head_function.click_pv(\'|1013850_3|'+head_user_uid+'\');"><span class="fl">消息</span><span class="fr fr-num">'+ret['izhenxin']['msg_count']+'</span></a>');
}else{
jQuery('#jy_nav_izhenxin_url').html('<a href="'+common_nav_array['extend_url2']+'" target="_blank" onclick="jy_head_function.click_pv(\'|1013850_1|'+head_user_uid+'\');"><span class="fl">消息</span><span class="fr">查看</span></a>');
jQuery('#jycm_top_izx').hover(
//function(){jQuery('#jycm_top_izx').addClass('jycm_top_izxFocus');},
function(){jQuery('#jycm_top_izx').removeClass('jycm_top_izxFocus');}
);
}
//绑定鼠标事件
jQuery("#jycm_top_izx").mouseenter(function(){
jQuery('#jycm_top_izxCn').show();							
jQuery('#jycm_top_izx').addClass("jycm_top_izxFocus");	
});
jQuery("#jycm_top_izx").mouseleave(function(){
jQuery('#jycm_top_izxCn').hide();
jQuery('#jycm_top_izx').removeClass("jycm_top_izxFocus");
});
}else{
jQuery('.jycm_top_izxClose').click(function(){
jQuery('#jy_top_izx_jihuo').hide();
});
jQuery('#jy_top_izx_jihuo').show();
}
}
}
}
}
  	});
}
function placeholder(inputId,inputType){
var oInput=document.getElementById(inputId);
var defaultValue=oInput.value;
oInput.onfocus=function(){
this.style.border='2px solid #ffd6db';
this.style.color='#888';
if(inputType=='defText'){
if(this.value==defaultValue){
this.value='';
}
}
};
oInput.onblur=function(){
this.style.border='2px solid #ededed';
this.style.color='#333';
if(inputType=='defText'){
if(this.value==''){
this.value=defaultValue;
this.style.color='#aaa';
}
}
}
}
// placeholder('jycm_zh_input','defText');
// placeholder('jycm_pass_input','defPass');
//设置VIP通知中心默认效果
function set_vip_center_default(visitor_new_num, praise_me_new_num, fans_new_num)
{
var vip_center_config = new Array();
vip_center_config['visitor_name'] = '谁看过我';
vip_center_config['visitor_url'] = common_nav_array['www_url'] + 'usercp/clicked_new.php';
vip_center_config['visitor_stat1'] = '\'|1013617_3|\'';
vip_center_config['visitor_stat2'] = '\'|1013617_0|\'';
vip_center_config['visitor_stat3'] = '\'|1013617_6|\'';
vip_center_config['praise_me_name'] = '谁赞过我';
vip_center_config['praise_me_url'] = common_nav_array['www_url'] + 'usercp/praiseme.php';
vip_center_config['praise_me_stat1'] = '\'|1013617_4|\'';
vip_center_config['praise_me_stat2'] = '\'|1013617_1|\'';
vip_center_config['praise_me_stat3'] = '\'|1013617_7|\'';
vip_center_config['fans_name'] = '谁关注我';
vip_center_config['fans_url'] = common_nav_array['www_url'] + 'usercp/myfans.php';
vip_center_config['fans_stat1'] = '\'|1013617_5|\'';
vip_center_config['fans_stat2'] = '\'|1013617_2|\'';
vip_center_config['fans_stat3'] = '\'|1013617_8|\'';
if(visitor_new_num == 0 && praise_me_new_num == 0 && fans_new_num == 0){
vip_center_all_num = 0;
//所有数字都为0
}
if(parseInt(visitor_new_num) > 0){
jQuery("#visitor_new_num").show();
str_visitor_num = '<span class="fr fr_num"> ' + visitor_new_num + '</span>';
}else{
jQuery("#visitor_new_num").hide();
str_visitor_num = '';
if(vip_center_all_num === 0){
str_visitor_num = '<span class="fr">查看</span>';
}
}
str_visitor_txt = '<a target="_blank" href="' + vip_center_config['visitor_url'] + '" ';
str_visitor_txt += 'onclick="jy_head_function.click_pv(' + vip_center_config['visitor_stat3'] + ');"><strong class="fl">'+vip_center_config['visitor_name']+'</strong>'+ str_visitor_num + '</a>';
jQuery("#visitor_new_num").html(str_visitor_txt);
if(parseInt(praise_me_new_num) > 0){
jQuery("#praise_me_new_num").show();
str_praise_me_num = '<span class="fr fr_num"> ' + praise_me_new_num + '</span>';		
}else{
jQuery("#praise_me_new_num").hide();
str_praise_me_num = '';
if(vip_center_all_num === 0){
str_praise_me_num = '<span class="fr">查看</span>';
}
}
str_praise_me_txt = '<a target="_blank" href="' + vip_center_config['praise_me_url'] + '" ';
str_praise_me_txt += 'onclick="jy_head_function.click_pv(' + vip_center_config['praise_me_stat3'] + ');"><strong class="fl">'+vip_center_config['praise_me_name']+'</strong>'+ str_praise_me_num + '</a>';
jQuery("#praise_me_new_num").html(str_praise_me_txt);
if(parseInt(fans_new_num) > 0){
jQuery("#fans_new_num").show();
str_fans_num = '<span class="fr fr_num"> ' + fans_new_num + '</span>';
}else{
jQuery("#fans_new_num").hide();
str_fans_num = '';
if(vip_center_all_num === 0){
str_fans_num = '<span class="fr">查看</span>';
}
}
str_fans_txt = '<a target="_blank" href="' + vip_center_config['fans_url'] + '" ';
str_fans_txt += 'onclick="jy_head_function.click_pv(' + vip_center_config['fans_stat3'] + ');"><strong class="fl">'+vip_center_config['fans_name']+'</strong>'+ str_fans_num + '</a>';
jQuery("#fans_new_num").html(str_fans_txt);
}

//VIP通知中心有数字，值为0表示所有分类一条新通知都没有
vip_center_all_num = 1;
//登录处理
/* head_wait(function(){return typeof JY != "undefined"}, function(){
//登录后回调函数
function header_login_call(user){
if(user && user['uid'] > 0){
if(user['errno'] == -5){
location.href = user['url'];
return false;
}else if(user['type'] == 20){//完善资料
location.href = user['url'];
return true;
}
//location.reload();
window.location = window.location;	//登录成功，不做跳转则刷新当前页面
}else if(user && user['errno'] == -1){
location.href = user['url'];
return false;
}else if(user && user['errno'] == -2){
alert('登录失败，该用户资料已关闭');
}else{
alert('密码错误，请核实您的登录密码');
}
}
if(JY.login.getUser().uid > 0){
document.getElementById("head_login").style.display = "none";
document.getElementById("head_nologin").style.display = "none";
//加载jquery-1.4.2.min.js，利用jquery来获取红娘服务电话
if(typeof(jQuery) == 'undefined' || parseFloat(jQuery.fn.jquery) < 1.4){
var jy_head_include_doc = document.getElementsByTagName('head')[0];
var jy_head_include_js = document.createElement('script');
jy_head_include_js.setAttribute('type', 'text/javascript');
jy_head_include_js.setAttribute('src', "http://images1.jyimg.com/w4/usercp/j/jquery-1.4.2.min.js");
jy_head_include_doc.appendChild(jy_head_include_js);
if(document.all){//如果是IE
jy_head_include_js.onreadystatechange = function(){
if(jy_head_include_js.readyState == 'loaded' || jy_head_include_js.readyState == 'complete'){
//get_jiayuan_contacts();
}
}
}else{
jy_head_include_js.onload = function(){
//get_jiayuan_contacts();
}
}
}else{
//get_jiayuan_contacts();
}
// document.getElementById("head_login").style.display = "";
}else{
// document.getElementById("head_nologin").style.display = "";
// document.getElementById("head_login").style.display = "none";
}
//登录表单，绑定提交事件
document.getElementById("hder_login_form").onsubmit = function(){
var login_name = hder_login_form.name;
var login_pass = hder_login_form.password;;
login_name.value = login_name.value.trim();
login_pass.value = login_pass.value.trim();
if(login_name.value == '' || login_name.value == '邮箱/ID/手机号'){
alert('请输入登录帐号！');
login_name.focus();
return false;
}
if(login_pass.value == ''){
alert('请输入登录密码！');
login_pass.focus();
return false;
}
this.action = common_nav_array['login_url']+'dologin.php';	//修改action提交地址
JY.login.submit(this, header_login_call);
return false;
};
}); */
//设置LOGO
function set_head_logo()
{
document.getElementById('jy_head_logo').href = common_nav_array['www_url'];	//给LOGO链接复制地址	
if(typeof head_logo_config != 'undefined'){
document.getElementById('jy_head_logo').innerHTML = '<img height="70" src="'+head_logo_config['main_logo']+'" alt="世纪佳缘" />';
document.getElementById('jy_head_logo').style.display = '';
}else{
//如果LOGO配置的JS文件没有加载完成或者没有加载成功，则动态加载
jy_head_include_doc = document.getElementsByTagName('head')[0];
jy_head_include_js = document.createElement('script');
jy_head_include_js.setAttribute('type', 'text/javascript');
jy_head_include_js.setAttribute('src', "http://images1.jyimg.com/w4/global/j/jiayuan_logo_config.js");
jy_head_include_doc.appendChild(jy_head_include_js);
if(document.all){//如果是IE
jy_head_include_js.onreadystatechange = function(){
if(jy_head_include_js.readyState == 'loaded' || jy_head_include_js.readyState == 'complete'){
document.getElementById('jy_head_logo').innerHTML = '<img height="70" src="'+head_logo_config['main_logo']+'" alt="世纪佳缘" />';
document.getElementById('jy_head_logo').style.display = '';
}
}
}else{
jy_head_include_js.onload = function(){
document.getElementById('jy_head_logo').innerHTML = '<img height="70" src="'+head_logo_config['main_logo']+'" alt="世纪佳缘" />';
document.getElementById('jy_head_logo').style.display = '';
}
}
}
}
//收藏
function jycm_addFav()
{
var a = "http://www.jiayuan.com/",b="世纪佳缘";
head_alert = [];
head_alert = document.all?window.alert:Window.prototype.alert;
document.all?window.external.AddFavorite(a,b):window.sidebar&&window.sidebar.addPanel?window.sidebar.addPanel(b,a,""):head_alert("对不起，您的浏览器不支持此操作!\n请您使用菜单栏或Ctrl+D收藏本站。");
}
</script>
<!-- released time 2014-10-10 11:25:39 -->
 
<!-- 标准头 结束 -->

<div class="my_infomation">
	<div class="navigation"><a href="../selfBasic/1" >我的佳缘</a>&nbsp;&gt;&nbsp;我的相册</div>
	<div class="borderbg"><img src="../../resources/img/border_top.jpg"></div>
	<div class="info_content">
		<!-- 左侧开始 -->
		<div class="info_left">
			<ul>
				<li onmousedown="send_jy_pv2('editprofile|category_base|m|122261858');"><a href="http://www.jiayuan.com/usercp/profile.php?action=base">基本资料</a></li>
				<li class="ok" onmousedown="send_jy_pv2('editprofile|category_note|m|122261858');"><a href="http://www.jiayuan.com/usercp/note.php">内心独白</a></li>
				<li class="on"><a href="javascript:;">我的照片</a></li>
				<li onmousedown="send_jy_pv2('editprofile|category_map|m|122261858');"><a href="http://www.jiayuan.com/usercp/profile.php?action=map">我的地图</a></li>
				<li onclick="show_category('detail_hidden');"><a href="javascript:;">详细资料</a></li>
				<li id="detail_hidden" class="hidden_li">
					<a href="http://www.jiayuan.com/usercp/profile.php?action=body" onmousedown="send_jy_pv2('editprofile|category_body|m|122261858');">外貌体型</a>
					<a href="http://www.jiayuan.com/usercp/profile.php?action=work" onmousedown="send_jy_pv2('editprofile|category_work|m|122261858');">工作学习</a>
					<a href="http://www.jiayuan.com/usercp/profile.php?action=life" onmousedown="send_jy_pv2('editprofile|category_life|m|122261858');">生活描述</a>
					<a href="http://www.jiayuan.com/usercp/profile.php?action=interest" onmousedown="send_jy_pv2('editprofile|category_interest|m|122261858');">兴趣爱好</a>
				</li>
				<li onclick="show_category('profile_hidden');"><a href="javascript:;">个性展示</a></li>
				<li id="profile_hidden" class="hidden_li">
					<a href="http://www.jiayuan.com/usercp/personal.php?action=1" onmousedown="send_jy_pv2('editprofile|category_personal_part1|m|122261858');">个性描述</a>
					<a href="http://www.jiayuan.com/usercp/personal.php?action=2" onmousedown="send_jy_pv2('editprofile|category_personal_part2|m|122261858');">生活习惯</a>
					<a href="http://www.jiayuan.com/usercp/personal.php?action=3" onmousedown="send_jy_pv2('editprofile|category_personal_part3|m|122261858');">爱情观点</a>
					<a href="http://www.jiayuan.com/usercp/personal.php?action=4" onmousedown="send_jy_pv2('editprofile|category_personal_part4|m|122261858');">约会类型</a>
					<a href="http://www.jiayuan.com/usercp/personal.php?action=5" onmousedown="send_jy_pv2('editprofile|category_personal_part5|m|122261858');">婚姻期望</a>
					<a href="http://www.jiayuan.com/usercp/personal.php?action=6" onmousedown="send_jy_pv2('editprofile|category_personal_part6|m|122261858');">婚后生活</a>
					<a href="http://www.jiayuan.com/usercp/personal.php?action=7" onmousedown="send_jy_pv2('editprofile|category_personal_part7|m|122261858');">理想对象</a>
				</li>
			</ul>
			<div class="return_index">
			<a class="return_jy" href="http://www.jiayuan.com/usercp/index.php" onmousedown="send_jy_pv2('editprofile|return_home|m|122261858');">返回我的佳缘</a>
			</div>
		</div>
		<!-- 左侧结束 -->
		<!-- 中间开始 -->
		<!--mtxx fix-->
<style>

    .mtxxTip{position: absolute; left: 117px; top: 75px; width: 228px; height: 95px; background: url(http://images2.jyimg.com/w4/usercp/i/mtkk/mtxxtc_03.png) no-repeat; opacity: 0.95; z-index:9999;}
    .mtxxTip .closemtxxTip{width: 20px; height: 20px; position: absolute; top: 7px; right: 1px;}
    .mt2{margin-top: 2px;}
    .mtxxEnt{margin-top: -3px; margin-right: 2px;}
    #life_pic li{position:relative;}
		.new_pic_notice p .new_add_photo{width:115px; height:37px; background:url(http://images1.jiayuan.com/w4/usercp/i/new_uploadPic/6.jpg) 0 0 no-repeat; text-decoration:none; cursor:pointer;}
	.new_pic_notice p .new_add_photo:hover{background:url(http://images1.jiayuan.com/w4/usercp/i/new_uploadPic/6.jpg)  0 -37px no-repeat;}
			.my_userface .pic .image{ background: url("http://images1.jyimg.com/w4/usercp/i/picbgw.png") no-repeat;width: 120px;height: 120px; }
    .my_userface .pic .hidden_div{width:120px;}
	.my_userface .pic .image img{width:120px;height: 120px;}
	</style>
<!--[if lte IE 6]>
<script type="text/javascript" src="http://images1.jyimg.com/w4/msg/js/dd_belatedpng.js?09153"></script>
<script>
    DD_belatedPNG.fix('.ie6png');
</script>
<![endif]-->
<!--mtxx fix-->
<div class="info_center">
	<div class="title">
		<strong>我的照片</strong>
	</div>
	<div class="my_photos">
		<div class="my_userface">
			            <div class="pic" style="position: relative;">
                <h2>我的头像照</h2>
				<div class="image"> <img id="img_mt" src="../../resources/img/zwzp_m_np.jpg"> 
                                </div>
                <!--mtxx fix-->
                <p class="mt2">
					<a onclick="openDiv('upload_photo', 560, 400);" onmousedown="send_jy_pv2('editprofile|uploadphoto|m|122261858');" href="javascript:;">上传照片</a>
                    				</p>

                <!--mtxx fix-->
			</div>
			 <!-- new pic_notice begin-->
            <div class="new_pic_notice">
            	<p class="WLclearfix">
                	<a href="http://upload.jiayuan.com/register/step_new_2.php?to_url=http://www.jiayuan.com/usercp/photo.php" target="_blank" onclick="clickCount(1);" onmousedown="send_jy_pv2('editprofile|change_avatar|m|122261858');" class="new_add_photo"></a><a onclick="openDiv('monolog_div', 709, 490);" class="wl-ml13" href="javascript:;">如何上传好照片</a>
                </p>
                <ul class="notice-refers">
                    <li>有照片会员，收到的<span>信件</span>比没照片的会员多<span>11倍</span></li>
                                        <li>想更加吸引异性目光，
                                            <a href="http://www.jiayuan.com/usercp/service/upgrade.php?from=photo_new" target="_blank" style="color:#0066CD; text-decoration:underline;">开通VIP会员</a>即享无限量上传照片！
                                        </li>
                                    </ul>
            </div>
            <!-- new pic_notice end-->
			<!-- old pic_notice begin-->
			<div class="pic_notice" style="display:none;">
                <a onclick="openDiv('upload_photo', 560, 400);" onmousedown="send_jy_pv2('editprofile|uploadphoto|m|122261858');" href="javascript:;" class="add_photo">上传照片</a><a onclick="openDiv('monolog_div', 709, 490);" href="javascript:;" style="color:#0066CD; text-decoration:underline;" class="up_photo ">如何上传好照片</a>
								<!--<div class="photo_tip">您最多只能上传6张照片，-->
				<div class="photo_tip">想更加吸引异性目光，
									<a href="http://www.jiayuan.com/usercp/service/upgrade.php?src_key=vip_entry_sczp&amp;from=photo_new" onclick="send_jy_pv2('|vip_entry_scgdzp_click|');" target="_blank" style="color:#0066CD; text-decoration:underline;">开通VIP会员</a>即享无限量上传照片！
								</div>
							</div>
			<!-- 我的生活照 -->
			<!-- old pic_notice end-->
			<div class="life_pic">
				<h2>我的生活照</h2>
				<ul id="life_pic">
														<li class="nopic">
						<div class="showpic"><p><img src="../../resources/img/mryz_m_b.jpg" onclick="openDiv('upload_photo', 560, 400);"></p></div>
						<div class="pic_control_2" style="padding:8px 0;"><input class="upload_pic" value="" onclick="openDiv('upload_photo', 560, 400);" type="button"></div>
					</li>
																			<li class="nopic">
						<div class="showpic"><p><img src="../../resources/img/mryz_m_b.jpg" onclick="openDiv('upload_photo', 560, 400);"></p></div>
						<div class="pic_control_2" style="padding:8px 0;"><input class="upload_pic" value="" onclick="openDiv('upload_photo', 560, 400);" type="button"></div>
					</li>
																			<li class="nopic">
						<div class="showpic"><p><img src="../../resources/img/mryz_m_b.jpg" onclick="openDiv('upload_photo', 560, 400);"></p></div>
						<div class="pic_control_2" style="padding:8px 0;"><input class="upload_pic" value="" onclick="openDiv('upload_photo', 560, 400);" type="button"></div>
					</li>
																			<li class="nopic">
						<div class="showpic"><p><img src="../../resources/img/mryz_m_b.jpg" onclick="openDiv('upload_photo', 560, 400);"></p></div>
						<div class="pic_control_2" style="padding:8px 0;"><input class="upload_pic" value="" onclick="openDiv('upload_photo', 560, 400);" type="button"></div>
					</li>
																			<li class="nopic">
						<div class="showpic"><p><img src="../../resources/img/mryz_m_b.jpg" onclick="openDiv('upload_photo', 560, 400);"></p></div>
						<div class="pic_control_2" style="padding:8px 0;"><input class="upload_pic" value="" onclick="openDiv('upload_photo', 560, 400);" type="button"></div>
					</li>
																			<li class="nopic">
						<div class="showpic"><p><img src="../../resources/img/mryz_m_b.jpg" onclick="openDiv('upload_photo', 560, 400);"></p></div>
						<div class="pic_control_2" style="padding:8px 0;"><input class="upload_pic" value="" onclick="openDiv('upload_photo', 560, 400);" type="button"></div>
					</li>
													</ul>
				<div class="cross"></div>
			</div>
			<!-- 照片显示权限设置 -->
			<dl class="pic_set">
				<dt>照片显示权限设置</dt>
									<dd><label for="privacy_1"><input id="privacy_1" checked="checked" onclick="show_photo_privacy_set_div(this.value);" name="privacy" value="1" type="radio">&nbsp;所有人可见</label>
										（会员和访客都可以看到照片）
										</dd>                      
									<dd><label for="privacy_2"><input id="privacy_2" onclick="show_photo_privacy_set_div(this.value);" name="privacy" value="2" type="radio">&nbsp;会员可见</label>
										（注册成为会员的人可以看到照片）
										</dd>                      
									<dd><label for="privacy_3"><input id="privacy_3" onclick="show_photo_privacy_set_div(this.value);" name="privacy" value="3" type="radio">&nbsp;星级会员可见</label>
										（必须提交了证件的会员才能看到照片）
										</dd>                      
									<dd><label for="privacy_5"><input id="privacy_5" onclick="show_photo_privacy_set_div(this.value);" name="privacy" value="5" type="radio">&nbsp;有照片会员可见</label>
										（必须有照片的会员才能看到照片）
										</dd>                      
									<dd><label for="privacy_4"><input id="privacy_4" name="privacy_no" onclick="checked=defaultChecked;openWindow('','','http://www.jiayuan.com/usercp/service/vip_tstc.php?type=4',600,358);" type="radio">&nbsp;需要爱情密码</label>
										（知道密码才能看到照片，限<a href="http://www.jiayuan.com/usercp/charge/upgrade.php?from=photopwd" class="search_tc01" style="color:red;text-decoration:underline" target="_blank">VIP会员</a>使用）
										</dd>                      
								<dd id="show_password" class="love_key" style="display:none">您现在的爱情密码：<strong id="showPass2"></strong>，如需修改<a style="color:#BC008D" href="javascript:show_photo_privacy_set_div(4);">请点这里</a></dd>
				<dd class="love_notice">提示：如需删除爱情密码，重新选择其他显示模式即可。</dd>
				<dd class="set_button"><input class="save" value="保存并继续" onclick="skip()" onmousedown="send_jy_pv2('editprofile|save_photo|m|122261858');" type="button"><input value="跳过此页" class="skip" onclick="skip()" onmousedown="send_jy_pv2('editprofile|skip_photo|m|122261858');" type="button"></dd>
			</dl>
			<!-- 照片显示权限设置结束 -->
		</div>
	</div>
</div>
<div id="bg" style="display:none"></div>
<!--弹出层 start-->
<div class="layer" id="open_window" style="display:none;">
	<div class="layer_box">
		<div class="layer_title" id="open_window_head"><h2><img src="../../resources/img/op_but_close.gif" onclick="closeWindow()" title="关闭"><span id="open_window_title"></span></h2></div>
		<div class="layer_content" id="open_window_content"></div>
		<div id="iframe_loading" style="position: absolute;"><img id="loading_focus" src="../../resources/img/loading.gif"></div>
	</div>
</div>
<!--弹出层 end-->

		<!-- 中间结束 -->
		<!-- 右边开始 -->
		<div class="info_right">
			<h2>资料完整度：<span class="span101203_1">50分</span></h2>
			<div class="integrality"><div class="plan" style="width:50%;">&nbsp;</div></div>
			<div class="preview"><a href="user/selfBasic/${loginUser.userId}" target="_blank">预览资料</a></div>
			<div class="why">
				<h3>为什么要上传照片？</h3>
<p>世纪佳缘统计，有照片的会员征友成功率是无照片会员的<strong style="color:red;"><span style="font-size: 14px;">6</span>倍</strong>！ 清晰生动的照片能为您吸引更多的目光，让更多的异性关注您。</p>
<p>头像照是您在世纪佳缘上最常被其他异性看到的头像照片，90%的会员在搜索时会选择有头像照的会员进行联系。您的头像照会出现在：搜索结果里、信件正文里、异性的佳缘首页里、在线聊天频道里、礼物附言里等等，是异性了解您、进而联系您最为关键的第一印象。</p>

			</div>
			<div class="whybg"></div>
						&nbsp;&nbsp;
			<div id="ad_pos_14"></div>
<!-- 			<script type="text/javascript" src="../../resources/html/ad.htm"></script> -->
						
		</div>
		<!-- 右边结束 -->
	</div>
	<div class="borderbg"><img src="../../resources/img/border_bottom.jpg"></div>
</div>
<!-- 照片描述 -->
<div id="photo_describe" class="photo_describe" style="display:none;">
	<div class="float_content">
		<div class="div_title"><strong>照片描述</strong><img src="../../resources/img/close.png" alt="关闭" onclick="closeDiv('photo_describe');"></div>
		<div class="describe_content">
			<p>照片描述功能仅对星级会员开放，您还不是星级会员，马上升级，获得更多特权！</p>
			<p><a href="http://www.jiayuan.com/usercp/validateemail/certificate.php" target="_blank" onmousedown="send_jy_pv2('editprofile|goto_validate|m|122261858');"><img src="../../resources/img/update.jpg" alt="现在去升级"></a>&nbsp;&nbsp;<a href="javascript:closeDiv('photo_describe');"><img src="../../resources/img/cancel.jpg" alt="取消"></a></p>
		</div>
	</div>
</div>
<!-- 上传照片 -->
<iframe id="upload_photo_iframe" name="upload_photo_iframe" style="width:0px;height:0px;display:none;"></iframe>
<div class="upload_photo" style="display:none;" id="upload_photo">
	<div class="float_content">
		<div class="div_title"><strong>上传照片</strong><img src="../../resources/img/close.gif" alt="关闭" onclick="closeDiv('upload_photo')"></div>
		<!--照片导航 B-->
		<div class="clear"></div>
		<div class="uploadNav">
			<ul class="clearfix">
				<li class="upSelected"><a href="javascript:;">本地照片</a></li>
				<li><a href="javascript:;">网络照片</a></li>
			</ul>
		</div>
		<!--照片导航 E-->
		<div class="upload_content">
			<!--本地照片 B-->
			<div class="localPic" id="localPic">
				<form enctype="multipart/form-data" name="frm_upload" id="frm_upload" method="post" action="http://upload.jiayuan.com/usercp/photoupload.php?type=js" target="upload_photo_iframe">
				<img id="oFileChecker" style="width:0px;height:0px" onload="check_photo_size(0)"><table width="100%" cellpadding="0" cellspacing="0">
				<input name="MAX_FILE_SIZE" id="max_file_size" value="5242880" type="hidden">
				<input name="upload_quick" id="upload_quick" value="0" type="hidden">
								
					<tbody><tr>
						<td width="350">
							<dl id="upfile_containter" class="upfile_containter">
								<dt>选择要上传的照片：</dt>
								<dd>照片1：<input class="file uploadFile" name="upload_file[]" onchange="check_fileszie(this,0);" size="40" style="width:300px;" type="file"></dd>
																<dd>照片2：<input class="file uploadFile" name="upload_file[]" onchange="check_fileszie(this,0);" size="40" style="width:300px;" type="file"></dd>
																								<dd>照片3：<input class="file uploadFile" name="upload_file[]" onchange="check_fileszie(this,0);" size="40" style="width:300px;" type="file"></dd>
																								<dd>照片4：<input class="file uploadFile" name="upload_file[]" onchange="check_fileszie(this,0);" size="40" style="width:300px;" type="file"></dd>
																								<dd>照片5：<input class="file uploadFile" name="upload_file[]" onchange="check_fileszie(this,0);" size="40" style="width:300px;" type="file"></dd>
																								<dd>照片6：<input class="file uploadFile" name="upload_file[]" onchange="check_fileszie(this,0);" size="40" style="width:300px;" type="file"></dd>
															</dl>					
						</td>
						<td style="padding-bottom:7px; padding-bottom:5px\9;_padding-bottom:10px;" valign="bottom" width="180"><span onclick="add_file_item(0)">更多</span></td>
					</tr>
										<tr><td colspan="2"><input class="shangchuan" value="上传照片" onmousedown="" onclick="document.getElementById('upload_quick').value='0';upload_photo(0);" type="button"></td></tr>
									</tbody></table>
				</form>

				<div>
					<strong>温馨提示：</strong>
					<p>1、照片支持格式：jpg、jpeg、gif、png。</p>
					<p>2、您最多可上传<font style="color:#dd4083; font-weight:bold;">6</font>张照片，每张照片大小不要超过<font style="color:#dd4083; font-weight:bold;">5M</font>，如果您的照片过大不能上传，请点击<a href="http://www.jiayuan.com/helpcenter/list.php?type1=1&amp;type2=1&amp;type3=18#art420" target="_blank">这里</a>。</p>
					<p>3、已通过手机号认证的会员，可将照片添加至彩信内容，在主题或文字处输入世纪佳缘，发送到10663355即可(仅限中国移动用户)。</p>
					<p>4、请勿上传：非本人、背影、与现年龄不符、裸露、军装照和带有政治色彩的照片，否则将予以删除，并将取消赠送看信专用邮票。</p>
					<p>5、为获得更好的征友效果，建议您上传正面或微侧面能够完整露出脸庞的照片，不要让墨镜、帽子或头发挡住脸庞。</p>
				</div>
			</div>
			<!--本地照片 E-->
			<!--网络照片 B-->
			<div class="networkPic" id="networkPic">
				<form name="wl_frm_upload" id="wl_frm_upload" method="post" action="http://netpic.jiayuan.com/usercp/photoupload_byurl.php?type=js" target="upload_photo_iframe">
				<img id="wl_oFileChecker" style="width:0px;height:0px" onload="check_photo_size(1)"><table width="100%" cellpadding="0" cellspacing="0">
				<input name="MAX_FILE_SIZE" id="wl_max_file_size" value="5242880" type="hidden">
				<input name="upload_quick" id="wl_upload_quick" value="0" type="hidden">
								
					<tbody><tr>
						<td width="350">
							<dl id="wl_upfile_containter" class="upfile_containter">
								<dt></dt>
								<dd>照片地址：<input class="file uploadFile inputBg" name="wl_upload_file[]" onchange="check_fileszie(this,1);" size="40" style="width:275px;" type="text"></dd>
																<dd>照片地址：<input class="file uploadFile inputBg" name="wl_upload_file[]" onchange="check_fileszie(this,1);" size="40" style="width:275px;" type="text"></dd>
																								<dd>照片地址：<input class="file uploadFile inputBg" name="wl_upload_file[]" onchange="check_fileszie(this,1);" size="40" style="width:275px;" type="text"></dd>
																								<dd>照片地址：<input class="file uploadFile inputBg" name="wl_upload_file[]" onchange="check_fileszie(this,1);" size="40" style="width:275px;" type="text"></dd>
																								<dd>照片地址：<input class="file uploadFile inputBg" name="wl_upload_file[]" onchange="check_fileszie(this,1);" size="40" style="width:275px;" type="text"></dd>
																								<dd>照片地址：<input class="file uploadFile inputBg" name="wl_upload_file[]" onchange="check_fileszie(this,1);" size="40" style="width:275px;" type="text"></dd>
															</dl>					
						</td>
						<td style="padding-bottom:7px; padding-bottom:5px\9;_padding-bottom:10px;" valign="bottom" width="180"><span onclick="add_file_item(1)">更多</span></td>
					</tr>
										<tr><td colspan="2"><input class="shangchuan" value="上传照片" onmousedown="send_jy_pv2('|zpscyd_photo_wlzptc_sczp_rc|');send_jy_pv2('|zpscyd_photo_wlzptc_sczp_rs|122261858');" onclick="document.getElementById('wl_upload_quick').value='0';upload_photo(1);" type="button"></td></tr>
									</tbody></table>
				</form>

				<div>
					<strong>温馨提示：</strong>
					<p>1、您可以将网络相册、空间或博客相册中的照片上传至佳缘相册，照片格式应为：jpg、jpeg、gif、png；大小不超过5MB。</p>
					<p>2、照片粘贴方法：在照片上点击右键，选择“复制图片地址”或“属性-地址”，将图片地址粘贴至输入框中，以http://开始，以.jpg/.jpeg/.gif/.png结束。</p>
					<p>3、部分网络照片可能由于禁止外链、有其他水印等原因无法上传，敬请谅解。</p>
					<p>4、请勿上传：非本人、背影、与现年龄不符、裸露、军装照和带有政治色彩的照片，否则将予以删除，并将取消赠送看信专用邮票。</p>
				</div>
			</div>
			<!--网络照片 E-->
		</div>
	</div>
</div>
<script type="text/javascript">
$(function(){
	    var $div_li =$(".uploadNav ul li");
	    $div_li.click(function(){
			$(this).addClass("upSelected").siblings().removeClass("upSelected");
            var index =  $div_li.index(this);
			$("div.upload_content > div").eq(index).show().siblings().hide(); 
		});
		$(".uploadFile").live("focus",function(){
			$(this).removeClass("inputBg");
		}).live("blur",function(){
			if($(this).val() == ""){
				$(this).addClass("inputBg");
			}
		});
})
</script>
<!-- 如何上传好照片 -->
<div class="monolog_div" id="monolog_div" style="display:none;">
	<!--圆角矩形背景层 开始-->
    <div class="bg100626">
    <b class="bg100625_l l100625_1"></b><b class="bg100625_l l100625_2"></b><b class="bg100625_l l100625_3"></b><b class="bg100625_l l100625_4"></b>
    <div class="bg100626_in"></div>
    <b class="bg100625_l l100625_4"></b><b class="bg100625_l l100625_3"></b><b class="bg100625_l l100625_2"></b><b class="bg100625_l l100625_1"></b>
    </div>
    <!--圆角矩形背景层 结束-->
	<div class="float_content">
		<div class="div_title"><strong>如何上传好照片</strong><img src="../../resources/img/close.png" alt="关闭" onclick="closeDiv('monolog_div')"></div>
		<div class="monolog_content" style="text-align:center">
			<img src="../../resources/img/goodphoto_m.jpg" width="689"><br>
			<!--<img src="http://images1.jyimg.com/w4/usercp/i/iknow.jpg" onClick="closeDiv('monolog_div')" style="cursor:pointer;" />-->
			 <!--new 我知道了begin-->
            <a style="width:129px; height:25px; background:url(http://images1.jyimg.com/w4/usercp/i/new_uploadPic/r3.gif) no-repeat; font-size:14px; font-weight:bold; color:#fff; cursor:pointer; display:inline-block; text-align:center; line-height:25px;" onclick="closeDiv('monolog_div')">我知道了</a>
            <!--new 我知道了end-->
		</div>
	</div>
</div>
<!-- 正在上传 -->
<div id="uploading" class="uploading" style="display:none;">
	<div class="div_title"><strong>正在上传</strong><img src="../../resources/img/close.png" alt="关闭" onclick="closeDiv('uploading')"></div>
	<div class="loading"><img src="../../resources/img/schedule.gif" alt=""><br>文件正在上传，请勿关闭此页</div>
</div>
<!--加急审核支付确认-->
<div class="nxdbLayer470" id="show_pay" style="display:none;">
	<div class="nxdbLayerTitle"><h3>上传照片</h3><a href="javascript:closeDiv('show_pay');openDiv('upload_photo',560,400)" class="nxdbLayerClose"></a></div>
  <div class="nxdbLayerText" style="margin-bottom:30px;">加急审核将在30分钟内审核您的照片，需要支付<b class="fense">1</b>张佳缘邮票（2元人民币）。您账户中还有0张佳缘邮票。</div>
    <table class="nxdbLayerTable" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td style="padding-right:10px;"><a href="javascript:;" onclick="upload_photo_quick(0);" class="nxdbLayerButton1">确认支付</a></td>
        <td style="padding-right:10px;"><a href="javascript:;" onclick="closeDiv('show_pay');openDiv('upload_photo',560,400)" class="nxdbLayerZbxg">取消</a></td>
      </tr>
    </tbody></table>
</div>
<!--加急审核支付确认--网络照片-->
<div class="nxdbLayer470" id="wl_show_pay" style="display:none;">
	<div class="nxdbLayerTitle"><h3>上传照片</h3><a href="javascript:closeDiv('wl_show_pay');openDiv('upload_photo',560,400)" class="nxdbLayerClose"></a></div>
  <div class="nxdbLayerText" style="margin-bottom:30px;">加急审核将在30分钟内审核您的照片，需要支付<b class="fense">1</b>张佳缘邮票（2元人民币）。您账户中还有0张佳缘邮票。</div>
    <table class="nxdbLayerTable" border="0" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td style="padding-right:10px;"><a href="javascript:;" onclick="upload_photo_quick(1);" class="nxdbLayerButton1">确认支付</a></td>
        <td style="padding-right:10px;"><a href="javascript:;" onclick="closeDiv('wl_show_pay');openDiv('upload_photo',560,400)" class="nxdbLayerZbxg">取消</a></td>
      </tr>
    </tbody></table>
</div>

<!--美图秀秀-->
<!--<div style="display: none;" class="my_hidder_layer">-->
    <div id="mtxx-swf" class="mtxx-swf" style="display: none;">
<!--     shanf -->
<!--         <object data="myphoto_files/PhotoEditor.swf" name="lite" id="lite" type="application/x-shockwave-flash" height="600" width="700"><param value="false" name="menu"><param value="noScale" name="scale"><param value="true" name="allowFullscreen"><param value="always" name="allowScriptAccess"><param value="#FFFFFF" name="bgcolor"><param value="window" name="wmode"><param value="http://open.web.meitu.com/sources/light/" name="base"><param value="source=plugin&amp;initFun=xiuxiu._init&amp;changeFlashHeightFun=xiuxiu._setHeight&amp;mouseWheelFun=xiuxiu._mouseWheel&amp;imageLoadedFun=xiuxiu._imageLoaded&amp;uploadFun=xiuxiu._upload&amp;beforeUploadFun=xiuxiu._beforeUpload&amp;uploadResponseFun=xiuxiu._uploadResponse&amp;batchUploadResponseFun=xiuxiu._batchUploadResponseFun&amp;batchUploadCompleteFun=xiuxiu._batchUploadCompleteFun&amp;saveBase64ImageFun=xiuxiu._saveBase64Image&amp;browseFun=xiuxiu._browse&amp;browseCancelFun=xiuxiu._browseCancel&amp;closePhotoEditorFun=xiuxiu._close&amp;debugFun=xiuxiu._debug&amp;language=zh&amp;uploadBtnLabel=保存" name="flashvars"></object> -->
    </div>
<!--</div>-->
<script type="text/javascript">
var DKL = my_getbyid;
var nowPrivacy = 1;
var nowPassWord = '';
var start = false;
var nowFxkjSet = 'off';

function get_photo_privacy_set_div_id(value, nowValue)
{
    var id;
    if (value == 4) {
        if (nowValue == 4) {
            id = 'photo_set_mask_4_2';
        } else {
            id = 'photo_set_mask_4_1';
        }
        id = 'photo_set_mask_4_1'; //改为密码都用这个层
    } else {
        id = 'photo_set_mask_' + value;
    }
    return id;
}
function show_photo_privacy_set_div(value)
{
    var id = get_photo_privacy_set_div_id(value, nowPrivacy);
    openDiv(id);
}
function close_photo_privacy_set_div(id)
{
    closeDiv(id);
    id = 'privacy_' + nowPrivacy;
    DKL(id).checked = 'checked';
}
function save_photo_privacy_set(value, pass, fxkj)
{
    if (value < 1 || value > 5) {
        alert('设置参数错误！');
        return;
    }
    var param = '?value=' + value;
    if (value == 4) {
        var have_pw = 0, have_fxkj = 0;
        if (pass.length > 0 && pass != nowPassWord) {
            if (/=|&|#|\s/.test(pass)) {
                alert('爱情密码中含有非法字符！');
                return;
            }
			if(/[\u4E00-\u9FA5]/g.test(pass)){
				alert('爱情密码中请不要包含中文汉字');
				return;
			}
            param += '&pass=' + pass;
            have_pw = 1;
        }
        if (fxkj.length > 1 && fxkj != nowFxkjSet) {
            if (fxkj != 'on' && fxkj != 'off') {
                alert('主动发信对方可见选项设置错误！');
                return;
            }
            param += '&fxkj_set=' + fxkj;
            have_fxkj = 1;
        }
        if (have_pw == 0 && have_fxkj == 0 && nowPrivacy == 4) {
            alert('需要爱情密码选项设置未改变！');
            return;
        }
    }
	if(start == true) {return;}
	var xmlHttp = initAjax();
	if(typeof(xmlHttp)!="object") {
		alert("Your browser does not support ajax");
		return;
	}
	start = true;
	var url = "save_privacy.php" + param;
	if (start) {
		xmlHttp.onreadystatechange=function() {
			if(xmlHttp.readyState==4 && xmlHttp.status==200) {
				var Result = xmlHttp.responseText;
				Result = Math.ceil(Result);
                if (Result == -1) {
                    alert('登录已超时，请登录后再修改！'); 
                }
                if (Result == -2) {
                    alert('照片隐私设置参数无效！');
                }
				if(Result == -4){
					alert('爱情密码中请不要包含中文汉字! ');
				}
                if (Result == 0) {
                    nowPrivacy = value;
                    if (value == 4) {
                        if (have_pw == 1) {
                            nowPassWord = pass;
                        }
                        if (have_fxkj == 1) {
                            nowFxkjSet = fxkj;
                            if (fxkj == 'on') {
                                DKL('fxkj_set_1').checked = true;
                                DKL('fxkj_set_2').checked = true;
                            } else {
                                DKL('fxkj_set_1').checked = false;
                                DKL('fxkj_set_2').checked = false;
                            }
                        }
                    }
                    if (value == 4) {
                        closeDiv('photo_set_mask_4_1');
                        closeDiv('photo_set_mask_4_2');
                    } else {
                        var id = get_photo_privacy_set_div_id(value, nowPrivacy);
                        closeDiv(id);
                    }
                    openDiv('photo_set_mask_close');
                    changePasswordShow();
                }
				start = false;
			}
		}
		xmlHttp.open("GET", url, true);
		xmlHttp.send(null);
	}
}
function save_photo_privacy_password(which)
{
    if (which != 1 && which != 2) {
        return -1;
    }
    var sendmailsetId = 'fxkj_set_' + which; 
    var fxkj_set;
    if (DKL(sendmailsetId).checked) {
        fxkj_set = 'on';
    } else {
        fxkj_set = 'off';
    }
    if (fxkj_set == nowFxkjSet) {
        fxkj_set = '';
    }
    if (which == 1) {
        var passwordId = 'password_' + which;
        var password = DKL(passwordId).value;
    } else {
        var password = '';
    }

    save_photo_privacy_set(4, password, fxkj_set);
}
function changePasswordShow()
{
    DKL('showPass').innerHTML = nowPassWord;
    DKL('showPass2').innerHTML = nowPassWord;
    DKL('password_1').value = nowPassWord;
    if (nowPrivacy == 4) {
        DKL('show_password').style.display = '';
    } else {
        DKL('show_password').style.display = 'none';
    }
}
</script>

<div class="photo_purview" id="photo_set_mask_1" style="display:none">
	<!--圆角矩形背景层 开始-->
	<div class="bg100627">
	<b class="bg100625_l l100625_1"></b><b class="bg100625_l l100625_2"></b><b class="bg100625_l l100625_3"></b><b class="bg100625_l l100625_4"></b>
	<div class="bg100627_in"></div>
	<b class="bg100625_l l100625_4"></b><b class="bg100625_l l100625_3"></b><b class="bg100625_l l100625_2"></b><b class="bg100625_l l100625_1"></b>
	</div>
	<!--圆角矩形背景层 结束-->
	<div class="float_content">
		<div class="div_title"><strong>照片显示权限设置</strong><img src="../../resources/img/close.jpg" alt="关闭" onclick="close_photo_privacy_set_div('photo_set_mask_1')"></div>
		<div class="div091014inbox">
			<p class="t t14">是否保存照片显示模式为所有人可见？</p>
			<p class="btn"><a href="javascript:save_photo_privacy_set(1,%20'');">确 定</a><a href="javascript:close_photo_privacy_set_div('photo_set_mask_1')" class="lan">取 消</a></p>
		</div>
	</div>
</div>


<div class="photo_purview" id="photo_set_mask_2" style="display:none">
	<!--圆角矩形背景层 开始-->
	<div class="bg100627">
	<b class="bg100625_l l100625_1"></b><b class="bg100625_l l100625_2"></b><b class="bg100625_l l100625_3"></b><b class="bg100625_l l100625_4"></b>
	<div class="bg100627_in"></div>
	<b class="bg100625_l l100625_4"></b><b class="bg100625_l l100625_3"></b><b class="bg100625_l l100625_2"></b><b class="bg100625_l l100625_1"></b>
	</div>
	<!--圆角矩形背景层 结束-->
	<div class="float_content">
		<div class="div_title"><strong>照片显示权限设置</strong><img src="../../resources/img/close.jpg" alt="关闭" onclick="close_photo_privacy_set_div('photo_set_mask_2')"></div>
		<div class="div091014inbox">
			<p class="t t14">是否保存照片显示模式为会员可见？</p>
			<p class="btn"><a href="javascript:save_photo_privacy_set(2,%20'');">确 定</a><a href="javascript:close_photo_privacy_set_div('photo_set_mask_2')" class="lan">取 消</a></p>
		</div>
	</div>
</div>


<div class="photo_purview" id="photo_set_mask_5" style="display:none">
	<!--圆角矩形背景层 开始-->
	<div class="bg100627">
	<b class="bg100625_l l100625_1"></b><b class="bg100625_l l100625_2"></b><b class="bg100625_l l100625_3"></b><b class="bg100625_l l100625_4"></b>
	<div class="bg100627_in"></div>
	<b class="bg100625_l l100625_4"></b><b class="bg100625_l l100625_3"></b><b class="bg100625_l l100625_2"></b><b class="bg100625_l l100625_1"></b>
	</div>
	<!--圆角矩形背景层 结束-->
	<div class="float_content">
		<div class="div_title"><strong>照片显示权限设置</strong><img src="../../resources/img/close.jpg" alt="关闭" onclick="close_photo_privacy_set_div('photo_set_mask_5')"></div>
		<div class="div091014inbox">
			<p class="t t14">是否保存照片显示模式为有照片会员可见？</p>
			<p class="btn"><a href="javascript:save_photo_privacy_set(5,%20'');">确 定</a><a href="javascript:close_photo_privacy_set_div('photo_set_mask_5')" class="lan">取 消</a></p>
		</div>
	</div>
</div>


<div class="photo_purview" id="photo_set_mask_3" style="display:none">
	<!--圆角矩形背景层 开始-->
	<div class="bg100627">
	<b class="bg100625_l l100625_1"></b><b class="bg100625_l l100625_2"></b><b class="bg100625_l l100625_3"></b><b class="bg100625_l l100625_4"></b>
	<div class="bg100627_in"></div>
	<b class="bg100625_l l100625_4"></b><b class="bg100625_l l100625_3"></b><b class="bg100625_l l100625_2"></b><b class="bg100625_l l100625_1"></b>
	</div>
	<!--圆角矩形背景层 结束-->
	<div class="float_content">
		<div class="div_title"><strong>照片显示权限设置</strong><img src="../../resources/img/close.jpg" alt="关闭" onclick="close_photo_privacy_set_div('photo_set_mask_3')"></div>
		<div class="div091014inbox">
			<p class="t t14">据统计，设置星级会员可见的会员收信量会下降90％以上。</p>
			<p class="btn"><a href="javascript:save_photo_privacy_set(3,%20'');">确 定</a><a href="javascript:close_photo_privacy_set_div('photo_set_mask_3')" class="lan">取 消</a></p>
		</div>
	</div>
</div>


<div class="photo_purview" id="photo_set_mask_4_1" style="display:none">
	<!--圆角矩形背景层 开始-->
	<div class="bg100627">
	<b class="bg100625_l l100625_1"></b><b class="bg100625_l l100625_2"></b><b class="bg100625_l l100625_3"></b><b class="bg100625_l l100625_4"></b>
	<div class="bg100627_in"></div>
	<b class="bg100625_l l100625_4"></b><b class="bg100625_l l100625_3"></b><b class="bg100625_l l100625_2"></b><b class="bg100625_l l100625_1"></b>
	</div>
	<!--圆角矩形背景层 结束-->
	<div class="float_content">
		<div class="div_title"><strong>照片显示权限设置</strong><img src="../../resources/img/close.jpg" alt="关闭" onclick="close_photo_privacy_set_div('photo_set_mask_4_1')"></div>
		<div class="div091014inbox">
			<p class="t t14">据统计，设置爱情密码的会员收信量会大幅度下降。</p>
			<p class="l">
			<input style="display:none" name="fxkj_set_1" id="fxkj_set_1" type="checkbox"><!--我主动发信联系的人，无需密码即可看到我的照片。<br/>-->

			请输入您的爱情密码：<input name="password_1" id="password_1" type="text">
			</p>
			<p class="btn"><a href="javascript:save_photo_privacy_password(1);">确 定</a><a href="javascript:close_photo_privacy_set_div('photo_set_mask_4_1')" class="lan">取 消</a></p>
		</div>
	</div>
</div>


<div class="photo_purview" id="photo_set_mask_4_2" style="display:none">
	<!--圆角矩形背景层 开始-->
	<div class="bg100627">
	<b class="bg100625_l l100625_1"></b><b class="bg100625_l l100625_2"></b><b class="bg100625_l l100625_3"></b><b class="bg100625_l l100625_4"></b>
	<div class="bg100627_in"></div>
	<b class="bg100625_l l100625_4"></b><b class="bg100625_l l100625_3"></b><b class="bg100625_l l100625_2"></b><b class="bg100625_l l100625_1"></b>
	</div>
	<!--圆角矩形背景层 结束-->
	<div class="float_content">
		<div class="div_title"><strong>照片显示权限设置</strong><img src="../../resources/img/close.jpg" alt="关闭" onclick="close_photo_privacy_set_div('photo_set_mask_4_2')"></div>
		<div class="div091014inbox">
			<p class="t t14">据统计，设置爱情密码的会员收信量会大幅度下降。</p>
			<p class="l">
			<input name="fxkj_set_2" style="display:none" id="fxkj_set_2" type="checkbox"><!--我主动发信联系的人，无需密码即可看到我的照片。<br/>-->
			您现在的爱情密码：<strong id="showPass"><script>document.write(nowPassWord)</script></strong>，如需修改请<a href="javascript:closeDiv('photo_set_mask_4_2');openDiv('photo_set_mask_4_1')">点这里</a></p>
			<p class="btn"><a href="javascript:save_photo_privacy_password(2);">确 定</a><a href="javascript:close_photo_privacy_set_div('photo_set_mask_4_2')" class="lan">取 消</a></p>
		</div>
	</div>
</div>


<div class="photo_purview" id="photo_set_mask_close" style="display:none; height:200px;">
	<!--圆角矩形背景层 开始-->
	<div class="bg100627">
	<b class="bg100625_l l100625_1"></b><b class="bg100625_l l100625_2"></b><b class="bg100625_l l100625_3"></b><b class="bg100625_l l100625_4"></b>
	<div class="bg100627_in"></div>
	<b class="bg100625_l l100625_4"></b><b class="bg100625_l l100625_3"></b><b class="bg100625_l l100625_2"></b><b class="bg100625_l l100625_1"></b>
	</div>
	<!--圆角矩形背景层 结束-->
	<div class="float_content">
		<div class="div_title"><strong>照片显示权限设置</strong><img src="../../resources/img/close.jpg" alt="关闭" onclick="close_photo_privacy_set_div('photo_set_mask_close')"></div>
		<div class="div091014inbox">
			<p class="t t14">照片显示模式保存成功</p>
			<p class="btn"><a href="javascript:close_photo_privacy_set_div('photo_set_mask_close')" class="lan lan102103">关 闭</a></p>
		</div>
	</div>
</div>
<iframe style="display:none;" name="mobile_pay_ifr" id="mobile_pay_ifr" scrolling="no" allowtransparency="true" frameborder="0" height="600" width="654"></iframe>
<script type="text/javascript" src="../../resources/js/MaskDiv.js"></script>
<script type="text/javascript">
function open_pay(callback){
	document.getElementById('mobile_pay_ifr').src = "http://www.jiayuan.com/usercp/mobile_pay.php?js_back="+callback;
	document.getElementById('mobile_pay_ifr').style.width="654px";
	openMaskDiv('mobile_pay_ifr',600,300,0,1);
}
var reg_host_const_flag = 0;
var reg_host_const_test = 0;
var reg_host_domain = document.domain;

function setDomainForIframe(){ 
   if(reg_host_const_flag == 0 || reg_host_const_flag == 7) {
      if(reg_host_const_test == 1){ 
	     document.domain = 'miuu.'+'cn';
	  }else{
	     document.domain = 'jiayuan.com';
	  }
   }else{
	  if(reg_host_const_test == 1){ 
	     document.domain = 'miuu.'+'cn';
	  }else{
		 document.domain = 'msn.com.cn';
	  }
   }
}

</script>

<script type="text/javascript" src="../../resources/js/foot.js"></script><script type="text/javascript" src="../../resources/js/w4-simple.js"></script><style type="text/css">
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
</script><img src="../../resources/img/a.gif" style="display:none"> 
<noscript> 
<img src="http://b.scorecardresearch.com/p?c1=2&c2=15205083&cv=2.0&cj=1" /> 
</noscript> 
<!-- End comScore Tag -->     </div>
</div>
<style type="text/css">
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
        <!--<a class="guide_db"></a>-->
        <a class="guide_zc" href="###" target="_blank"></a>
        <a class="guide_dl" href="###"></a>
    </div>
    <a class="fixPNG guide_close" href="javascript:void(0)"></a>
</div>
<script type="text/javascript">
//开启未登录底部状态条判断
if(typeof(HEAD_USER) != 'undefined' && HEAD_USER.uid == 0){
var jy_foot_layer = {};
jy_foot_layer.is_layer_show = true;		//默认开启底通条
jy_foot_layer.session_hash = jy_head_function.get_cookie('SESSION_HASH');
//配置底通浮层
jy_foot_layer.set_config = function(){
var hide_cfg = [];
}
//关闭底通浮层
jy_foot_layer.layer_close = function(){
if(document.getElementById('common_footer_guide')){
document.getElementById('common_footer_guide').style.display = 'none';//如果登录弹层打开，无论底通条什么状态，一律关闭
}
};
//判断登录层是否隐藏
jy_foot_layer.is_login_window_show = function(){
if(typeof(loginWindow) == 'undefined' ){
return false;
}else{
return loginWindow.isOpen();
}
};
//重写登录弹层的onOpen事件，实现底部条与登录层展示互斥
if(typeof(loginWindow) != 'undefined'){
loginWindow.onOpen = function(){
jy_foot_layer.layer_close();
};
}
//显示底部状态条
jy_foot_layer.common_guide = function(){
var common_footer_guide = jQuery('#common_footer_guide'),
win = $(window),
triggerScrollTop = 300,
set_footer_guide = function(){
if(win.scrollTop() > triggerScrollTop){
if(jy_foot_layer.is_layer_show && !jy_foot_layer.is_login_window_show()){
common_footer_guide.fadeIn();
}
}else{
common_footer_guide.fadeOut();
};
};
common_footer_guide.find('.guide_close').bind('click', function(){
jy_foot_layer.is_layer_show = false;
common_footer_guide.hide();
});
win.bind('load scroll resize', set_footer_guide);
url = encodeURI(window.location.href);
jQuery(".guide_qq").attr("href","http://www.jiayuan.com/general/t/?forward=qqAware&c=101&p=1&url="+url);
jQuery(".guide_wb").attr("href","http://www.jiayuan.com/general/t/?forward=sinaAware&c=101&p=2&url="+url);
jQuery(".guide_bd").attr("href","http://www.jiayuan.com/general/t/?forward=baiduOauth&c=101&p=3&url="+url);
jQuery(".guide_zf").attr("href","http://www.jiayuan.com/general/t/?forward=alipayOauth&c=101&p=4&url="+url);
jQuery(".guide_rr").attr("href","http://www.jiayuan.com/general/t/?forward=renrenAware&c=101&p=5&url="+url);
jQuery(".guide_kx").attr("href","http://www.jiayuan.com/general/t/?forward=kaixinAware&c=101&p=6&url="+url);
jQuery(".guide_dl").attr("href","http://login.jiayuan.com/?channel=1001&position=1001&pre_url="+url);
jQuery(".guide_zc").attr("href","http://reg.jiayuan.com/?bd=1001");
jQuery(".guide_qq").mousedown(function(){jy_head_function.click_pv('|common_footer_login_qq|'+jy_foot_layer.session_hash);});
jQuery(".guide_wb").mousedown(function(){jy_head_function.click_pv('|common_footer_login_wb|'+jy_foot_layer.session_hash);});
jQuery(".guide_bd").mousedown(function(){jy_head_function.click_pv('|common_footer_login_bd|'+jy_foot_layer.session_hash);});
jQuery(".guide_zf").mousedown(function(){jy_head_function.click_pv('|common_footer_login_zf|'+jy_foot_layer.session_hash);});
jQuery(".guide_rr").mousedown(function(){jy_head_function.click_pv('|common_footer_login_rr|'+jy_foot_layer.session_hash);});
jQuery(".guide_kx").mousedown(function(){jy_head_function.click_pv('|common_footer_login_kx|'+jy_foot_layer.session_hash);});
jQuery(".guide_dl").mousedown(function(){jy_head_function.click_pv('|common_footer_login_btn|'+jy_foot_layer.session_hash);});
jQuery(".guide_zc").mousedown(function(){jy_head_function.click_pv('|common_footer_reg_btn|'+jy_foot_layer.session_hash);});
jQuery(".guide_close").mousedown(function(){jy_head_function.click_pv('|common_footer_close_btn|'+jy_foot_layer.session_hash);});
};
if(typeof(jQuery) == 'undefined' || parseFloat(jQuery.fn.jquery) < 1.4){
//加载jquery
jy_foot_layer.include_doc = document.getElementsByTagName('head')[0];
jy_foot_layer.include_js = document.createElement('script');
jy_foot_layer.include_js.setAttribute('type', 'text/javascript');
jy_foot_layer.include_js.setAttribute('src', "http://images1.jyimg.com/w4/common/j/jquery-1.7.2.min.js");
jy_foot_layer.include_doc.appendChild(jy_foot_layer.include_js);
if(document.all){//如果是IE
jy_foot_layer.include_js.onreadystatechange = function(){
if(jy_foot_layer.include_js.readyState == 'loaded' || jy_foot_layer.include_js.readyState == 'complete'){
jy_foot_layer.common_guide();
}
}
}else{
jy_foot_layer.include_js.onload = function(){
jy_foot_layer.common_guide();
}
}
}else{
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
	<style type="text/css"> 	*{margin:0;padding:0;}	.winpopfoot{width:284px;height:203px;overflow:hidden;word-wrap:break-word;word-break:break-all;font-size:12px;font-family:Arial,SimSun;color:#636363;}	.pngforsjjy{behavior:expression((T=this,T.runtimeStyle.behavior="none")&&(T.p?0:((T.runtimeStyle.backgroundImage = "none",T.runtimeStyle.filter ="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+T.src+"',sizingMethod='image')",T.src = "http://images.jiayuan.com/w3/global/i/bg.gif")),T.p=1));}	.winpopfoot em,.winpopfoot span,.winpopfoot strong{font-weight:normal;font-style:normal;font-size:12px;}	.winpopfoot_box{position:absolute;top:8px;left:10px;width:264px;height:192px;overflow:hidden;border-bottom:3px solid #E876B2;background:url(http://images1.jyimg.com/w4/index/i/bg100804_02.gif) repeat-x 0 -100px;}	.winpopfoot_t{width:264px;height:30px;overflow:hidden;}	.winpopfoot_t em{float:left;width:67px;height:25px;overflow:hidden;margin:5px 0 0 10px;cursor:pointer;}	.winpopfoot_t em strong{width:67px;height:25px;display:block;line-height:25px;font-weight:bold;text-align:center;}	.winpopfoot_t em strong.str2{position:relative;}	.winpopfoot_t em.on{background:url(http://images1.jyimg.com/w4/index/i/bg100804_01.gif) no-repeat 0 0;}	.winpopfoot_t em.on strong.str1{color:#DCDCDC;}	.winpopfoot_t em.on strong.str2{top:-26px;color:#444444;}	.winpopfoot_t em.over strong.str1{color:#C23174;}	.winpopfoot_t em.over strong.str2{top:-24px;color:#FFFFFF;}	.winpopfoot_t span{float:right;width:18px;height:18px;overflow:hidden;margin:7px 5px 0 0;cursor:pointer;background-image:url(http://images1.jyimg.com/w4/index/i/bg100804_01.gif);}	.winpopfoot_t span.sp1{background-position:-70px 0;}	.winpopfoot_t span.sp2{background-position:-90px 0;}	.winpopfoot_t span.sp3{background-position:-110px 0;}	.winpopfoot_c{width:258px;height:162px;overflow:hidden;margin:0 auto;background:#FFFDFD;}	.winpopfoot_c dl{width:228px;height:140px;margin:10px auto 0;overflow:hidden;line-height:20px;}	.winpopfoot_c dd{width:100%;text-align:left;}	.winpopfoot_c dd.martop15{margin-top:15px;}	.winpopfoot_c dd span{float:right;width:100%;text-align:right;}	.winpopfoot_c dd a,.winpopfoot_c dd a:hover{color:#BC0073;text-decoration:underline;}	.winpopfoot_c dd img{display:block;margin:0 auto;border:none;}	</style>		<div style="position: absolute; z-index: 99999; overflow: hidden; border-width: 0px; width: 280px; height: 0px; right: 0px; bottom: 0px; top: 699px; left: 1263px; display: none;" id="bulletin"> 		<div class="winpopfoot" style="position:absolute;z-index:2;left:0;" id="pop_div"> 	<img src="../../resources/img/bg100804.png" class="pngforsjjy"> 	<div class="winpopfoot_box"> 	<div class="winpopfoot_t"> 	<span class="sp2" title="关闭" onclick="_close();" id="closeButton"></span> 	<span class="sp3" title="最大化" onclick="_mini();" id="switchButton"></span> 	<em id="div_1" class="on"><div><div id="link_1"><strong class="str1">互动消息</strong><strong class="str2">互动消息</strong></div></div></em> 	<em id="div_3" class="over"><div><div id="link_3"><strong class="str1">最新活动</strong><strong class="str2">最新活动</strong></div></div></em> 	</div>	<div class="winpopfoot_c"> 	<dl> 	<dd style="" id="con_1" class="martop15"><img src="../../resources/img/logo_prompt_002.jpg"></dd> 	<dd style="display: none;" id="con_2" class="martop15"></dd> 	<dd style="display: none;" id="con_3"><img src="../../resources/img/logo_prompt_002.jpg"></dd> 	</dl> 	<iframe scrolling="no" id="run_fra" name="run_fra" src="" frameborder="0" height="0" width="0"></iframe> 	</div> 	 	</div> 	</div> 	 	</div> 	<script type="text/javascript" src="../../resources/js/pop.js"></script><div id="bgdiv_foot" style="position:absolute;display:none; left:0px; top:0px; width:100%; height:100%; filter:alpha(opacity=30); opacity:0.3; background-color:#000000; z-index:12000;"></div> <div class="dragdiv" id="bg_div_float_foot" style="z-index:12001;position:absolute;top:0px;left:0px;display:none"></div><script src="../../resources/js/pop_template.php"></script><script src="../../resources/js/jyim2.js"></script><link href="../../resources/css/jyim3.css" type="text/css" rel="stylesheet"><div class="im_bar_min" style="display: block;" id="im_bar"><div t="#im_friend" id="contact" class="im_btn fr im_btn_last oneCity pr im_attached_pop"><a class="im_inner_btn">联系人</a><span style="display: none;" class="amount fl"><span class="amount_leftBg fl"></span><span class="amount_centerBg fl">0</span><span class="amount_rightBg fl"></span></span><div id="im_friend" class="im_win im_samecity_div"><div class="pr im_win_title webimTop"><ul><li class="oning">初次联系</li><li>关注</li><li>好友</li></ul><div class="im_t_close webimClose"></div></div><div class="im_list"><div class="webimZaixian"><div class="webimZaixianRS">在线（<span></span><span></span><span></span>）</div><div class="webimCakanquanbu"><a href="###">查看全部&gt;&gt;</a></div></div><div class="webimList"><ul></ul><ul></ul><ul></ul></div><div class="im_loading"><table><tbody><tr><td><img src="../../resources/img/loading_002.gif"><span>正在加载，请稍候</span></td></tr></tbody></table></div><div class="webimListAnzhuang"><a href="#">安装佳缘佳信3.0，与她免费视频聊天</a></div></div></div></div><div t="#im_chatx" id="onlineTalk" class="im_btn fr im_btn_second onlineTalk pr im_attached_pop"><a class="im_inner_btn">聊天</a><span style="display: none;" class="amount fl"><span class="amount_leftBg fl"></span><span class="amount_centerBg fl">0</span><span class="amount_rightBg fl"></span></span><div id="im_chatx" class="im_win onlineTalk_content"><div class="pr im_win_title onlineTalk_content_title"><div class="title_leftBg fl"></div><h1 class="title_centerBg">聊天</h1><div class="title_rightBg fl"><a class="pr im_t_close"></a><a target="_blank" href="http://webim.jiayuan.com/messages.php" class="notes">查看全部聊天记录</a></div></div><div class="im_list"><div id="im_rec_chat_con"><span class="im_list_no_chat">暂无未读消息</span><div class="im_rec_chat"><img><span>和我聊天</span></div><div class="im_rec_chat"><img><span>和我聊天</span></div><div class="im_rec_chat"><img><span>和我聊天</span></div></div></div></div></div><div t="#im_msgx" class="im_btn fr im_btn_first message pr im_attached_pop"><a class="im_inner_btn">消息</a><span style="display: none;" class="amount fl"><span class="amount_leftBg fl"></span><span class="amount_centerBg fl">0</span><span class="amount_rightBg fl"></span></span><div id="im_msgx" class="im_win message_content"><div class="pr im_win_title message_content_title"><div class="title_leftBg fl"></div><h1 class="title_centerBg">消息</h1><div class="title_rightBg fl"><a class="pr im_t_close"></a></div></div><div class="im_list"><img class="im_jy_logo" src="../../resources/img/logo_prompt.jpg"></div></div></div><div class="im_btn fr letter"><a href="../../msg/notRead" target="_blank" class="im_inner_btn">收件箱</a><span style="display: inline;" class="amount fl"><span class="amount_leftBg fl"></span><span class="amount_centerBg fl">13</span><span class="amount_rightBg fl"></span></span></div><div style="display: none; margin-bottom: 0px;" id="im_pop_win" class="pa im_win"><div class="im_title"><div class="im_t_tab">互动消息</div><div class="im_t_tab">交友活动</div><div class="title_rightBg fr im_t_close"></div></div><div class="im_pop_content"><img src="../../resources/img/logo_prompt.jpg"></div><div class="im_pop_content"><img src="../../resources/img/logo_prompt.jpg"></div></div><div style="display: none; margin-bottom: 0px;" class="im_yfms_tpl0" id="im_yfms"></div><div style="display: none; margin-bottom: 0px;" id="im_chat_pop_win" class="pa im_win"><div class="im_chat_win_title"><div class="im_chat_win_nick"></div><div class="fr im_t_close"></div></div><div class="im_chat_win_content  im_pop_content"><div><span></span><span><a class="im_tosee_chatmsg">查看详情</a></span></div></div></div><div style="display: none; margin-bottom: 0px;" id="im_zhuanti"></div><div style="display: none; margin-bottom: 0px;" id="im_profile_pop_win"><div class="dzhLayer"><div class="dzhLayer_top"><a href="javascript:void(0);" class="im_t_close dzhLayer_close">&nbsp;</a><div class="dzhLayer_set"><a href="javascript:void(0);" class="dzhLayer_bxs" style="display: none;">今日不再提醒</a></div></div><div class="dzhLayer_text"><p>对方在线，和TA聊聊吧</p></div><div class="dzhLayer_icon"><div class="dzhLayer_iconImg"><a href="javascript:void(0);" class="hi"><span></span><div class="tishilayer1"><p class="tishilayer_hi">想了解你更多,可以聊聊么?</p></div></a><a href="javascript:void(0);" class="face"><span></span><div class="tishilayer2"><p class="tishilayer_face">想了解你更多,可以聊聊么?</p></div></a><a href="javascript:void(0);" class="flower"><span></span><div class="tishilayer3"><p class="tishilayer_flower">想了解你更多,可以聊聊么?</p></div></a><a href="javascript:void(0);" class="heart"><span></span><div class="tishilayer4"><p class="tishilayer_xin">想了解你更多,可以聊聊么?</p></div></a></div><div class="dzhLayer_loading"><img src="../../resources/img/jx3_loading.gif">发送中...</div><div class="dzhLayer_loaded"><img src="../../resources/img/send_ok.gif">发送成功</div></div></div></div><div style="display: none; margin-bottom: 0px; height: 91px;" id="im_jiaxin_pop_win"><div class="jx3_0_1_adv jx3_2_1_adv4"><div class="jx3_0_1_advTop"><a href="javascript:void(0);" class="im_t_close jx3_0_1_advClose">&nbsp;</a></div><div class="jx3_0_1_advBody"><a href="http://im.jiayuan.com/?from=rightbottom" target="_blank" class="jx3_0_1_advButton">&nbsp;</a></div></div></div><div t="#im_myjy" class="im_btn fl myJiayuan pr im_attached_pop"><a class="im_inner_btn">我的服务</a><div id="im_myjy" class="im_win myjiayuan_content"><div class="pr im_win_title myjiayuan_content_title"><div class="title_leftBg fl"></div><h1 class="title_centerBg">我的服务</h1><div class="title_rightBg fl"><a class="pr im_t_close"></a></div></div><div class="im_list"></div></div></div><ul class="fl im_service_list" id="service_list"><li class="jystamp" title="佳缘邮票"><a target="_blank" href="http://www.jiayuan.com/usercp/center/index.php">佳缘邮票</a></li><li class="speedpost" title="特快专递"><a target="_blank" href="http://www.jiayuan.com/msgapp/ems/?a=info">特快专递</a></li><li class="diamond_g" title="钻石会员"><a target="_blank" href="http://www.jiayuan.com/usercp/service/bmsg_tg2.php">钻石会员</a></li><li class="vip_g" title="VIP会员"><a target="_blank" href="http://www.jiayuan.com/usercp/service/upgrade.php">VIP会员</a></li><li class="readmail_g" title="看信包月"><a target="_blank" href="http://www.jiayuan.com/usercp/service/bmsg.php">看信包月</a></li><li class="forground_g" title="排名提前"><a target="_blank" href="http://www.jiayuan.com/usercp/service/priority.php">排名提前</a></li><li class="express_g" title="超级聚光灯"><a target="_blank" href="http://www.jiayuan.com/usercp/fate_express.php">超级聚光灯</a></li></ul><div t="#im_jyapp" class="im_btn fl jiayuanCenter pr im_attached_pop"><a class="im_inner_btn">佳缘应用</a><div id="im_jyapp" class="im_win jiayuanCenter_content"><div class="pr im_win_title jiayuanCenter_content_title"><div class="title_leftBg fl"></div><h1 class="title_centerBg">佳缘应用</h1><div class="title_rightBg fl"><a class="pr im_t_close"></a></div></div><div class="im_list"></div></div></div><div style="display: none;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">专享特惠--钻石会员立减200元！仅298元/年！马上开通&gt;&gt;</a></div><div style="display: none;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">亲，教你淘最佳配偶！试下“超级聚光灯”</a></div><div style="display: block;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">做大富翁，赢大奖！</a></div><div style="display: none;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">选对“真像”，爱情“不在囧途”</a></div><div style="display: none;" class="im_btn fl brand_mid not_hover"><a style="width: 300px;" class="im_inner_btn">帮你快速精准锁定心仪异性，快来看看！</a></div></div><script type="text/javascript" src="../../resources/js/pop_freq.js"></script>
<!-- 	<script type="text/javascript" src="../../resources/js/popupLogin_v2.js"></script> -->




<div id="fancybox-tmp"></div><div id="fancybox-loading"><div></div></div><div id="fancybox-overlay"></div><div id="fancybox-wrap"><div id="fancybox-outer"><div class="fancybox-bg" id="fancybox-bg-n"></div><div class="fancybox-bg" id="fancybox-bg-ne"></div><div class="fancybox-bg" id="fancybox-bg-e"></div><div class="fancybox-bg" id="fancybox-bg-se"></div><div class="fancybox-bg" id="fancybox-bg-s"></div><div class="fancybox-bg" id="fancybox-bg-sw"></div><div class="fancybox-bg" id="fancybox-bg-w"></div><div class="fancybox-bg" id="fancybox-bg-nw"></div><div id="fancybox-content"></div><a id="fancybox-close"></a><div id="fancybox-title"></div><a href="javascript:void(0);" id="fancybox-left"><span class="fancy-ico" id="fancybox-left-ico"></span></a><a href="javascript:void(0);" id="fancybox-right"><span class="fancy-ico" id="fancybox-right-ico"></span></a></div></div>
<div style="position: absolute; width: 1px; height: 1px;" id="typeAContainer">
<!-- <object data="myphoto_files/typeA4.swf" id="typeA" type="application/x-shockwave-flash" height="1" width="1"><param value="false" name="menu"><param value="noScale" name="scale"><param value="true" name="allowFullscreen"><param value="always" name="allowScriptAccess"><param value="#FFFFFF" name="bgcolor"></object> -->
</div></body></html>