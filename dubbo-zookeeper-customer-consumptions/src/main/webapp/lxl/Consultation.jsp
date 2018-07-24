<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/12
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>咨询列表</title>
    <jsp:include page="/js/jsAll.jsp"></jsp:include>
</head>
<body>
<select id="spid1" class="easyui-combobox" style="width:100px;">
    <option value="1">内容</option>
</select>
<input type="button" value="搜索" onclick="search()">
<span id="queryRequri1">
    <input name="content">
</span>
<table id="consultation_table_id"></table>
<div id="consultation_div_id"></div>
<script>
    $(function () {
        search();
    });

    function search() {
        $("#consultation_table_id").datagrid({
            url: "<%=request.getContextPath()%>/lxlcontroller/queryConsultation.lhtml",
            pagination: true,
            pageNumber: 1,
            pageSize: 3,
            pageList: [3, 6, 9],
            singleSelect: true,
            checkOnSelect: false,
            selectOnCheck: false,
            queryParams: {
                content: $("[name='content']").val(),
            },
            columns: [[
                {field: 'name', title: '商品', width: 400},
                {field: 'content', title: '内容', width: 400},
                {field: 'username', title: '会员', width: 50},
                {
                    field: 'is_show', title: '是否显示', width: 80,
                    formatter: function (value, row, index) {
                        var n = "√";
                        return n;
                    }
                },
                {
                    field: 'replyConsultations', title: '已回复', width: 50,
                    formatter: function (value, row, index) {
                        var n = "";
                        if (value == null) {
                            n = "X";
                        } else {
                            n = "√";
                        }
                        return n;
                    }
                },
                {field: 'create_date', title: '创建日期', width: 100},
                {
                    field: 'ssss', title: '操作', width: 200,
                    formatter: function (value, row, index) {
                        var n = "<a href='javascript:chakan(\"" + row.id + "\")'style='text-decoration:none'>回复</a>" +
                            "<a href='javascript:huifu(\"" + row.id + "\")'style='text-decoration:none'>编辑</a>";
                        return n;
                    }
                },
            ]]
        });
    }

    function chakan(id) {
//        $.messager.alert("提示!", "暂未开放");
        $('#consultation_div_id').dialog({
            title: '新增用户',
            width: 450,
            height: 450,
            closed: false,
            cache: false,
            href: '<%=request.getContextPath()%>/lxlcontroller/queryByIdConsultation.lhtml?id=' + id,
            modal: true,
            buttons: [{
                text: '保存',
                handler: function () {
                    $.ajax({
                        data: $("#add_form_id").serialize(),
                        url: "<%=request.getContextPath()%>/lxlcontroller/editConsultation.lhtml",
                        type: "POST",
                        success: function (result) {
                            $("#consultation_div_id").dialog('close');
                            location.reload();
                        }
                    });
                }
            }, {
                text: '取消',
                handler: function () {
                    $("#consultation_div_id").dialog('close');
                }
            }]
        })
    }

    function huifu(id) {
        $('#consultation_div_id').dialog({
            title: '回复',
            width: 450,
            height: 450,
            closed: false,
            cache: false,
            href: '<%=request.getContextPath()%>/lxlcontroller/queryByIdConsultation1.lhtml?id=' + id,
            modal: true,
            buttons: [{
                text: '保存',
                handler: function () {
                    $.ajax({
                        data: $("#ttt_form_id").serialize(),
                        url: "<%=request.getContextPath()%>/lxlcontroller/editConsultation1.lhtml",
                        type: "POST",
                        success: function (result) {
                            $("#consultation_div_id").dialog('close');
                            location.reload();
                        }
                    });
                }
            }, {
                text: '取消',
                handler: function () {
                    $("#consultation_div_id").dialog('close');
                }
            }]
        })
    }
</script>
</body>
</html>
