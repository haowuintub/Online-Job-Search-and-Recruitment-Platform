
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
    
    <title>��ҵ��Ϣ����ϵͳ</title><LINK href="CSS.css" type=text/css rel=stylesheet>
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
  String xh=request.getParameter("xh");
   %>
  <body >
<table width="942" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
          <tr>
              <tr>
                <td valign="top"><%
  String sql="select * from biyesheng where xuehao="+xh;
  String xuehao="";String zhaopian="";String xingming="";String xingbie="";String minzu="";String chushengnianyue="";String jiatingzhuzhi="";String ruxiaoshijian="";String xibu="";String techang="";String zhuanye="";String mima="";String jianli="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  xuehao=RS_result.getString("xuehao");zhaopian=RS_result.getString("zhaopian");xingming=RS_result.getString("xingming");xingbie=RS_result.getString("xingbie");minzu=RS_result.getString("minzu");chushengnianyue=RS_result.getString("chushengnianyue");jiatingzhuzhi=RS_result.getString("jiatingzhuzhi");ruxiaoshijian=RS_result.getString("ruxiaoshijian");xibu=RS_result.getString("xibu");techang=RS_result.getString("techang");zhuanye=RS_result.getString("zhuanye");mima=RS_result.getString("mima");jianli=RS_result.getString("jianli");
  }
   %>
                  <table width="93%" height="420" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F8C878" style="border-collapse:collapse">
                    <tr>
                      <td width="28%">ѧ�ţ�</td>
                      <td width="72%"><%= xuehao%></td>
                      <td width="72%" rowspan="10" align="center"><a href="<%=zhaopian%>"><img src="<%=zhaopian%>" width="201" height="208" border="0"></a></td>
                    </tr>
                    <tr>
                      <td>������</td>
                      <td><%= xingming%></td>
                    </tr>
                    <tr>
                      <td>�Ա�</td>
                      <td><%=xingbie%></td>
                    </tr>
                    
                    <tr>
                      <td>���壺</td>
                      <td><%= minzu%></td>
                    </tr>
                    <tr>
                      <td>�������£�</td>
                      <td><%= chushengnianyue%></td>
                    </tr>
                    <tr>
                      <td>��ͥסַ��</td>
                      <td><%=jiatingzhuzhi%></td>
                    </tr>
                    <tr>
                      <td>��Уʱ�䣺</td>
                      <td><%= ruxiaoshijian%></td>
                    </tr>
                    <tr>
                      <td>ϵ����</td>
                      <td><%= xibu%></td>
                    </tr>
                    <tr>
                      <td>�س���</td>
                      <td><%=techang%></td>
                    </tr>
                    <tr>
                      <td>רҵ��</td>
                      <td><%= zhuanye%></td>
                    </tr>
                    
                    <tr>
                      <td height="112">������</td>
                      <td colspan="2"><%=jianli%></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td><input type="button" name="Submit5" value="����" onClick="javascript:history.back();"></td>
                      <td>&nbsp;</td>
                    </tr>
                  </table></td>
              </tr>
         
            </table></td>
          </tr>
      </table></td>
	</tr>

</table>

  </body>
</html>
