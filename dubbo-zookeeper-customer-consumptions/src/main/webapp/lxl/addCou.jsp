<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/23
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改优惠券管理</title>
</head>
<body>
<form id="addCou">
    <table border="1" cellpadding="0">
        <tr>
            <td bgcolor="#7fffd4">
                <font color="red">*</font>姓名:
            </td>
            <td>
                <input type="text" name="name">
            </td>
        </tr>
        <tr>
            <td bgcolor="#7fffd4">
                <font color="red">*</font>前缀:
            </td>
            <td>
                <input type="text" name="prefix">
            </td>
        </tr>
        <tr>
            <td bgcolor="#7fffd4">
                使用起始日期
            </td>
            <td>
                <input type="text" name="beginDate">
            </td>
        </tr>
        <tr>
            <td bgcolor="#7fffd4">
                使用结束日期
            </td>
            <td>
                <input type="text" name="endDate">
            </td>
        </tr>
        <tr>
            <td bgcolor="#7fffd4">
                最小商品数量
            </td>
            <td>
                <input type="text" name="minimumQuantity">
            </td>
        </tr>
        <tr>
            <td bgcolor="#7fffd4">
                最大商品数量
            </td>
            <td>
                <input type="text" name="maximumQuantity">
            </td>
        </tr>
        <tr>
            <td bgcolor="#7fffd4">
                最小商品价格
            </td>
            <td>
                <input type="text" name="minimumPrice">
            </td>
        </tr>
        <tr>
            <td bgcolor="#7fffd4">
                最大商品价格
            </td>
            <td>
                <input type="text" name="maximumPrice">
            </td>
        </tr>
        <tr>
            <td bgcolor="#7fffd4">
                价格运算表达式
            </td>
            <td>
                <input type="text" name="priceExpression">
            </td>
        </tr>
        <tr>
            <td bgcolor="#7fffd4">
                设置
            </td>
            <td>
                <input type="checkbox" name="isEnabled" value="1">是否启用
                <input type="checkbox" name="isExchange" value="1">是否允许积分兑换
            </td>
        </tr>
        <tr>
            <td bgcolor="#7fffd4">
                <font color="red">*</font>积分兑换数
            </td>
            <td>
                <input type="text" name="point">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
