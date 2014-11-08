$(function(){
	//举报
	$('.report').hover(function(){
		$('.report-layer').show();
	},function(){
		$('.report-layer').hide();
	});
	
	//礼物
/*	$('.gift-icon').live("hover",function(){
		$(this).addClass('border-gift')
	},function(){
		$(this).removeClass('border-gift')
	});*/
	
	//发布按钮
	$('.replay-btn li').hover(function(){
		$(this).find('.replay-btn-layer').show();
	},function(){
		$(this).find('.replay-btn-layer').hide();
	})
	
	//聊话题
	$('.topic .replay-icon').click(function(){
		var parent = $(this).parent();
		!parent.hasClass('selected') ? parent.addClass('selected').find('.layer').show() : parent.removeClass('selected').find('.layer').hide();
	});
	$('.use').click(function(){
		var txt=$(this).siblings('span').text();
		$('#txt').val(txt).focus();
		$(this).parents('.layer').hide().parents('li').removeClass('selected');
		$('#free').click(); 
		return false;
	});
	$('.self_write').click(function(){
		$('#txt').val('').focus();
	});
	
	//送礼物
	$('.gift-mod .replay-icon').live("click",function(){
		$('.gift-s .intro').hide();
		if(!$(this).parent().hasClass('on')||$('.gift-layer-s').is(':visible')){
			$(this).siblings('.gift-layer-s').hide();
			$(this).parent().addClass('on').find('.layer').show();
		}else{
			$(this).parent().removeClass('on').find('.layer').hide();
			
		}
	});
	
	//选择礼物弹层关闭
	$('.gift-s').live('click',function(){
		$(this).find('.checked').show().parents('li').siblings().find('.checked').hide();
		$('.gift-layer-s img').attr('src', $(this).find('img').attr('src'));
		$('.gift-layer-l .close').trigger('click');
		
	});
	
	//关闭
	$('.close').live('click',function(){
		if($(this).siblings('.sort-list').find('.checked').is(':visible')){
			$(this).parents('.layer').siblings('.gift-layer-s').show();
		}
		$(this).parents('.layer').hide().parents('li').removeClass('selected on');
		$('.layer .checked').css('display','none');
		return false;
	})
	
	//重选
	$('.re-election').live('click',function(){
		$(this).parents('.gift-layer-s').hide().siblings('.layer').show().parents('.gift-mod').addClass('on');
	});
	
	//取消
	$('.cancel').live('click',function(){
		$(this).parents('.gift-layer-s').hide();
	});
	
	//礼物发送按钮
	$('.gift').live('click',function(){
		if($('.gift-layer-s').is(':hidden')){
			$('.gift-mod').addClass('on').find('.gift-layer-l').show();
		}
		return false;
	})
	//弹层隐藏
	function temHide(){
		if($('.topic').hasClass('selected')){
			$('.topic-layer').hide();
			$('.topic').removeClass('selected');
		}
	}
	//礼貌拒绝
	$('#refuse').click(function(){
		temHide();
	});
	//文本框
	$('#txt').click(function(){
		temHide();
	});
	//回复	
	function reply(){
		var $replyTxt=$('#txt').offset().top;
		var $Height=$(window).height()+$(window).scrollTop();
		if($replyTxt>$Height){
			$('.reply').show();
		}else{
			$('.reply').hide();
		}
	}
	var num=$('.item ').length;
	$('#more a').click(function(){
		setTimeout(function(){
			if($('.item ').length>num){
				reply();
			}	
		},500);
	});
	$('.reply').click(function(){
		$('html,body').animate({'scrollTop':$('#txt').offset().top},1500);
		$('#txt').focus();
		return false;
	});
	//ie6fix
	function fix(){
		if (($.browser.msie) && ($.browser.version=='6.0')){
			var top=230;
			var a=(document.body.scrollTop||document.documentElement.scrollTop)+top+'px'
			$('.shortcuts').css({'position':'absolute','top':(document.body.scrollTop||document.documentElement.scrollTop)+top+'px'});
			
		}	
	} 
	fix();
	$(window).scroll(function(){reply();fix();});

	// 回信模板-修改按钮
	$(".w_modify").click(function(){
		$(this).parent().parent().find(".state1").hide();
		$(this).parent().parent().find(".state2").show();
		$(this).parent().parent().find(".pre_text").hide();
		var preText = $(this).parent().parent().find(".pre_text").text();
		$(this).parent().parent().find(".modify_text").val(preText);
		$(this).parent().parent().find(".modify_text").show();
	});
	// 回信模板-保存按钮
	$(".w_save").click(function(){
	var thisobj=$(this).parent().parent();
	var contents = thisobj.find(".modify_text").val();
	contents = str_trim(contents);
	if(contents.length>100){
		JY_Alert('温馨提示','字数超出限制');
		return false;
	}
	if(contents=='不超出100个字符'||contents==''){
		JY_Alert('温馨提示','模板内容不能为空');
		return false;
	}
		thisobj.find(".modify_text").hide();
			var nowid = thisobj.find(".moban_id").val();
			$.post('save_draft.php',{contents:contents,moban_type:'10',now_id:nowid,from:'show_msg'},function(data){
			 	thisobj.find(".moban_id").val(data);
			 	thisobj.find(".pre_text").text(contents);
				thisobj.find(".state2").hide();
				thisobj.find(".pre_text").show();
				thisobj.find(".state1").show();
			//insert_moban(n);
		});
	});
	
	
	// 回信模板-取消按钮
	$(".w_cancel").click(function(){
		$(this).parent().parent().find(".modify_text").hide();
		var preText = $(this).parent().parent().find(".pre_text").text();
		$(this).parent().parent().find(".pre_text").text(preText);
		$(this).parent().parent().find(".pre_text").show();
		$(this).parent().parent().find(".state1").show();
		$(this).parent().parent().find(".state2").hide();
	});
	$(".w_use").click(function(){
		$(".layer").hide();
		var preText = $(this).parent().parent().find(".pre_text").text();
			$("#txt").val(preText);
	});
	
	
})

function load_star_msg(){
		// 星标信
	$(".item").hover(function(){
		if($(this).find(".star_cur").css("display")=="none"&&$(this).find(".star_cur").css("display")=="none"){
			$(this).find(".star_gray").show();
		}		
	},function(){
		$(this).find(".star_gray").hide();
	});

	$(".star_gray").click(function(){
		var type='add';
		var p_obj = $(this);
		var id=p_obj.parent().attr('msgid');
		var starurl = "inbox/star.php?type="+type+"&msgid="+id;
		$.ajax({
			url: starurl,
			type: 'GET',
			async: false,
			success: function(data){
				p_obj.parent().find(".star_cur").show();
				p_obj.hide();
			}
		});
		
	});
	$(".star_cur").click(function(){
		var type='del';
		var p_obj = $(this);
		var id=p_obj.parent().attr('msgid');
			var starurl = "inbox/star.php?type="+type+"&msgid="+id;
			$.ajax({
				url: starurl,
				type: 'GET',
				async: false,
				success: function(data){
					p_obj.parent().find(".star_gray").show();
					p_obj.hide();
				}
		});
	});
}