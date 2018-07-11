<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<body>

<div id="cc" class="easyui-layout" data-options="fit:true">
    <div data-options="region:'north'" style="height: 100px">

        <!-- 第一部分 -->
        <div style="float:left">
            <a href="${base}/main.jhtml">
                <img src="${base}/Admin/images/payment/zhe800.png" height="90px" width="200px" alt="SHOP++" />
            </a>
        </div>

            <!-- 第二部分 -->
            <div style="width:800px;float:left">
                <div align="center">
                    <a href="javascript:products()">商品</a>&nbsp;
                    <a href="javascript:dingdan()">订单</a>&nbsp;
                    <a href="javascript:huiyuan()">会员</a>&nbsp;
                    <a href="javascript:neirong()">内容</a>&nbsp;
                    <a href="javascript:yingxiao()">营销</a>&nbsp;
                    <a href="javascript:tongji()">统计</a>&nbsp;
                    <a href="javascript:xitong()">系统</a>&nbsp;
                    <a href="javascript:shouye()">首页</a>&nbsp;
                </div>

            </div>
            <!-- 第三部分 -->
            <div style="width:300px;float:left">
                <a href="">官方网站</a>&nbsp;|<a href="">交流论坛</a >&nbsp;|<a href="">关于我们</a><br>
                <span>admin</span>&nbsp;您好！&nbsp;|<a href="">[账号设置]</a>&nbsp;|<a href="">[注销]</a><br>
            </div>
    </div>
    <div data-options="region:'west'" style="width:200px;">
        <div id="leftList"></div>
    </div>

    <div data-options="region:'center'" style="padding:5px">
        <div id="tttts" class="easyui-tabs"  data-options="fit:true">
            <div title="首页" style="padding:20px;display:none;">
                tab1
            </div>

        </div>
    </div>
</div>

<jsp:include page="/js/jsAll.jsp"></jsp:include>
<script type="text/javascript" >
    $(function () {
        products()
    })
    //点击商品
    function products(){
        $.ajax({
            url:"<%=request.getContextPath() %>/LsyIndexChange/toProductsListManageJsp.lhtml",
            success:function (msg) {
                $("#leftList").html(msg)
            }
        })
    }//点击订单
    function dingdan(){
        $.ajax({
            url:"<%=request.getContextPath() %>/LsyIndexChange/toDingDanListManageJsp.lhtml",
            success:function (msg) {
                $("#leftList").html(msg)
            }
        })
    }
    //点击会员进入会员管理
    function huiyuan(){
        $.ajax({
            url:"<%=request.getContextPath() %>/LsyIndexChange/toHuiYuanListManageJsp.lhtml",
            success:function (msg) {
                $("#leftList").html(msg)
            }
        })
    }//点击内容进入内容管理
    function neirong(){
        $.ajax({
            url:"<%=request.getContextPath() %>/LsyIndexChange/toneirongListManageJsp.lhtml",
            success:function (msg) {
                $("#leftList").html(msg)
            }
        })
    }
    //点击营销进入营销管理
    function yingxiao(){
        $.ajax({
            url:"<%=request.getContextPath() %>/LsyIndexChange/toyingxiaoListManageJsp.lhtml",
            success:function (msg) {
                $("#leftList").html(msg)
            }
        })
    }
    //点击统计进入统计管理
    function tongji(){
        $.ajax({
            url:"<%=request.getContextPath() %>/LsyIndexChange/totongjiListManageJsp.lhtml",
            success:function (msg) {
                $("#leftList").html(msg)
            }
        })
    }//点击系统进入系统管理
    function xitong(){
        $.ajax({
            url:"<%=request.getContextPath() %>/LsyIndexChange/toxitongListManageJsp.lhtml",
            success:function (msg) {
                $("#leftList").html(msg)
            }
        })
    }
    //创建tab选项卡
    function createTabs(titleStr,urlStr){

        var flag = $('#tttts').tabs('exists',titleStr);
        if(flag){
            $('#tttts').tabs('select',titleStr);
        }else{
            $('#tttts').tabs('add',{
                title:titleStr,
                href:"<%=request.getContextPath()%>/"+urlStr,
                closable:true,
                tools:[{
                    iconCls:'icon-mini-refresh',
                    handler:function(){
                        var tab = $('#tttts').tabs('getSelected');
                        tab.panel('open').panel('refresh',flag);
                    }
                }]
            });
        }

        //ssslocation.href="<%=request.getContextPath()%>/"+url;

        /*$('#query_emp_id').datagrid({
            url:url,
            singleSelect:true,
            checkOnSelect:true,
            selectOnCheck:false,
            pagination:true,//开启分页
            agePosition:'bottom',//分页工具栏显示位置
            pageNumber:0,//初始化页码
            pageSize:3,//每页条数
            pageList:[3,5,8],//每页条数的下拉选项
            queryParams:{
                id:id,
            },
            columns:[[
                {field:'ace',checkbox:true},
                {field:'empname',title:'員工姓名',width:100},
                {field:'empsex',title:'員工性別',width:100},
                {field:'empbirthday',title:'出生日期',width:100,
                    formatter:function(value,row,index){
                        var unixTimestamp = new Date(value);
                        return unixTimestamp.toLocaleString().substring(0,9);
                    }
                },
                {field:'empmajor',title:'专业',width:100},
                {field:'emohighesteducation',title:'最高学历',width:100},
                {field:'emptitle',title:'职称',width:100},
                {field:'emptitledate',title:'职称评期',width:100,
                    formatter:function(value,row,index){
                        var unixTimestamp = new Date(value);
                        return unixTimestamp.toLocaleString().substring(0,9);
                    }
                },
                {field:'empworknumber',title:'员工编号',width:100},
                {field:'empage',title:'年龄',width:100},
                {field:'empgraduatedschool',title:'毕业院校',width:100},
                {field:'emphighestdegree',title:'最高学位',width:100},
                {field:'empranktitle',title:'职称等级',width:100},
                {field:'empeffective',title:'是否有效',width:100,
                    formatter:function(value,row,index){
                        if(value==1){
                            return "是";
                        }else{
                            return "否";
                        }
                    }
                },
                {field:'miaoshu',title:'描述',width:100},
            ]]
        });*/

    }
</script>
</body>
</html>
