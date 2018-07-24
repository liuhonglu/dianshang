<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发货点管理</title>
    <link href="<%=request.getContextPath()%>/resources/admin/css/common.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin/js/jquery.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin/js/list.js"></script>

</head>
<body>

<div class="bar">
    <a href="<%=request.getContextPath()%>/merchandisecontroller/toaddfahuodianguanli.lhtml" class="iconButton">
        <span class="addIcon">&nbsp;</span>添加
    </a>
    <div class="buttonWrap">
        <a href="javascript:deletefahuodianguanli()"  class="iconButton disabled">
            <span class="deleteIcon">&nbsp;</span>删除
        </a>
        <a href="javascript:queryfahuodanguanli()" class="iconButton">
            <span class="refreshIcon">&nbsp;</span>刷新
        </a>
    </div>
</div>
    <table id="fahuodanguanli_table_datagrid"></table>

<div id="fahuodanguanli_div_edit"></div>
<jsp:include page="/js/jsAll.jsp"></jsp:include>
<script type="text/javascript">

    function deletefahuodianguanli(){

        var array =  $("#fahuodanguanli_table_datagrid").datagrid("getChecked");
        var str = "";
        for(var i = 0; i < array.length; i++){
            str += ",'"+array[i]['id']+"'";
        }
        str=str.substring(1);
        $.ajax({
            url:"<%=request.getContextPath()%>/merchandisecontroller/deletefahuodianguanli.lhtml?ids="+str,
            type:"post",
            dataType:"json",
            success:function(result){
                queryfahuodanguanli();
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



    $(function(){
        queryfahuodanguanli();
    });

    function queryfahuodanguanli(){
        $('#fahuodanguanli_table_datagrid').datagrid({
            url:'<%=request.getContextPath()%>/merchandisecontroller/queryfahuodianguanlilist.lhtml',
            columns:[[
                {field:'aa',checkbox:true},
                {field:'fahuodianname',title:'名称',width:100},
                {field:'username',title:'联系人',width:100},
                {field:'regionname',title:'地区名称',width:100},
                {field:'sitedizhi',title:'地址',width:100},
                {field:'youbian',title:'邮编',width:100},
                {field:'telephone',title:'电话',width:100},
                {field:'phone',title:'手机',width:100},
                {field:'moren',title:'是否默认',width:100,
                    formatter:function(value,row,index){
                        if(row.moren==1){
                            return "<font color='green'>√</font>";
                        }
                        if(row.moren==null || row.moren==2){
                            return "<font color='green'>×</font>";
                        }
                    }
                },
                {field:'ace',title:'操作',width:100,
                    formatter:function(value,row,index){
                        return "<a href='javascript:editfahuodanguanli(\""+row.id+"\")'>[编辑]</a>";
                    }
                },
            ]]
        });
    };

    function editfahuodanguanli(id){

            location.href= "<%=request.getContextPath()%>/merchandisecontroller/toeditfahuodianguanli.lhtml?id="+id;
    }


</script>


</body>
</html>
