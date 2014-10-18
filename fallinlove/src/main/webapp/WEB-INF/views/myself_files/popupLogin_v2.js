var loginWindow = (function() {
    function h(c) {
        if (document.getElementById(t)) {
            document.body.removeChild(document.getElementById(t))
        }
        var a = document.createElement("div");
        a.id = t;
        a.style.position = "absolute";
        a.style.zIndex = "999999";
        _scrollWidth = Math.max(document.body.scrollWidth, document.documentElement.scrollWidth);
        _scrollHeight = Math.max(document.body.scrollHeight, document.documentElement.scrollHeight);
        a.style.width = _scrollWidth + "px";
        a.style.height = _scrollHeight + "px";
        a.style.top = "0";
        a.style.left = "0px";
        a.style.background = "#33393C";
        a.style.filter = "alpha(opacity=" + o.get("alpha") + ")";
        a.style.opacity = "0." + o.get("alpha");
        document.body.appendChild(a);
        showDiv = document.getElementById(c);
        showDiv.style.display = "block";
        showDiv.style.position = "absolute";
        showDiv.style.zIndex = "99999999";
        showDivWidth = 396;
        showDivHeight = 290;
        showDiv.style.top = o.get("top") + "px";
        showDiv.style.left = (document.documentElement.scrollLeft + document.documentElement.clientWidth / 2 - showDiv.scrollWidth / 2) + "px";
        if (document.all) {
            o.selectOptions = document.getElementsByTagName("select");
            for (var b = 0, d = o.selectOptions.length; b < d; b++) {
                if (o.selectOptions[b].style.display != "none") {
                    o.selectOptions[b].style.display = "none"
                }
            }
        }
    }
    var ag = window.onresize;
    window.onresize = function() {
        if (typeof ag == "function") {
            ag()
        }
        s()
    };
    function s() {
        if (z(t)) {
            z(t).style.width = Math.max(document.body.scrollWidth, document.documentElement.scrollWidth);
            z(t).style.height = Math.max(document.body.scrollHeight, document.documentElement.scrollHeight)
        }
        if (z(y)) {
            z(y).style.left = (document.documentElement.scrollLeft + document.documentElement.clientWidth / 2 - z(y).scrollWidth / 2) + "px"
        }
    }
    function z(a) {
        return document.getElementById(a)
    }
    function j(c) {
        openlogindivflag = false;
        var A = t;
        if (document.getElementById(A)) {
            document.body.removeChild(document.getElementById(A))
        }
        showDiv = document.getElementById(c);
        if (showDiv) {
            showDiv.style.display = "none"
        }
        var d = z(o.get("form"));
        if (d) {
            z(o.get("form")).reset()
        }
        var a = z(o.get("error"));
        if (a) {
            a.style.display = "none"
        }
        if (document.all) {
            for (var b = 0, B = o.selectOptions.length; b < B; b++) {
                o.selectOptions[b].style.display = ""
            }
            o.selectOptions = []
        }
        if (o.interval != null) {
            window.clearInterval(o.interval)
        }
    }
    function f() {
        if (z(o.get("name")).value == "" || z(o.get("name")).value.match(/\//g)) {
            p("\u8bf7\u586b\u5199\u60a8\u7684\u767b\u5f55\u5e10\u53f7");
            document.getElementById(o.get("name")).focus();
            return false
        }
        if (z(o.get("pass")).value == "") {
            p("\u8bf7\u586b\u5199\u60a8\u7684\u5bc6\u7801");
            z(o.get("pass")).focus();
            return false
        }
        return true
    }
    function l() {
        var a = z(o.get("name"));
        if (a) {
            var c = k("save_jy_login_name");
            if (c != null && c != "") {
                a.value = c;
                z(o.get("pass")).focus();
                var b = k("upt");
                if (b != null && b != "") {
                    z(o.get("pass")).value = b;
                    o.dologin()
                }
            } else {
                a.value = "\u6ce8\u518c\u90ae\u7bb1/\u624b\u673a\u53f7/\u4f73\u7f18ID";
                z(o.get("pass")).value = ""
            }
        }
    }
    function k(a) {
        if (document.cookie.length > 0) {
            c_start = document.cookie.indexOf(a + "=");
            if (c_start != -1) {
                c_start = c_start + a.length + 1;
                c_end = document.cookie.indexOf(";", c_start);
                if (c_end == -1) {
                    c_end = document.cookie.length
                }
                return decodeURIComponent(document.cookie.substring(c_start, c_end))
            }
        }
        return null
    }
    function ah() {
        var a = new Date();
        a.setTime(a.getTime() + 365 * 3600 * 24);
        if (z("check_save").checked) {
            ab("sava_name_jy", z("login_email").value, a)
        } else {
            ab("sava_name_jy", "", new Date(a))
        }
    }
    function ab(B, c, b, C, a, D) {
        try {
            var d = B + "=" + encodeURIComponent(c);
            if (b) {
                var E = new Date();
                E.setTime(E.getTime() + b * 3600 * 24);
                d += "; expires=" + E.toGMTString()
            }
            if (C) {
                d += "; path=" + C
            }
            if (a) {
                d += "; domain=" + a
            }
            if (D) {
                d += "; secure"
            }
            document.cookie = d
        } catch (A) {
        }
    }
    function ad() {
        var a = location.href;
        if (/msn/.test(a)) {
            if (typeof header_show_login_div == "function" && typeof JY.login.getUser == "function") {
                header_show_login_div(JY.login.getUser())
            } else {
                profile = typeof get_head_cookie == "function" ? get_head_cookie("PROFILE") : false;
                if (profile) {
                    array_of_profile = profile.split(":");
                    cookie_uid = array_of_profile[0];
                    cookie_nickname_en = array_of_profile[1];
                    cookie_nickname = decodeURIComponent(cookie_nickname_en);
                    if (z("login_head_top")) {
                        z("login_head_top").innerHTML = '<dl class="logined_c"><dt>\u6b22\u8fce\u60a8\uff1a<strong><a href="http://jiayuan.msn.com.cn/profile/?uid=' + cookie_uid + '">' + cookie_nickname + '</a></strong><dt><dd>\u60a8\u7684\u4e16\u7eaa\u4f73\u7f18\u5f81\u53cb\u5730\u5740\u662f\uff1a<span id="head_url" >http://jiayuan.msn.com.cn/profile/?uid=' + cookie_uid + '</span>&nbsp;&nbsp;<a href="javascript:mycopy_head();" target="_self"><img src="http://images.jiayuan.com/w4/global/i/hf_btn03.jpg" /></a>&nbsp;<a href="/login/logout.php" target="_self"><img src="http://images.jiayuan.com/w4/global/i/hf_btn04.jpg" /></a></dd></dl><h3><a href="http://jiayuan.msn.com.cn/helpcenter/">\u5e2e\u52a9</a>&nbsp;<a style="cursor:pointer" onclick="javascript:AddFav(\'\u4e16\u7eaa\u4f73\u7f18\u4ea4\u53cb\',\'http://jiayuan.msn.com.cn/\')">\u6536\u85cf</a>&nbsp;<a style="cursor:pointer" onclick="this.style.behavior=\'url(#default#homepage)\';this.setHomePage(\'http://jiayuan.msn.com.cn/\')">\u8bbe\u4e3b\u9875</a></h3>'
                    }
                }
            }
        } else {
            if (typeof header_show_login_div == "function" && typeof JY.login.getUser == "function") {
                header_show_login_div(JY.login.getUser())
            } else {
                profile = typeof get_head_cookie == "function" ? get_head_cookie("PROFILE") : false;
                if (profile) {
                    array_of_profile = profile.split(":");
                    cookie_uid = array_of_profile[0];
                    cookie_nickname_en = array_of_profile[1];
                    cookie_nickname = decodeURIComponent(cookie_nickname_en);
                    if (z("login_head_top")) {
                        z("login_head_top").innerHTML = '<dl class="logined_c"><dt>\u6b22\u8fce\u60a8\uff1a<strong><a href="http://www.jiayuan.com/' + cookie_uid + '">' + cookie_nickname + '</a></strong><dt><dd>\u60a8\u7684\u4e16\u7eaa\u4f73\u7f18\u5f81\u53cb\u5730\u5740\u662f\uff1a<span id="head_url" >http://www.jiayuan.com/' + cookie_uid + '</span>&nbsp;&nbsp;<a href="javascript:mycopy_head();" target="_self"><img src="' + HEAD_IMAGE_URL + 'i/hf_btn03.jpg" /></a>&nbsp;<a href="http://www.' + mydomain + '/login/logout.php" target="_self"><img src="' + HEAD_IMAGE_URL + 'i/hf_btn04.jpg" /></a></dd></dl><h3><a href="http://www.' + mydomain + '/helpcenter/">\u5e2e\u52a9</a>&nbsp;<a style="cursor:pointer" onclick="javascript:AddFav(\'\u4e16\u7eaa\u4f73\u7f18\u4ea4\u53cb\',\'http://www.' + mydomain + "')\">\u6536\u85cf</a>&nbsp;<a style=\"cursor:pointer\" onclick=\"this.style.behavior='url(#default#homepage)';this.setHomePage('http://www." + mydomain + '\')">\u8bbe\u4e3b\u9875</a>&nbsp;<a href="http://www.' + mydomain + '/bottom/comment.html" target="_blank">\u8054\u7cfb\u5ba2\u670d</a></h3>'
                    }
                }
            }
        }
    }
    function p(a) {
        var b = z(o.get("error"));
        b.style.display = "block";
        b.innerHTML = a;
        z(o.get("pass")).value = "";
        z(o.get("pass")).focus()
    }
    var u = 0;
    function ae() {
        var b;
        if (document.documentElement && document.documentElement.scrollTop) {
            b = document.documentElement.scrollTop
        } else {
            if (document.body) {
                b = document.body.scrollTop
            } else {
            }
        }
        percent = 0.1 * (b - u);
        if (percent > 0) {
            percent = Math.ceil(percent)
        } else {
            percent = Math.floor(percent)
        }
        var a = z(y);
        if (!a) {
            return
        }
        if (a.style.top != o.get("top")) {
            a.style.top = parseInt(a.style.top) + percent + "px"
        }
        u = u + percent;
        s()
    }
    function w(a) {
        if (window.console) {
            if (window.console.trace) {
                window.console.trace();
                window.console.log(a)
            }
        }
    }
    function i() {
        o.interval = window.setInterval(function() {
            ae()
        }, 10)
    }
    var g = "";
    var t = "";
    var y = "";
    var ac = false;
    var v = null;
    var af = 0;
    var aa = {form: "loginForm",name: "login_email",pass: "login_password",error: "errorInfo",top: 200,move: true,alpha: 70};
    var r = {get_common_tpl: function(a) {
            send_jy_pv2("open_window_" + a.key + "_pv");
            o.setIds({form: "loginForm_new",name: "login_email_new",pass: "login_password_new",error: "errorInfo_new",top: 200,move: true,alpha: 50});
            var b = '<iframe src="" name="login_run" width=0 height=0 style="display:none"></iframe><div><div class="alert_bg2"> <div class="clear text_pop_login"> <a title="close" class="closer" onclick="loginWindow.closelogindiv(\'' + a.showid + "');send_jy_pv2('new_popup_" + a.key + 'click_close\');return false;" href="#"> </a> <span class="l">老会员登录</span><span class="r">新会员注册</span> </div> <div class="clear"> <div class="alert_left"><p id="errorInfo_new" class="red" style="display: none;"></p><form target="login_run" action="/login/dologin.php?" method="post" id="loginForm_new" name="loginForm"> <dl class="login_box pb26 clear"> <dt>登录帐号：</dt> <dd> <input value="邮箱/ID/手机号" type="text" class="texts gra" name="name" onkeyup="loginWindow.onkeyupName(event);" onkeydown="if(event.keyCode==9){document.getElementById(\'login_password_new\').focus(); return false;}" onfocus="clear_text(this);this.className=\'texts\';" onblur="check_text(this);this.className=\'texts gra\';" id="login_email_new"> </dd> </dl> <dl class="login_box clear"> <dt>密<font color="white">密码</font>码：</dt> <dd> <input type="password" class="texts gra" onkeyup="loginWindow.onkeyupPass(event);" onkeydown="if(event.keyCode==9){document.getElementById(\'on_sumbit\').focus();return false;}" id="login_password_new" autocomplete="off" onfocus="this.className=\'texts\';" onblur="this.className=\'texts gra\';" name="password"> </dd> </dl> <dl class="login_box pt5 clear">   <dt></dt> <dd><span class="check_g"><input type="checkbox" id="check_save" name="remem_pass" checked="true"></span> <span class="gray">两周内自动登录</span></dd> </dl> <dl class="login_box pt13 clear"> <dt></dt> <dd> <input type="button" onmouseover="this.className=\'login_btn hov\';" onmouseout="this.className=\'login_btn\';" value="登 录" onclick="loginWindow.dologin();send_jy_pv2(\'2new_popup_click_submit_2\')" class="login_btn" /> <span class="forget_pw"><a href="http://www.jiayuan.com/login/validate.php" target="_blank">忘记密码</a></span></dd> </dl> <input type="hidden" value="1" name="ajaxsubmit" id="ajax"> <input type="hidden" value="1" name="ljg_login"> </form> <div id="pop_display_show_' + a.key + '" class="pop_openid clear"> <span class="l">您也可以用以下方式登录：</span> <span class="r"> <a href="http://www.jiayuan.com/general/t/?forward=qqAware&amp;c=11&amp;p=1" class="openid_qq pngfix">QQ</a> <a class="openid_weibo pngfix" href="http://www.jiayuan.com/general/t/?forward=sinaAware&c=11&p=2">新浪微博</a> <a href="http://www.jiayuan.com/general/t/?forward=renrenAware&amp;c=11&amp;p=3" class="openid_renren pngfix">人人</a> <a href="http://www.jiayuan.com/general/t/?forward=baiduOauth&amp;c=11&amp;p=5" class="openid_baidu pngfix">百度</a> <a href="http://www.jiayuan.com/general/t/?forward=doubanAware&amp;c=11&amp;p=6" class="openid_douban pngfix">豆瓣</a> <a href="http://www.jiayuan.com/general/t/?forward=kaixinAware&amp;c=11&amp;p=4" class="openid_kaixin pngfix">开心</a> <a href="http://www.jiayuan.com/general/t/?forward=alipayOauth&amp;c=11&amp;p=7" class="openid_alipay pngfix">支付宝</a></span></div></div><div class="alert_right"> <a class="reg_bg" onclick="send_jy_pv2(\'new_popup_' + a.key + '_click_reg\');" id="reglink" href="http://www.jiayuan.com/register/?bd=' + a.key + '" target="_blank">立即注册</a> </div> </div> </div></div>';
            if (a.key == 18) {
                if (typeof a.aid == "undefined") {
                    a.aid = 5927
                }
                g = g + "&login_from=" + a.aid;
                send_jy_pv2("open_window_" + a.aid + "_pv");
                o.setIds({form: "loginForm2",name: "login_email2",pass: "login_password2",error: "errorInfo2",top: 200,move: true,alpha: 50});
                b = '<iframe src="" name="login_run" width=0 height=0 style="display:none"></iframe><div><div class="alert_bg2"> <div class="clear text_pop_login"> <a title="close" class="closer" onclick="loginWindow.closelogindiv(\'' + a.showid + "');send_jy_pv2('new_popup_" + a.key + 'click_close\');return false;" href="#"> </a> <span class="l">老会员登录</span><span class="r">新会员注册</span> </div> <div class="clear"> <div class="alert_left"><p id="errorInfo2" class="red" style="display: none;"></p><form target="login_run" action="/login/dologin.php?" method="post" id="loginForm2" name="loginForm"> <dl class="login_box pb26 clear"> <dt>登录帐号：</dt> <dd> <input value="邮箱/ID/手机号" type="text" class="texts gra" name="name" onkeyup="loginWindow.onkeyupName(event);" onkeydown="if(event.keyCode==9){document.getElementById(\'login_password2\').focus(); return false;}" onfocus="clear_text(this);this.className=\'texts\';" onblur="check_text(this);this.className=\'texts gra\';" id="login_email2"> </dd> </dl> <dl class="login_box clear"> <dt>密<font color="white">密码</font>码：</dt> <dd> <input type="password" class="texts gra" onkeyup="loginWindow.onkeyupPass(event);" onkeydown="if(event.keyCode==9){document.getElementById(\'on_sumbit\').focus();return false;}" id="login_password2" autocomplete="off" onfocus="this.className=\'texts\';" onblur="this.className=\'texts gra\';" name="password"> </dd> </dl> <dl class="login_box pt5 clear">   <dt></dt> <dd><span class="check_g"><input type="checkbox" id="check_save" name="remem_pass" checked="true"></span> <span class="gray">两周内自动登录</span></dd> </dl> <dl class="login_box pt13 clear"> <dt></dt> <dd> <input type="button" onmouseover="this.className=\'login_btn hov\';" onmouseout="this.className=\'login_btn\';" value="登 录" onclick="loginWindow.dologin();send_jy_pv2(\'2new_popup_click_submit_2\')" class="login_btn" /> <span class="forget_pw"><a href="http://www.jiayuan.com/login/validate.php" target="_blank">忘记密码</a></span></dd> </dl> <input type="hidden" value="1" name="ajaxsubmit" id="ajax"> <input type="hidden" value="1" name="ljg_login"> </form> <div class="pop_openid clear" id="pop_display_show_' + a.key + '" style="display:none;"> <span class="l">您也可以用以下方式登录：</span> <span class="r"> <a href="http://www.jiayuan.com/general/t/?forward=qqAware&amp;c=11&amp;p=1" class="openid_qq pngfix">QQ</a> <a class="openid_weibo pngfix" href="http://www.jiayuan.com/general/t/?forward=sinaAware&c=11&p=2">新浪微博</a> <a href="http://www.jiayuan.com/general/t/?forward=renrenAware&amp;c=11&amp;p=3" class="openid_renren pngfix">人人</a> <a href="http://www.jiayuan.com/general/t/?forward=baiduOauth&amp;c=11&amp;p=5" class="openid_baidu pngfix">百度</a> <a href="http://www.jiayuan.com/general/t/?forward=doubanAware&amp;c=11&amp;p=6" class="openid_douban pngfix">豆瓣</a> <a href="http://www.jiayuan.com/general/t/?forward=kaixinAware&amp;c=11&amp;p=4" class="openid_kaixin pngfix">开心</a> <a href="http://www.jiayuan.com/general/t/?forward=alipayOauth&amp;c=11&amp;p=7" class="openid_alipay pngfix">支付宝</a></span></div></div><div class="alert_right"> <a class="reg_bg" onclick="send_jy_pv2(\'new_popup_' + a.key + '_click_reg\');" id="reglink" href="http://www.jiayuan.com/register/?bd=' + a.key + '" target="_blank">立即注册</a> </div> </div> </div></div>'
            }
            return b
        }};
    function x(a) {
        var b = document.createElement("div");
        b.id = "pop_login_div_" + (a ? a : "");
        b.style.display = "none";
        document.body.appendChild(b);
        return b
    }
    function m(a) {
        var b = document.createElement("link");
        b.rel = "stylesheet";
        b.type = "text/css";
        b.id = "linkidforpop";
        b.href = a;
        document.getElementsByTagName("head")[0].appendChild(b);
        window.setTimeout(function() {
            var c = z("linkidforpop");
            if (c.readyState == "loaded" || c.readyState == "complete" || c.readyState == "interactive") {
            } else {
            }
        }, 1000)
    }
    function n(A, a) {
        var c = document;
        var B = c.getElementsByTagName("head")[0];
        var b = c.createElement("style");
        b.setAttribute("type", "text/css");
        if (a) {
            b.setAttribute("id", a)
        }
        if (document.all) {
            B.appendChild(b)
        } else {
            try {
                b.appendChild(c.createTextNode(A))
            } catch (d) {
                b.cssText = A
            }
            B.appendChild(b)
        }
    }
    function q(a) {
        var b = document.createElement("script");
        b.language = "javascript";
        b.type = "text/javascript";
        b.id = "scriptidforpop";
        b.src = a;
        document.getElementsByTagName("head")[0].appendChild(b);
        window.setTimeout(function() {
            var c = z("linkidforpop");
            if (c.readyState == "loaded" || c.readyState == "complete" || c.readyState == "interactive") {
            } else {
            }
        }, 1000)
    }
    function e() {
        var a = "jiayuan.com";
        if (/miuu/.test(location.host)) {
            a = "miuu.cn"
        }
        return a
    }
    var o = {set: function(b, a) {
            aa[b] = a
        },get: function(a) {
            return aa[a]
        },setX: function(a) {
            g = a
        },openlogindiv: function(b, a, c) {
            if (o.isOpen() || o.isLogin()) {
                return
            }
            ac = true;
            o.onOpen(b);
            if (typeof c == "function") {
                v = c
            }
            o.setIds({form: "loginForm",name: "login_email",pass: "login_password",error: "errorInfo",top: 200,move: true,alpha: 70});
            g = a;
            y = b;
            t = "will_mask_" + b;
            h(b);
            u = 0;
            if (aa.move == true) {
                i()
            }
            l();
            q("http://www.jiayuan.com/general/?m=oauthDisplay&domid=oauth_display")
        },closelogindiv: function(a) {
            ac = false;
            j(a);
            o.onClose(a)
        },dologin: function() {
            if (f()) {
                if (/msn|miuu|xique|51liehun/.test(location.host)) {
                    z(o.get("form")).action = "/login/dologin.php?pre_url=" + g
                } else {
                    z(o.get("form")).action = "https://passport.jiayuan.com/dologin.php?host=" + location.host + "&pre_url=" + g
                }
                z(o.get("form")).submit()
            }
        },showError: function(a) {
            p(a)
        },refreshPage: function(a) {
            j(y);
            ad();
            is_login_user = "1";
            if (typeof v == "function") {
                v()
            }
            o.setCookie("popup_count_15", 0, -1);
            o.setCookie("popup_count_16", 0, -1);
            o.setCookie("poplogincount", 0, -1)
        },onkeyupName: function(a) {
            if (a.keyCode == 13) {
                if (z(o.get("name")).value == "") {
                    z(o.get("name")).focus();
                    return false
                } else {
                    z(o.get("pass")).focus()
                }
            }
        },onkeyupPass: function(a) {
            if (a.keyCode == 9) {
            } else {
                if (a.keyCode == 13) {
                    if (z(o.get("name")).value == "") {
                        z(o.get("name")).focus();
                        return false
                    }
                    if (z(o.get("pass")).value == "") {
                        z(o.get("pass")).focus();
                        return false
                    }
                    this.dologin()
                }
            }
        },setIds: function(a) {
            for (var b in a) {
                aa[b] = a[b]
            }
            if (typeof aa.top == "undefined") {
                aa.top = 200
            }
            if (typeof aa.move == "undefined") {
                aa.move = true
            }
            if (typeof aa.alpha == "undefined") {
                aa.alpha = 70
            }
        },onOpen: function(a) {
        },openTPL: function(a) {
            if (o.isOpen() || o.isLogin()) {
                return
            }
            af = af + 1;
            ac = true;
            var A = a.id ? z(a.id) : x("index");
            var B = A.id;
            o.onOpen(B);
            var C = {};
            C = a.tplconfig;
            var d = o.get("config");
            if (typeof d != "undefined") {
                for (var b in d) {
                    C[b] = d[b]
                }
            }
            C.showid = B;
            if (typeof C.callback == "function") {
                v = C.callback
            }
            A.innerHTML = r.get_common_tpl(C);
            y = B;
            t = "will_mask_" + B;
            h(B);
            u = 0;
            if (aa.move == true) {
                i()
            }
            if (a.initForm && a.initForm == true) {
                l()
            }
            window.setTimeout(function() {
                m("http://images1.jyimg.com/w4/login/c/openid20120612.css")
            }, 1000);
            var c = navigator.userAgent.toLowerCase();
            if (/msie 6/.test(c)) {
            }
            q("http://www.jiayuan.com/general/?m=oauthDisplayCb&domid=oauthDisplayCb&cb=display_pop_div");
            window.display_pop_div = function(D) {
                var E = C.key;
                if (D) {
                    document.getElementById("pop_display_show_" + E).style.display = "block"
                } else {
                    document.getElementById("pop_display_hidden_" + E).style.display = "block"
                }
            }
        },onLoad: function() {
            v.call(this, 2)
        },loadResource: function(a, b) {
            if (b && b == "css") {
                m(a)
            } else {
                q(a)
            }
        },taskRun: function(a, b, d) {
            if (!o.isLogin()) {
                var c = window.setInterval(function() {
                    if (!o.isOpen()) {
                        var A = o.getCookie("popup_count_" + d);
                        A = A == null ? 0 : parseInt(A);
                        if (A < a) {
                            o.log("c:" + A);
                            o.log("p:" + o.popCount());
                            if (o.isOpen() || o.isLogin() || o.popCount() == 1) {
                                return
                            }
                            o.openTPL({tplconfig: {key: d},initForm: true});
                            var B = A + 1;
                            o.setCookie("popup_count_" + d, B)
                        }
                        window.clearInterval(c)
                    }
                }, b)
            }
        },setCookie: function(b, a, B, d, C, c) {
            var A = document.domain;
            var A = A.substr(A.indexOf(".") + 1);
            ab(b, a, B, "/", A, c)
        },popCount: function() {
            return af
        },getCookie: function(a) {
            return k(a)
        },isOpen: function() {
            return ac
        },onClose: function() {
        },isLogin: function() {
            var a = k("PROFILE");
            if (a && a.length > 10) {
                var b = a.split(":");
                if (/^\d{7,10}$/.test(b[0])) {
                    if (parseInt(b[0]) > 0) {
                        o.setCookie("popup_count_15", 0, -1);
                        o.setCookie("popup_count_16", 0, -1);
                        o.setCookie("poplogincount", 0, -1);
                        return true
                    }
                }
            }
            return false
        },log: function(a) {
            w(a)
        }};
    return o
})();
function clear_text(a) {
    if (a.value.match(/\//g)) {
        a.value = ""
    }
}
function check_text(a) {
    if (a.value == "") {
        a.value = "\u6ce8\u518c\u90ae\u7bb1/\u624b\u673a\u53f7/\u4f73\u7f18ID"
    }
}
if (typeof (send_jy_pv2) != "function") {
	function send_jy_pv2(log) {
		try{
			var f_url_arr = ['59.151.18.13','59.151.12.227','59.151.18.13','59.151.12.227','59.151.12.228:81'];
			var k = Math.floor(Math.random() * f_url_arr.length);
			var f_url = "http://"+f_url_arr[k]+"/any/";
			var Arr = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","w","v","x","y","z","0","1","2","3","4","5","6","7","8","9"];
			var n = Math.floor(Math.random() * Arr.length + 1)-1;   
			var im = "l_" + Math.floor(2147483648 * Math.random()).toString(36);
			var url = f_url +Arr[n]+".gif?|"+log+"|&"+im+"="+new Date().getTime()+"|";
			window[im] = new Image(),window[im].T=im,
			window[im].onload = window[im].onerror = window[im].onabort = function(){
						try {
							this.onload = this.onerror = this.onabort = null;
							window[this.T] = null;
						} catch(e) {}			
			}
			window[im].src = url;
		} catch(e){}
	}
}
function pop_login_save_me(b) {
    if (b.checked == true) {
        var a = false;
        a = confirm("\u4e3a\u4e86\u60a8\u7684\u8d26\u53f7\u5b89\u5168\uff0c\u8bf7\u4e0d\u8981\u5728\u7f51\u5427\u7b49\u516c\u7528\u7535\u8111\u4e0a\u4f7f\u7528\u6b64\u529f\u80fd\uff01\n\u624b\u52a8\u9000\u51fa\u540e\uff0c\u6b64\u529f\u80fd\u81ea\u52a8\u5931\u6548\u3002");
        if (a) {
            b.checked = true;
            send_jy_pv2("pop_login_confirm_true")
        } else {
            b.checked = false;
            send_jy_pv2("pop_login_confirm_false")
        }
        return false
    }
}
;