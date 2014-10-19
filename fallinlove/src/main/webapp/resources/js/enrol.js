/*
 * Created with JetBrains WebStorm.
 * User: hihu
 * Date: 2014-3-11
 * Time: 下午2:20
 * To change this template use File | Settings | File Templates.
 */
//首次得到焦点的标示
var mobile_blur = 0;
var mail_blur = 0;
var ma_blur = 0;
String.prototype.trim=function(){
    return this.replace(/(^\s*)|(\s*$)/g, "");
}
$(function(){
    var sthash = $('#sthash').val();
    /*
    document.onkeydown=function(event){
        var e = event || window.event || arguments.callee.caller.arguments[0];        
        if(e && e.keyCode==13){ // enter 键
             validator();
        }
    }; 
    
    */
   function hideiw(){
    	$(".jy-sel-o,.y-bg,.mod-ic").hide();
    	$(".i-w").removeClass("cur");
    	$(".i-w").parent().css("z-index", 0);
        soYoung();
    }
   	$("body").bind("click", function(){
   		$(".jy-sel-o,.y-bg,.mod-ic").hide();
   		hideiw();
   		$("#modHei-ic,#modEdu-ic,#modSal-ic").addClass("icu");
   	});
   	$(".i-w,.mod-i").hover(function(){
   		$("body").unbind("click");
   	}, function(){
   		$("body").bind("click", function(){
	   		$(".jy-sel-o,.y-bg,.mod-ic").hide();
            checkAddress();
	   		hideiw();
	   		$("#modHei-ic,#modEdu-ic,#modSal-ic").addClass("icu");
	   	});
   	});
   	
   	
   	
    $("body").bind("keydown", function(e){
        if(e.which === 13){ // enter 键
            send_jy_pv2("reg_v2_enter|"+sthash);
            setTimeout(function(){
                if(validator()){
                    if(window.GridsumWebDissector){
                        var _gsTracker =GridsumWebDissector.getTracker('GWD-002366');
                        _gsTracker.track('/targetpage/register.html');
                    }
                    send_jy_pv2("reg_v2_regbtn|"+sthash);
                    openWin("popbox1");
                }
            },400);
            
        }
    });
    $(".above-t p a#mod").bind("click", function(){
        $(".above-t,.above-b").hide();
        $(".m-form .mod").show();
        send_jy_pv2("reg_v2_mod|"+sthash);
        return false; 
    });
    
    var jydate = {
		y: new Date().getFullYear(),
		m: new Date().getMonth() + 1,
		d: new Date().getDate(),
		min: 18,
		max: 99
	};
	function insertYear(){
		var html = '';
		for(var i = 9; i > 2; i--){
			html += '<li><span>';
			html += i;
			html += '0\u540e\uff1a'; //'0后'
			html += '</span>';
			for(var j = 0; j < 10; j++){
				var temp = 1900 + i * 10 + j;
				if(jydate.y - temp < jydate.min || jydate.y - temp > jydate.max){
					continue;
				}	
				html += '<a href="#">';
				html += temp;
				html += '</a>';
			}
			html += '</li>';
		}
		return html;
	}
	function insertMD(arg){
		var html = '<li>';
		for (var i = 1; i <= arg; i++ ) {
			html += '<a href="#">';
			html += i;
			html += '</a>';
		} 
		html += '</li>';
		return html;
	}
    //生日
    $("#year").click(function(){
    	hideiw();
        $(".jy-sel-o,.y-bg").hide();
        $("#y-bg,#year-o").show();
        $(this).parents("dd").css("z-index", 1);
    });
    $("#year-o a").live("click", function(){
        var text = $(this).text();
        $("#year").val(text);
        $("#y-bg").hide();
        $("#year-o").hide();
        if( jydate.y - text === jydate.min ){
			$("#month-o ul").html(insertMD(jydate.m));		
		}else{
			$("#month-o ul").html(insertMD(12));
		}
        $("#m-bg,#month-o").show();
        reg_trace("year","processTraceUser",{},true);
        return false;
    });
    $("#month").click(function(){
    	hideiw();
        $(".jy-sel-o,.y-bg").hide();
        $("#m-bg,#month-o").show();
        $(this).parents("dd").css("z-index", 1);
    });
    $("#month-o a").live("click", function(){
        var text = $(this).text();
        $("#month").val(text);
        $("#m-bg,#month-o").hide();
        if( jydate.m.toString() === text && jydate.y - $("#year").val() === jydate.min ){
			$("#day-o ul").html(insertMD(jydate.d));		
		}else if( text === "2" ){
			if( $("#year").val() % 4 === 0 && $("#year").val() % 100 !== 0){ //闰年
				$("#day-o ul").html(insertMD(29));
			}else if( jydate.y % 400 === 0){ //闰年
				$("#day-o ul").html(insertMD(29));
			}else{ //平年
				$("#day-o ul").html(insertMD(28));
			}
		}else if( text === "1" || text === "3" ||  text === "5" ||  text === "7" ||  text === "8" || text === "10" || text === "12" ){
			$("#day-o ul").html(insertMD(31));
		}else if( text === "4" || text === "6" ||  text === "9" ||  text === "11" ){
			$("#day-o ul").html(insertMD(30));
		}
        $("#d-bg,#day-o").show();
        reg_trace("month","processTraceUser",{},true);
        return false;
    });
    $("#day").click(function(){
    	hideiw();
        $(".jy-sel-o,.y-bg").hide();
        $("#d-bg,#day-o").show();
        $(this).parents("dd").css("z-index", 1);
    });
    $("#day-o a").live("click", function(){
        var text = $(this).text();
        $("#day").val(text);
        $("#d-bg,#day-o").hide();
        $(this).parents("dd").css("z-index", 0);
        reg_trace("day","processTraceUser",{},true);
        return false;
    }); 

    // 验证未满18岁
    function soYoung(){
        var mInput = parseInt($("#month").val());
        var dInput = parseInt($("#day").val());
        if(jydate.y - $("#year").val() === jydate.min && mInput > jydate.m){
            $("#ageTip").addClass("errorTip").children("p").text("未满18岁哦！");
            $("#ageTip").show();
            $("#ageTip").prev().hide();
        }else if(jydate.y - $("#year").val() === jydate.min && mInput == jydate.m && dInput > jydate.d){
            $("#ageTip").addClass("errorTip").children("p").text("未满18岁哦！");
            $("#ageTip").show();
            $("#ageTip").prev().hide();
        }else{
            $("#ageTip").hide();
            $("#ageTip").prev().show();
        }
    }
    function deleteAllTags(sex){
        $(".intro-1 li ").each(function(){
            deleteTag($(this));
            $(this).remove();
            if($(".intro-1").children().length < 1){
                $(".intro-1").css({ height: 0 });
            }
        });
    }
    soYoung();
    //性别切换
    $('#nan').bind("click", function(){
        RegConfig.sex = 'm';
        $('#height').val("170厘米");
        getTagsShow();
        deleteAllTags('m');
        reg_trace("nan","processTraceUser",{},true);
    });
    $('#nv').bind("click", function(){
        RegConfig.sex = 'f';
        $('#height').val("160厘米");
        getTagsShow();
        deleteAllTags('f');
        reg_trace("nv","processTraceUser",{},true);
    });
    //地址
    $("#address").bind("click", function(){
    	hideiw();
        $(this).parent().addClass("cur");
        $("#city").hide();
        $("#province").show();
        $(this).parents("dd").css("z-index", 1); 
    });
    $("#province a").click(function(){
        var text = $(this).text();
        $("#address").val(text);
        $('#input_province').val($(this).attr('data'));
        $('#input_city').val('');
        $("#province").hide();
        selectAddress( $(this) );
        reg_trace("province","processTraceUser",{},true);
        return false;
    });
    $("#city a").live("click", function(){
        var oldVal = $("#address").val(), val = $(this).text();
        $("#address").val(oldVal + " " + val);
        $('#input_city').val($(this).attr('data'));
        $("#city").hide();
        checkAddress();
        $("#address").parent().removeClass("cur").css("z-index", 0);
        $(this).parents("dd").css("z-index", 0);
        reg_trace("city","processTraceUser",{},true);
        return false;
    });
    //婚姻
    $("#m-wh").bind("click", function(){
       reg_trace("1-marriage","processTraceUser",{},true);
    });
    $("#m-ly").bind("click", function(){
       reg_trace("2-marriage","processTraceUser",{},true);
    });
    $("#m-so").bind("click", function(){
       reg_trace("3-marriage","processTraceUser",{},true);
    });
    //身高
    $("#height").bind("click", function(){
    	hideiw();
        $("#height-o").show();
        $(this).parents("dd").css("z-index", 1);
        var val = $(this).val();
        $("#height-o ul li").each(function(){
        	var temp = $(this).find("a").attr("will");
        	if( parseInt(val) === parseInt(temp) ){
        		$(this).addClass("cur");	
        		return;
        	}
        });
        var h = (parseInt(val) - 137) * 25;
        $("#height-o ul").scrollTop(h);
        $(this).parents("dl").siblings("dl").find("dd").css("z-index", 0).find(".i-w").removeClass("cur").find(".jy-sel-o").hide();
    });
    $("#height-o ul li a").bind("click", function(){
        var val = $(this).attr("will");
        $("#height").val(val+"厘米");
        $(this).parent().addClass("cur").siblings("li").removeClass("cur");
        $("#height-o").hide();
        $(this).parents("dd").css("z-index", 0);
        reg_trace("height","processTraceUser",{},true);
        return false;
    });
    
    //学历
    $("#edu").bind("click", function(){
    	hideiw();
        $(this).parent().addClass("cur");
        var val = $(this).val();
        $("#edu-o ul li").each(function(){
        	var temp = $(this).find("a").text();
        	if( temp === val ){
        		$(this).addClass("cur");	
        		return;
        	}
        });
        $("#edu-o").show();
        $(this).parents("dd").css("z-index", 1);
        $(this).parents("dl").siblings("dl").find("dd").css("z-index", 0).find(".i-w").removeClass("cur").find(".jy-sel-o").hide();
    });
    $("#edu-o ul li a").bind("click", function(){
        var val = $(this).text();
        var will = $(this).attr('will');
        $("#edu").val(val);
        $('#education').val(will);
        $('#edu').attr('will',will);
        $(this).parent().addClass("cur").siblings("li").removeClass("cur");
        $("#edu-o").hide();
        $(this).parents("dd").css("z-index", 0);
        $(this).parents(".i-w").removeClass("cur");
        reg_trace("degree","processTraceUser",{},true);
        return false;
    });
    
    //月薪
    $("#salary").bind("click", function(){
    	hideiw();
        $(this).parent().addClass("cur");
        var val = $(this).val();
        $("#salary-o ul li").each(function(){
        	var temp = $(this).find("a").text();
        	if( temp === val ){
        		$(this).addClass("cur");	
        		return;
        	}
        });
        $("#salary-o").show();
        $(this).parents("dd").css("z-index", 1);
        $(this).parents("dl").siblings("dl").find("dd").css("z-index", 0).find(".i-w").removeClass("cur").find(".jy-sel-o").hide();
    });
    $("#salary-o ul li a").bind("click", function(){
        var val = $(this).text();
        var will = $(this).attr('will');
        $('#salary').attr('will',will);
        $('#income').val(will);
        $("#salary").val(val);
        $(this).parent().addClass("cur").siblings("li").removeClass("cur");
        $("#salary-o").hide();
        $(this).parents("dd").css("z-index", 0);
        $(this).parents(".i-w").removeClass("cur");
        reg_trace("income","processTraceUser",{},true);
        return false;
    });
    
    
    $("#mobilec").bind("click", function(){
        $(".email-dl").hide();
        $(".phone-dl").show();
        $('#aizx').attr("checked",true);
        $('#p_zx').show();
        if($('#phoneNumber').val() != "" && !$("#phoneTip").hasClass("errorTip")){
            $('#phoneNumber').blur();
        }
        reg_trace("mobilec","processTraceUser",{},true);
    });
    $("#email").bind("click", function(){
        $(".email-dl").show();
        $(".phone-dl").hide();
        $('.getBtn').hide();
        $('#p_zx').hide();
        $('#aizx').attr("checked",false);
        reg_trace("emailc","processTraceUser",{},true);
    });
    
    
    //手机号验证
    $("#phoneNumber").focus(function(){
        $(this).parent().addClass("cur").removeClass("err");
        $(this).next().hide();
        $("#phoneTip").removeClass("errorTip").show().children("p").html("用来登录，保障账号安全，免费接收消息");
    }).blur(function(){
        phoneNumber( $(this) );
    });
    
    //邮箱验证
    $("#emailAdd").focus(function(){
        $(this).parent().addClass("cur").removeClass("err");
        $(this).next().hide();
        $("#emailTip").removeClass("errorTip").show().children("p").html("用来登录世纪佳缘");
    }).blur(function(){
        emailAdd( $(this) );
    }).keyup(function(e){
        if (e.which === 38 || e.which === 40 || e.which === 13){ return ; }
        var html = '',val = $(this).val(), com = '.com', cn = '.cn', emailData = {
            item: [
                'sina' + com,'163' + com,'qq' + com,'126' + com,'vip.sina' + com,'sina' + cn,'hotmail' + com,
                'gmail' + com,'sohu' + com,'139' + com,'wo' + com + cn,'189' + cn,'21cn' + com
            ]
        };
        var ft = val.slice(val.indexOf("@") + 1);
        with(emailData){
            for( i in item ){
                if(item[i].search(ft) !== -1){
                    html += '<li><a href="">';
                    html += val.slice(0,val.indexOf("@"));
                    html += '@';
                    html += item[i];
                    html += '</a></li>';                
                }
            }
        }
        $("#emailAdd-o ul").html(html);
        if(val.search("@") !== -1){
            $("#emailAdd-o").show(); 
            $(this).parents("dd").css("z-index", 11);  
        }
        if($("#emailAdd-o ul li").length === 0 || val.search(".com") !== -1 || val.search(".cn") !== -1){
            $("#emailAdd-o").hide();
            $(this).parents("dd").css("z-index", 0);
        }
        /*
        if( e.shiftKey && e.which === 50 ){
            $("#emailAdd-o").show();
        }
        */
        
    }).keydown(function(e){
        if($("#emailAdd-o").is(":visible")){
            if(e.which === 38){ //上
                var obj = $("#emailAdd-o ul li"), l = obj.size(), index = l - 1;
                for(var i = 0; i < l; i++){
                    if(obj.eq(i).hasClass("cur")){
                        obj.eq(i % l).removeClass("cur");
                        index = i - 1;
                    }
                }
                var val = obj.eq(index).find("a").text();
                $("#emailAdd").val(val);
                index = (index < 0) ? (l - 1) : (index % l);
                $("#emailAdd-o ul li").eq(index).addClass("cur");
            }
            if(e.which === 40){ //下
                var obj = $("#emailAdd-o ul li"), l = obj.size(), index = 0;
                for(var i = 0; i < l; i++){
                    if(obj.eq(i).hasClass("cur")){
                        obj.eq(i % l).removeClass("cur");
                        index = i + 1;
                    }
                }
                var val = obj.eq(index).find("a").text();
                $("#emailAdd").val(val);
                index = index > (l - 1) ? 0 : (index % l);
                $("#emailAdd-o ul li").eq(index).addClass("cur");       
            }
            if(e.which === 13){
                $("#emailAdd-o").hide();
                emailAdd( $(this) );
                return false;       
            }
        }
    });
    $("#emailAdd-o ul li a").live("click", function(){
        var val = $(this).text();
        $("#emailAdd").val(val);
        $("#emailAdd-o,#emailTip").hide();
        $("#emailAdd").blur();
        return false;
    });
    
    //手机验证码
    $("#mobile_vali").focus(function(){
        $(this).parent().addClass("cur").removeClass("err");
        $(this).next().hide();
        $("#captchaTip").removeClass("errorTip").show().children("p").html('请填写短信中收到的验证码');
    }).blur(function(){
        captcha( $(this) );
        $('#phoneNumber').blur();
    });
    
    //点击验证码按钮
    var tick_timer ;
    var max_time;
    function btn_tick(){
        max_time -= 1;
        $("#get").text("重新发送验证码（"+max_time+"）");
    }

    function end_tick(){
        $("#get").text("获取验证码");
        clearInterval(tick_timer);
    }

    $("#get").bind("click", function(){
        send_jy_pv2("get_vail_btn_v2|"+sthash);
        var mobile = $("#mobile").val();
        if (mobile == "" || !is_mobile(mobile)) {
            $("#phoneTip").addClass("errorTip").children("p").text("请填写有效的手机号");
            $("#phoneNumber").parent().addClass("err");
            $("#phoneNumber").next().addClass("error").show();
            return false;
        }
        if($("#get").hasClass("gray")) return false;
        send_jy_pv2("get_vail_btn_succ_v2|"+sthash);
        taskSendMsg.delay(500, function () {
            reg_trace("mobile", "processSendOrUpdateMessage", {onError:function (id, data) {
                var d = $("<div>" + data + "</div>").find("a").remove().end().html();
                if (/5分钟/.test(d)) {
                    d = "5\u5206\u949f\u672a\u6536\u5230\u77ed\u4fe1\u9a8c\u8bc1\u7801\uff0c\u8bf7\u91cd\u8bd5";
                }
                warn(d);
            }, onSuccess:function (id, data) {
                warn("发送成功！请查收手机短信。");
            }});
        });

        $(this).addClass("gray");
        max_time = 60;
        tick_timer = setInterval(function(){btn_tick();},1000);
        setTimeout(function(){
            $("#get").removeClass("gray");
            end_tick();
        }, 60000);
        return false;
    });
    //邮箱验证码
    $("#validate_code").focus(function(){
        $(this).parent().addClass("cur").removeClass("err");
        $(this).next().hide();
        $("#emailchaTip").removeClass("errorTip").children("p").html('请填写图片验证码');
    }).blur(function(){
        emailcha( $(this) );
    }).keyup(function(e){
        if($("#validate_code").val().length == 4){
           emailcha( $(this) );
        }
    });
    
    //手机密码
    $("#password").focus(function(){
        $(this).parent().addClass("cur").removeClass("err");
        $(this).next().hide();
        $("#passwordTip").removeClass("errorTip").children("p").html('');
    }).blur(function(){
        password( $(this) );
    });
    
    //昵称
    $("#nickname").focus(function(){
        $(this).parent().addClass("cur").removeClass("err");
        $(this).next().hide();
        $("#nicknameTip").removeClass("errorTip").children("p").html('');
    }).blur(function(){
        nickname( $(this) );
    });
    
    //tab
    $(".intro-t li a").bind("click", function(){
        var index = $(this).parent().index();
        $(".oth-con").hide();
        $(this).parents("dd").css("z-index", 0);
        $('#note_which').val($(this).attr('data'));
        $(this).parent().addClass("cur").siblings("li").removeClass("cur");
        $(".intro-tc").eq(index).removeClass("dn").siblings("div").addClass("dn");
        var clk = $(this).attr('data');
        send_jy_pv2("reg_v_note_s_"+clk+"|"+sthash);
        return false;
    });
    
    //自我介绍
    $(".intro-2 li a").bind("click", function(){
        var flag = 1;
        if($(this).parent().parent().hasClass("tnote_2")) flag = 2;
        insertTag($(this),flag);
        send_jy_pv2('reg_v2_addtag|'+sthash);
        return false;   
    });
    $(".intro-1 li span").live("click", function(){
        $(this).parent().remove();
        deleteTag($(this).parent('li'));
        if($(".intro-1").children().length < 1){
        	$(".intro-1").css({ height: 0 });
        }
        send_jy_pv2('reg_v2_deltag|'+sthash);
    });
    $(".intro-3 li span").live("click", function(){
        $(this).parent().remove();
        deleteTag($(this).parent('li'));
        if($(".intro-3").children().length < 1){
        	$(".intro-3").css({ height: 0 });
        }
    });
    $(".intro-c .ref a").bind("click", function(){
        
    });
    $(".errt span").bind("click", function(){
        $(this).parent().hide();
    });
    //
    $(".intro a.oth").bind("click", function(){
        getIntroData();
        $(".oth-con").show();
        $(this).parents("dd").css("z-index", 1);
        send_jy_pv2('reg_v2_seeother|'+sthash);
        return false;
    });
    
    //自已写textarea
    $("#self").focus(function(){
        if($(this).val() == defaultNote){
            $(this).val("");    
        }
    }).blur(function(){
        if($(this).val() == ""){
            $(this).val(defaultNote);
        }
    });
    
    //立即注册
    $(".form-btn a").bind("click", function(){
        setTimeout(function(){
            if(validator()){
                if(window.GridsumWebDissector){
                    var _gsTracker =GridsumWebDissector.getTracker('GWD-002366');
                    _gsTracker.track('/targetpage/register.html');
                }
                send_jy_pv2("reg_v2_regbtn|"+sthash);
                openWin("popbox1");
            }
        },200);
        return false;
    });
    
    $("#skip").hoverDelay({
        obj: $(".jy-up-add"),
        hoverEvent: function(obj){
            obj.animate( { right: 40 }, 500 );
        },
        outEvent: function(obj){
            obj.animate( { right: 123 }, 500 );
        }
    });
    
    $(".two-code span.close").bind("click", function(){
        stopGetImgByMobile();
        $(".two-code-bg,.two-code").hide();
        send_jy_pv2("reg_v2_img_qr_close|"+statid);
    });
    $('#two-code').bind("click",function(){
        getQRcode();
        $("#cameradiv").hide();
        if($("#jcropdiv").is(":hidden")) $("#uploaddiv").show();
        $(".two-code-bg,.two-code").show();
    });
    
    //背景
    var bgH = $(document).height() > $(".jy-w").height() ? $(document).height() : "100%";
    $(".bg1,.bg2,.two-code-bg").height(bgH);
    
    //修改交友条件
    $("#revise").bind("click", function(){
        $(this).parent().hide();
        $(".jy-r-mod-c").show();
        return false;
    });
    

    //我想找
    $("#age1").bind("click", function(){
        $(this).next().removeClass("icu");
        $(this).parent().css("z-index", 1);
        var html = '<ul>';
        for(var i = 18; i <= 99; i++ ){
            html += '<li><a href="">';
            html += i;
            html += '</a></li>';
        }
        html += '</ul>';
        $("#age1-o").html(html).show();
    });
    $("#age1-o ul li a").live("click", function(){
        var val = $(this).text();
        $("#age1").val(val);
        $("#age1-ic").addClass("icu");
        $("#age1-o").hide();
        $("#age1").parent().css("z-index", 0);
        var html = '<ul>';
        for(var i = val; i <= 99; i++ ){
            html += '<li><a href="">';
            html += i;
            html += '</a></li>';
        }
        html += '</ul>';
        $("#age2-o").empty().html(html); 
        return false;
    });
    $("#age2").bind("click", function(){
        var val = $(this).text();
        $(this).next().removeClass("icu");
        $("#age2-o").show();
        $(this).parent().css("z-index", 1);
    });
    $("#age2-o ul li a").live("click", function(){
        var val = $(this).text();
        $("#age2").val(val);
        $("#age2-ic").addClass("icu");
        $("#age2-o").hide();
        $("#age2").parent().css("z-index", 0);
        return false;
    });
    $("#hei1").bind("click", function(){
        $(this).next().removeClass("icu");
        var html = '<ul>';
        for(var i = 140; i <= 260; i++ ){
            html += '<li><a href="">';
            html += i;
            html += '</a></li>';
        }
        html += '</ul>';
        $("#hei1-o").html(html).show();
    });
    $("#hei1-o ul li a").live("click", function(){
        var val = $(this).text();
        $("#hei1").val(val);
        $("#hei1-ic").addClass("icu");
        $("#hei1-o").hide();
        var html = '<ul>';
        for(var i = val; i <= 260; i++ ){
            html += '<li><a href="">';
            html += i;
            html += '</a></li>';
        }
        html += '</ul>';
        $("#hei2-o").empty().html(html); 
        return false;
    });
    $("#hei2").bind("click", function(){
        var val = $(this).text();
        $(this).next().removeClass("icu");
        $("#hei2-o").show();
    });
    $("#hei2-o ul li a").live("click", function(){
        var val = $(this).text();
        $("#hei2").val(val);
        $("#hei2-ic").addClass("icu");
        $("#hei2-o").hide();
        return false;
    });
    
    //民族
    var nations = ["汉族","蒙古族","回族","藏族","维吾尔族","苗族","彝族","壮族","布依族","朝鲜族","满族","侗族","瑶族","白族","土家族","哈尼族","哈萨克族","傣族","黎族","僳僳族","佤族","畲族","高山族","拉祜族","水族","东乡族","纳西族","景颇族","柯尔克孜族","土族","达斡尔族","仫佬族","羌族","布朗族","撒拉族","毛南族","仡佬族","锡伯族","阿昌族","普米族","塔吉克族","怒族","乌孜别克族","俄罗斯族","鄂温克族","德昂族","保安族","裕固族","京族","塔塔尔族","独龙族","鄂伦春族","赫哲族","门巴族","珞巴族","基诺族","其他"];
    $("#nation").bind("click", function(){
        $("#nation-ic").removeClass("icu");
        var html = '<ul>';
        for(var i = 0; i < nations.length; i++ ){
            html += '<li><a href="">';
            html += nations[i];
            html += '</a></li>';
        }
        html += '</ul>';
        $("#nation-o").html(html).show();
    });
    $("#nation-o ul li a").live("click", function(){
        var val = $(this).text();
        $("#nation").val(val);
        $("#nation-ic").addClass("icu");
        $("#nation-o").hide();
        return false;
    });
    
    //修改身高
    $("#modHei,#modHei-ic").bind("click", function(){
        $("#modHei-ic").removeClass("icu"); 
        $("#modHei-o").show();
        var val = $(this).val();
        $("#modHei-o ul li").each(function(){
        	var temp = $(this).find("a").attr("will");
        	if( parseInt(val) === parseInt(temp) ){
        		$(this).addClass("cur");	
        		return;
        	}
        });
        var h = (parseInt(val) - 135) * 20;
        $("#modHei-o ul").scrollTop(h);
    });
    $("#modHei-o ul li a").bind("click", function(){
        var val = $(this).text();
        $("#modHei").val(val);
        $("#height").val(val);
        $("#modHei-ic").addClass("icu");
        $(this).parent().addClass("cur").siblings("li").removeClass("cur");
        $("#modHei-o").hide();
        reg_trace("height","processTraceUser",{},true);
        return false;
    });
    //修改学历
    $("#modEdu,#modEdu-ic").bind("click", function(){
        $("#modEdu-ic").removeClass("icu"); 
        var val = $(this).val();
        $("#modEdu-o ul li").each(function(){
        	var temp = $(this).find("a").text();
        	if( temp === val ){
        		$(this).addClass("cur");	
        		return;
        	}
        });
        $("#modEdu-o").show();
    });
    $("#modEdu-o ul li a").bind("click", function(){
        var val = $(this).text();
        var will = $(this).attr('will');
        $("#modEdu").val(val);
        $("#edu").val(val);
        $('#education').val(will);
        $('#edu').attr('will',will);
        $("#modEdu-ic").addClass("icu");
        $(this).parent().addClass("cur").siblings("li").removeClass("cur");
        $("#modEdu-o").hide();
        reg_trace("degree","processTraceUser",{},true);
        return false;
    });
    //修改月薪
    $("#modSal").attr("will", 20);
    $("#modSal,#modSal-ic").bind("click", function(){
        $("#modSal-ic").removeClass("icu"); 
        var will = $(this).attr("will");
        
        $("#modSal-o ul li").each(function(){
        	var temp = $(this).find("a").attr("will");
        	if( temp === will ){
        		$(this).addClass("cur");	
        		return;
        	}
        });
        $("#modSal-o").show();
        
    });
    $("#modSal-o ul li a").bind("click", function(){
        var val = $(this).text();
        var will = $(this).attr('will');
        $("#modSal").val(val);
        $("#modSal").attr("will", will);
        $("#salary").val(val);
        $('#income').val(will);
        $('#salary').attr('will',will);
        $("#modSal-ic").addClass("icu");
        $(this).parent().addClass("cur").siblings("li").removeClass("cur");
        $("#modSal-o").hide();
        reg_trace("income","processTraceUser",{},true);
        return false;
    });
    
    //弹层
    $(".jy-pop-close").bind("click", function(){
        $(".jy-pop-bg,.jy-pop").hide();
        return false;
    });
    
    $(window).scroll(function(){
        var h = $(this).scrollTop(), hh = $(window).height();
        if( h > hh ){
            $(".member-login").hide();
        }else{
            $(".member-login").show();
        }
    });
    $(".slide a").bind("click", function(){
        if($(this).hasClass("up")){
            $(this).removeClass("up").parent().prev().animate({
                height: 25  
            }, 500);
        }else{
            $(this).addClass("up").parent().prev().animate({
                height: 60  
            }, 500);
            
        }
        send_jy_pv2("reg_v2_slide|"+sthash);
        return false;
    });
    //izx
    $("#azx-t").hover(function(){
        $("#azx-con").show();
    },function(){
        $("#azx-con").hide();
    });
    //错误提示
    if(typeof(err) !="undefined" && err != ""){
        JY_Alert("错误提示",err);
    }
    //提交我承诺
    $('#popbox_close').bind("click", function(){
        reg_submit();
        return false;
    });
});


