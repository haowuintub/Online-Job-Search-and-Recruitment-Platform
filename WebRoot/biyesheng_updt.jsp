
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
    
    <title>��ҵ��</title><script language="javascript" src="js/Calendar.js"></script>
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.xuehao.value==""){alert("������ѧ��");document.form1.xuehao.focus();return false;}if(document.form1.xingming.value==""){alert("����������");document.form1.xingming.focus();return false;}if(document.form1.chushengnianyue.value==""){alert("�������������");document.form1.chushengnianyue.focus();return false;}if(document.form1.ruxiaoshijian.value==""){alert("��������Уʱ��");document.form1.ruxiaoshijian.focus();return false;}if(document.form1.zhuanye.value==""){alert("������רҵ");document.form1.zhuanye.focus();return false;}if(document.form1.mima.value==""){alert("����������");document.form1.mima.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="biyesheng_updt_post.jsp?id=<%=id %>">
  �޸ı�ҵ��:
  <br><br>
  <%
  String sql="select * from biyesheng where id="+id;
  String xuehao="";String xingming="";String xingbie="";String minzu="";String chushengnianyue="";String jiatingzhuzhi="";String ruxiaoshijian="";String xibu="";String techang="";String zhuanye="";String mima="";String jianli="";
  ResultSet RS_result=connDbBean.executeQuery(sql);
  while(RS_result.next()){
  xuehao=RS_result.getString("xuehao");xingming=RS_result.getString("xingming");xingbie=RS_result.getString("xingbie");minzu=RS_result.getString("minzu");chushengnianyue=RS_result.getString("chushengnianyue");jiatingzhuzhi=RS_result.getString("jiatingzhuzhi");ruxiaoshijian=RS_result.getString("ruxiaoshijian");xibu=RS_result.getString("xibu");techang=RS_result.getString("techang");zhuanye=RS_result.getString("zhuanye");mima=RS_result.getString("mima");jianli=RS_result.getString("jianli");
  }
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     <tr><td>ѧ�ţ�</td><td><input name='xuehao' type='text' id='xuehao' value='<%= xuehao%>' /></td></tr><tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='<%= xingming%>' /></td></tr><tr><td>�Ա�</td><td><select name='xingbie' id='xingbie'><option value="��">��</option><option value="Ů">Ů</option></select></td></tr><script language="javascript">document.form1.xingbie.value='<%=xingbie%>';</script><tr><td>���壺</td><td><input name='minzu' type='text' id='minzu' value='<%= minzu%>' /></td></tr><tr><td>�������£�</td><td><input name='chushengnianyue' type='text' id='chushengnianyue' value='<%= chushengnianyue%>' onclick="getDate(form1.chushengnianyue,'2')" need="1" readonly='readonly' /></td></tr><tr><td>��ͥסַ��</td><td><input name='jiatingzhuzhi' type='text' id='jiatingzhuzhi' size='50' value='<%=jiatingzhuzhi%>' /></td></tr><tr><td>��Уʱ�䣺</td><td><input name='ruxiaoshijian' type='text' id='ruxiaoshijian' value='<%= ruxiaoshijian%>' onclick="getDate(form1.ruxiaoshijian,'2')" need="1" readonly='readonly' /></td></tr><tr><td>ϵ����</td><td><input name='xibu' type='text' id='xibu' value='<%= xibu%>' /></td></tr><tr><td>�س���</td><td><input name='techang' type='text' id='techang' size='50' value='<%=techang%>' /></td></tr><tr><td>רҵ��</td><td><input name='zhuanye' type='text' id='zhuanye' value='<%= zhuanye%>' /></td></tr><tr><td>���룺</td><td><input name='mima' type='text' id='mima' value='<%= mima%>' /></td></tr><tr><td>������</td><td><textarea name='jianli' cols='50' rows='5' id='jianli'><%=jianli%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


