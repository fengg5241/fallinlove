( function() {
	function ready()
	{
		var divs = getElementsByName("ads_div");
		var src = "/dynmatch/ajax/c.php?r="+Math.random();
		for (var i = 0; i < divs.length; i++)
		{
			var param = divs[i].getAttribute("ad_param");
			src += "&ad_param[]="+encodeURIComponent(param);
			
		}
		jQuery.post(src, function (data) {
			try {
				var obj = eval('(' + data + ')');
			} catch (e) {
				var obj = [];
			}
			for (var i = 0; i < obj.length; i++)
			{
				jQuery(obj[i]).appendTo(jQuery(divs[i]));
				divs[i].style.display = "";
			}
		});
	}
	function getElementsByName(name) {
		var returns = document.getElementsByName(name);
		if(returns.length > 0) return returns;
		returns = new Array();
		var e = document.getElementsByTagName('div');
		for(i = 0; i < e.length; i++) {
			if(e[i].getAttribute("name") == name) {
				returns[returns.length] = e[i];
			}
		}
		return returns;
	}
	ready();
})();