//地址
function selectAddress( obj ){
    var val = obj.text(), index = obj.attr("data"), html = '<ul><li>';
    $("#city").empty();
    if(typeof LOK !== "undefined"){
        for(var i in LOK[index]){
            //把不限过滤，临时去掉黑龙江-未知
            if(/00$/.test(i) || i == 2313){
                continue;
            }
            html += '<a href="#" data="';
            html += i;
            html += '">';
            html += LOK[index][i];
            html += '</a>';
        }
        html += '</li></ul>';
    }
    $("#city").html(html).show();
}

//邮箱验证
function emailAdd( obj ){
    var reg = /^[_a-zA-Z0-9\-\.]+@([\-_a-zA-Z0-9]+\.)+[a-zA-Z0-9]{2,4}$/,
        val = obj.val();
    if(reg.test(val)){
        reg_trace("email", "processTraceUser", {onError:function (id, data) {
            var login_str = '<a href="http://www.jiayuan.com/login/?name='+val+'">登录</a>';
            var find_pass = '<a href="http://www.jiayuan.com/login/validate.php'+'">找回密码</a>';
            $("#emailTip").addClass("errorTip").children("p").html("邮箱已注册，请"+login_str+"，或"+find_pass);
            $("#emailTip").show();
            obj.parent().addClass("err");
            obj.next().addClass("error").show();
        }, onSuccess:function (id, data) {
            obj.parent().removeClass("err cur");
            obj.next().removeClass("error").show();
            $("#emailTip").removeClass("errorTip").children("p").text("将会给你发送确认邮件").end().show();
        }});
    }else{
        if(val === ''){
            $("#emailTip").addClass("errorTip").children("p").text("邮箱地址必填");    
        }else{
            $("#emailTip").addClass("errorTip").children("p").text("格式不正确");
        }
        obj.parent().addClass("err");
        obj.next().addClass("error").show();
    }
    return true;
}

