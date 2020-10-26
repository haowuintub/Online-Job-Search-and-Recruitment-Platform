
<%@ page language="java" pageEncoding="gb2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="connDbBean" scope="page" class="db.db" />
<html>
<head>
<base href="<%=basePath%>">

<title></title>
<LINK href="CSS.css" type=text/css rel=stylesheet>

<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}

.STYLE1 {
	color: #D84828;
	font-weight: bold;
}

.STYLE5 {
	color: #72AC27;
	font-size: 26pt;
}
-->
</style>
</head>

<body>
	<table width="942" height="1023" border="0" align="center"
		cellpadding="0" cellspacing="0" id="__01">
		<tr>
			<td width="942" height="32" background="qtimages/index_01.gif"><%@ include
					file="qttop.jsp"%></td>
		</tr>
		<tr>
			<td width="942" height="181" valign="top"
				background="qtimages/index_02.gif"><%@ include
					file="qttop2.jsp"%></td>
		</tr>
		<tr>
			<td height="28"><img src="qtimages/index_03.gif" width="942"
				height="28" alt="">
			</td>
		</tr>
		<tr>
			<td height="602"><table id="__01" width="942" height="602"
					border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="602" valign="top"><%@ include file="qtleft.jsp"%></td>
						<td valign="top"><table id="__01" width="684" height="602"
								border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="684" height="37"
										background="qtimages/index_04_02_01.gif"><table
											width="100%" height="88%" border="0" cellpadding="0"
											cellspacing="0">
											<tr>
												<td width="19%" align="center" valign="bottom"
													class="STYLE1">站内新闻</td>
												<td width="81%">&nbsp;</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td height="206"><table id="__01" width="684" height="206"
											border="0" cellpadding="0" cellspacing="0">
											<tr>
												<td width="250" height="206" align="center"><SCRIPT
														type=text/javascript>
													var focus_width = 222;
													var focus_height = 162;
													var text_height = 20;
													var swf_height = focus_height
															+ text_height;
													var pics = "qtimages/flashpic/1.jpg|qtimages/flashpic/2.jpg|qtimages/flashpic/3.jpg|qtimages/flashpic/4.jpg|qtimages/flashpic/5.jpg";
													var links = "http://www.baidu.com|http://www.google.com|http://www.51job.com|http://www.163.com|http://www.qq.com";
													var texts = "迎接XX公司来我校|学生会就业委员会成立|兔斯基-XXX来我校签售|学校上半年就业总结大会|学生会就业委员会成立";
													pics = "qtimages/flashpic/1.jpg|qtimages/flashpic/2.jpg|qtimages/flashpic/3.jpg|qtimages/flashpic/4.jpg|qtimages/flashpic/5.jpg";
													links = "http://www.baidu.com|http://www.google.com|http://www.51job.com|http://www.163.com|http://www.qq.com";
													texts = "兔斯基来了|迎接XX公司来我校|学生会就业委员会成立|兔斯基-XXX来我校签售（图文）|学校上半年就业总结大会|";

													document
															.write('<embed src="qtimages/pixviewer.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#ffffff" quality="Best" width="'+ focus_width +'" height="'+ swf_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer">');
												</SCRIPT>
												</td>
												<td width="434" height="206"><table width="100%"
														height="100%" border="0" cellpadding="0" cellspacing="0">
														<%
															String sql = "";
															sql = "select id,biaoti,addtime from xinwentongzhi order by id desc limit 6";

															ResultSet RS_result = connDbBean.executeQuery(sql);
															String id = "";
															String biaoti = "";
															String addtime = "";
															int i = 0;

															while (RS_result.next()) {
																i = i + 1;
																id = RS_result.getString("id");
																biaoti = RS_result.getString("biaoti");
																addtime = RS_result.getString("addtime");
														%>
														<tr>
															<td width="6%" align="center"><img
																src="qtimages/4.gif" width="5" height="5">
															</td>
															<td width="70%"><a href="gg_detail.jsp?id=<%=id%>"><%=biaoti%></a>
															</td>
															<td width="24%"><%=addtime%></td>
														</tr>
														<%
															}
														%>


													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td height="145"><table id="__01" width="684" height="145"
											border="0" cellpadding="0" cellspacing="0">
											<tr>
												<td width="684" height="39"
													background="qtimages/index_04_02_03_01.gif"><table
														width="100%" border="0" cellspacing="0" cellpadding="0">
														<tr>
															<td width="22%" height="20" align="center"
																valign="bottom" class="STYLE1">最新求职信息</td>
															<td width="78%">&nbsp;</td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td width="684" height="106"><table width="100%"
														height="93" border="0" cellpadding="0" cellspacing="0">
														<tr>
															<%
																sql = "";
																sql = "select id,zhaopian from biyesheng where zhaopian<>''";

																sql = sql + " order by id desc limit 4";
																RS_result = connDbBean.executeQuery(sql);
																id = "";
																String zhaopian = "";
																i = 0;

																while (RS_result.next()) {
																	i = i + 1;
																	id = RS_result.getString("id");
																	zhaopian = RS_result.getString("zhaopian");
															%>
															<td align="center"><a
																href="biyesheng_detail.jsp?id=<%=id%>"><img
																	src="<%=zhaopian%>" width="77" height="80" border="0">
															</a>
															</td>
															<%
																}
															%>

														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td height="185"><table id="__01" width="684" height="185"
											border="0" cellpadding="0" cellspacing="0">
											<tr>
												<td><table id="__01" width="341" height="185"
														border="0" cellpadding="0" cellspacing="0">
														<tr>
															<td height="36" colspan="3"
																background="qtimages/index_04_02_04_01_01.gif"><table
																	width="100%" border="0" cellspacing="0" cellpadding="0">
																	<tr>
																		<td width="47%" height="20" align="center"
																			valign="bottom" class="STYLE1">最新公司</td>
																		<td width="53%">&nbsp;</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td><img src="qtimages/index_04_02_04_01_02.gif"
																width="19" height="141" alt="">
															</td>
															<td width="310" height="141"><table width="100%"
																	height="100%" border="0" cellpadding="0"
																	cellspacing="0">
																	<%
																		sql = "";
																		sql = "select * from gongsi where 1=1";

																		sql = sql + " order by id desc limit 5";
																		RS_result = connDbBean.executeQuery(sql);
																		id = "";
																		String yonghuming = "";
																		String mima = "";
																		String gongsimingcheng = "";
																		String zhucezijin = "";
																		String dianhua = "";
																		String dizhi = "";
																		String guimo = "";
																		String xingye = "";
																		String jianjie = "";
																		addtime = "";
																		i = 0;

																		while (RS_result.next()) {
																			i = i + 1;
																			id = RS_result.getString("id");
																			yonghuming = RS_result.getString("yonghuming");
																			mima = RS_result.getString("mima");
																			gongsimingcheng = RS_result.getString("gongsimingcheng");
																			zhucezijin = RS_result.getString("zhucezijin");
																			dianhua = RS_result.getString("dianhua");
																			dizhi = RS_result.getString("dizhi");
																			guimo = RS_result.getString("guimo");
																			xingye = RS_result.getString("xingye");
																			jianjie = RS_result.getString("jianjie");
																			addtime = RS_result.getString("addtime");
																	%>
																	<tr>
																		<td width="6%" align="center"><img
																			src="qtimages/5.gif" width="7" height="7">
																		</td>
																		<td width="70%"><%=gongsimingcheng%></td>
																		<td width="24%"><%=xingye%></td>
																	</tr>
																	<%
																		}
																	%>


																</table>
															</td>
															<td><img src="qtimages/index_04_02_04_01_04.gif"
																width="12" height="141" alt="">
															</td>
														</tr>
														<tr>
															<td colspan="3"><img
																src="qtimages/index_04_02_04_01_05.gif" width="341"
																height="8" alt="">
															</td>
														</tr>
													</table>
												</td>
												<td><table id="__01" width="343" height="185"
														border="0" cellpadding="0" cellspacing="0">
														<tr>
															<td height="36" colspan="3"
																background="qtimages/index_04_02_04_02_01.gif"><table
																	width="100%" border="0" cellspacing="0" cellpadding="0">
																	<tr>
																		<td width="40%" height="20" align="center"
																			valign="bottom" class="STYLE1">最新岗位</td>
																		<td width="60%">&nbsp;</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td><img src="qtimages/index_04_02_04_02_02.gif"
																width="10" height="143" alt="">
															</td>
															<td width="314" height="143"><table width="100%"
																	height="100%" border="0" cellpadding="0"
																	cellspacing="0">
																	<%
																		sql = "";
																		sql = "select * from gangwei where 1=1";

																		sql = sql + " order by id desc";
																		RS_result = connDbBean.executeQuery(sql);

																		String gangweimingcheng = "";
																		String yuexin = "";
																		addtime = "";
																		i = 0;

																		while (RS_result.next()) {
																			i = i + 1;
																			id = RS_result.getString("id");
																			gangweimingcheng = RS_result.getString("gangweimingcheng");

																			yuexin = RS_result.getString("yuexin");
																	%>
																	<tr>
																		<td width="6%" align="center"><img
																			src="qtimages/5.gif" width="7" height="7">
																		</td>
																		<td width="70%"><%=gangweimingcheng%></td>
																		<td width="24%"><%=yuexin%></td>
																	</tr>
																	<%
																		}
																	%>

																</table>
															</td>
															<td><img src="qtimages/index_04_02_04_02_04.gif"
																width="19" height="143" alt="">
															</td>
														</tr>
														<tr>
															<td colspan="3"><img
																src="qtimages/index_04_02_04_02_05.gif" width="343"
																height="6" alt="">
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td height="20"><img src="qtimages/index_04_02_05.gif"
										width="684" height="20" alt="">
									</td>
								</tr>

							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td><%@ include file="qtdown.jsp"%></td>
		</tr>
	</table>

</body>
</html>

