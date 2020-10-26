
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
	if(document.form1.yonghuming.value==""){alert("请输入用户名");document.form1.yonghuming.focus();return false;}if(document.form1.mima.value==""){alert("请输入密码");document.form1.mima.focus();return false;}if(document.form1.gongsimingcheng.value==""){alert("请输入公司名称");document.form1.gongsimingcheng.focus();return false;}if(document.form1.dianhua.value==""){alert("请输入电话");document.form1.dianhua.focus();return false;}if(document.form1.xingye.value==""){alert("请输入行业");document.form1.xingye.focus();return false;}
}
function gow()
{
	document.location.href="gongsi_add.jsp?jihuabifffanhao="+document.form1.jihuabifffanhao.value;
}
</script>
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
                <td valign="top"><form name="form1" id="form1" method="post" action="">
                  搜索:学号:
                  <input name="bianhao" type="text" id="bianhao" />
                  姓名
  <input name="mingcheng" type="text" id="mingcheng" />
                  专业
  <input name="zhuanye" type="text" id="zhuanye" />
  <input type="submit" name="Submit" value="查找" />
                </form>
                  <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#F8C878" style="border-collapse:collapse">
                    <tr>
                      <td width="30" align="center" bgcolor="#F8F8C8">序号</td>
                      <td bgcolor='#F8F8C8'>学号</td>
                      <td bgcolor='#F8F8C8'>姓名</td>
                      <td bgcolor='#F8F8C8'>性别</td>
                      <td bgcolor='#F8F8C8'>民族</td>
                      <td bgcolor='#F8F8C8'>入校时间</td>
                      <td bgcolor='#F8F8C8'>系部</td>
                      <td bgcolor='#F8F8C8'>专业</td>
                      <td width="60" align="center" bgcolor="#F8F8C8">操作</td>
                    </tr>
                    <%
  String sql="";
  sql="select * from biyesheng where 1=1";
  if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null )
  {}
  else
  {
  	sql=sql+" and xuehao like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";
  }
  if(request.getParameter("mingcheng")=="" ||request.getParameter("mingcheng")==null )
  {}
  else
  {
  	sql=sql+" and xingming like '%"+new String(request.getParameter("mingcheng").getBytes("8859_1"))+"%'";
  }
  if(request.getParameter("zhuanye")=="" ||request.getParameter("zhuanye")==null )
  {}
  else
  {
  	sql=sql+" and zhuanye like '%"+new String(request.getParameter("zhuanye").getBytes("8859_1"))+"%'";
  }
  sql=sql+" order by id desc";
 ResultSet RS_result=connDbBean.executeQuery(sql);
 String id="";
 String xuehao="";String xingming="";String xingbie="";String minzu="";String chushengnianyue="";String jiatingzhuzhi="";String ruxiaoshijian="";String xibu="";String techang="";String zhuanye="";String mima="";String jianli="";
 String addtime="";
 int i=0;
 
 
 
 
 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
xuehao=RS_result.getString("xuehao");xingming=RS_result.getString("xingming");xingbie=RS_result.getString("xingbie");minzu=RS_result.getString("minzu");chushengnianyue=RS_result.getString("chushengnianyue");jiatingzhuzhi=RS_result.getString("jiatingzhuzhi");ruxiaoshijian=RS_result.getString("ruxiaoshijian");xibu=RS_result.getString("xibu");techang=RS_result.getString("techang");zhuanye=RS_result.getString("zhuanye");mima=RS_result.getString("mima");jianli=RS_result.getString("jianli");
 addtime=RS_result.getString("addtime");
 
 
%>
                    <tr>
                      <td width="30" align="center"><%=i %></td>
                      <td><%=xuehao %></td>
                      <td><%=xingming %></td>
                      <td><%=xingbie %></td>
                      <td><%=minzu %></td>
                      <td><%=ruxiaoshijian %></td>
                      <td><%=xibu %></td>
                      <td><%=zhuanye %></td>
                      <td width="60" align="center"><a href="biyesheng_detail.jsp?id=<%=id%>">详细</a><a href="del.jsp?id=<%=id %>&tablename=biyesheng" onClick="confirm('真的要删除？')"></a></td>
                    </tr>
                    <%
  }
   %>
                  </table>
                  <br>
以上数据共<%=i %>条</td>
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

