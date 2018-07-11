<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/9 0009
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品管理</title>
</head>
<body>

    <table id="shangpinguanli_table_datagrid"></table>

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
            checkOnSelect:false,
            selectOnCheck:true,
            pagePosition:'bottom',
            pageNumber:1,
            pageSize:5,
            pageList:[5,10,20,30],
            columns:[[
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
                            return "<a href='javascript:#' >[编辑]</a><a href='javascript:#' >[查看]</a>";
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
