<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/20
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form id="ttt_form_id">
    <table border="1" cellpadding="0">
        <input type="hidden" name="id" value="${con.id}">
        <tr>
            <td>商品:</td>
            <td>${con.name}</td>
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
            <td>IP:</td>
            <td bgcolor="#fff8dc">${con.ip}</td>
        </tr>
        <tr>
            <td colspan="2" bgcolor="#fff8dc">
                    <span>
                            ${con.replyconsultations}
                    </span>
            </td>
        </tr>
        <tr>
            <td>是否显示:</td>
            <td bgcolor="#fff8dc"><input type="checkbox" name="is_show" value="1" ${con.is_show == 1 ? "checked" : ""}>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
