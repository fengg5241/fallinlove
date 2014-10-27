//加载新版头部
document.write('<script type="text\/javascript" src="http:\/\/images1.jyimg.com\/js\/header\/head_pink.js"><\/script>');
//临时兼容显示标题区域
var tmp_head_mdy_time = setInterval(showalert, 500);
function showalert(){if(document.getElementById('head_red_simple')){clearInterval(tmp_head_mdy_time);document.getElementById('head_red_simple').style.display = '';}} 