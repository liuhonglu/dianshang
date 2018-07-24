<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品管理</title>
    <link href="<%=request.getContextPath()%>/resources/admin/css/common.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">

        function yishangjia(){
            $.ajax({
                url:"<%=request.getContextPath()%>/productcontroller/queryyishangjia.lhtml",
                type:"post",
                dataType:"json",
            })
        }
        function weishengjia(){
            $.ajax({
                url:"<%=request.getContextPath()%>/productcontroller/queryweishengjia.lhtml",
                type:"post",
                dataType:"json",
            })
        }
        function lianyiqun(){
            $.ajax({
                url:"<%=request.getContextPath()%>/productcontroller/querylianyiqun.lhtml",
                type:"post",
                dataType:"json",
            })
        }
        function chenyi(){
            $.ajax({
                url:"<%=request.getContextPath()%>/productcontroller/querychenyi.lhtml",
                type:"post",
                dataType:"json",
            })
        }
        function sushenyi(){
            $.ajax({
                url:"<%=request.getContextPath()%>/productcontroller/querysushenyi.lhtml",
                type:"post",
                dataType:"json",
            })
        }
        function shuiyi(){
            $.ajax({
                url:"<%=request.getContextPath()%>/productcontroller/queryshuiyi.lhtml",
                type:"post",
                dataType:"json",
            })
        }
        function kuzi(){
            $.ajax({
                url:"<%=request.getContextPath()%>/productcontroller/querykuzi.lhtml",
                type:"post",
                dataType:"json",
            })
        }
        function xiaoxizhuang(){
            $.ajax({
                url:"<%=request.getContextPath()%>/productcontroller/queryxiaoxizhuang.lhtml",
                type:"post",
                dataType:"json",
            })
        }
        function tixu(){
            $.ajax({
                url:"<%=request.getContextPath()%>/productcontroller/querytixu.lhtml",
                type:"post",
                dataType:"json",
            })
        }


    </script>
</head>
<body>

<table id="shangpinguanli_table_datagrid"></table>

<div class="bar">
    <a href="/lhl/addshangpinguanli.jsp" class="iconButton">
  <%--  <a href="javascript:xinzenglhl()" class="iconButton">--%>
        <span class="addIcon">&nbsp;</span>添加
    </a>
    <div class="buttonWrap">
        <a href="javascript:deleteshangpinguanli()" id="deleteButton" class="iconButton disabled">
            <span class="deleteIcon">&nbsp;</span>删除
        </a>
        <a href="javascript:toshangpinguanli()" id="refreshButton" class="iconButton">
            <span class="refreshIcon">&nbsp;</span>刷新
        </a>
        <div class="menuWrap">
            <a href="javascript:;" id="filterSelect" class="button" >
                商品筛选<span class="arrow" >&nbsp;</span>
            </a>
            <div class="popupMenu">
                <ul id="filterOption" class="check">
                    <li>
                        <a href="javascript:yishangjia();" >已上架</a>
                    </li>
                    <li>
                        <a href="javascript:weishengjia();" >未上架</a>
                    </li>
                    <li class="separator">
                        <a href="javascript:lianyiqun();" >连衣裙</a>
                    </li>
                    <li>
                        <a href="javascript:chenyi();" >衬衣</a>
                    </li>
                    <li class="separator">
                        <a href="javascript:sushenyi();" >塑身衣</a>
                    </li>
                    <li>
                    <a href="javascript:shuiyi();" >睡衣</a>
                    </li>
                    <li>
                        <a href="javascript:kuzi();" >裤子</a>
                    </li>
                    <li>
                        <a href="javascript:xiaoxizhuang();" >小西装</a>
                    </li>
                    <li>
                        <a href="javascript:tixu();"  >T恤</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

    <jsp:include page="/js/jsAll.jsp"></jsp:include>

    <script type="text/javascript">
        function deleteshangpinguanli(){

            var array = $("#shangpinguanli_table_datagrid").datagrid("getChecked");
            var str = "";
            for(var i = 0; i < array.length; i++){
                str += ",'"+array[i]['sn']+"'";
            }
            str=str.substring(1);
            $.ajax({
                url:"<%=request.getContextPath()%>/productcontroller/deleteproduct.lhtml?sn="+str,
                type:"post",
                dataType:"json",
                success:function(result){
                    toshangpinguanli();
                    $.messager.alert('警告','删除成功');
                }
            })
        }

    </script>

<script type="text/javascript">

    var $listForm = $("#listForm");
    var $moreButton = $("#moreButton");
    var $filterSelect = $("#filterSelect");
    var $filterOption = $("#filterOption a");
    // 商品筛选
    $filterSelect.mouseover(function() {
        var $this = $(this);
        var offset = $this.offset();
        var $menuWrap = $this.closest("div.menuWrap");
        var $popupMenu = $menuWrap.children("div.popupMenu");
        $popupMenu.css({left: offset.left, top: offset.top + $this.height() + 2}).show();
        $menuWrap.mouseleave(function() {
            $popupMenu.hide();
        });
    });

    // 筛选选项
    $filterOption.click(function() {
        var $this = $(this);
        var $dest = $("#" + $this.attr("name"));
        if ($this.hasClass("checked")) {
            $dest.val("");
        } else {
            $dest.val($this.attr("val"));
        }
        $listForm.submit();
        return false;
    });

