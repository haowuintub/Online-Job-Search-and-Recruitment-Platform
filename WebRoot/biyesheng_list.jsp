
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
    
    <title>��ҵ��</title><LINK href="CSS.css" type=text/css 
rel=stylesheet>
    

  </head>

  <body >
  <p>���б�ҵ���б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:ѧ��:
     <input name="bianhao" type="text" id="bianhao" />
     ����
     <input name="mingcheng" type="text" id="mingcheng" />
     רҵ
     <input name="zhuanye" type="text" id="zhuanye" />
     <input type="submit" name="Submit" value="����" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>ѧ��</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>�Ա�</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>��������</td><td bgcolor='#CCFFFF'>��ͥסַ</td><td bgcolor='#CCFFFF'>��Уʱ��</td><td bgcolor='#CCFFFF'>ϵ��</td><td bgcolor='#CCFFFF'>�س�</td><td bgcolor='#CCFFFF'>רҵ</td><td bgcolor='#CCFFFF'>����</td><td bgcolor='#CCFFFF'>����</td>
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
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
    <td><%=xuehao %></td><td><%=xingming %></td><td><%=xingbie %></td><td><%=minzu %></td><td><%=chushengnianyue %></td><td><%=jiatingzhuzhi %></td><td><%=ruxiaoshijian %></td><td><%=xibu %></td><td><%=techang %></td><td><%=zhuanye %></td><td><%=mima %></td><td><%=jianli %></td>
    <td width="138" align="center"><%=addtime %></td>
    <td width="60" align="center"><a href="biyesheng_updt.jsp?id=<%=id%>">�޸�</a>  <a href="del.jsp?id=<%=id %>&tablename=biyesheng" onClick="confirm('���Ҫɾ����')">ɾ��</a></td>
  </tr>
  	<%
  }
   %>
</table><br>
�������ݹ�<%=i %>��
  </body>
</html>

