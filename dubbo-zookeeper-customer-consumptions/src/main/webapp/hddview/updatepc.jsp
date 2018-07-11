<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form id="updatehddpc"  method="post">
    <input type="hidden" name="id" value="${pc.id}">
    <table border="1" cellpadding="0">
        <tr>
            <th>
                <span class="requiredField">*</span>名称:
            </th>
            <td>
                <input type="text"  name="name" class="text" maxlength="200"  value="${pc.name}"/>
            </td>
        </tr>
        <tr>
            <th>
                上级分类:
            </th>
            <td>
                <select name="parent">
                    <option value="">顶级分类</option>
                    <option value="1" ${pc.parent == '1' ? 'selected':''}>
                        时尚女装
                    </option>
                    <option value="11" ${pc.parent == '11' ? 'selected':''}>
                        &nbsp;&nbsp;
                        连衣裙
                    </option>
                    <option value="12" ${pc.parent == '12' ? 'selected':''}>
                        &nbsp;&nbsp;
                        针织衫
                    </option>
                    <option value="13" ${pc.parent == '13' ? 'selected':''}>
                        &nbsp;&nbsp;
                        短外套
                    </option>
                    <option value="14" ${pc.parent == '11' ? 'selected':''}>
                        &nbsp;&nbsp;
                        小西装
                    </option>
                    <option value="15" ${pc.parent == '15' ? 'selected':''}>
                        &nbsp;&nbsp;
                        牛仔裤
                    </option>
                    <option value="16" ${pc.parent == '16' ? 'selected':''}>
                        &nbsp;&nbsp;
                        T恤
                    </option>
                    <option value="17" ${pc.parent == '17' ? 'selected':''}>
                        &nbsp;&nbsp;
                        衬衫
                    </option>
                    <option value="18" ${pc.parent == '18' ? 'selected':''}>
                        &nbsp;&nbsp;
                        风衣
                    </option>
                    <option value="19" ${pc.parent == '11' ? 'selected':''}>
                        &nbsp;&nbsp;
                        卫衣
                    </option>
                    <option value="2" ${pc.parent == '19' ? 'selected':''}>
                        精品男装
                    </option>
                    <option value="21" ${pc.parent == '21' ? 'selected':''}>
                        &nbsp;&nbsp;
                        针织衫
                    </option>
                    <option value="22" ${pc.parent == '22' ? 'selected':''}>
                        &nbsp;&nbsp;
                        POLO衫
                    </option>
                    <option value="23" ${pc.parent == '23' ? 'selected':''}>
                        &nbsp;&nbsp;
                        休闲裤
                    </option>
                    <option value="24" ${pc.parent == '24' ? 'selected':''}>
                        &nbsp;&nbsp;
                        牛仔裤
                    </option>
                    <option value="25" ${pc.parent == '25' ? 'selected':''}>
                        &nbsp;&nbsp;
                        T恤
                    </option>
                    <option value="26" ${pc.parent == '26' ? 'selected':''}>
                        &nbsp;&nbsp;
                        衬衫
                    </option>
                    <option value="27" ${pc.parent == '27' ? 'selected':''}>
                        &nbsp;&nbsp;
                        西服
                    </option>
                    <option value="28" ${pc.parent == '28' ? 'selected':''}>
                        &nbsp;&nbsp;
                        西裤
                    </option>
                    <option value="29" ${pc.parent == '29' ? 'selected':''}>
                        &nbsp;&nbsp;
                        风衣
                    </option>
                    <option value="30" ${pc.parent == '30' ? 'selected':''}>
                        &nbsp;&nbsp;
                        卫衣
                    </option>
                    <option value="3" ${pc.parent == '3' ? 'selected':''}>
                        精致内衣
                    </option>
                    <option value="31" ${pc.parent == '31' ? 'selected':''}>
                        &nbsp;&nbsp;
                        女式内裤
                    </option>
                    <option value="32" ${pc.parent == '32' ? 'selected':''}>
                        &nbsp;&nbsp;
                        男式内裤
                    </option>
                    <option value="33" ${pc.parent == '33' ? 'selected':''}>
                        &nbsp;&nbsp;
                        保暖内衣
                    </option>
                    <option value="34" ${pc.parent == '34' ? 'selected':''}>
                        &nbsp;&nbsp;
                        塑身衣
                    </option>
                    <option value="35" ${pc.parent == '35' ? 'selected':''}>
                        &nbsp;&nbsp;
                        连裤袜
                    </option>
                    <option value="36" ${pc.parent == '36' ? 'selected':''}>
                        &nbsp;&nbsp;
                        打底袜
                    </option>
                    <option value="37" ${pc.parent == '37' ? 'selected':''}>
                        &nbsp;&nbsp;
                        文胸
                    </option>
                    <option value="38" ${pc.parent == '38' ? 'selected':''}>
                        &nbsp;&nbsp;
                        睡衣
                    </option>
                    <option value="39" ${pc.parent == '39' ? 'selected':''}>
                        &nbsp;&nbsp;
                        泳装
                    </option>
                    <option value="40" ${pc.parent == '40' ? 'selected':''}>
                        &nbsp;&nbsp;
                        浴袍
                    </option>

                </select>
            </td>
        </tr>
        <tr class="brands">
            <th>
                筛选品牌:
            </th>
            <td>
                <label>
                    <input type="checkbox" name="brandIds" value="1" ${pc.brandIds == '1' ? 'checked':''}/>梵希蔓
                </label>
                <label>
                    <input type="checkbox" name="brandIds" value="2" ${pc.brandIds == '2' ? 'checked':''}/>伊芙丽
                </label>
                <label>
                    <input type="checkbox" name="brandIds" value="3" ${pc.brandIds == '3' ? 'checked':''}/>尚都比拉
                </label>
                <label>
                    <input type="checkbox" name="brandIds" value="4" ${pc.brandIds == '4' ? 'checked':''}/>森马
                </label>
                <label>
                    <input type="checkbox" name="brandIds" value="5" ${pc.brandIds == '5' ? 'checked':''}/>以纯
                </label>
                <label>
                    <input type="checkbox" name="brandIds" value="6" ${pc.brandIds == '6' ? 'checked':''}/>李宁
                </label>
                <label>
                    <input type="checkbox" name="brandIds" value="7" ${pc.brandIds == '7' ? 'checked':''}/>耐克
                </label>
                <label>
                    <input type="checkbox" name="brandIds" value="8" ${pc.brandIds == '8' ? 'checked':''}/>阿迪达斯
                </label>
                <label>
                    <input type="checkbox" name="brandIds" value="9" ${pc.brandIds == '9' ? 'checked':''}/>Jack Jones
                </label>
                <label>
                    <input type="checkbox" name="brandIds" value="10" ${pc.brandIds == '10' ? 'checked':''}/>七匹狼
                </label>
                <label>
                    <input type="checkbox" name="brandIds" value="11" ${pc.brandIds == '11' ? 'checked':''}/>恒源祥
                </label>
                <label>
                    <input type="checkbox" name="brandIds" value="12" ${pc.brandIds == '12' ? 'checked':''}/>圣得西
                </label>
                <label>
                    <input type="checkbox" name="brandIds" value="13" ${pc.brandIds == '13' ? 'checked':''}/>猫人
                </label>
                <label>
                    <input type="checkbox" name="brandIds" value="14" ${pc.brandIds == '14' ? 'checked':''}/>北极绒
                </label>
                <label>
                    <input type="checkbox" name="brandIds" value="15" ${pc.brandIds == '15' ? 'checked':''}/>美特斯·邦威
                </label>
                <label>
                    <input type="checkbox" name="brandIds" value="16" ${pc.brandIds == '16' ? 'checked':''}/>真维斯
                </label>
                <label>
                    <input type="checkbox" name="brandIds" value="17" ${pc.brandIds == '17' ? 'checked':''}/>唐狮
                </label>
            </td>
        </tr>
        <tr>
            <th>
                页面标题:
            </th>
            <td>
                <input type="text" name="seotitle" class="text" maxlength="200" value="${pc.seotitle}"/>
            </td>
        </tr>
        <tr>
            <th>
                页面关键词:
            </th>
            <td>
                <input type="text" name="seokeywords" class="text" maxlength="200" value="${pc.seokeywords}"/>
            </td>
        </tr>
        <tr>
            <th>
                页面描述:
            </th>
            <td>
                <input type="text" name="seodescription" class="text" maxlength="200" value="${pc.seodescription}"/>
            </td>
        </tr>
        <tr>
            <th>
                排序:
            </th>
            <td>
                <input type="text" name="orders" class="text" maxlength="9"  value="${pc.orders}"/>
            </td>
        </tr>

    </table>
</form>
</body>
</html>
