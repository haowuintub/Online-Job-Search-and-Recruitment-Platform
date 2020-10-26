
<%@ page contentType="text/html;charset=GBK"%>
<%@ page import="java.util.*"%>
<jsp:useBean id="mySmartUpload" scope="page" class="upload.upBean" />
<%
//--- 上传模块 ---
String SystemURL			= "http://" + request.getHeader("host") + "/myshop/";

String UploadFolder			= "upload_img";													//存放上传图片的文件夹
int MaxFileSize				= 1024 * 300;													//允许上传图片的大小
String UploadFolder2		= "images";														//存放上传新闻图片的文件夹
int MaxFileSize2			= 1024 * 300;													//允许上传新闻图片的大小

String tb_shop_catalog			= "shop_catalog";											//货架名称
String tb_shop_product_info		= "shop_product_info";										//商品信息
String tb_gbook_info			= "shop_gbook_info";
String tb_member_info			= "shop_member_info";
String tb_member_favorite		= "shop_member_favorite";
String tb_news_imgs				= "shop_news_imgs";
String tb_news_info				= "shop_news_info";
String tb_news_type				= "shop_news_type";
String tb_orders_main			= "shop_orders_main";
String tb_orders_r_info			= "shop_orders_r_info";
String tb_shop_admin			= "shop_admin";
String TimeStamp=java.lang.String.valueOf((new Date()).getTime());
String Msg = null;

mySmartUpload.initialize(pageContext);
mySmartUpload.upload();
upload.file myFile = mySmartUpload.getFiles().getFile(0);

if (myFile.getExtName().equals("jpg") || myFile.getExtName().equals("gif"))
	if (myFile.getSize() < MaxFileSize)
	{
		String path = request.getRealPath(".");
		myFile.saveAs(path + "/../../" + UploadFolder + "/" + TimeStamp + "."+myFile.getExtName());
		Msg = "上传成功！";
		session.putValue("NewImgName",TimeStamp + "." + myFile.getExtName());
	}
	else {
		Msg = "体积过大！[<a href=javascript:history.back()>返回</a>]";
	}
else {
	Msg = "不允许上传这类文件！[<a href=javascript:history.back()>返回</a>]";
}
out.print("<font size=2>" + Msg + "</font>");
%>
<body bgcolor="eeeeee">
</body>