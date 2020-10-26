<%@ page language="java" import="upload.*,java.util.Date,java.sql.*"%>
<%@ page contentType="text/html;charset=gb2312"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="java.io.File"%>

<!-- 初始化一个upBean-->
<jsp:useBean id="myUpload" scope="page" class="upload.upBean" />
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<%
//数据库操作开始
//Class.forName("org.gjt.mm.mysql.Driver"); 
//加载数据库驱动程序
//String url="jdbc:mysql://localhost:3306/meikuang?user=root&password=1234&useUnicode=true&characterEncoding=GB2312";
//设置数据库连接字串。第一个sist是数据库的模式名称
//Connection conn= DriverManager.getConnection(url); //建立数据库连接对象
//Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE); //在数据库连接对象的基础之上建立数据库查询对象
	//初始化工作
	myUpload.initialize(pageContext);
	
	//设定允许的文件后缀名
	myUpload.setAllowedExtList("gif,jpg,JPG,GIF,rar");

	//设定允许上传的文件类型
	//gif:gif
	//jpg:pjpeg
	//text:plain
	//html:html
	//doc:msword
	myUpload.setAllowedFileTypeList("gif,jpg,msword,rar");

	//设定是否允许覆盖服务器上的同名文件
	myUpload.setIsCover(false);
	
	//设定允许上传文件的总大小
	//myUpload.setTotalMaxFileSize(1000000);

	//设定单个文件大小的限制
	//myUpload.setMaxFileSize(100000);

	String[] sourceName={"",""};		//文件的原始文件名数组
	String myName=new String("");	
	
	//设定上传的物理路径
	myUpload.setRealPath(application.getRealPath(File.separator+File.separator+"file"));
	
	try
	{
			//将所有数据导入组件的数据结构中
			myUpload.upload();
	}
	catch(Exception e){throw e;}

	//得到所有上传的文件
	files myFiles=myUpload.getFiles();
	//String foname = myFiles.getRequest().getParameter("foname").trim();
Date d=new Date();
long d1=d.getTime();
	//将文件保存到服务器
	try
		{

			for(int i=0;i<myFiles.getCount();i++)
			{
				myName="sist";
				myName=myName+d1+i+"."+myFiles.getFile(i).getExtName();
				sourceName[i]=myFiles.getFile(i).getName();
				myFiles.getFile(i).setName(myName);
				//有两种保存方法，一种是保存在myUpload.setRealPath()的设定路径中，使用saveAs()，一种是另外保存到其他文件夹,使用.saveAs(String realPath)
				myFiles.getFile(i).saveAs();
			}
		}
	catch (Exception e) {throw e;}

%>

<html>
	<head>
	<title>上传结果</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		
		
	</head>
	<!-- b -->
	<body>
		<%
		String str;
for(int i=0;i<myFiles.getCount();i++)
{
	out.print("上传成功！：/file/"+myFiles.getFile(i).getName()+"("+(myFiles.getFile(i).getSize()/1000+1)+"kb)");
												out.print("<br>");
												str = "/file/"+myFiles.getFile(i).getName();
												session.setAttribute("image",str);
											}
										
											
String picurl=myFiles.getFile(0).getName();//取得文件名字
//String sql="insert into newspic(picurl) values('"+picurl+"')";
//connDbBean.executeUpdate(sql);
out.print("<script>window.opener.form1.zhaopian.value='file/"+picurl+"'</script>");
%>	
<br>
<%
//sql="select * from newspic order by id desc";
//ResultSet rs=connDbBean.executeQuery(sql);
//if(rs.next())
//{
%>


<img src="file/<%=picurl%>" width="100" height="75"><br><br>



<%

//}

%>
	</body>
	<!-- e -->
</html>
<%
//rs.close();

%>