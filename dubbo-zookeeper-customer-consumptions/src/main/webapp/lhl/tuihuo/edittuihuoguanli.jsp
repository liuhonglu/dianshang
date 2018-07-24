<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link href="<%=request.getContextPath()%>/resources/admin/css/common.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin/js/jquery.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin/js/jquery.validate.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin/js/jquery.lSelect.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin/js/input.js"></script>
    <script type="text/javascript">
        $().ready(function() {

            var $inputForm = $("#inputForm");

            // 表单验证
            $inputForm.validate({
                rules: {
                    name: "required",
                    contact: "required",
                    areaId: "required",
                    address: "required"
                }
            });

        });
    </script>
</head>
<body>

<div class="path">
    <a href="#">首页</a> &raquo; 退货编辑
</div>
<form id="inputForm" action="<%=request.getContextPath()%>/tuihuocontroller/edittuihuoguanli.lhtml" method="post">

    <table class="input">

        <tr>
            <th>
                <span class="requiredField">*</span>配送方式:
            </th>
            <td>
                <input type="text" name="peisongfangshi" value="${tuihuoguanli.peisongfangshi}" class="text"  maxlength="200" />
            </td>
        </tr>
        <tr>
            <th>
                创建时间:
            </th>
            <td>
                <input type="text" name="createdate"  value="${tuihuoguanli.createdate}"  class="text"  maxlength="200" />
            </td>
        </tr>
        <tr>
            <th>
                &nbsp;
            </th>
            <td>
                <input type="submit" class="button" value="确&nbsp;&nbsp;定" />
                <input type="button" class="button" value="返&nbsp;&nbsp;回" onclick="location.href='<%=request.getContextPath()%>/merchandisecontroller/tofahuodianguanli.lhtml'" />
            </td>
        </tr>
    </table>
</form>

</body>
</html>
