<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/20
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>促销管理</title>
    <jsp:include page="/js/jsAll.jsp"></jsp:include>
</head>
<body>
<select id="guan" class="easyui-combobox" style="width:100px;">
    <option value="0">名称</option>
    <option value="1">标题</option>
</select>
<input type="button" value="搜索" onclick="cnc()">
<span id="guanli">
    <input name="name">
</span>
<table id="pro_table_id"></table>
<div id="pro_div_id"></div>
<script>
    $(function () {
        cnc();

        $("#guan").combobox({

            onChange: function (n, o) {

                xx(n)

            }
        })
    });

    function xx(zhi){
        if(zhi == 1){
            $("#guanli").html('<input name="title" >');
        }

    }

    function cnc() {
        $("#pro_table_id").datagrid({
            url: "<%=request.getContextPath()%>/lxlcontroller/queryPromotion.lhtml",
            pagination: true,
            pageNumber: 1,
            pageSize: 3,
            pageList: [3, 6, 9],
            singleSelect: true,
            checkOnSelect: false,
            selectOnCheck: false,
            queryParams: {
                name:$("[name='name']").val(),
                title:$("[name='title']").val(),
            },
            columns: [[
                {field: 'name', title: '名称', width: 200},
                {field: 'title', title: '标题', width: 200},
                {field: 'beginDate', title: '起始时间', width: 200},
                {field: 'endDate', title: '结束时间', width: 200},
                {field: 'sort', title: '排序', width: 150},
                {field: 'ssss', title: '操作', width: 200,
                    formatter: function (value, row, index) {
                        var n = "<a href='javascript:edit(\"" + row.id + "\")'style='text-decoration:none'>编辑</a>";
                        return n;
                    }
                },
            ]]
        });
    }

    function edit(id) {
        $('#pro_div_id').dialog({
            title: '编辑用户',
            width: 600,
            height: 600,
            closed: false,
            cache: false,
            href: '<%=request.getContextPath()%>/lxlcontroller/queryPromotionById.lhtml?id='+id,
            modal: true,
            buttons: [{
                text: '保存',
                handler: function () {
                    $.ajax({
                        data: $("#edit_Promotion_id").serialize(),
                        url: "<%=request.getContextPath()%>/lxlcontroller/updatePromotion.lhtml",
                        type: "POST",
                        success: function (result) {
                            $("#pro_div_id").dialog('close');
                            location.reload();
                        }
                    });
                }
            }, {
                text: '取消',
                handler: function () {
                    $("#pro_div_id").dialog('close');
                }
            }]
        })
    }
</script>
</body>
</html>
