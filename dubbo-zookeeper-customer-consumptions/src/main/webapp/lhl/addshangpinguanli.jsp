<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="<%=request.getContextPath()%>/resources/admin/css/common.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin/js/jquery.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin/js/jquery.tools.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin/js/jquery.validate.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin/editor/kindeditor.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin/js/common.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/admin/js/input.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/uploadify/uploadify.css">
    <style type="text/css">
        .specificationSelect {
            height: 100px;
            padding: 5px;
            overflow-y: scroll;
            border: 1px solid #cccccc;
        }

        .specificationSelect li {
            float: left;
            min-width: 150px;
            _width: 200px;
        }
    </style>

</head>
<body>

<div class="path">
    <a href="#">首页</a> &raquo; 添加商品
</div>
<form id="inputFormlhl" enctype="multipart/form-data">
    <ul id="tab" class="tab">
        <li>
            <input type="button" value="基本信息" />
        </li>
        <li>
            <input type="button" value="商品属性" />
        </li>
        <li>
            <input type="button" value="商品规格" />
        </li>
    </ul>
    <table class="input tabContent">
        <tr>
            <th>
                商品分类:
            </th>
            <td>
                <select id="protype" name="protype">
                    <option value="1">
                        衬衣
                    </option>
                    <option value="2">
                        &nbsp;&nbsp;
                        裤子
                    </option>
                    <option value="3">
                        &nbsp;&nbsp;
                        连衣裙
                    </option>
                    <option value="4">
                        &nbsp;&nbsp;
                        "塑身衣
                    </option>
                    <option value="5">
                        &nbsp;&nbsp;
                        睡衣
                    </option>
                    <option value="6">
                        &nbsp;&nbsp;
                        小西装
                    </option>
                    <option value="7">
                        &nbsp;&nbsp;
                        T恤
                    </option>
                </select>
            </td>
        </tr>
        <tr>
            <th>
                <span class="requiredField">*</span>名称:
            </th>
            <td>
                <input type="text" name="name" class="text" maxlength="200" />
            </td>
        </tr>
        <tr>
            <th>
                <span class="requiredField">*</span>销售价:
            </th>
            <td>
                <input type="text" name="xiaoshoujia" class="text" maxlength="16" />
            </td>
        </tr>
        <tr>
            <th>
                成本价:
            </th>
            <td>
                <input type="text" name="chengbenjia" class="text" maxlength="16" title="前台不会显示，仅供后台使用" />
            </td>
        </tr>
        <tr>
            <th>
                展示图片:
            </th>
            <td>
					<span class="fieldSet">
						<input type="hidden" name="images" id="asdd" class="text" maxlength="200" title="应用于首页、宣传页，留空则由系统自动生成" />
						<input type="file" id="imgaaa" class="button" value="选择文件" />
					</span>
            </td>
        </tr>
        <tr>
            <th>
                单位:
            </th>
            <td>
                <input type="text" name="unit" class="text" maxlength="200" />
            </td>
        </tr>
        <tr>
            <th>
                库存:
            </th>
            <td>
                <input type="text" name="kecun" class="text" maxlength="9" title="留空表示不计库存" />
            </td>
        </tr>
        <tr>
            <th>
                库存备注:
            </th>
            <td>
                <input type="text" name="stockMemo" class="text" maxlength="200" />
            </td>
        </tr>
        <tr>
            <th>
                创建时间:
            </th>
            <td>
                <input type="text" name="createtime" class="text" maxlength="200" />
            </td>
        </tr>
        <tr>
            <th>
                品牌:
            </th>
            <td>
                <select name="brandId">
                    <option value="">请选择...</option>
                    <option value="1">
                        梵希蔓
                    </option>
                    <option value="2">
                        伊芙丽
                    </option>
                    <option value="3">
                        尚都比拉
                    </option>
                    <option value="4">
                        森马
                    </option>
                    <option value="5">
                        以纯
                    </option>
                    <option value="6">
                        李宁
                    </option>
                    <option value="7">
                        耐克
                    </option>
                    <option value="8">
                        阿迪达斯
                    </option>
                    <option value="9">
                        Jack Jones
                    </option>
                    <option value="10">
                        七匹狼
                    </option>
                    <option value="11">
                        恒源祥
                    </option>
                    <option value="12">
                        圣得西
                    </option>
                    <option value="13">
                        猫人
                    </option>
                    <option value="14">
                        北极绒
                    </option>
                    <option value="15">
                        美特斯·邦威
                    </option>
                    <option value="16">
                        真维斯
                    </option>
                    <option value="17">
                        唐狮
                    </option>
                </select>
            </td>
        </tr>
        <tr>
            <th>
                设置:
            </th>
            <td>
                <label>
                    <input type="checkbox" name="shangjia" onclick="dianjitrue()" id="checkedtrue" checked="checked" />是否上架
                </label>
            </td>
        </tr>
        <tr>
            <th>
                备注:
            </th>
            <td>
                <input type="text" name="memo" class="text" maxlength="200" />
            </td>
        </tr>

    </table>
    <table class="input tabContent">
        <tr>
            <td>
                <textarea id="editor" name="introduction" class="editor" style="width: 100%;"></textarea>
            </td>
        </tr>
    </table>
    <table id="productImageTable" class="input tabContent">
        <tr>
            <td colspan="4">
                <a href="javascript:;" id="images" class="button">增加图片</a>
            </td>
        </tr>
        <tr class="title">
            <td>
                文件
            </td>
            <td>
                标题
            </td>
            <td>
                排序
            </td>
            <td>
                删除
            </td>
        </tr>
    </table>
    <table id="parameterTable" class="input tabContent"></table>
    <table id="attributeTable" class="input tabContent"></table>
    <table class="input tabContent">
        <tr class="title">
            <th>
                请选择商品规格:
            </th>
        </tr>
        <tr>
            <td>
                <div id="specificationSelect" class="specificationSelect">
                    <ul>
                        <li>
                            <label>
                                <input type="checkbox" name="specificationIds" value="1" />颜色
                                <span class="gray">[女装]</span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="specificationIds" value="2" />颜色
                                <span class="gray">[男装]</span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="specificationIds" value="3" />尺码
                                <span class="gray">[女装]</span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="specificationIds" value="4" />尺码
                                <span class="gray">[男装]</span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="specificationIds" value="5" />尺码
                                <span class="gray">[女鞋]</span>
                            </label>
                        </li>
                        <li>
                            <label>
                                <input type="checkbox" name="specificationIds" value="6" />尺码
                                <span class="gray">[男鞋]</span>
                            </label>
                        </li>
                    </ul>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <a href="javascript:;" id="addSpecificationProduct" class="button">增加规格商品</a>
            </td>
        </tr>
        <tr>
            <td>
                <table id="specificationProductTable" class="input">
                    <tr class="title">
                        <td width="60">
                            &nbsp;
                        </td>
                        <td class="specification_1 hidden">
                            颜色
                            <span class="gray">[女装]</span>
                        </td>
                        <td class="specification_2 hidden">
                            颜色
                            <span class="gray">[男装]</span>
                        </td>
                        <td class="specification_3 hidden">
                            尺码
                            <span class="gray">[女装]</span>
                        </td>
                        <td class="specification_4 hidden">
                            尺码
                            <span class="gray">[男装]</span>
                        </td>
                        <td class="specification_5 hidden">
                            尺码
                            <span class="gray">[女鞋]</span>
                        </td>
                        <td class="specification_6 hidden">
                            尺码
                            <span class="gray">[男鞋]</span>
                        </td>
                        <td>
                            操作
                        </td>
                    </tr>
                    <tr class="hidden">
                        <td>
                            &nbsp;
                        </td>
                        <td class="specification_1 hidden">
                            <select name="specification_1" disabled="disabled">
                                <option value="1">无</option>
                                <option value="2">黄色</option>
                                <option value="3">酒红色</option>
                                <option value="4">金色</option>
                                <option value="5">橙色</option>
                                <option value="6">灰色</option>
                                <option value="7">蓝色</option>
                                <option value="8">黑色</option>
                                <option value="9">卡其色</option>
                                <option value="10">混色</option>
                                <option value="11">紫色</option>
                                <option value="12">粉红色</option>
                                <option value="13">银色</option>
                                <option value="14">红色</option>
                                <option value="15">白色</option>
                                <option value="16">浅蓝色</option>
                                <option value="17">深蓝色</option>
                                <option value="18">绿色</option>
                                <option value="19">米黄色</option>
                                <option value="20">咖啡色</option>
                            </select>
                        </td>
                        <td class="specification_2 hidden">
                            <select name="specification_2" disabled="disabled">
                                <option value="21">无</option>
                                <option value="22">黄色</option>
                                <option value="23">酒红色</option>
                                <option value="24">金色</option>
                                <option value="25">橙色</option>
                                <option value="26">灰色</option>
                                <option value="27">蓝色</option>
                                <option value="28">黑色</option>
                                <option value="29">卡其色</option>
                                <option value="30">混色</option>
                                <option value="31">紫色</option>
                                <option value="32">粉红色</option>
                                <option value="33">银色</option>
                                <option value="34">红色</option>
                                <option value="35">白色</option>
                                <option value="36">浅蓝色</option>
                                <option value="37">深蓝色</option>
                                <option value="38">绿色</option>
                                <option value="39">米黄色</option>
                                <option value="40">咖啡色</option>
                            </select>
                        </td>
                        <td class="specification_3 hidden">
                            <select name="specification_3" disabled="disabled">
                                <option value="41">均码</option>
                                <option value="42">XXS</option>
                                <option value="43">XS</option>
                                <option value="44">S</option>
                                <option value="45">M</option>
                                <option value="46">L</option>
                                <option value="47">XL</option>
                                <option value="48">XXL</option>
                                <option value="49">XXXL</option>
                            </select>
                        </td>
                        <td class="specification_4 hidden">
                            <select name="specification_4" disabled="disabled">
                                <option value="50">均码</option>
                                <option value="51">XXS</option>
                                <option value="52">XS</option>
                                <option value="53">S</option>
                                <option value="54">M</option>
                                <option value="55">L</option>
                                <option value="56">XL</option>
                                <option value="57">XXL</option>
                                <option value="58">XXXL</option>
                            </select>
                        </td>
                        <td class="specification_5 hidden">
                            <select name="specification_5" disabled="disabled">
                                <option value="59">34</option>
                                <option value="60">35</option>
                                <option value="61">36</option>
                                <option value="62">37</option>
                                <option value="63">38</option>
                                <option value="64">39</option>
                                <option value="65">40</option>
                                <option value="66">41</option>
                            </select>
                        </td>
                        <td class="specification_6 hidden">
                            <select name="specification_6" disabled="disabled">
                                <option value="67">36</option>
                                <option value="68">37</option>
                                <option value="69">38</option>
                                <option value="70">39</option>
                                <option value="71">40</option>
                                <option value="72">41</option>
                                <option value="73">42</option>
                                <option value="74">43</option>
                                <option value="75">44</option>
                                <option value="76">45</option>
                            </select>
                        </td>
                        <td>
                            <a href="javascript:;" class="deleteSpecificationProduct">[删除]</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table class="input">
        <tr>
            <th>
                &nbsp;
            </th>
            <td>
                <input type="button" class="button" onclick="xinzenglhl()" value="确&nbsp;&nbsp;定" />
                <input type="button" class="button" value="返&nbsp;&nbsp;回" onclick="location.href='list.jhtml'" />
            </td>
        </tr>
    </table>
