<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="imagetoolbar" content="no">
<meta name="description" content="">
<meta name="keywords" content="">
<title>UserList</title>
<style type="text/css">
/* TAG LAYOUT */
body{
    margin: 0;
    padding: 0;
    line-height: 1.6;
    letter-spacing: 1px;
    font-family: sans-serif;
    font-size: 20px;
    color: #333;
    background-color: white;
}
table{
    text-align: center;
    margin: 0 auto;
}
/*ID LAYOUT*/
#top{
    width: 60%;
    margin: 30px auto;
    border: 1px dotted #333;
}
#header{
    width: 100%;
    height: 80px;
    background: -moz-linear-gradient(to bottom,#F89174,#FFC778 30%,#FFF);
	background: -webkit-linear-gradient(to bottom,#F89174,#FFC778 30%,#FFF);
	background: linear-gradient(to bottom,#F89174,#FFC778 30%,#FFF);
}
#main{
    width: 100%;
    height: 500px;
    text-align: center;
}
#footer{
    width: 100%;
    height: 80px;
    background: -moz-linear-gradient(to bottom,#FFF,#FFC778 30%,#F89174);
	background: -webkit-linear-gradient(to bottom,#FFF,#FFC778 30%,#F89174);
	background: linear-gradient(to bottom,#FFF,#FFC778 30%,#F89174);
    clear: both;
}
#text-right{
	display: inline-block;
	text-align: right;
}
</style>
</head>
<body>
	<div id="header">
	</div>
		<div id="main">
			<div id="top">
				<p>ユーザー一覧</p>
			</div>
			<div>
				<s:if test="userInfoDTOList ==null">
					<h3>ユーザー情報はありません</h3>
				</s:if>
				<s:elseif test="message ==null">
					<h3>ユーザー情報は以下になります</h3>
					<table border="1">
						<tr>
							<th>ID</th>
							<th>ログインID</th>
							<th>ログインPASSWORD</th>
							<th>ユーザー名</th>
							<th>登録日</th>
							<th>更新日</th>
							<th>詳細</th>
						</tr>
						<s:iterator value="userInfoDTOList">
							<tr>
								<td>
									<s:property value="id"/>
								</td>
								<td>
									<s:property value="loginId"/>
								</td>
								<td>
									<s:property value="loginPassword"/>
								</td>
								<td>
									<s:property value="userName"/>
								</td>
								<td>
									<s:property value="insert_date"/>
								</td>
								<td>
									<s:property value="updated_date"/>
								</td>
								<td>
									<a href='<s:url action="UserDetailsAction">
									<s:param name="id" value="%{id}"/></s:url>'>詳細</a>
								</td>
							</tr>
						</s:iterator>
					</table>
					<s:form action="UserListDeleteConfirmAction">

						<s:submit value="削除"/>
					</s:form>
				</s:elseif>
				<s:if test="message !=null">
					<h3><s:property value="message"/></h3>
				</s:if>
				<div id="text-right">
					<p>Homeへ戻る場合は<a href='<s:url action="GoHomeAction"/>'>コチラ</a></p>
					<p>管理者画面へ戻る場合は<a href='<s:url action="AdminAction"/>'>コチラ</a></p>
				</div>
			</div>
		</div>
	<div id="footer">
	</div>
</body>
</html>