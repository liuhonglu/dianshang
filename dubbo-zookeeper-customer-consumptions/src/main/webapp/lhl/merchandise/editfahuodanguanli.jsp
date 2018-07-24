<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="<%=request.getContextPath()%>/resources/admin/css/common.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin/js/jquery.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin/js/jquery.validate.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin/js/jquery.lSelect.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin/js/common.js"></script>
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
    <a href="#">首页</a> &raquo; 编辑发货点
</div>
<form id="inputForm" action="<%=request.getContextPath()%>/merchandisecontroller/editfahuodanguanli.lhtml" method="post">
    <input type="hidden" name="id" value="${faHuoDianGuanLi.id}" />
    <table class="input">
        <tr>
            <th>
                <span class="requiredField">*</span>名称:
            </th>
            <td>
                <input type="text" name="fahuodianname" class="text" value="${faHuoDianGuanLi.fahuodianname}" maxlength="200" />
            </td>
        </tr>
        <tr>
            <th>
                <span class="requiredField">*</span>联系人:
            </th>
            <td>
                <input type="text" name="userid" class="text" value="${faHuoDianGuanLi.username}" maxlength="200" readonly />
            </td>
        </tr>
        <tr>
            <th>
                <span class="requiredField">*</span>地区:
            </th>
            <td>
					<select name="regionname">
                        <option value="北京市" ${faHuoDianGuanLi.regionname=="北京市"  ? "selected" : ""}>北京市</option>
                        <option value="浙江市" ${faHuoDianGuanLi.regionname=="浙江市" ? "selected" : ""}>浙江市</option>
                        <option value="北京市" ${faHuoDianGuanLi.regionname=="北京市" ? "selected" : ""}>北京市</option>
                        <option value="天津市" ${faHuoDianGuanLi.regionname=="天津市" ? "selected" : ""}>天津市</option>
                        <option value="石家庄市" ${faHuoDianGuanLi.regionname=="石家庄市" ? "selected" : ""}>石家庄市</option>
                        <option value="邯郸市" ${faHuoDianGuanLi.regionname=="邯郸市" ? "selected" : ""}>邯郸市</option>
                        <option value="苏州市" ${faHuoDianGuanLi.regionname=="苏州市" ? "selected" : ""}>苏州市</option>
                        <option value="北京市" ${faHuoDianGuanLi.regionname=="北京市" ? "selected" : ""}>海淀区</option>
                        <option value="北京市" ${faHuoDianGuanLi.regionname=="北京市" ? "selected" : ""}>朝阳区</option>
                    </select>
            </td>
        </tr>
        <tr>
            <th>
                <span class="requiredField">*</span>地址:
            </th>
            <td >
                <input type="text" name="sitedizhi" class="text" value="${faHuoDianGuanLi.sitedizhi}" maxlength="200" />
            </td>
        </tr>
        <tr>
            <th>
                邮编:
            </th>
            <td >
                <input type="text" name="youbian" class="text" value="${faHuoDianGuanLi.youbian}" maxlength="200" />
            </td>
        </tr>
        <tr>
            <th>
                电话:
            </th>
            <td>
                <input type="text" name="telephone" class="text" value="${faHuoDianGuanLi.telephone}" maxlength="200" />
            </td>
        </tr>
        <tr>
            <th>
                手机:
            </th>
            <td>
                <input type="text" name="phone" class="text" value="${faHuoDianGuanLi.phone}" maxlength="200" />
            </td>
        </tr>
        <tr>
            <th>
                是否默认:
            </th>
            <td>
                <input type="checkbox" name="moren" value="1" ${faHuoDianGuanLi.moren==1 ? "checked" : ""} />
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
