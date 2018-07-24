<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/20
  Time: 22:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>编辑促销管理</title>
    <jsp:include page="/js/jsAll.jsp"></jsp:include>
</head>
<body>
<div id="tt" class="easyui-tabs">
    <div title="基本信息" style="display:none;">
        <form name="editPromotion" id="edit_Promotion_id">
            <input type="hidden" name="id" value="${pro.id}">
            <table border="1" cellpadding="0">
                <tr>
                    <td><font color="red">*</font>名称</td>
                    <td bgcolor="#fff8dc"><input type="text" name="name" value="${pro.name}"></td>
                </tr>
                <tr>
                    <td><font color="red">*</font>标题</td>
                    <td bgcolor="#fff8dc"><input type="text" name="title" value="${pro.title}"></td>
                </tr>
                <tr>
                    <td>起始日期</td>
                    <td bgcolor="#fff8dc"><input type="text" name="beginDate" class="Wdate" value="${pro.beginDate}"
                                                 onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd',maxDate:'#F{$dp.$D(\'endDate\')}'})"/>
                    </td>
                </tr>
                <tr>
                    <td>结束日期</td>
                    <td bgcolor="#fff8dc"><input type="text" name="endDate" class="Wdate" value="${pro.endDate}"
                                                 onClick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd',maxDate:'#F{$dp.$D(\'endDate\')}'})"/>
                    </td>
                </tr>
                <tr>
                    <td>最小商品数量</td>
                    <td bgcolor="#fff8dc"><input type="text" name="minimumQuantity" value="${pro.minimumQuantity}"></td>
                </tr>
                <tr>
                    <td>最大商品数量</td>
                    <td bgcolor="#fff8dc"><input type="text" name="maximumQuantity" value="${pro.maximumQuantity}"></td>
                </tr>
                <tr>
                    <td>最小商品价格</td>
                    <td bgcolor="#fff8dc"><input type="text" name="minimumPrice" value="${pro.minimumPrice}"></td>
                </tr>
                <tr>
                    <td>最大商品价格</td>
                    <td bgcolor="#fff8dc"><input type="text" name="maximumPrice" value="${pro.maximumPrice}"></td>
                </tr>
                <tr>
                    <td>价格运算表达式</td>
                    <td bgcolor="#fff8dc"><input type="text" name="priceExpression" value="${pro.priceExpression}"></td>
                </tr>
                <tr>
                    <td>积分运算表达式</td>
                    <td bgcolor="#fff8dc"><input type="text" name="pointExpression" value="${pro.pointExpression}"></td>
                </tr>
                <tr>
                    <td>排序</td>
                    <td bgcolor="#fff8dc"><input type="text" name="sort" value="${pro.sort}"></td>
                </tr>
                <tr>
                    <td>允许参加会员等级</td>
                    <td bgcolor="#fff8dc">
                        <input type="checkbox" name="memberRanks"
                               value="1" ${pro.memberRanks.contains('1') ? 'checked' : ''}>贵宾会员
                        <input type="checkbox" name="memberRanks"
                               value="2" ${pro.memberRanks.contains('2') ? 'checked' : ''}>白金会员
                        <input type="checkbox" name="memberRanks"
                               value="3" ${pro.memberRanks.contains('3') ? 'checked' : ''}>金牌会员
                        <input type="checkbox" name="memberRanks"
                               value="4" ${pro.memberRanks.contains('4') ? 'checked' : ''}>银牌会员
                        <input type="checkbox" name="memberRanks"
                               value="5" ${pro.memberRanks.contains('5') ? 'checked' : ''}>普通会员
                    </td>
                </tr>
                <tr>
                    <td>允许参加品牌</td>
                    <td bgcolor="#fff8dc">
                        <input type="checkbox" name="brands" value="1" ${pro.brands.contains('1') ? 'checked' : ''}>梵希蔓
                        <input type="checkbox" name="brands" value="2" ${pro.brands.contains('2') ? 'checked' : ''}>伊芙丽
                        <input type="checkbox" name="brands" value="3" ${pro.brands.contains('3') ? 'checked' : ''}>尚都比拉
                        <input type="checkbox" name="brands" value="4" ${pro.brands.contains('4') ? 'checked' : ''}>森马
                        <input type="checkbox" name="brands" value="5" ${pro.brands.contains('5') ? 'checked' : ''}>以纯
                        <input type="checkbox" name="brands" value="6" ${pro.brands.contains('6') ? 'checked' : ''}>李宁
                        <input type="checkbox" name="brands" value="7" ${pro.brands.contains('7') ? 'checked' : ''}>耐克
                        <input type="checkbox" name="brands" value="8" ${pro.brands.contains('8') ? 'checked' : ''}>阿迪达斯
                        <input type="checkbox" name="brands" value="9" ${pro.brands.contains('9') ? 'checked' : ''}>Jack
                        Jones
                        <input type="checkbox" name="brands" value="10" ${pro.brands.contains('10') ? 'checked' : ''}>七匹狼
                        <input type="checkbox" name="brands" value="11" ${pro.brands.contains('11') ? 'checked' : ''}>恒源祥
                        <input type="checkbox" name="brands" value="12" ${pro.brands.contains('12') ? 'checked' : ''}>圣得西
                        <input type="checkbox" name="brands" value="13" ${pro.brands.contains('13') ? 'checked' : ''}>猫人
                        <input type="checkbox" name="brands" value="14" ${pro.brands.contains('14') ? 'checked' : ''}>北极绒
                        <input type="checkbox" name="brands" value="15" ${pro.brands.contains('15') ? 'checked' : ''}>真维斯
                        <input type="checkbox" name="brands" value="16" ${pro.brands.contains('16') ? 'checked' : ''}>唐狮
                    </td>
                </tr>
                <tr>
                    <td>设置</td>
                    <td bgcolor="#fff8dc">
                        <input type="checkbox" name="isFreeShipping"
                               value="1" ${pro.isFreeShipping=='1' ? 'checked' : ''}>是否免运费
                        <input type="checkbox" name="isCouponAllowed"
                               value="1" ${pro.isCouponAllowed=='1' ? 'checked' : ''}>是否允许使用优惠券
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div title="介绍" data-options="closable:true" style="overflow:auto;display:none;">
        <form name="editPromotion">
            <textarea id="editor_id" name="introduction">${pro.introduction}</textarea>
        </form>
    </div>
</div>
<script type="text/javascript">
    $.getScript('<%=request.getContextPath()%>/js/kindeditor/kindeditor-all-min.js',
        function () {
            KindEditor.basePath = '<%=request.getContextPath()%>/js/kindeditor/';
            editor = KindEditor.create('#editor_id', {
                cssPath: '<%=request.getContextPath()%>/js/kindeditor/plugins/code/prettify.css',
                uploadJson: '<%=request.getContextPath()%>/js/kindeditor/jsp/upload_json.jsp',
                fileManagerJson: '<%=request.getContextPath()%>/js/kindedito/jsp/file_manager_json.jsp',
                afterBlur: function () {
                    this.sync();
                }//和ajax同步
            });
        })
</script>
</body>
</html>
