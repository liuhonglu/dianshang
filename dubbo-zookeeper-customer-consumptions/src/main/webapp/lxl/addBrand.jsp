<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/9
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form id="addBrand" enctype="multipart/form-data">
        <input type="hidden" name="id" value="${brand.id}">
        <font color="red">*</font>名称:<input class="easyui-textbox" style="width:120px" name="name" value="${brand.name}"><br>
        类型:<select id="sss" onchange="bbb()" name="type">
                <option value="0" ${brand.type==1?"selected":""}>文本</option>
                <option value="1" ${brand.type==2?"selected":""}>图片</option>
             </select><br>
        logo:<input class="easyui-filebox" style="width:300px" name="logo" value="${brand.logo}"><br>
        网址:<input class="easyui-textbox" style="width:120px" name="url" value="${brand.url}"/><br>
        排序:<input class="easyui-textbox" style="width:120px" name="sorting" value="${brand.sorting}"/><br>
        介绍:<textarea id="editor" name="introduction" class="editor">${brand.introduction}</textarea>
    </form>
<script>
    $(function () {
        var typeId = $("#sss").val();
        if(typeId==0){
            $("[name='logo']").prop("disabled",true);
        }else if(typeId==1){
            $("[name='logo']").prop("disabled",false);
        }
    })
   function bbb() {
       var typeId = $("#sss").val();
       if(typeId==0){
           $("[name='logo']").prop("disabled",true);
       }else if(typeId==1){
           $("[name='logo']").prop("disabled",false);
       }
   }
</script>
</body>
</html>
