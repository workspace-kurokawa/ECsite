<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>UserDetails</title>
</head>
<body>
<div id="header">
	</div>
		<div id="main">
			<div id="top">
				<p>ユーザー詳細</p>
			</div>
			<div>
				<s:if test="userDetailsDTO ==null">
					<h3>ユーザー情報はありません</h3>
				</s:if>
				<s:elseif test="message ==null">
					<h3>ユーザー情報は以下になります</h3>
						<table border="1">
							<tr>
								<th>ID</th>
								<td>
									<s:property value="userDetailsDTO.id"/>
								</td>
							</tr>
							<tr>
								<th>ログインID</th>
								<td>
									<s:property value="userDetailsDTO.loginId"/>
								</td>
							</tr>
							<tr>
								<th>ログインパスワード</th>
								<td>
									<s:property value="userDetailsDTO.loginPassword"/>
								</td>
							</tr>
							<tr>
								<th>ユーザー名</th>
								<td>
									<s:property value="userDetailsDTO.userName"/>
								</td>
							</tr>
							<tr>
								<th>登録日</th>
								<td>
									<s:property value="userDetailsDTO.insert_date"/>
								</td>
							</tr>
							<tr>
								<th>更新日</th>
								<td>
									<s:property value="userDetailsDTO.updated_date"/>
								</td>
							</tr>
						</table>
					<s:form action="UserDeleteConfirmAction">
						<s:hidden  name="id" value="%{id}"/>
						<s:submit value="削除"/>
					</s:form>
				</s:elseif>
			</div>
			<div>
				<p>ユーザー一覧画面へ戻る場合は<a href='<s:url action="UserListAction"/>'>コチラ</a></p>
			</div>
		</div>
	<div id="footer">
	</div>
</body>
</html>