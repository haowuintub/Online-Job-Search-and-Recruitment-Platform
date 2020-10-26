
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
    
    <title>岗位</title><script language="javascript" src="js/Calendar.js"></script>
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.gongsi.value==""){alert("请输入公司");document.form1.gongsi.focus();return false;}if(document.form1.gangweimingcheng.value==""){alert("请输入岗位名称");document.form1.gangweimingcheng.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="gangwei_updt_post.jsp?id=<%=id %>">
  修改岗位:
  <br><br>
  <%
  String sql="select * from gangwei where id="+id;
  String gongsi="";String gangweimingcheng="";String zhaopinrenshu="";String xingbieyaoqiu="";String yuexin="";String jianjie="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  gongsi=RS_result.getString("gongsi");gangweimingcheng=RS_result.getString("gangweimingcheng");zhaopinrenshu=RS_result.getString("zhaopinrenshu");xingbieyaoqiu=RS_result.getString("xingbieyaoqiu");yuexin=RS_result.getString("yuexin");jianjie=RS_result.getString("jianjie");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>公司：</td><td><input name='gongsi' type='text' id='gongsi' value='<%= gongsi%>' /></td></tr><tr><td>岗位名称：</td><td><input name='gangweimingcheng' type='text' id='gangweimingcheng' size='50' value='<%=gangweimingcheng%>' /></td></tr><tr><td>招聘人数：</td><td><input name='zhaopinrenshu' type='text' id='zhaopinrenshu' value='<%= zhaopinrenshu%>' /></td></tr><tr><td>性别要求：</td><td><select name='xingbieyaoqiu' id='xingbieyaoqiu'>
       <option value="不限">不限</option>
       <option value="男">男</option>
       <option value="女">女</option>
     </select></td></tr><script language="javascript">document.form1.xingbieyaoqiu.value='<%=xingbieyaoqiu%>';</script><tr><td>月薪：</td><td><input name='yuexin' type='text' id='yuexin' value='<%= yuexin%>' /></td></tr><tr><td>简介：</td><td><textarea name='jianjie' cols='50' rows='5' id='jianjie'><%=jianjie%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="check()" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


