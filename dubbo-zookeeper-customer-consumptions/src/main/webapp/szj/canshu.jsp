<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/9
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div id="tb">
    <a href="javascript:add()" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">新增</a>

    <a href="javascript:del(null)" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</a>

    <a href="javascript:queryWhere()" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true">查询</a>
</div>

<table id="dg"></table>

<div id="dd"></div>
<script>
    function add(){

            title="新增车辆信息";

        $('#dd').dialog({
            title: title,
            width: 600,
            height: 500,
            closed: false,
            cache: false,
            href: "<%=path%>/szj/addcanshu.jsp",
            modal: true,
            buttons:[{
                text:'保存',
                handler:function(){
                    $("#data").form('submit',{
                        url:"<%=path%>/addCar.wys",
                        onSubmit:function(){
                            var isValid = $(this).form('validate');
                            if(!isValid){
                                $.messager.alert("提示",'输入有误！请检查输入！');
                                return false;
                            }
                        },
                        success:function(data){
                            var data = eval('(' + data + ')');
                            if(data.success){
                                $.messager.alert("提示",data.msg);
                                $('#dd').dialog('close');
                                $('#dg').datagrid('load');
                            }else{
                                $.messager.alert("提示",data.msg);
                            }
                        }
                    });
                }
            }]


        });
    }

    $('#dg').datagrid({
        url:'<%=path%>/szjController/parameterGroup.lhtml',

        columns:[[
            {field:'',title:'',checkbox:true},
            {field:'id',title:'编号',width:'200' },
            {field:'create_date',title:'创建时间',width:'200' },
            {field:'modify_date',title:'修改时间',width:'200' },
            {field:'name',title:'名称',width:'200' },
            {field:'s',title:'操作 ',width:'200',formatter:function(value,row,index){
                return "<input type='button'  value='删除' onclick='del("+row.id+")'>&nbsp;&nbsp;"+"<input type='button'  value='修改' onclick='update("+row.id+")'>";
            }}
        ]],
        //fit:true,
        //fitColumns:true,
        striped:true,
        pagination:true,
        //singleSelect:true,
        ctrlSelect:true,
        //pagePosition:'both,
        pageList:[10,15,20],
        toolbar:'#tb'

    });
    //删除
    function del(id){
        var ids="";
        if(id!=null){
            ids = id;
        }else{
            //获取所有被选中的行
            var arr = $("#dg").datagrid("getSelections");
            for (var i = 0; i < arr.length; i++) {
                ids+=","+"'"+arr[i].id+"'";
            }
            ids = ids.substr(1);

        }
        alert(ids);
        $.ajax({
            url:"<%=path%>/szjController/del.lhtml",
            type:"post",
            data:{"ids":ids},
            dataType:"json",
            success:function(data){
                if(data==1){
                    alert("删除成功！");
                    $('#dg').datagrid('reload');
                }else{
                    alert("删除失败！");
                }
            }

        })
    }

</script>
</body>
</html>
