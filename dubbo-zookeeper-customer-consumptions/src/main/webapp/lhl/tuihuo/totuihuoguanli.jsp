<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>退货管理页面</title>
    <link href="<%=request.getContextPath()%>/resources/admin/css/common.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin/js/jquery.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin/js/list.js"></script>
</head>
<body>

<div class="bar">
    <div class="buttonWrap">
        <a href="javascript:deletetuihuoguanli()"  class="iconButton disabled">
            <span class="deleteIcon">&nbsp;</span>删除
        </a>
        <a href="javascript:querytuihuolist();" id="refreshButton" class="iconButton">
            <span class="refreshIcon">&nbsp;</span>刷新
        </a>
        </div>
    </div>
</div>

    <table id="tuihuoguanli_table_query_list"></table>

<jsp:include page="/js/jsAll.jsp"></jsp:include>
<script type="text/javascript">

    function deletetuihuoguanli(){

        var array = $("#tuihuoguanli_table_query_list").datagrid("getChecked");
        var str = "";
        for(var i = 0; i < array.length; i++){
            str += ",'"+array[i]['id']+"'";
        }
        str=str.substring(1);
        $.ajax({
            url:"<%=request.getContextPath()%>/tuihuocontroller/deletetuihuoguanli.lhtml?id="+str,
            type:"post",
            dataType:"json",
            success:function(result){
                querytuihuolist();
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
        querytuihuolist();
    });

    function querytuihuolist(){
        $('#tuihuoguanli_table_query_list').datagrid({
            url:'<%=request.getContextPath()%>/tuihuocontroller/querytuihuiguanlilist.lhtml',
            columns:[[
                {field:'aa',checkbox:true},
                {field:'id',title:'编号',width:100},
                {field:'peisongfangshi',title:'配送方式',width:100},
                {field:'kuaidiname',title:'物流公司',width:100},
                {field:'yundanhao',title:'运单号',width:100},
                {field:'lianxiren',title:'发货人',width:100},
                {field:'createdate',title:'创建日期',width:100},
                {field:'acr',title:'操作',width:100,
                    formatter:function(value,row,index){
                        return "<a href='javascript:toeditbianjituihuo(\""+row.id+"\")'>[编辑]</a>";
                    }
                }
            ]]
        });
    };


    function toeditbianjituihuo(id){
        Location.href="<%=request.getContextPath()%>/tuihuocontroller/toeditbianjituihuo.lhtml";
    }


    function editbianjituihuo(){
        $.ajax({
            url:"<%=request.getContextPath()%>/tuihuocontroller/editbianjituihuo.lhtml",
            type:"post",
            dataType:"json",
            success:function(result){
                $.messager.show({
                    title:'我的消息',
                    msg:'编辑成功。',
                    timeout:5000,
                    showType:'slide'
                });
            },
            error:function(result){
                $.messager.show({
                    title:'我的消息',
                    msg:'编辑失败。',
                    timeout:5000,
                    showType:'slide'
                });
            }
        })
    }

</script>
</body>
</html>
