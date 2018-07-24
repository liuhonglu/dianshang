<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品属性</title>
    <%--<link rel="stylesheet" href="<%=request.getContextPath()%>/js/EasyUI/themes/default/easyui.css" type="text/css"/>--%>
    <%--<link rel="stylesheet" href="<%=request.getContextPath()%>/js/EasyUI/themes/icon.css" type="text/css"/>--%>
    <%--<script type="text/javascript" src="<%=request.getContextPath()%>/js/EasyUI/jquery.easyui.min.js"></script>--%>
    <%--<!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->--%>
    <%--<script type="text/javascript" src="<%=request.getContextPath()%>/js/EasyUI/locale/easyui-lang-zh_CN.js"></script>--%>
    <%--<script src="<%=request.getContextPath()%>/js/uploadify/jquery.uploadify.min.js"></script>--%>
    <%--<script type="text/javascript" src="<%=request.getContextPath()%>/My97DatePicker/WdatePicker.js"></script>--%>
    <%--<!-- tree插件的使用 -->--%>
    <%--<script type="text/javascript" src="<%=request.getContextPath()%>/js/EasyUI/util-js.js"></script>--%>
</head>

<body>
<jsp:include page="/js/jsAll.jsp"></jsp:include>
<%--<input name="name">
queryParams: {
username:$("#name").val(),
},--%>
<table id="zmattributetable"></table>
<script type="text/javascript">
    $('#zmattributetable').datagrid({
        url:'<%=request.getContextPath()%>/attribute/querylist.lhtml',
        singleSelect:true,
        sortable:true,
        pagination:true,
        pagePosition:'bottom',//分页工具栏显示位置
        pageNumber:1,//初始化页码
        pageSize:3,//每页条数
        pageList:[1,3,5],//每页条数的下拉选项
        columns:[[
            {field:'xuan',checkbox:true},
            {field:'name',title:'名称'},
            {field:'productCategory',title:'绑定分类',width:100},
            {field:'options',title:'可选项',width:100},
            {field:'upd',title:'操作',width:100,
                formatter: function(value,row,index){
                    return "<input type='button' value='编辑' onclick='update("+row.userid+")'>";
                }
            },
        ]]
    });
</script>
</body>
</html>
