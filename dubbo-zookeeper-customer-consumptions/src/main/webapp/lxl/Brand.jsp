<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/9
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/js/jsAll.jsp"></jsp:include>
</head>
<body>
<a id="btn" class="easyui-linkbutton" onclick="add()" data-options="iconCls:'icon-print'">新增</a>
<a id="btn2" class="easyui-linkbutton" onclick="remove()" data-options="iconCls:'icon-remove'">删除</a>
<a id="btn3" class="easyui-linkbutton" onclick="edit()" data-options="iconCls:'icon-edit'">修改</a>
        <table id="urlist"></table>
        <div id="ur_div"></div>
    <script>
        $(function (){
            $("#urlist").datagrid({
                url:"<%=request.getContextPath()%>/lxlcontroller/queryBrand.lhtml",
                pagination:true,
                pageNumber:1,
                pageSize:3,
                pageList:[3,6,9],
                singleSelect:true,
                checkOnSelect:false,
                selectOnCheck:false,
                columns:[[
                    {field:'name',title:'名称',width:300},
                    {field:'logo',title:'logo',width:300,
                        formatter:function (value,row,index) {
                            var n = "<a href='javascript:chakan("+value+")'style='text-decoration:none'>查看</a>";
                            return n;
                        }
                    },
                    {field:'url',title:'网址',width:300},
                    {field:'sorting',title:'排序',width:390},
                ]]
            });
        });
        
        function chakan(logo) {
            $.messager.alert("提示!","暂未开放");
        }

        function add() {
            $('#ur_div').dialog({
                title: '新增用户',
                width: 400,
                height: 400,
                closed: false,
                cache: false,
                href: '<%=request.getContextPath()%>/lxl/addBrand.jsp',
                modal: true,
                buttons:[{
                    text:'保存',
                    handler:function(){
                       /* var formData = new FormData($("#addBrand")[0]);
                        alert(formData);*/
                        $.ajax({
                            /*data:formData,
                            cache: false,
                            contentType: false,
                            processData: false,*/
                            data:$("#addBrand").serialize(),
                            url:"<%=request.getContextPath()%>/lxlcontroller/addBrand.lhtml",
                            type:"POST",
                            success:function(result){
                                $("#ur_div").dialog('close');
                                location.reload();
                            }
                        });
                    }
                },{
                    text:'取消',
                    handler:function(){
                        $("#ur_div").dialog('close');
                    }
                }]
            })
        }
        
        function remove() {
            var rows = $("#urlist").datagrid('getSelected');
            if(rows==null){
                $.messager.alert("警告!","请选择一行");
            }else{
                if(confirm("确定删除这条信息么")){
                    $.ajax({
                        url:"<%=request.getContextPath()%>/lxlcontroller/delBrand.lhtml",
                        data:{id:rows.id},
                        type:"POST",
                        success:function(result){
                            location.reload();
                        }
                    });
                }
            }
        }

        function edit() {
            var rows = $("#urlist").datagrid('getSelected');
            if(rows==null){
                $.messager.alert("警告!","不能修改空的信息");
            }else{
                $("#ur_div").dialog({
                    title: '信息修改',
                    width: 600,
                    height: 350,
                    href: '<%=request.getContextPath()%>/lxlcontroller/queryBrandById.lhtml?id='+rows.id,
                    modal: true ,
                    buttons:[{
                        text:'保存',
                        handler:function(){
                            $.ajax({
                                url:"<%=request.getContextPath()%>/lxlcontroller/editBrand.lhtml",
                                type:"post",
                                data:$("#addBrand").serialize(),
                                success:function(result){
                                    if(result==1){
                                        location.reload();
                                        $("#ur_div").dialog('close');
                                    }
                                }
                            });
                        }},{
                        text:'关闭',
                        handler:function(){
                            $("#ur_div").dialog('close');
                        }
                    }]
                })
            }
        }
    </script>
</body>
</html>