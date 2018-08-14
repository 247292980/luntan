<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" type="text/css"
          href="bootstrap/css/bootstrap.min.css">

    <!--可选的Bootstrap主题文件（一般不用引入） -->
    <!--<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">-->

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="js/jquery-3.1.1.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <!-- -fileinput.js核心 CSS 文件导入 -->
    <link type="text/css" rel="stylesheet" href="bootstrap/css/fileinput.css"/>
    <!-- -fileinput.js核心 JavaScript 文件导入 -->
    <script type="text/javascript" src="bootstrap/js/fileinput.js"></script>
    <!-- -fileinput.js核心 JavaScript 翻译文件导入 -->
    <script type="text/javascript" src="bootstrap/js/fileinput_locale_zh.js"></script>
    <script type="text/javascript" src="bootstrap/js/zh.js"></script>

    <title>运动推荐社区-注册2</title>
    <script type="text/javascript">
        $(function () {
            //0.初始化fileinput
            var oFileInput = new FileInput();
            oFileInput.Init("file", "<%=basePath%>/profile.do?op=setHead");
        });
        var FileInput = function () {
            var oFile = new Object();
            //初始化fileinput控件（第一次初始化）
            oFile.Init = function (ctrlName, uploadUrl) {
                var control = $('#' + ctrlName);
                //初始化上传控件的样式
                control
                    .fileinput({
                        language: 'zh', //设置语言
                        uploadUrl: uploadUrl, //上传的地址
                        allowedFileExtensions: ['jpg', 'gif', 'png'],//接收的文件后缀
                        showUpload: false, //是否显示上传按钮
                        showRemove: false,
                        showCaption: false,//是否显示标题
                        browseClass: "btn btn-primary btn-block", //按钮样式
                        dropZoneEnabled: true,//是否显示拖拽区域
                        //minImageWidth: 50, //图片的最小宽度
                        //minImageHeight: 50,//图片的最小高度
                        //maxImageWidth: 1000,//图片的最大宽度
                        //maxImageHeight: 1000,//图片的最大高度
                        //maxFileSize: 0,//单位为kb，如果为0表示不限制文件大小
                        //minFileCount: 0,
                        maxFileCount: 1, //表示允许同时上传的最大文件个数
                        enctype: 'multipart/form-data',
                        validateInitialCount: true,
                        previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
                        msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
                    });
                //导入文件上传完成之后的事件
                $("file").on("fileuploaded", function (event, data, previewId, index) {
                    var data = data.response.lstOrderImport;
                    if (data == undefined) {
                        toastr.error('文件格式类型不正确');
                        return;
                    }
                    alert("图片上传成功");
                });
            }
            return oFile;
        };
    </script>
</head>
<%
    Object message = request.getAttribute("message");
    if (message != null && !"".equals(message)) {
%>
<script type="text/javascript">
    alert("<%=message%>");
</script>
<%
    }
%>
<body>
<form action="" method="post">
    <table style="margin: auto; border-collapse: separate; width: 300px">
        <tr>
            <td colspan="2" align="center"><label class="control-label"><h1>选择头像</h1></label></td>
        </tr>
        <tr>
            <td><input type="file" name="file" id="file" multiple
                       class="file-loading"/></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <div class="btn-group" style="margin-top: 10px"
                     data-toggle="buttons">
                    <label class="btn btn-primary btn-lg " style="width: 120px">
                        <input type="radio" name="sex" value="男">男
                    </label> <label class="btn btn-primary btn-lg " style="width: 120px">
                    <input type="radio" name="sex" value="女"> 女
                </label>
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <button class="btn btn-primary btn-lg btn-block" type="submit"
                        style="margin-top: 10px"
                        formaction="<%=basePath%>/register.do?op=registerSecond">下一步
                </button>
            </td>
        </tr>
    </table>
</form>

</body>
</html>