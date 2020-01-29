<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="60;URL='GoHomeAction'"/>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>ItemListDeleteComplete</title>
</head>
<body>
	<div id="header">
	</div>
		<div id="main">
			<div id="top">
				<p>商品一覧削除完了</p>
			</div>
			<div>
				<s:if test="message !=null">
					<h3><s:property value="message"/></h3>
				</s:if>
			</div>
			<div>
				<span>管理者画面に戻る場合は</span>
				<a href='<s:url action="AdminAction"/>'>コチラ</a>
			</div>
		</div>
	<div id="footer">
	</div>
</body>
</html>