//手机号验证
function phoneNumber( obj ) {
    var val = obj.val();
    $('#mobile').val(val);
    if(/^0?(13[0-9]|15[0-9]|18[0-9]|14[0-9]|17[0-9])[0-9]{8}$/g.test(val) || /^(13[0-9]|15[0-9]|18[0-9]|14[0-9]|17[0-9])(\*{0,})(\d{4})$/g.test(val)){
        obj.parent().removeClass("err cur");
        obj.next().removeClass("error").show();
        $("#phoneTip").removeClass("errorTip");
        reg_trace("mobile", "processUserMobile", {
            onError:function (id, data) {
                $(".getBtn").hide();
                $("#phoneTip").addClass("errorTip").children("p").html("该手机号已注册，请重新填写或<a href='http://login.jiayuan.com/?name="+val+"'>登录</a>");
                obj.parent().addClass("err");
                obj.next().addClass("error").show();
            }, onSuccess:function(id,data) {
                if($("#mobilec").attr("checked")){
                    $(".getBtn").show();
                }
                $("#phoneTip").removeClass("errorTip").hide();
            }});
    }else{ 
        if(val === ''){ //为空时
            $("#phoneTip").addClass("errorTip").children("p").text("手机号码不能为空");  
        }else{ //填写有误时
            $("#phoneTip").addClass("errorTip").children("p").text("请填写有效的手机号");
        }
        $(".getBtn").hide();
        obj.parent().addClass("err");
        obj.next().addClass("error").show();
    }
}

