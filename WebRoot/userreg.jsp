
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
<script language="javascript">
function check()
{
	if(document.form1.xuehao.value==""){alert("请输入学号");document.form1.xuehao.focus();return false;}if(document.form1.xingming.value==""){alert("请输入姓名");document.form1.xingming.focus();return false;}if(document.form1.chushengnianyue.value==""){alert("请输入出生年月");document.form1.chushengnianyue.focus();return false;}if(document.form1.ruxiaoshijian.value==""){alert("请输入入校时间");document.form1.ruxiaoshijian.focus();return false;}if(document.form1.zhuanye.value==""){alert("请输入专业");document.form1.zhuanye.focus();return false;}if(document.form1.mima.value==""){alert("请输入密码");document.form1.mima.focus();return false;}
}
function gow()
{
	document.location.href="biyesheng_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
  <SCRIPT language=JavaScript>
function openwin(url, width, height)
{
var Win = window.open(url,"openScript",'width=' + width + ',height=' + height + ',resizable=0,scrollbars=1,menubar=0,status=1');
}
</SCRIPT>
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
                    <td width="19%" align="center" valign="bottom" class="STYLE1">毕业生注册</td>
                    <td width="81%">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td valign="top"><form name="form1" method="post" action="biyesheng_add_post.jsp">
                  <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F8C878" style="border-collapse:collapse">
                    <tr>
                      <td>学号：</td>
                      <td><input name='xuehao' type='text' id='xuehao' value='' />
                        &nbsp;*</td>
                    </tr>
                    <tr>
                      <td>姓名：</td>
                      <td><input name='xingming' type='text' id='xingming' value='' />
                        &nbsp;*</td>
                    </tr>
                    <tr>
                      <td>性别：</td>
                      <td><select name='xingbie' id='xingbie'>
                        <option value="男">男</option>
                        <option value="女">女</option>
                      </select></td>
                    </tr>
                    <tr>
                      <td>民族：</td>
                      <td><input name='minzu' type='text' id='minzu' value='' /></td>
                    </tr>
                    <tr>
                      <td>出生年月：</td>
                      <td><input name='chushengnianyue' type='text' id='chushengnianyue' value='' readonly='readonly' onClick="getDate(document.form1.chushengnianyue,'2')" need='1' />
                        &nbsp;*</td>
                    </tr>
                    <tr>
                      <td>家庭住址：</td>
                      <td><input name='jiatingzhuzhi' type='text' id='jiatingzhuzhi' value='' size='50' /></td>
                    </tr>
                    <tr>
                      <td>入校时间：</td>
                      <td><input name='ruxiaoshijian' type='text' id='ruxiaoshijian' value='' readonly='readonly' onClick="getDate(document.form1.ruxiaoshijian,'2')" need='1' />
                        &nbsp;*</td>
                    </tr>
                    <tr>
                      <td>系部：</td>
                      <td><input name='xibu' type='text' id='xibu' value='' /></td>
                    </tr>
                    <tr>
                      <td>特长：</td>
                      <td><input name='techang' type='text' id='techang' value='' size='50' /></td>
                    </tr>
                    <tr>
                      <td>专业：</td>
                      <td><input name='zhuanye' type='text' id='zhuanye' value='' />
                        &nbsp;*</td>
                    </tr>
                    <tr>
                      <td>密码：</td>
                      <td><input name='mima' type='text' id='mima' value='' />
                        &nbsp;*</td>
                    </tr>
                    <tr>
                      <td>简历：</td>
                      <td><textarea name='jianli' cols='50' rows='5' id='jianli'></textarea></td>
                    </tr>
                    <tr>
                      <td>照片：</td>
                      <td><input name='zhaopian' type='text' id='zhaopian' value='' size="50" />
                        <a href="JavaScript:openwin('up.jsp?foname=form1&textname=zhaopian',600,500)">点击上传图片</a></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td><input type="submit" name="Submit" value="提交" onClick="check();" />
                          <input type="reset" name="Submit2" value="重置" /></td>
                    </tr>
                  </table>
                </form>
                </td>
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

