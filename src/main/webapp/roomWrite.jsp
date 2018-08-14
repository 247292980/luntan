<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"
         pageEncoding="UTF-8" %>
<html>
<head>
    <%@ include file="basepage.jsp" %>
    <title>创建文章</title>
    <style>
        li{list-style-type:none;}
        .inline-block{display: inline-block;}
        .head-container{heigth:40px;background-color:#3b5998;font-family: "inherit";
            margin-bottom: 30px;}
        .global-width{width: 950px;margin:0 auto;}
        .head-left-text>a{margin-right:630px;font-size:28px;padding-top: 3px;
            color:#ffffff;text-decoration:none;}
        .head-right-text>a{font-size: 15px;color:#ffffff;
            margin-left: 40px;line-height: 40px;}

        #foot-container{
            margin-top:50px;
            height:160px;
            border-top: #dddfe2 1px solid;
            font-size:15px;
            padding-top: 15px;color:#737373;
        }
        #foot-left-div{}
        #foot-right-div{float:right;}
        #foot-right-div>span{margin-left: 10px;}
        #foot-right-div>span>a{color:#5e5e5e;}

    </style>
</head>

<body>
<div class="head-container">
    <ul class="global-width" style="padding-left: 0;">
        <li class="head-left-text inline-block"><a href="<%=basePath%>/roomMain_show"><b>Luntan</b></a></li>
        <li class="head-right-text inline-block"><a href="<%=basePath%>/roomMain_show2">文章管理</a></li>
        <li class="head-right-text inline-block"><a href="<%=basePath%>/page_userInfo">个人空间</a></li>
        <%--没写--%><%--没写--%><%--没写--%><%--没写--%><%--没写--%>
        <%--没写--%><%--没写--%><%--没写--%><%--没写--%><%--没写--%>
    </ul>
</div>


<%--<form action="" method="post">--%>
    <%--<div class="panel panel-default" style="">--%>
        <%--<div class="panel-heading">写推荐内容</div>--%>
        <%--<table style="width: 90%">--%>
            <%--<tr>--%>
                <%--<td colspan="2">--%>
                    <%--<div class="input" style="padding:1%;">--%>
                        <%--<input type="text" name="roomTitle" class="form-control" placeholder="请输入roomTitle">--%>
                    <%--</div>--%>
                <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td colspan="2">--%>
                    <%--<div class="panel-body">--%>
                        <%--&lt;%&ndash;rows控制行数 高度   style="resize:none"  使其不可拉伸&ndash;%&gt;--%>
                        <%--<textarea class="input" rows="10" id="roomWords" name="roomWords" style="resize:none;width: 100%;"--%>
                                  <%--placeholder="请输入roomWords"></textarea>--%>
                    <%--</div>--%>
                <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td>--%>
                    <%--<div align="right" style="padding:1%;">--%>
                        <%--<button class="btn btn-primary btn-lg " type="submit"--%>
                                <%--formaction="<%=basePath%>/room_write">提交--%>
                        <%--</button>--%>
                    <%--</div>--%>
                <%--</td>--%>
            <%--</tr>--%>
    <%--</div>--%>
<%--</form>--%>


<form action="" method="post" class="global-width" style="margin-top:50px;margin-bottom:65px;">
    <div>
        <div class="panel-heading" hidden>写推荐内容</div>
        <table class="global-width" style="width: 90%">
            <tr>
                <td colspan="2">
                    <div class="input" style="padding:1%;">
                        <input type="text" name="roomTitle" class="form-control" placeholder="请输入文章标题">
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div class="input" style="padding:1%;">
                        <input type="text" name="class" class="form-control" placeholder="请输入文章分类">    <!-- 传递  文章分类  变量 !-->
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div class="panel-body">
                        <%--rows控制行数 高度   style="resize:none"  使其不可拉伸--%>
                        <textarea class="input" rows="10" id="roomWords" name="roomWords" style="resize:none;width: 100%;"
                                  placeholder="请输入文章内容"></textarea>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div align="right" style="padding:1%;">
                        <button class="btn btn-small btn-primary" type="submit"
                                formaction="<%=basePath%>/room_write">创建</button>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</form>

<div id="foot-container" class="global-width">
    <div id="foot-left-div" class="inline-block">
        <span>Luntan © 2017</span>
    </div >
    <div id="foot-right-div" class="inline-block">
        <span><a href="<%=basePath%>/roomMain_show">社区</a></span>
        <%--<span>--%>
            <%--<a href="#" >发现</a>--%>
        <%--</span>--%>
        <%--<span>--%>
            <%--<a href="#" >关于我们</a>--%>
        <%--</span>--%>
        <%--<span>--%>
            <%--<a href="#" >联系我们</a>--%>
        <%--</span>--%>
    </div>


</div>
</body>
</html>