//邮箱验证码
function emailcha( obj ) {
    var val = obj.val();
    if(val.length == 4 || val.length == 6){//^[A-Za-z0-9]+$/g.test(val)){
        reg_trace("validate_code", "processTraceUser", {onError:function (id, data) {
            $("#emailchaTip").addClass("errorTip").children("p").text("验证码有误");
            obj.parent().addClass("err");
            obj.next().addClass("error").show();    
        }, onSuccess:function (id, data) {
            obj.parent().removeClass("err cur");
            obj.next().removeClass("error").show();
            $("#emailchaTip").removeClass("errorTip");
        }});
    }else{
        if( val === ''){ //为空时
            $("#emailchaTip").addClass("errorTip").children("p").text("请输入图片中的字符");
        }else{
            $("#emailchaTip").addClass("errorTip").children("p").text("验证码有误");
        }
        obj.parent().addClass("err");
        obj.next().addClass("error").show();
    }
}
//地区验证
function checkAddress(){
    var province = $('#input_province').val()+"";
    var city = $('#input_city').val();
    var check_province = city.substring(0,2);
    if(check_province != province){
        $("#address").parent().addClass("err");
        $("#address").next().addClass("error").show();
        $("#cityTip").addClass("errorTip").children("p").text("请选择省、市（区）");
        try{$('#mod').click();}catch(e){};
        return false;
    }
    $("#address").parent().removeClass("err cur");
    $("#address").next().removeClass("error").show();
    $("#cityTip").removeClass("errorTip");
    return true;
}
//手机验证码
function captcha( obj ) {
    var val = obj.val();
    if(/^\d+$/g.test(val) && val.length == 5){
        reg_trace("mobile_vali", "processValidatorMessage", {onError:function (id, data) {
            $("#captchaTip").addClass("errorTip").children("p").text("验证码错误");
            obj.parent().addClass("err");
            obj.next().addClass("error").show();
            $('.getBtn').show();
        }, onSuccess:function (id, data) {
            $(".getBtn").hide();
            obj.parent().removeClass("err cur");
            obj.next().removeClass("error").show();
            $("#captchaTip").removeClass("errorTip");
        }});
    }else{
        if( val === ''){ //为空时
            $("#captchaTip").addClass("errorTip").children("p").text("请填写短信中收到的验证码");
        }else{
            $("#captchaTip").addClass("errorTip").children("p").text("填写的验证码有误");
        }
        obj.parent().addClass("err");
        obj.next().addClass("error").show();
        $('.getBtn').show();
    }
}

