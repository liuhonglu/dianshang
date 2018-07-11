<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%--
    <a href="<%=request.getContextPath()%>/hddcontroller/addtopc.lhtml" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">新增</a>
--%>
    <a href="javascript:saveaddpc()" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">新增</a>


   <table id="productcategoryhdd"></table>


    <div id="hddproductcategory"></div><%--弹框--%>


<script type="text/javascript">
    $(function(){
        queryLeaseHouse();
    })

    function queryLeaseHouse(){
        $('#productcategoryhdd').datagrid({
            url:'<%=request.getContextPath()%>/hddcontroller/queryproductcategorylist.lhtml',
            checkOnSelect:false,
            selectOnCheck:false,
            singleSelect:true,
            /*fit:true,*/
            columns:[[
                {field:'',title:'',checkbox:true},
               /* { title: ' 名称 ', field: 'name', width: 100 ,align: "center"},*/
                { title: ' 名称 ', field: 'name', width: 300 ,align: "center"},

                { title: ' 排序 ', field: 'orders', width: 300 ,align: "center"},

                { title: ' 操作', field: 'cxz',  width: 300,
                    formatter:function(value,row,index){
                        return "<input type='button' value='删除' onclick='deleteAll(\""+row.id+"\")'>" +
                            "<input type='button' value='编辑' onclick='updateAll(\""+row.id+"\")'>";

                    }
                }
            ]],
        })
    }

</script>
<%--新增--%>
<script type="text/javascript">
            function saveaddpc(){
                    $("#hddproductcategory").dialog({
                    title: '添加页面',
                    width: 1000,
                    height: 500,
                    href: '<%=request.getContextPath()%>/hddcontroller/addtopc.lhtml',
                    buttons:[{
                    text:'保存',
                         handler:function(){
                            $.ajax({
                            type:"post",
                            data:$("#hddaddpcform").serialize(),
                            url:"<%=request.getContextPath()%>/hddcontroller/savepc.lhtml",
                            success:function(msg){
                              // $.messager.alert("新增成功");
                                queryLeaseHouse();
                                $("#hddproductcategory").dialog('close');

                             }
                    })
                    }
                    },{
                    text:'关闭',
                        handler:function(){
                        $("#hddproductcategory").dialog('close');
                        }
                }]
               })
            }
</script>
<%--删除--%>
<script type="text/javascript">
    function deleteAll(id){

        var shu = $("#productcategoryhdd").datagrid("getChecked");
        if(shu==0){
            $.messager.alert("请选择一项");
        }else{
            var countt = "";
            var count = 0;
            for(var i = 0;i<shu.length;i++){
                countt+=","+"'"+shu[i].id+"'";
                count++;
            }
            var ids = countt.substring(1);
            if(confirm("你确定要删除这"+count+"条数据吗？")){
                $.ajax({
                    url:"<%=request.getContextPath()%>/hddcontroller/deletepc.lhtml",
                    type:"post",
                    data:{ids:ids},
                    success:function(suletu){
                        $.messager.alert("删除成功")
                        queryLeaseHouse();
                        $("#hddproductcategory").dialog('close');
                    },
                    error:function(suletu){
                        $.messager.alert("删除失败")
                    }
                })
            }
        }
    }

</script>
<script type="text/javascript">
   function updateAll(id){

               $("#hddproductcategory").dialog({
                   title: '修改页面',
                   width: 1000,
                   height: 500,
                   href: '<%=request.getContextPath()%>/hddcontroller/updateById.lhtml?id='+id,
                   buttons:[{
                       text:'保存',
                       handler:function(){
                           $.ajax({
                               type:"post",
                               data:$("#updatehddpc").serialize(),
                               url:"<%=request.getContextPath()%>/hddcontroller/updatePc.lhtml",
                               success:function(msg){
                                  // location.reload();
                                   queryLeaseHouse();
                                   $("#hddproductcategory").dialog('close');
                               }
                           })
                       }
                   },{
                       text:'关闭',
                       handler:function(){
                           $("#hddproductcategory").dialog('close');
                       }
                   }]
               })
   }



</script>






</body>
</html>
