$(function() {
  var obj = document.getElementById("login_email");
  var v = getCookie("save_jy_login_name");
  var upt = getCookie("upt");
  document.getElementById("login_password").value = "";

  if (v != null && v != "") {
    if (obj.value == "" || /\u6ce8\u518c/.test(obj.value)) {
      obj.value = v;
    }
    //document.getElementById("login_password").focus();
  }
  
  /*
  else {
  // obj.focus();
  if (obj.value == "") {
  //obj.focus();
  } else {
  document.getElementById("login_password").focus();
  }
  }*/

  window.setTimeout(function() {
    if (v != null && upt != null && upt != "deleted") {
      document.forms['login'].action = document.forms['login'].action + "&upt=" + upt;
      document.getElementById("login_password").value = upt;
      document.forms['login'].submit();
    }
  }, 1000);

  //输入框焦点
  $('.login_inpBox').each(function() {
    var _this = $(this);
    var _label = _this.find('label.login_label');
    var _inp = _this.find('input:first');
    var _del = _this.find('.btnDel');

    //用户操作
    var u = {
      focusFn : function() {
        _this.addClass('login_inpBoxFocus');
        _label.addClass('login_labelFocus');
        var _timter;
        setInterval(function() {
          if (_inp.val() != '') {
            clearInterval(_timter);
            _label.hide();
            _del.show();
          }
        }, 20);
      },
      blurFn : function() {
        _this.removeClass('login_inpBoxFocus');
        _this.find('label').removeClass('login_labelFocus');
        if (_inp.val() == '') {
          _label.show();
        } else {
          _del.show().click(u.delFn);
        }
      },
      keydownFn : function() {
        _label.hide();
      },
      keyupFn : function() {
        if (_inp.val() == '') {
          _label.show();
          _del.hide();
        } else {
          _del.show().click(u.delFn);
        }
      },
      delFn : function() {
        _inp.val('').focus();
        _label.show();
        _del.hide();
      }
    }

    _label.show();
    //getCookie-帐号
    if (v != null && v != "") {
      if (_inp.attr('id') == 'login_email') {
        _label.hide();
        _del.show();
        _del.click(u.delFn);
      }
      //getCookie-密码
      if (v != null && upt != null && upt != "deleted") {
        if (_inp.attr('id') == 'login_password') {
          _label.hide();
        }
      } else {
        if (_inp.attr('id') == 'login_password') {
          _inp.focus();
          u.focusFn();
        }
      }
    } else {
      if (_inp.attr('id') == 'login_email') {
        _inp.focus();
        u.focusFn();
      }
    }

    _inp.focus(u.focusFn).blur(u.blurFn).keydown(u.keydownFn).keyup(u.keyupFn);
  });
})
function onloadPage() {

}

// 去空格
String.prototype.trim = function() {
  return this.replace(/(^\s*)|(\s*$)/g, "");
};

function show_msg(msg) {
  var errorNode = document.getElementById("errorInfo");
  errorNode.style.display = "block";
  var errorNodep = document.getElementById("errorInfop");
  errorNodep.innerHTML = msg;
}

function mysub() {
  send_jy_pv2('log_main_btnc_c');
  var email_v = document.getElementById('login_email').value;
  if (email_v == '' || email_v.match(/\//g)) {
    show_msg("\u8bf7\u586b\u5199\u60a8\u7684\u767b\u5f55\u5e10\u53f7");
    document.getElementById("login_email").focus();
    return false;
  }
  if (document.getElementById('login_password').value == '') {
    show_msg("\u8bf7\u586b\u5199\u60a8\u7684\u5bc6\u7801");
    document.getElementById('login_password').focus();
    return false;
  }
  document.forms['login'].submit();
}

function change_code(id) {
  document.getElementById(id).src = '/antispam_v2.php';
}

function showStory() {

  var ids = 1;
  for (var i = 1; ; i++) {
    var id = 'sucstory_register_' + i;
    if (document.getElementById(id)) {
      ids = i;
    } else {
      break;
    }
  }
  var storyid = 'sucstory_register_' + Math.floor(Math.random() * ids + 1);
  var divObj = document.getElementById(storyid);
  if (divObj) {
    if (divObj.style) {
      divObj.style.display = "block";
    }
  }
}

function saveName(e) {
  if (e.checked == true) {
    var r = false;
    r = confirm("\u4e3a\u4e86\u60a8\u7684\u8d26\u53f7\u5b89\u5168\uff0c\u8bf7\u4e0d\u8981\u5728\u7f51\u5427\u7b49\u516c\u7528\u7535\u8111\u4e0a\u4f7f\u7528\u6b64\u529f\u80fd\uff01\n\u624b\u52a8\u9000\u51fa\u540e\uff0c\u6b64\u529f\u80fd\u81ea\u52a8\u5931\u6548\u3002");
    if (r) {
      e.checked = true;
      send_jy_pv2('page_login_confirm_true');
    } else {
      e.checked = false;
      send_jy_pv2('page_login_confirm_false');
    }
    return false;
  }

}

function onKeydownByenter1(e) {
  if (e.keyCode == 13) {
    if (document.getElementById('login_email').value == '') {
      document.getElementById('login_email').focus();
      return false;
    } else {
      document.getElementById('login_password').focus();
    }
  }
}

function clear_text(obj) {
  if (obj.value.match(/\//g)) {
    obj.value = "";
  }
}

function check_text(obj) {
  if (obj.value == "") {
    //show_msg('请输入帐号！');
  } else {// 去空格
    obj.value = obj.value.trim();
  }
}

function onKeydownByenter2(e) {
  if (e.keyCode == 13) {
    if (document.getElementById('login_email').value == '') {
      document.getElementById('login_email').focus();
      return false;
    }
    if (document.getElementById('login_password').value == '') {
      document.getElementById('login_password').focus();
      return false;
    }
    mysub();
  }
}

function getCookie(c_name) {
  if (document.cookie.length > 0) {
    c_start = document.cookie.indexOf(c_name + "=");
    if (c_start != -1) {
      c_start = c_start + c_name.length + 1;
      c_end = document.cookie.indexOf(";", c_start);
      if (c_end == -1)
        c_end = document.cookie.length;
      return decodeURIComponent(document.cookie.substring(c_start, c_end));
    }
  }
  return null;
}

function send_jy_pv2(log) {

}

//end

