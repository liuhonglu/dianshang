<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>快递单模板列表</title>
    <link href="<%=request.getContextPath()%>/resources/admin/css/common.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin/js/jquery.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin/js/list.js"></script>
</head>
<body>
<div class="bar">
    <a href="<%=request.getContextPath()%>/merchandisecontroller/toinsertkuaididanmoban.lhtml" class="iconButton">
        <span class="addIcon">&nbsp;</span>添加
    </a>
    <div class="buttonWrap">
        <a href="javascript:deletekuaididan()" class="iconButton disabled">
            <span class="deleteIcon">&nbsp;</span>删除
        </a>
        <a href="javascript:querykuaididanmoban()" id="refreshButton" class="iconButton">
            <span class="refreshIcon">&nbsp;</span>刷新
        </a>
    </div>
</div>
    <table id="kuaididanmoban_table_datagrid"></table>

    <jsp:include page="/js/jsAll.jsp"></jsp:include>
<script type="text/javascript">

    $(function(){
        querykuaididanmoban();
    });


    function deletekuaididan(){

        var array = $("#kuaididanmoban_table_datagrid").datagrid("getChecked");
        var str = "";
        for(var i = 0; i < array.length; i++){
            str += ",'"+array[i]['id']+"'";
        }
        str=str.substring(1);
        $.ajax({
            url:"<%=request.getContextPath()%>/merchandisecontroller/deletekuaididan.lhtml?ids="+str,
            type:"post",
            dataType:"json",
            success: function(result) {
                querykuaididanmoban();
                $.messager.show({
                    title:'我的消息',
                    msg:'删除成功。',
                    timeout:5000,
                    showType:'slide'
                });
            },
            error:function(result){
                $.messager.show({
                    title:'我的消息',
                    msg:'删除失败。',
                    timeout:5000,
                    showType:'slide'
                });
            }
        })
    }


    function querykuaididanmoban(){
        $('#kuaididanmoban_table_datagrid').datagrid({
            url:'<%=request.getContextPath()%>/merchandisecontroller/querykuaididanmobanquery.lhtml',
            columns:[[
                {field:'ae',checkbox:true},
                {field:'kuaidiname',title:'名称',width:100},
                {field:'beizhu',title:'备注',width:100},
                {field:'shifoumoren',title:'是否默认',width:100,
                    formatter:function(value,row,index){
                        if(row.shifoumoren==1){
                            return "<font color='green'>√</font>";
                        }
                        if(row.shifoumoren==2){
                            return "<font color='red'>×</font>";
                        }
                    }
                },
                {field:'ace',title:'操作',width:100,
                    formatter:function(value,row,index){
                        return "<a href='javascript:editstatus(\""+row.shifoumoren+"\",\""+row.id+"\")'>[是否默认]</a>";
                    }
                }
            ]]
        });

    };

    function editstatus(shifoumoren,id){

        $.ajax({
            url:"<%=request.getContextPath()%>/merchandisecontroller/editstatus.lhtml",
            type:"post",
            data:{shifoumoren:shifoumoren,id:id},
            dataType:"json",
            success:function(result){
                querykuaididanmoban();
                $.messager.show({
                    title:'我的消息',
                    msg:'默认成功。',
                    timeout:5000,
                    showType:'slide'
                });
            },
            error:function(result){
                $.messager.show({
                    title:'我的消息',
                    msg:'默认失败。',
                    timeout:5000,
                    showType:'slide'
                });
            }
        })
    };

</script>

</body>
</html>
