
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
    
    <title>��λ</title><script language="javascript" src="js/Calendar.js"></script>
    <LINK href="CSS.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">
function check()
{
	if(document.form1.gongsi.value==""){alert("�����빫˾");document.form1.gongsi.focus();return false;}if(document.form1.gangweimingcheng.value==""){alert("�������λ����");document.form1.gangweimingcheng.focus();return false;}
}
</script>
  <body >
  <%
  String id=request.getParameter("id");
   %>
  <form name="form1" id="form1" method="post" action="gangwei_updt_post.jsp?id=<%=id %>">
  �޸ĸ�λ:
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
     <tr><td>��˾��</td><td><input name='gongsi' type='text' id='gongsi' value='<%= gongsi%>' /></td></tr><tr><td>��λ���ƣ�</td><td><input name='gangweimingcheng' type='text' id='gangweimingcheng' size='50' value='<%=gangweimingcheng%>' /></td></tr><tr><td>��Ƹ������</td><td><input name='zhaopinrenshu' type='text' id='zhaopinrenshu' value='<%= zhaopinrenshu%>' /></td></tr><tr><td>�Ա�Ҫ��</td><td><select name='xingbieyaoqiu' id='xingbieyaoqiu'>
       <option value="����">����</option>
       <option value="��">��</option>
       <option value="Ů">Ů</option>
     </select></td></tr><script language="javascript">document.form1.xingbieyaoqiu.value='<%=xingbieyaoqiu%>';</script><tr><td>��н��</td><td><input name='yuexin' type='text' id='yuexin' value='<%= yuexin%>' /></td></tr><tr><td>��飺</td><td><textarea name='jianjie' cols='50' rows='5' id='jianjie'><%=jianjie%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="check()" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


