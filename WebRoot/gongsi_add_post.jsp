<%@ page language="java" pageEncoding="gb2312" import="java.sql.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	request.setCharacterEncoding("gb2312");
	response.setCharacterEncoding("gb2312");
%>
<jsp:useBean id="connDbBean" scope="page" class="db.db" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'adminyanzheng.jsp' starting page</title>


</head>

<body>
	<%
		String yonghuming = request.getParameter("yonghuming");
		String mima = request.getParameter("mima");
		String gongsimingcheng = request.getParameter("gongsimingcheng");
		String zhucezijin = request.getParameter("zhucezijin");
		String dianhua = request.getParameter("dianhua");
		String dizhi = request.getParameter("dizhi");
		String guimo = request.getParameter("guimo");
		String xingye = request.getParameter("xingye");
		String jianjie = request.getParameter("jianjie");
		String sql = "insert into gongsi(yonghuming,mima,gongsimingcheng,zhucezijin,dianhua,dizhi,guimo,xingye,jianjie) values('"
				+ yonghuming
				+ "','"
				+ mima
				+ "','"
				+ gongsimingcheng
				+ "','"
				+ zhucezijin
				+ "','"
				+ dianhua
				+ "','"
				+ dizhi
				+ "','" + guimo + "','" + xingye + "','" + jianjie + "') ";

		connDbBean.executeUpdate(sql);
		out.print("<script>alert('ע��ɹ�!!');location.href='index.jsp';</script>");
	%>
</body>
</html>

