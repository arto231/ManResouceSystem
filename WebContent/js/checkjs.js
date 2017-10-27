function checkCjAdd() {
	var cj_content = document.getElementById("cj_content").value;
	var cj_title = document.getElementById("cj_title").value;
	var cj_money = document.getElementById("cj_money").value;
	var cj_time = document.getElementById("cj_time").value;
	if (isStringNull(cj_content)) {
		alert("内容不能为空");
		return false;
	} else if (isStringNull(cj_content)) {
		alert("标题不能为空");
		return false;
	} else if (!isNumber(cj_money)) {
		alert("输入正确的金额");
		return false;
	} else if (!/\d{4}(\-|\/|.)\d{1,2}\1\d{1,2}/.test(cj_time)) {
		alert("日期格式：\nDDDD-MM-DD" + "\n重新输入");
		return false;
	}
	document.getElementById("cj_add").submit();
	alert("添加成功");
}
function checkEmployeeAdd() {
	var em_name = document.getElementById("em_name").value;
	var em_IDCard = document.getElementById("em_IDCard").value;
	var em_tel = document.getElementById("em_tel").value;
	var em_afterSchool = document.getElementById("em_afterSchool").value;
	var em_specially = document.getElementById("em_specially").value;
	var em_culture = document.getElementById("em_culture").value;
	var em_startime = document.getElementById("em_startime").value;
	var em_typeWork = document.getElementById("em_typeWork").value;
	var em_createName = document.getElementById("em_createName").value;
	if (isStringNull(em_name)) {
		alert("姓名不能为空");
		return false;
	} else if (!em_IDCard.match(/\d{17}[\d|x]|\d{15}/)) {
		alert("身份证格式有误");
		return false;
	} else if (!isPhoneNumber(em_tel)) {
		alert("输入正确手机号码");
		return false;
	} else if (isStringNull(em_afterSchool)) {
		alert("学校不能为空");
		return false;
	} else if (!isDataformat(em_startime)) {
		alert("日期格式：\nDDDD-MM-DD" + "\n重新输入");
		return false;
	} else if (isStringNull(em_specially)) {
		alert("专业不能为空");
		return false;
	} else if (isStringNull(em_culture)) {
		alert("文化程度不能为空");
		return false;
	} else if (isStringNull(em_createName)) {
		alert("输入登记人信息");
		return false;
	}
	document.getElementById("employeeadd").submit();
	alert("添加成功");
}
function checkInviteAdd(){
	var name = document.getElementById("name").value;
	var age = document.getElementById("age").value;
	var born = document.getElementById("born").value;
	var job = document.getElementById("job").value;
	var specially = document.getElementById("specially").value;
	var teachSchool = document.getElementById("teachSchool").value;
	var afterSchool = document.getElementById("afterSchool").value;
	var tel = document.getElementById("tel").value;
	var address = document.getElementById("address").value;
	if(isStringNull(name)){
		alert("姓名不能为空");
		return false;
	}else if (!isNumber(age)) {
		alert("输入正确的年龄");
		return false;
	}else if (!isDataformat(born)) {
		alert("输入正确的出生年月");
		return false;
	}else if (isStringNull(job)) {
		alert("输入正确的求职意向");
		return false;
	}else if (isStringNull(specially)) {
		alert("输入正确的专业");
		return false;
	}
	else if (isStringNull(teachSchool)) {
		alert("输入正确的文化程度");
		return false;
	}else if (isStringNull(afterSchool)) {
		alert("输入正确的毕业学校");
		return false;
	}else if (!isPhoneNumber(tel)) {
		alert("输入正确的手机号");
		return false;
	}else if (isStringNull(address)) {
		alert("输入正确的地址");
		return false;
	}
	document.getElementById("inviteadd").submit();
	alert("添加成功");
}
function checkManaAdd(){
	var account = document.getElementById("account").value;
	var psd = document.getElementById("psd").value;
	var checkpsd = document.getElementById("checkpsd").value;
	alert(psd+"  check:"+checkpsd);
	if (isStringNull(account)) {
		alert("用户名不能为空");
		return false;
	}else if(! (psd == checkpsd)||isStringNull(psd)||isStringNull(checkpsd)){
		alert("两次密码不一致");
		return false;
	}
	
	document.getElementById("addMana").submit();
	alert("添加成功");
}
function checkdepartmentAdd(){
	var dt_name = document.getElementById("dt_name").value;
	if (isStringNull(dt_name)) {
		alert("部门不能为空");
		return false;
	}
	document.getElementById("partmentadd").submit();
	alert("添加成功");
}
function checktrainAdd(){
	var tn_man = document.getElementById("tn_man").value;
	var tn_title = document.getElementById("tn_title").value;
	var tn_content = document.getElementById("tn_content").value;
	var tn_address = document.getElementById("tn_address").value;
	var tn_join = document.getElementById("tn_join").value;
	var tn_time = document.getElementById("tn_time").value;
	if (isStringNull(tn_man)) {
		alert("名不能为空");
		return false;
	}else if (isStringNull(tn_title)) {
		alert("输入正确的标题");
		return false;
	}else if (isStringNull(tn_content)) {
		alert("输入正确的内容");
		return false;
	}else if (isStringNull(tn_address)) {
		alert("输入正确的地址");
		return false;
	}else if (isStringNull(tn_join)) {
		alert("输入正确的部门");
		return false;
	}else if (!isDataformat(tn_time)) {
		alert("输入正确的日期");
		return false;
	}
	
	document.getElementById("trainadd").submit();
	alert("添加成功");
}
// 判断字符是否为空
function isStringNull(value) {
	if (value == null || value == undefined || value == '') {
		return true;
	}
}
// 判断是否是数值
function isNumber(var1){
	if(var1.match(/^-?\d+$/)){
		return true;
	}
}
// 判断是否是日期格式
function isDataformat(vardate){
	if(vardate.match(/\d{4}(\-|\/|.)\d{1,2}\1\d{1,2}/)){
		return true;
	}
	
}
//判断是否是电话号码格式
function isPhoneNumber(varphone){
	if(varphone.match(/0?(13|14|15|18)[0-9]{9}/)){
		return true;
	}
}