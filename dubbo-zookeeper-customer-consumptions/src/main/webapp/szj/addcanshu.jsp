<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/9
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增</title>
</head>
<body>
<form id="data" method="post" enctype="multipart/form-data">
    <input type="hidden" name="id" value="${car.id}">
    <table id="allDatas">
        <tr>
            <td>绑定分类：</td>
            <td>
                <select class="easyui-combobox" required="true"  style="width:147px" id="product_category" name="product_category">
                </select>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>名称：</td>
            <td>
                <input type="text" class="easyui-textbox" value="${car.name}" name="name" required="true" >
            </td>
            <td></td>
        </tr>
        <tr>
            <td>排序：</td>
            <td>
                <input type="text" class="easyui-textbox" value="${car.orders}" name="orders" required="true" ><br>
            </td>
            <td></td>
        </tr>
        <tr>
            <td><input type="button" value="增加参数" onclick="ccc()"></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>名称</td>
            <td>排序</td>
            <td>删除</td>
        </tr>
        <tr>
            <td>
                <input type="text" class="easyui-textbox" value="${car.name}" name="name" required="true" >
            </td>
            <td>
                <input type="text" class="easyui-textbox" value="${car.orders}" name="orders" required="true" size="3">
            </td>
            <td>
                <input type="button" value="删除" onclick="bbb(this)">
            </td>
        </tr>

    </table>
</form>


<script>



    function bbb(obj) {

        var tr=obj.parentNode.parentNode;
        var tbody=tr.parentNode;
        tbody.removeChild(tr);

    }
    function ccc() {
        var tr = "";
        tr += "<tr>" +
            "<td>" +
            "   <input type='text' class='easyui-textbox' value='${car.carname}' name='carname' required='true' >" +
            "</td>" +
            "<td>" +
            "   <input type='text' class='easyui-textbox' value='${car.carname}' name='carname' required='true' size='3'>" +
            "</td>" +
            "<td>" +
            "   <input type='button' value='删除' onclick='bbb(this)'>" +
            "</td>" +
            "</tr>";

        $("#allDatas tr:last-child").after(tr);

    }

</script>


</body>
</html>
