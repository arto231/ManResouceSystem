$(document).ready(
		function() {
			$("#btn").click(function() {
				$("#txt").hide();
			});
			/*******************************************************************
			 * 此方式用于动态加载的html元素事件绑定
			 ******************************************************************/
			$(document).on(
					"click",
					":button",
					function() {

						// $(this).toggle();

						// post,三个参数
						/**
						 * url 获取数据地址 data 携带发送的数据 比如：{ name:"Donald Duck",
						 * city:"Duckburg" } function(data,status)两个参数
						 * data，服务器传回的数据 status 状态信息
						 * 
						 * 
						 */
						var d = {};
						// var data;
						var post_url = $("input#post_url").val();
						var load_url = $("input#load_url").val();
						var t = $('form').serializeArray();
						$.each(t, function() {
							d[this.name] = this.value;
						});
						// data={dt_name:'name',dt_bz:'bz'}.toString();
						// alert(data);
						alert(JSON.stringify(d) + "\n" + post_url + "\n"
								+ load_url);
						$.post(post_url, d, function(data, status) {
							console.log("post:" + status);
							if (status == "success") {
								$("p#txtHint").load(load_url,
										function(responseTxt, statusTxt, xhr) {
											console.log("load:" + status);
											if (statusTxt == "success") {
												alert("添加成功");
											} else {
												alert("load 添加 失败");
											}
										});
							} else {
								alert("post 添加 失败");
							}

						});

						/*******************************************************
						 * responseTxt - 包含调用成功时的结果内容 statusTXT - 包含调用的状态 xhr -
						 * 包含 XMLHttpRequest 对象
						 * $("#div1").load("demo_test.txt",function(responseTxt,statusTxt,xhr){
						 * if(statusTxt=="success") alert("外部内容加载成功！");
						 * if(statusTxt=="error") alert("Error: "+xhr.status+":
						 * "+xhr.statusText); });
						 ******************************************************/

					});
		});