</form>

<script type="text/javascript">

  function  dianjitrue(){

      var box= document.getElementById('checkedtrue');
      if(box.checked == true){
         $("#checkedtrue").val(1);
      }else{
          $("#checkedtrue").val(2);
      }

  }

</script>

<script type="text/javascript">

    function xinzenglhl(){
        $.ajax({
            url:"<%=request.getContextPath()%>/productcontroller/insertproduct.lhtml",
            data:$("#inputFormlhl").serialize(),
            type:"post",
            dataType:"json",
            success:function(result){
                $.messager.alert('警告','添加成功');
            }
        })
    }


    $(function(){
        //文件域的id
        $("#imgaaa").uploadify({
            //前台请求后台的url 不可忽略的参数
            'uploader' :"<%=request.getContextPath()%>/productcontroller/upImg.lhtml",
            //插件自带 不可忽略的参数
            'swf' : '<%=request.getContextPath()%>/js/uploadify/uploadify.swf',
            //撤销按钮的图片路径
            'cancelImg' : '<%=request.getContextPath()%>/js/uploadify/uploadify-cancel.png',
            //如果为true 为自动上传 在文件后 为false 那么它就要我们自己手动点上传按钮
            'auto' : true,
            //可以同时选择多个文件 默认为true 不可忽略
            'multi' : false,
            //给上传按钮设置文字
            'buttonText' : '上传头像',
            //上传后队列是否消失
            'removeCompleted' : true,
            'removeTimeout' : 1,
            //上传文件的个数
            'uploadLimit' : 2,
            'fileTypeExts' : '*.jpg;*.jpge;*.gif;*.png',
            'fileSizeLimit' : '2MB',
            //给div的进度条加背景 不可忽略
            'queueID' : 'showBarDiv',
            // controller层方法中接收文件的参数名
            'fileObjName' : 'artImg',
            //上传成功后的回调函数
            'onUploadSuccess' : function(file, data, response) {

                /*$("#showImgaa").attr("src","<%=request.getContextPath()%>/"+data);*/
                $("#asdd").val(data)
            }
        });
    });
</script>

</body>
</html>
