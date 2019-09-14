function loginFormEmptyCheck(){
	if($("#uname").val()==''){
		$(".error_uname").show();
		$("#uname").focus();
		return false;
	}else{
		$(".error_uname").hide();
	}
	
	if($("#upwd").val()==''){
		$(".error_upwd").show();
		$("#upwd").focus();
		return false;
	}else{
		$(".error_upwd").hide();
	}
}