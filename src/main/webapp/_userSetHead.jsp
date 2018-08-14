<%--
  Created by IntelliJ IDEA.
  User: LGP
  Date: 2017/9/21
  Time: 20:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
         pageEncoding="UTF-8" %>
<html>
<head>
    <%@ include file="basepage.jsp" %>
    <script type="text/javascript">
        $(function () {
            //0.初始化fileinput
            var oFileInput = new FileInput();
            oFileInput.Init("headPhotoFile", "<%=basePath%>/user_setHead");
        });
        var FileInput = function () {
            var oFile = new Object();
            //初始化fileinput控件（第一次初始化）
            oFile.Init = function (ctrlName, uploadUrl) {
                var control = $('#' + ctrlName);
                //初始化上传控件的样式
                control.fileinput({
                    language: 'zh', //设置语言
                    uploadUrl: uploadUrl, //上传的地址
                    allowedFileExtensions: ['jpg', 'gif', 'png'],//接收的文件后缀
                    showUpload: false, //是否显示上传按钮
                    showRemove: false,
                    showCaption: false,//是否显示标题
                    showClose: false,
                    browseClass: "btn btn-primary btn-block", //按钮样式
                    dropZoneEnabled: true,//是否显示拖拽区域
                    maxFileCount: 1, //表示允许同时上传的最大文件个数
                    enctype: 'multipart/form-data',
                    validateInitialCount: true,
                    previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
                    msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
                    dropZoneTitle: '可拖拽文件<br>或<br>点击按钮',
                    layoutTemplates: {
                        actionZoom: '',
                    }
                });
                //导入文件上传完成之后的事件
                control.on("fileuploaded", function (event, data, previewId, index) {
                    if (data == undefined) {
                        alert('文件格式类型不正确');
                        return;
                    }
                    alert("图片上传成功");
                });
            }
            return oFile;
        };
    </script>
    <title>设置头像</title>
</head>
<body>
<form action="" method="post">
    <table style="margin: auto; margin-top: 5%; border-spacing: 0px 10px;width: 300px">
        <tr>
            <td colspan="2">
                <span style="font-size:x-large;color: #2aabd2;">设置头像</span>
            </td>
        </tr>
        <tr>
            <td><input type="file" name="headPhotoFile" id="headPhotoFile" multiple class="file-loading"/></td>
        </tr>
    </table>
</form>
</body>
</html>