//手机密码
function password( obj ) {
        var val = obj.val();
        if( val === ''){
            obj.parent().addClass("err");
            obj.next().addClass("error").show();
            $("#passwordTip").addClass("errorTip").children("p").text("密码不能为空");
        }else if(val !== '' && val.length < 6){
            obj.parent().addClass("err");
            obj.next().addClass("error").show();
            $("#passwordTip").addClass("errorTip").children("p").text("请至少输入6位");
        }else if(val.length >= 6 && val.length <= 20){
            obj.parent().removeClass("err cur");
            obj.next().removeClass("error").show();
            $("#passwordTip").removeClass("errorTip");
            reg_trace("password","processTraceUser",{},true);
        }else if(val.length > 20){
            obj.parent().addClass("err");
            obj.next().addClass("error").show();
            $("#passwordTip").addClass("errorTip").children("p").text("请不要超过20位");
        }
}

//昵称
function nickname( obj ) {
    obj.val(DBC2SBC(obj.val().trim()));
    var val = obj.val(), len = strlen(val);
    if(val === ''){  //为空
        obj.parent().addClass("err");
        obj.next().addClass("error").show();
        $("#nicknameTip").addClass("errorTip").children("p").text("昵称必填，你可以稍后进行修改");
   }else if(val !== '' && len < 2 ){ //过短
        obj.parent().addClass("err");
        obj.next().addClass("error").show();
        $("#nicknameTip").addClass("errorTip").children("p").text("请输入至少1个汉字或2个字母");
    }else if( len >= 2 && len < 20){   //正确   
        obj.parent().removeClass("err cur");
        obj.next().removeClass("error").show();
        $("#nicknameTip").removeClass("errorTip");
        reg_trace("nickname","processTraceUser",{},true);
    }else if(len > 20){   //超过字数限制 
        obj.parent().addClass("err");
        obj.next().addClass("error").show();
        $("#nicknameTip").addClass("errorTip").children("p").text("请不要超过10个汉字或20个字母");
    }
}