</script>


<script>

    $(function(){
        toshangpinguanli();
    });

    function toshangpinguanli(){
        var count = 0;
        $('#shangpinguanli_table_datagrid').datagrid({
            url:'<%=request.getContextPath()%>/productcontroller/queryproduct.lhtml',
            remoteSort: false,
            pagination:true,
            singleSelect:true,
            checkOnSelect:true,
            selectOnCheck:false,
            pagePosition:'bottom',
            pageNumber:1,
            pageSize:5,
            pageList:[5,10,20,30],
            columns:[[
                {field:'ace',checkbox:true},
                {field:'sn',title:'编号',width:100,align:'center',sortable:true,
                    sorter:function(a,b){
                        a = a.split('/');
                        b = b.split('/');
                        if (a[2] == b[2]){
                            if (a[0] == b[0]){
                                return (a[1]>b[1]?1:-1);
                            } else {
                                return (a[0]>b[0]?1:-1);
                            }
                        } else {
                            return (a[2]>b[2]?1:-1);
                        }
                    },
                    formatter:function(value,row,index){
                        return ++count;
                    }
                },
                {field:'name',title:'名称',width:300,align:'center'},
                {field:'protype',title:'商品分类',width:100,align:'center',sortable:true,
                    sorter:function(a,b){
                        a = a.split('/');
                        b = b.split('/');
                        if (a[2] == b[2]){
                            if (a[0] == b[0]){
                                return (a[1]>b[1]?1:-1);
                            } else {
                                return (a[0]>b[0]?1:-1);
                            }
                        } else {
                            return (a[2]>b[2]?1:-1);
                        }
                    },
                    formatter:function(value,row,index){
                        if(value==1){
                            return "衬衣";
                        }
                        if(value==2){
                            return "裤子";
                        }
                        if(value==3){
                            return "连衣裙";
                        }
                        if(value==4){
                            return "塑身衣";
                        }
                        if(value==5){
                            return "睡衣";
                        }
                        if(value==6){
                            return "小西装";
                        }
                        if(value==7){
                            return "T恤";
                        }
                    }
                },
                {field:'xiaoshoujia',title:'销售价',width:100,align:'center',sortable:true,
                    sorter:function(a,b){
                        a = a.split('/');
                        b = b.split('/');
                        if (a[2] == b[2]){
                            if (a[0] == b[0]){
                                return (a[1]>b[1]?1:-1);
                            } else {
                                return (a[0]>b[0]?1:-1);
                            }
                        } else {
                            return (a[2]>b[2]?1:-1);
                        }
                    }
                },
                {field:'chengbenjia',title:'成本价',width:100,align:'center',sortable:true,
                    sorter:function(a,b){
                        a = a.split('/');
                        b = b.split('/');
                        if (a[2] == b[2]){
                            if (a[0] == b[0]){
                                return (a[1]>b[1]?1:-1);
                            } else {
                                return (a[0]>b[0]?1:-1);
                            }
                        } else {
                            return (a[2]>b[2]?1:-1);
                        }
                    }
                },
                {field:'kecun',title:'库存',width:100,align:'center',sortable:true,
                    sorter:function(a,b){
                        a = a.split('/');
                        b = b.split('/');
                        if (a[2] == b[2]){
                            if (a[0] == b[0]){
                                return (a[1]>b[1]?1:-1);
                            } else {
                                return (a[0]>b[0]?1:-1);
                            }
                        } else {
                            return (a[2]>b[2]?1:-1);
                        }
                    }
                },
                {field:'shangjia',title:'是否上架',width:100,align:'center',sortable:true,
                    sorter:function(a,b){
                        a = a.split('/');
                        b = b.split('/');
                        if (a[2] == b[2]){
                            if (a[0] == b[0]){
                                return (a[1]>b[1]?1:-1);
                            } else {
                                return (a[0]>b[0]?1:-1);
                            }
                        } else {
                            return (a[2]>b[2]?1:-1);
                        }
                    },
                    formatter: function (value,row,index) {
                        if(value==1){
                            return "<font color='bule'>√</font>";
                        }
                        if(value==2){
                            return "<font color='red'>×</font>";
                        }
                    }
                },
                {field:'createtime',title:'创建日期',width:100,align:'center',sortable:true,
                    sorter:function(a,b){
                        a = a.split('/');
                        b = b.split('/');
                        if (a[2] == b[2]){
                            if (a[0] == b[0]){
                                return (a[1]>b[1]?1:-1);
                            } else {
                                return (a[0]>b[0]?1:-1);
                            }
                        } else {
                            return (a[2]>b[2]?1:-1);
                        }
                    }
                },
                {field:'price',title:'操作',width:100,align:'center',
                    formatter:function(value,row,index){
                        if(row.shangjia==1){
                            return "<a href='javascript::<%=request.getContextPath()%>/productcontroller/queryproductbyid.lhtml' >[编辑]</a><a href='javascript#' >[查看]</a>";
                        }
                        if(row.shangjia==2){
                            return "<a href='javascript:#' >[编辑]</a>[未上架]";
                        }
                    }
                }
            ]]
        });
    }

</script>
</body>
</html>
