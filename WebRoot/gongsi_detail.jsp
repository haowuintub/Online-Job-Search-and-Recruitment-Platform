
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
    
    <title>就业信息管理系统</title><LINK href="CSS.css" type=text/css rel=stylesheet>
    <script language="javascript" src="js/Calendar.js"></script>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
.STYLE1 {
	color: #D84828;
	font-weight: bold;
}
.STYLE5 {	color: #72AC27;
	font-size: 26pt;
}

-->
</style>
  </head>
  <%
  String id=request.getParameter("id");
   %>
  <body >
<table width="942" height="1023" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td width="942" height="32" background="qtimages/index_01.gif"><%@ include file="qttop.jsp"%></td>
	</tr>
	<tr>
		<td width="942" height="181" valign="top" background="qtimages/index_02.gif"><%@ include file="qttop2.jsp"%></td>
	</tr>
	<tr>
		<td height="28">
			<img src="qtimages/index_03.gif" width="942" height="28" alt=""></td>
	</tr>
	<tr>
		<td height="602"><table id="__01" width="942" height="602" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="602" valign="top"><%@ include file="qtleft.jsp"%></td>
            <td valign="top"><table id="__01" width="684" height="602" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="684" height="37" background="qtimages/index_04_02_01.gif"><table width="100%" height="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="19%" align="center" valign="bottom" class="STYLE1">公司信息</td>
                    <td width="81%">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td valign="top"><%
  String sql="select * from gongsi where id="+id;
  String yonghuming="";String mima="";String gongsimingcheng="";String zhucezijin="";String dianhua="";String dizhi="";String guimo="";String xingye="";String jianjie="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  yonghuming=RS_result.getString("yonghuming");mima=RS_result.getString("mima");gongsimingcheng=RS_result.getString("gongsimingcheng");zhucezijin=RS_result.getString("zhucezijin");dianhua=RS_result.getString("dianhua");dizhi=RS_result.getString("dizhi");guimo=RS_result.getString("guimo");xingye=RS_result.getString("xingye");jianjie=RS_result.getString("jianjie");
  }
   %>
   <table width="97%" height="342" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F8C878" style="border-collapse:collapse">  
     <tr><td width="20%">公司名称：</td><td width="80%"><%=gongsimingcheng%></td></tr><tr><td>注册资金：</td><td><%= zhucezijin%></td></tr><tr><td>电话：</td><td><%= dianhua%></td></tr><tr><td>地址：</td><td><%=dizhi%></td></tr><tr><td>规模：</td><td><%= guimo%></td></tr><tr><td>行业：</td><td><%= xingye%></td></tr><tr><td height="107">简介：</td><td><%=jianjie%></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="button" name="Submit5" value="返回" onClick="javascript:history.back();"></td>
    </tr>
  </table></td>
              </tr>
              
              <tr>
                <td height="20"><img src="qtimages/index_04_02_05.gif" width="684" height="20" alt=""></td>
              </tr>
              
            </table></td>
          </tr>
      </table></td>
	</tr>
	<tr>
		<td><%@ include file="qtdown.jsp"%></td>
	</tr>
</table>

  </body>
</html>

