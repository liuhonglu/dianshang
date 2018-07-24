<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/23
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>优惠券管理</title>
    <jsp:include page="/js/jsAll.jsp"></jsp:include>
</head>
<body>
<a id="btn" class="easyui-linkbutton" onclick="addCou()" data-options="iconCls:'icon-print'">新增</a>
<table id="coupon_table_id"></table>
<div id="coupon_div_id"></div>
<script>
    $(function () {
        $("#coupon_table_id").datagrid({
            url: "<%=request.getContextPath()%>/lxlcontroller/queryCoupon.lhtml",
            pagination: true,
            pageNumber: 1,
            pageSize: 3,
            pageList: [3, 6, 9],
            singleSelect: true,
            checkOnSelect: false,
            selectOnCheck: false,
            queryParams: {
                name: $("[name='name']").val(),
                title: $("[name='title']").val(),
            },
            columns: [[
                {field: 'name', title: '名称', width: 200},
                {field: 'prefix', title: '前缀', width: 200},
                {field: 'beginDate', title: '使用起始时间', width: 200},
                {field: 'endDate', title: '使用结束时间', width: 200},
                {
                    field: 'isEnabled', title: '是否启用', width: 150,
                    formatter: function (value, row, index) {
                        var n = "";
                        if (value == 1) {
                            n = "√";
                        } else {
                            n = "×";
                        }
                        return n;
                    }
                },
                {
                    field: 'ssss', title: '操作', width: 200,
                    formatter: function (value, row, index) {
                        var n = "<a href='javascript:editCou(\"" + row.id + "\")'style='text-decoration:none'>编辑</a>" + "------" +
                            "<a href='javascript:delCou(\"" + row.id + "\")'style='text-decoration:none'>删除</a>";
                        return n;
                    }
                },
            ]]
        });
    })

    function editCou(id) {
        $("#coupon_div_id").dialog({
            title: '信息修改',
            width: 600,
            height: 350,
            href: '<%=request.getContextPath()%>/lxlcontroller/queryCouById.lhtml?id=' + id,
            modal: true,
            buttons: [{
                text: '保存',
                handler: function () {
                    $.ajax({
                        url: "<%=request.getContextPath()%>/lxlcontroller/editCou.lhtml",
                        type: "post",
                        data: $("#editCou").serialize(),
                        success: function (result) {
                            $.messager.alert("提示", "操作成功");
                            location.reload();
                        }
                    });
                }
            }, {
                text: '关闭',
                handler: function () {
                    $("#coupon_div_id").dialog('close');
                }
            }]
        })
    }

    function delCou(id) {
        $.ajax({
            url: "<%=request.getContextPath()%>/lxlcontroller/delCou.lhtml?id=" + id,
            type: "post",
            success: function (req) {
                $.messager.alert("提示", "操作成功");
                location.reload();
            },
            error: function () {
                $.messager.alert("提示", "操作错误");
                location.reload();
            },
            async: true
        })
    }

    function addCou() {
        $("#coupon_div_id").dialog({
            title: '信息修改',
            width: 600,
            height: 350,
            href: '<%=request.getContextPath()%>/lxl/addCou.jsp',
            modal: true,
            buttons: [{
                text: '保存',
                handler: function () {
                    $.ajax({
                        url: "<%=request.getContextPath()%>/lxlcontroller/addCou.lhtml",
                        type: "post",
                        data: $("#addCou").serialize(),
                        success: function (result) {
                            $.messager.alert("提示", "操作成功");
                            location.reload();
                        }
                    });
                }
            }, {
                text: '关闭',
                handler: function () {
                    $("#coupon_div_id").dialog('close');
                }
            }]
        })
    }
</script>
</body>
</html>
