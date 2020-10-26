
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>岗位</title><LINK href="CSS.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.gongsi.value==""){alert("请输入公司");document.form1.gongsi.focus();return false;}if(document.form1.gangweimingcheng.value==""){alert("请输入岗位名称");document.form1.gangweimingcheng.focus();return false;}
}
function gow()
{
	document.location.href="gangwei_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <body >
  <form name="form1" id="form1" method="post" action="gangwei_add_post.jsp">
  添加岗位:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">    <tr><td>公司：</td><td><input name='gongsi' type='text' id='gongsi' value='<%=request.getSession().getAttribute("gongsi")%>' />
&nbsp;*</td></tr><tr><td>岗位名称：</td><td><input name='gangweimingcheng' type='text' id='gangweimingcheng' value='' size='50' />&nbsp;*</td></tr><tr><td>招聘人数：</td><td><input name='zhaopinrenshu' type='text' id='zhaopinrenshu' value='' /></td></tr><tr><td>性别要求：</td><td><select name='xingbieyaoqiu' id='xingbieyaoqiu'>
     <option value="不限">不限</option>
     <option value="男">男</option>
     <option value="女">女</option>
</select></td></tr><tr><td>月薪：</td><td><input name='yuexin' type='text' id='yuexin' value='' /></td></tr><tr><td>简介：</td><td><textarea name='jianjie' cols='50' rows='5' id='jianjie'></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="check()" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>

