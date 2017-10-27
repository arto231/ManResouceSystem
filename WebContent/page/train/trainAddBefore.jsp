<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加培训信息</title>
</head>
<script src="../../js/checkjs.js"></script>
<body>
<<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><h2>输入培训信息</h2></font></font></h4>

<form action="train_add.action" id="trainadd">
<table>
 
  <tr>
    <td>培训人员姓名</td>
    <td><input type="text" name="tn_man" id="tn_man"></td>
  </tr>
  <tr>
    <td>培训标题</td>
    <td><input type="text" name="tn_title" id="tn_title"></td>
  </tr>
  <tr>
    <td>培训内容</td>
    <td><input type="text" name="tn_content" id="tn_content"></td>
  </tr>
  <tr>
    <td>培训时间</td>
    <td><input type="text" name="tn_time" id="tn_time" ></td>
  </tr>
  <tr>
    <td>培训地址</td>
    <td><input type="text" name="tn_address" id="tn_address"></td>
  </tr>
  <tr>
    <td>部门</td>
    <td><input type="text" name="tn_join" id="tn_join"></td>
  </tr>
  
  <tr>
    <td>备注</td>
    <td><input type="text" name="tn_bz" id="tn_bz"></td>
  </tr>
  <tr>
    <td>----</td>
    <td><input type="button" value="提交" >
    <input type="hidden"  id="post_url" value="train_add.action">
<input type="hidden"  id="load_url" value="train_querry.action"></td>
  </tr>
  
</table>

<a href="train_querry.action">返回</a>

</form>
</div></div></div>
</body>
</html>