//判断字符串长度
function strlen(str){  
    var len = 0;  
    for (var i=0; i<str.length; i++) {   
     var c = str.charCodeAt(i);   
    //单字节加1   
     if ((c >= 0x0001 && c <= 0x007e) || (0xff60<=c && c<=0xff9f)) {   
       len++;   
     }   
     else {   
      len+=2;   
     }   
    }   
    return len;  
}  

//插入标签
var has_tag = {1:[],2:[]};
function insertTag(obj,flag){
    var val = obj.text(), html = '';
    for( var i in has_tag[flag]){
        if(val == has_tag[flag][i]){
            return false;
        }
    }
    has_tag[flag].push(val);
    html += '<li will="'+flag+'" >';
    html += val;
    html += '<span></span></li>';
    if(flag == 1){ 
        $(".intro-1").append(html);
        $(".intro-1").css({height: "auto"});
    }else{
        $(".intro-3").append(html);
        $(".intro-3").css({height: "auto"});
    }
}
function deleteTag(obj){
    var val = obj.text();
    var flag = obj.attr("will"); 
    for( var i in has_tag[flag]){
        if(val == has_tag[flag][i]){
            delete has_tag[flag][i];
        }
    }
    return true;
}
//从传图页面移植函数
function showPreview(c){
    var iw = $('.jcrop_w>img').width(),
        ih = $('.jcrop_w>img').height(),
        ow = (395 - iw) / 2,
        oh = (340 - ih) / 2,
        rx = 110 / c.w,
        ry = 135 / c.h,
        rx1 = 73 / c.w,
        ry1 = 90 / c.h,
        rx2 = 40 / c.w,
        ry2 = 48 / c.h,
        _data = $(".jc-demo-box").attr("data");

    if(($.browser.version == 8.0 || $.browser.version == 7.0 || $.browser.version == 6.0) && (_data == 90 || _data == 270)){
        pre_img2($('.pre-1 img'), rx, ih, ry, iw, c.x, c.y, ow, oh);
        pre_img2($('.pre-2 img'), rx1, ih, ry1, iw, c.x, c.y, ow, oh);
        pre_img2($('.pre-3 img'), rx2, ih, ry2, iw, c.x, c.y, ow, oh);
    }else{
        pre_img2($('.pre-1 img'), rx, iw, ry, ih, c.x, c.y, ow, oh);
        pre_img2($('.pre-2 img'), rx1, iw, ry1, ih, c.x, c.y, ow, oh);
        pre_img2($('.pre-3 img'), rx2, iw, ry2, ih, c.x, c.y, ow, oh);
    }
    $('#x').val(c.x);
    $('#y').val(c.y);
    $('#w').val(c.w);
    $('#h').val(c.h);
}

