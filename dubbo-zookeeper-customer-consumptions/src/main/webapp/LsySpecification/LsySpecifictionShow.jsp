<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/9
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="easyui-layout" data-options="fit:true">
    <div data-options="region:'north',title:'条件',split:true" style="height:100px;">
        <div id="lsySpeciTool">
            <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">添加</a>
            <a href="javascript:delSpeci()" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">删除</a>
            <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true">刷新</a>
        </div>
        <select id="spid" class="easyui-combobox" style="width:100px;" onchange="ss()">
            <option value="0">名称</option>
            <option value="1">备注</option>
        </select>
        <span id="queryRequri">
            <input name="specname" >
        </span>





        <a id="btn" href="javascript:seracher()" class="easyui-linkbutton"  data-options="iconCls:'icon-search'">easyui</a>
    </div>
    <div data-options="region:'center'" style="padding:5px;background:#eee;">

        <table id="lsySpeciShow"></table>
    </div>
</div>

<script type="text/javascript">
    $(function(){
        seracher();
        $("#spid").combobox({

            onChange: function (n, o) {

                ss(n)

            }
        })
    })
    function seracher(){
        var mm = $("[name='utype']:checked").val();
        $('#lsySpeciShow').datagrid({
            url:'<%=request.getContextPath()%>/LsySpeci/querySpeciPage.lhtml',
            singleSelect:true,
            checkOnSelect:false,
            selectOnCheck:false,
            pagination:true,//开启分页
            pagePosition:'top',//分页工具栏显示位置
            pageNumber:1,//初始化页码
            pageSize:10,//每页条数
            pageList:[10,8,5],//每页条数的下拉选项
            queryParams: {
                specname: $("[name='specname']").val(),
                specidesc: $("[name='specidesc']").val(),
            },
            toolbar: '#lsySpeciTool',
            columns:[[
                {field:'speciid',checkbox:true},
                {field:'specname',title:'名称',width:200},
                {field:'specidesc',title:'备注',width:200},
                {field:'specitype',title:'类型',width:200,

                    formatter: function(value,row,index){
                    if(row.specitype == 0){
                        return "图片"
                    }
                       return "文本"
                    }

                },
                {field:'specivlaues',title:'规格值',width:200},
                {field:'speciorder',title:'排序',width:200},
                {field:'speciids',title:'操作',width:200,

                    formatter: function(value,row,index){
                        return "<a href='javascript:delspeci("+row.speciid+")'>编辑</a>"
                    }
                },

            ]],
            onClickRow: function(index,row){

            }
        });
    }
    function ss(zhi){
        if(zhi == 1){
            $("#queryRequri").html('<input name="specidesc" >');
        }else{
            $("#queryRequri").html('<input name="specname" >');
        }
    }
    //删除选中的规格
    function delSpeci(){
        var zhi= $("#lsySpeciShow").datagrid('getChecked');
        var ids = ""
        if(zhi == null ){
            $.messager.show({
                title:'你有一个新消息',
                msg:'至少选中一行',
                timeout:2000,// 单位：毫秒
                showType:'slide'
            });
        }else{
            for (var i = 0;i < zhi.length;i++){

                ids = ids + "'"+zhi[i].speciid+ "'"+",";
            }
            ids = ids.substring(0,ids.length-1);
            $.ajax({
                url:"<%=request.getContextPath()%>/LsySpeci/delSpeci.lhtml",
                data:{speciid:ids},
                success:function(msg){
                    if(msg == 0){
                        $.messager.show({
                            title:'你有一个新消息',
                            msg:'删除成功',
                            timeout:2000,// 单位：毫秒
                            showType:'slide'
                        });
                        $('#lsySpeciShow').datagrid('reload')
                    }else if(msg == 1){
                        $.messager.show({
                            title:'你有一个新消息',
                            msg:'删除失败',
                            timeout:2000,// 单位：毫秒
                            showType:'slide'
                        });
                    }

                }
            })
        }
    }

</script>
</body>
</html>
