
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
                    <td width="19%" align="center" valign="bottom" class="STYLE1">毕业生信息</td>
                    <td width="81%">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td valign="top"><%
  String sql="select * from biyesheng where id="+id;
  String xuehao="";String zhaopian="";String xingming="";String xingbie="";String minzu="";String chushengnianyue="";String jiatingzhuzhi="";String ruxiaoshijian="";String xibu="";String techang="";String zhuanye="";String mima="";String jianli="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  xuehao=RS_result.getString("xuehao");zhaopian=RS_result.getString("zhaopian");xingming=RS_result.getString("xingming");xingbie=RS_result.getString("xingbie");minzu=RS_result.getString("minzu");chushengnianyue=RS_result.getString("chushengnianyue");jiatingzhuzhi=RS_result.getString("jiatingzhuzhi");ruxiaoshijian=RS_result.getString("ruxiaoshijian");xibu=RS_result.getString("xibu");techang=RS_result.getString("techang");zhuanye=RS_result.getString("zhuanye");mima=RS_result.getString("mima");jianli=RS_result.getString("jianli");
  }
   %>
                  <table width="93%" height="420" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F8C878" style="border-collapse:collapse">
                    <tr>
                      <td width="28%">学号：</td>
                      <td width="72%"><%= xuehao%></td>
                      <td width="72%" rowspan="10" align="center"><a href="<%=zhaopian%>"><img src="<%=zhaopian%>" width="201" height="208" border="0"></a></td>
                    </tr>
                    <tr>
                      <td>姓名：</td>
                      <td><%= xingming%></td>
                    </tr>
                    <tr>
                      <td>性别：</td>
                      <td><%=xingbie%></td>
                    </tr>
                    
                    <tr>
                      <td>民族：</td>
                      <td><%= minzu%></td>
                    </tr>
                    <tr>
                      <td>出生年月：</td>
                      <td><%= chushengnianyue%></td>
                    </tr>
                    <tr>
                      <td>家庭住址：</td>
                      <td><%=jiatingzhuzhi%></td>
                    </tr>
                    <tr>
                      <td>入校时间：</td>
                      <td><%= ruxiaoshijian%></td>
                    </tr>
                    <tr>
                      <td>系部：</td>
                      <td><%= xibu%></td>
                    </tr>
                    <tr>
                      <td>特长：</td>
                      <td><%=techang%></td>
                    </tr>
                    <tr>
                      <td>专业：</td>
                      <td><%= zhuanye%></td>
                    </tr>
                    
                    <tr>
                      <td height="112">简历：</td>
                      <td colspan="2"><%=jianli%></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td><input type="button" name="Submit5" value="返回" onClick="javascript:history.back();"></td>
                      <td>&nbsp;</td>
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

