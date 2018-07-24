<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/16
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增咨询管理</title>
</head>
<body>
<form id="add_form_id">
    <table border="1" cellpadding="0">
        <input type="hidden" value="${con.id}" name="id">
        <tr>
            <td>商品:</td>
            <td bgcolor="#fff8dc">${con.name}</td>
        </tr>
        <tr>
            <td>会员:</td>
            <td bgcolor="#fff8dc">${con.username}</td>
        </tr>
        <tr>
            <td>内容:</td>
            <td bgcolor="#fff8dc">${con.content}</td>
        </tr>
        <tr>
            <td colspan="2" bgcolor="#fff8dc"><span>${con.replyconsultations}</span></td>
        </tr>
        <tr>
            <td>内容:</td>
            <td><textarea name="replyconsultations" cols="55" rows="10"></textarea></td>
        </tr>
    </table>
</form>
<script href="<%=request.getContextPath()%>/js/jquery-1.8.0.js"></script>
</body>
</html>