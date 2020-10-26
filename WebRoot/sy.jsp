<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    

  </head>

  <body >
  <table width="66%" height="68%" border="0" cellpadding="5" cellspacing="5">
  <tr>
    <td valign="top"><p>欢迎进入〉〉〉 </p>
      <p><br>
        就业信息管理系统 </p>
      <p class="td2">联系人:刘老师</p>
      <p class="td2">电话:0411-8238985</p>
      <p class="td2">手机:18842630001</p>
      <p class="td2">邮箱:478634676@qq.com</p>
      <p class="td2">地址:辽宁省大连市沙河口区黄河路489号交通大学<a href="mailto:zhouyufay@126.com"></a></p>
      <p class="welcome">&nbsp;</p></td>
  </tr>
</table>
<p class="welcome">&nbsp;</p>
  </body>
</html>

