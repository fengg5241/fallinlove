function templates_onclick() {
		var templates_layer= document.getElementById("templates_layer");
		var templates= document.getElementById("templates");

		if(templates_layer.style.display=="none"){
			templates_layer.style.display="block";
		}else{
			templates_layer.style.display="none";
		}

	}
function templates_close(){
	var templates_layer= document.getElementById("custom_layer")||document.getElementById("templates_layer");
	templates_layer.style.display="none";
}

function custom_onclick() {
		var custom_layer=document.getElementById("custom_layer");
		if(custom_layer.style.display=="none"){
			custom_layer.style.display="block";
		}else{
			custom_layer.style.display="none";
		}
	}
function custom_close(){
	var custom_layer= document.getElementById("custom_layer");
	custom_layer.style.display="none";
}

function letters_tip_close(){
	var letters_tip= document.getElementById("letters_tip");
	letters_tip.style.display="none";
}
function history_layer(o){
	var history_record= document.getElementById("history_record");
	if(history_record.style.display=="none"){
		history_record.style.display="block";
		o.className="history_btn_close"
	}else{
		history_record.style.display="none";
		o.className="history_btn_open"
	}
}