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
    
<title>�û���¼</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow:hidden;
	background-image: url(images/hsgbg3.gif);
}
.STYLE3 {color: #528311; font-size: 12px; }
.STYLE4 {
	color: #42870a;
	font-size: 12px;
}
.STYLE5 {
	color: #72AC27;
	font-size: 26pt;
}
-->
</style>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>

<body>
<p>&nbsp;</p>
<table width="44%" height="92%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="134" valign="bottom"><table width="72%" height="51" border="0" align="center">
      <tr>
        <td><div style="font-family:����; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
            <div align="center" class="STYLE5">���ҵµ���������ְ����Ƹƽ̨</div>
        </div></td>
      </tr>
    </table>
    <p>&nbsp;</p></td>
  </tr>
  <tr>
    <td valign="top"><table width="485" height="346" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="246" background="images/hsgbg2.gif"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="78">&nbsp;</td>
          </tr>
          <tr>
            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="48%">&nbsp;</td>
                <td width="52%"><table width="82%" border="0" align="left" cellpadding="0" cellspacing="0">
                    <form name="form1" method="post" action="adminyanzheng.jsp">
                      <tr>
                        <td width="21%" height="30"><div align="center"><span class="STYLE3">�û�</span></div></td>
                        <td width="79%" height="30"><input name="username" type="text" id="username"  style="height:18px; width:130px; border:solid 1px #cadcb2; font-size:12px; color:#81b432;">
                            <input name="login" type="hidden" id="login" value="1"></td>
                      </tr>
                      <tr>
                        <td height="30"><div align="center"><span class="STYLE3">����</span></div></td>
                        <td height="30"><input name="pwd" type="password" id="pwd"  style="height:18px; width:130px; border:solid 1px #cadcb2; font-size:12px; color:#81b432;"></td>
                      </tr>
                      <tr style="display:none">
                        <td height="30"><div align="center"><span class="STYLE3">Ȩ��</span></div></td>
                        <td height="30"><select name="cx" id="cx">
                            <option value="����Ա">����Ա</option>
                            
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td height="30">&nbsp;</td>
                        <td height="30"><input type="submit" name="Submit" value="��½">
                            <input type="reset" name="Submit2" value="����"></td>
                      </tr>
                    </form>
                </table></td>
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

