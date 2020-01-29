<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>ItemCreate</title>
</head>
<body>

	<div id="header">
	</div>
		<div id="main">
			<div id="top">
			<p>商品登録</p>
			</div>
			<div>
				<s:if test="errorMessage !=''">
					<s:property value="errorMessage" escape="false"/>
				</s:if>
				<table>
				<s:form action="ItemCreateConfirmAction">
					<tr>
						<td>
							<label>商品名:</label>
						</td>
						<td>
							<input type="text" name="itemName" value="">
						</td>
					</tr>
					<tr>
						<td>
							<label>商品価格:</label>
						</td>
						<td>
							<input type="text" name="itemPrice" value="">
							<span>円</span>
						</td>
					</tr>
					<tr>
						<td>
							<label>商品在庫:</label>
						</td>
						<td>
							<input type="text" name="itemStock" value="">
							<span>個</span>
						</td>
					</tr>
					<s:submit value="登録"/>
				</s:form>
				</table>
				<div>
					<span>前画面に戻る場合は</span>
					<a href='<s:url action="AdminAction"/>'>コチラ</a>
				</div>
			</div>
		</div>
	<div id="footer">
	</div>
</body>
</html>