//图片旋转
function imgRotate(deg){
    var img1 = $(".jcrop_w>img"),
        _data = parseInt($(".jc-demo-box").attr("data"));
    if($.browser.version == 8.0 || $.browser.version == 7.0 || $.browser.version == 6.0 ){
        var sin = Math.sin(Math.PI / 180 * (_data + deg));
        var cos = Math.cos(Math.PI / 180 * (_data + deg));
        var _filter = "progid:DXImageTransform.Microsoft.Matrix(M11=" + cos + "," +  "M12=" + (-sin)
            + ",M21=" + sin+ ",M22=" + cos + ",SizingMethod='auto expand')";
        img1.css({
            filter: _filter
        });
        $('.pre-1 img,.pre-2 img,.pre-3 img').css({
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
        $('.pre-1 img,.pre-2 img,.pre-3 img').css({
            "-webkit-transform": _val,
               "-moz-transform": _val,
                "-ms-transform": _val,
                 "-o-transform": _val,
                    "transform": _val
        });
    }

    var     fiw = $('.jcrop_w>img').width(),
            fih = $('.jcrop_w>img').height(),
            ow = Math.floor((395 - fiw) / 2),
            oh = Math.floor((340 - fih) / 2),
            cx = $("#small").position().left,
            cy = $("#small").position().top,
            rx = 110 / $("#small").width(),
            ry = 135 / $("#small").height(),
            rx1 = 73 / $("#small").width(),
            ry1 = 90 / $("#small").height(),
            rx2 = 40 / $("#small").width(),
            ry2 = 48 / $("#small").height();

    if(($.browser.version == 8.0 || $.browser.version == 7.0 || $.browser.version == 6.0)){
        pre_img2($('.pre-1 img'), rx, fih, ry, fiw, cx, cy, ow, oh);
        pre_img2($('.pre-2 img'), rx1, fih, ry1, fiw, cx, cy, ow, oh);
        pre_img2($('.pre-3 img'), rx2,  fih, ry2, fiw, cx, cy, ow, oh);
    }else{
        pre_img2($('.pre-1 img'), rx, fiw, ry, fih, cx, cy, ow, oh);
        pre_img2($('.pre-2 img'), rx1, fiw, ry1, fih, cx, cy, ow, oh);
        pre_img2($('.pre-3 img'), rx2, fiw, ry2, fih, cx, cy, ow, oh);
    }
    $(".jcrop_w img").css({
        left: ow,
        top: oh
    });

    if( deg > 0){
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
    $("#d").val(_data);
    $(".jc-demo-box").attr("data", _data);
}

//放大缩小图片
var imgToSize = function (size) {
    var iw = $('.jcrop_w>img').width(),
        ih = $('.jcrop_w>img').height(),
        _data = $(".jc-demo-box").attr("data"),
        _w = Math.round(iw + size),
        _h = Math.round(((iw + size) * ih) / iw);

    $("#t").val(_w+"|"+_h);

    if(($.browser.version == 8.0 || $.browser.version == 7.0 || $.browser.version == 6.0) && (_data == 90 || _data == 270)){
        $('.jcrop_w>img').width(_h).height(_w);
    }else{
        $('.jcrop_w>img').width(_w).height(_h);
    }

    var fiw = $('.jcrop_w>img').width(),
        fih = $('.jcrop_w>img').height(),
        ow = (395 - fiw) / 2,
        oh = (340 - fih) / 2,
        cx = $("#small").position().left,
        cy = $("#small").position().top,
        rx = 110 / $("#small").width(),
        ry = 135 / $("#small").height(),
        rx1 = 73 / $("#small").width(),
        ry1 = 90 / $("#small").height(),
        rx2 = 40 / $("#small").width(),
        ry2 = 48 / $("#small").height();

    if(($.browser.version == 8.0 || $.browser.version == 7.0 || $.browser.version == 6.0) && (_data == 90 || _data == 270)){
        pre_img2($('.pre-1 img'), rx, fih, ry, fiw, cx, cy, ow, oh);
        pre_img2($('.pre-2 img'), rx1, fih, ry1, fiw, cx, cy, ow, oh);
        pre_img2($('.pre-3 img'), rx2, fih, ry2, fiw, cx, cy, ow, oh);
    }else{
        pre_img2($('.pre-1 img'), rx, fiw, ry, fih, cx, cy, ow, oh);
        pre_img2($('.pre-2 img'), rx1, fiw, ry1, fih, cx, cy, ow, oh);
        pre_img2($('.pre-3 img'), rx2,  fiw, ry2, fih, cx, cy, ow, oh);
    }
    $(".jcrop_w img").css({
        left: ow,
        top: oh
    });
};
//end
(function($){
    $.fn.hoverDelay = function( options ){
        var defaults = {
            obj: "",
            hoverDuring: 200,
            outDuring: 200,
            hoverEvent: function(){
                $.noop();
            },
            outEvent: function(){
                $.noop();
            }
        };
        var sets = $.extend( defaults, options );
        var hoverTimer, outTimer;
        return this.each(function(){
            $(this).hover(function(){
                clearTimeout(outTimer);
                hoverTimer = setTimeout(function(){
                    sets.hoverEvent(sets.obj);
                }, sets.hoverDuring);
            },function(){
                clearTimeout(hoverTimer);
                outTimer = setTimeout(function(){
                    sets.outEvent(sets.obj);
                }, sets.outDuring);
            });
        });
    };
})(jQuery); 
