<%@ page language="java" import="upload.*,java.util.Date,java.sql.*"%>
<%@ page contentType="text/html;charset=gb2312"%>
<%@ page errorPage="error.jsp"%>
<%@ page import="java.io.File"%>

<!-- ��ʼ��һ��upBean-->
<jsp:useBean id="myUpload" scope="page" class="upload.upBean" />
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>

<%
//���ݿ������ʼ
//Class.forName("org.gjt.mm.mysql.Driver"); 
//�������ݿ���������
//String url="jdbc:mysql://localhost:3306/meikuang?user=root&password=1234&useUnicode=true&characterEncoding=GB2312";
//�������ݿ������ִ�����һ��sist�����ݿ��ģʽ����
//Connection conn= DriverManager.getConnection(url); //�������ݿ����Ӷ���
//Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE); //�����ݿ����Ӷ���Ļ���֮�Ͻ������ݿ��ѯ����
	//��ʼ������
	myUpload.initialize(pageContext);
	
	//�趨������ļ���׺��
	myUpload.setAllowedExtList("gif,jpg,JPG,GIF,rar");

	//�趨�����ϴ����ļ�����
	//gif:gif
	//jpg:pjpeg
	//text:plain
	//html:html
	//doc:msword
	myUpload.setAllowedFileTypeList("gif,jpg,msword,rar");

	//�趨�Ƿ������Ƿ������ϵ�ͬ���ļ�
	myUpload.setIsCover(false);
	
	//�趨�����ϴ��ļ����ܴ�С
	//myUpload.setTotalMaxFileSize(1000000);

	//�趨�����ļ���С������
	//myUpload.setMaxFileSize(100000);

	String[] sourceName={"",""};		//�ļ���ԭʼ�ļ�������
	String myName=new String("");	
	
	//�趨�ϴ�������·��
	myUpload.setRealPath(application.getRealPath(File.separator+File.separator+"file"));
	
	try
	{
			//���������ݵ�����������ݽṹ��
			myUpload.upload();
	}
	catch(Exception e){throw e;}

	//�õ������ϴ����ļ�
	files myFiles=myUpload.getFiles();
	//String foname = myFiles.getRequest().getParameter("foname").trim();
Date d=new Date();
long d1=d.getTime();
	//���ļ����浽������
	try
		{

			for(int i=0;i<myFiles.getCount();i++)
			{
				myName="sist";
				myName=myName+d1+i+"."+myFiles.getFile(i).getExtName();
				sourceName[i]=myFiles.getFile(i).getName();
				myFiles.getFile(i).setName(myName);
				//�����ֱ��淽����һ���Ǳ�����myUpload.setRealPath()���趨·���У�ʹ��saveAs()��һ�������Ᵽ�浽�����ļ���,ʹ��.saveAs(String realPath)
				myFiles.getFile(i).saveAs();
			}
		}
	catch (Exception e) {throw e;}

%>

<html>
	<head>
	<title>�ϴ����</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		
		
	</head>
	<!-- b -->
	<body>
		<%
		String str;
for(int i=0;i<myFiles.getCount();i++)
{
	out.print("�ϴ��ɹ�����/file/"+myFiles.getFile(i).getName()+"("+(myFiles.getFile(i).getSize()/1000+1)+"kb)");
												out.print("<br>");
												str = "/file/"+myFiles.getFile(i).getName();
												session.setAttribute("image",str);
											}
										
											
String picurl=myFiles.getFile(0).getName();//ȡ���ļ�����
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