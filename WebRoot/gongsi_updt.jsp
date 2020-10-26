
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
    
    <title>公司</title><script language="javascript" src="js/Calendar.js"></script>
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.yonghuming.value==""){alert("请输入用户名");document.form1.yonghuming.focus();return false;}if(document.form1.mima.value==""){alert("请输入密码");document.form1.mima.focus();return false;}if(document.form1.gongsimingcheng.value==""){alert("请输入公司名称");document.form1.gongsimingcheng.focus();return false;}if(document.form1.dianhua.value==""){alert("请输入电话");document.form1.dianhua.focus();return false;}if(document.form1.xingye.value==""){alert("请输入行业");document.form1.xingye.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="gongsi_updt_post.jsp?id=<%=id %>">
  修改公司:
  <br><br>
  <%
  String sql="select * from gongsi where id="+id;
  String yonghuming="";String mima="";String gongsimingcheng="";String zhucezijin="";String dianhua="";String dizhi="";String guimo="";String xingye="";String jianjie="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  yonghuming=RS_result.getString("yonghuming");mima=RS_result.getString("mima");gongsimingcheng=RS_result.getString("gongsimingcheng");zhucezijin=RS_result.getString("zhucezijin");dianhua=RS_result.getString("dianhua");dizhi=RS_result.getString("dizhi");guimo=RS_result.getString("guimo");xingye=RS_result.getString("xingye");jianjie=RS_result.getString("jianjie");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>用户名：</td><td><input name='yonghuming' type='text' id='yonghuming' value='<%= yonghuming%>' /></td></tr><tr><td>密码：</td><td><input name='mima' type='text' id='mima' value='<%= mima%>' /></td></tr><tr><td>公司名称：</td><td><input name='gongsimingcheng' type='text' id='gongsimingcheng' size='50' value='<%=gongsimingcheng%>' /></td></tr><tr><td>注册资金：</td><td><input name='zhucezijin' type='text' id='zhucezijin' value='<%= zhucezijin%>' /></td></tr><tr><td>电话：</td><td><input name='dianhua' type='text' id='dianhua' value='<%= dianhua%>' /></td></tr><tr><td>地址：</td><td><input name='dizhi' type='text' id='dizhi' size='50' value='<%=dizhi%>' /></td></tr><tr><td>规模：</td><td><input name='guimo' type='text' id='guimo' value='<%= guimo%>' /></td></tr><tr><td>行业：</td><td><input name='xingye' type='text' id='xingye' value='<%= xingye%>' /></td></tr><tr><td>简介：</td><td><textarea name='jianjie' cols='50' rows='5' id='jianjie'><%=jianjie%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="check()" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


