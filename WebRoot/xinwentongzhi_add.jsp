
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<%
request.setCharacterEncoding("gb2312"); 
response.setCharacterEncoding("gb2312"); 
%>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>����֪ͨ</title>
    <LINK href="qtimages/CSS.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <form name="form1" id="form1" method="post" action="xinwentongzhi_add_post.jsp">
  ���<%=new String(request.getParameter("lb").getBytes("8859_1")) %>:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>���⣺</td><td><input name='biaoti' type='text' id='biaoti' value='' size="50" /></td></tr>
     <tr><td>���</td><td><input name='leibie' type='text' id='leibie' value='<%=new String(request.getParameter("lb").getBytes("8859_1")) %>' /></td></tr>
     <tr><td>���ݣ�</td><td><textarea name="content" cols="45" rows="5"></textarea>
			</td></tr>
     <tr><td>����ˣ�</td><td><input name='tianjiaren' type='text' id='tianjiaren' value='<%=request.getSession().getAttribute("username")%>' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>

