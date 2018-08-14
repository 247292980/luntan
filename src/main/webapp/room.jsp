<%--
  Created by IntelliJ IDEA.
  User: LGP
  Date: 2017/7/5
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <%@ include file="basepage.jsp" %>
    <title>文章详情</title>
    <style>
        li{list-style-type:none;}
        .inline-block{
            display: inline-block;}
        .head-container{heigth:40px;background-color:#3b5998;font-family: "inherit";
            margin-bottom: 30px;}
        .global-width{width: 950px;margin:0 auto;}
        .head-left-text>a{margin-right:630px;font-size:28px;padding-top: 3px;
            color:#ffffff;text-decoration:none;}
        .head-right-text>a{font-size: 15px;color:#ffffff;
            margin-left: 40px;line-height: 40px;}
        .article-div{margin: 20px 0 50px;}
        .article-title{padding-bottom: 15px;border-bottom:1px solid #e5e5e5;}
        .article-baseinfo{padding-top: 10px;}
        .article-baseinfo>table{width:50%;}
        .article-content{margin-top:10px;}
        .article-content>p{font-size:18px;padding-top:20px;font-family: "Microsoft Yahei";
            line-height: 35px;}
        .comment-div{width: 80%; margin-bottom:35px;}
        .emotion{color:#8c8c8c;}

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
        <li class="head-right-text inline-block"><a href="<%=basePath%>/page_roomWrite">添加文章</a></li>
        <li class="head-right-text inline-block"><a href="<%=basePath%>/page_userInfo">个人空间</a></li>
        <%--没写--%><%--没写--%><%--没写--%><%--没写--%><%--没写--%>
        <%--没写--%><%--没写--%><%--没写--%><%--没写--%><%--没写--%>
    </ul>
</div>
<form class="global-width"  action="" method="post" style="margin-bottom:50px;">
    <div class="panel panel-default" style="margin: 1%" hidden>
        <div class="panel-heading">${roomEntity.roomUserId}: ${roomEntity.roomTitle}</div>
        <div class="panel-body">${roomEntity.roomWords}</div>
    </div>
    <div class="global-width">
        <div class="article-div">
            <div class="article-title text-center">
                <h1>
                    ${roomEntity.roomTitle}
                </h1>
            </div>
            <div class="article-baseinfo">
                <table class="global-width">
                    <tr>
                        <td>
                            <div align="center">
                                <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                <em>${roomEntity.roomUserId}</em></div></td>                                                   <!-- 传递  作者名称  变量!-->
                        <%--<td>--%>
                            <%--<div align="right">--%>
                                <%--<span class="glyphicon glyphicon-tag" aria-hidden="true"></span>--%>
                                <%--<em>分类名</em>                                                               <!-- 传递  文章分类名称   变量!-->--%>
                            <%--</div>--%>
                        <%--</td>--%>
                    </tr>
                </table>
            </div>
            <div class="article-content">
                <p>
                    ${roomEntity.roomWords}
                </p>
            </div>
        </div>


        <div class="comment-div global-width">
            <c:forEach items="${wordslist}" var="line">
                <div class="panel panel-default" style="margin: 1%">
                    <div class="panel-heading"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;<b>${line.wordsUserId}</b></div>                            <!-- 传递  评论的用户名称  变量 !-->
                    <div class="panel-body">${line.words}</div>
                </div>

            </c:forEach>

        </div>
        <div class="panel-body global-width text-center">
        <textarea id="words" name="words" rows="5" style="width: 80%;resize:none"
                  placeholder=" 请回复评论" oninput="OnInput(event)"
                  onpropertychange="OnPropChanged(event)"></textarea>

        </div>
        <script type="text/javascript">
            $(function () {
                //qqFace的插件
                $('.emotion').qqFace({
                    assign: 'words', //给输入框赋值
                    path: 'face/'    //表情图片存放的路径
                });
                //把表情换成图像
                var words = $('.word');
                for (var i in words) {
                    if (words.hasOwnProperty(i)) {
                        var id = "#" + words[i].id;
                        var word = $(id).text();
                        $(id).html(replace_em(word));
                    }
                }
            });

            //        function OnPropChanged(event) {
            //            if (event.propertyName.toLowerCase() == "value") {
            //                alert("1The new content: " + event.srcElement.value);
            //            }
            //        }

            //        function OnInput(event) {
            //           // var word = event.target.value;
            //            event.target.value=replace_em(event.target.value);
            //           // $('#words').html(replace_em(word));
            //            alert(word);
            //           // event.target.html(replace_em(event.target.value));
            //        }

            //查看结果
            function replace_em(str) {
                str = str.replace(/\</g, '&lt;');
                str = str.replace(/\>/g, '&gt;');
                str = str.replace(/\n/g, '<br/>');
                str = str.replace(/\[em_([0-9]*)\]/g, '<img src="face/$1.gif" border="0" />');
                return str;
            }
        </script>
        <div>
            <table class="global-width" style="width: 70%;">
                <tr>
                    <td>
                        <div align="left">
                            <%--<span class="emotion">表情</span>--%>
                        </div>
                    </td>
                    <td>
                        <div align="right">
                            <button class="btn btn-small btn-primary" type="submit"
                                    formaction="<%=basePath%>/words_write">提交</button>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</form>

<%--<form action="" method="post">--%>
    <%--<div class="panel panel-default" style="margin: 1%">--%>
        <%--<div class="panel-heading">${roomEntity.roomUserId}: ${roomEntity.roomTitle}</div>--%>
        <%--<div class="panel-body">${roomEntity.roomWords}</div>--%>
    <%--</div>--%>

    <%--<table class="table table-hover table-condensed" style=" width: 95%;margin:1%;">--%>
        <%--<c:forEach items="${wordslist}" var="line">--%>
            <%--<tr>--%>
                <%--<td class="info" style="width: 5%">${line.wordsUserId}</td>--%>
                <%--<td class="word" id="${line.wordId}">${line.words}</td>--%>
            <%--</tr>--%>
        <%--</c:forEach>--%>
    <%--</table>--%>
    <%--<div class="panel-body">--%>
        <%--<textarea id="words" name="words" rows="5" style="width: 95%;resize:none"--%>
                  <%--placeholder="请回复user_words" oninput="OnInput(event)"--%>
                  <%--onpropertychange="OnPropChanged(event)"></textarea>--%>

    <%--</div>--%>
    <%--&lt;%&ndash;<script type="text/javascript">&ndash;%&gt;--%>
        <%--&lt;%&ndash;$(function () {&ndash;%&gt;--%>
            <%--&lt;%&ndash;//qqFace的插件&ndash;%&gt;--%>
            <%--&lt;%&ndash;$('.emotion').qqFace({&ndash;%&gt;--%>
                <%--&lt;%&ndash;assign: 'words', //给输入框赋值&ndash;%&gt;--%>
                <%--&lt;%&ndash;path: 'face/'    //表情图片存放的路径&ndash;%&gt;--%>
            <%--&lt;%&ndash;});&ndash;%&gt;--%>
            <%--&lt;%&ndash;//把表情换成图像&ndash;%&gt;--%>
            <%--&lt;%&ndash;var words = $('.word');&ndash;%&gt;--%>
            <%--&lt;%&ndash;for (var i in words) {&ndash;%&gt;--%>
                <%--&lt;%&ndash;if (words.hasOwnProperty(i)) {&ndash;%&gt;--%>
                    <%--&lt;%&ndash;var id = "#" + words[i].id;&ndash;%&gt;--%>
                    <%--&lt;%&ndash;var word = $(id).text();&ndash;%&gt;--%>
                    <%--&lt;%&ndash;$(id).html(replace_em(word));&ndash;%&gt;--%>
                <%--&lt;%&ndash;}&ndash;%&gt;--%>
            <%--&lt;%&ndash;}&ndash;%&gt;--%>
        <%--&lt;%&ndash;});&ndash;%&gt;--%>

<%--&lt;%&ndash;//        function OnPropChanged(event) {&ndash;%&gt;--%>
<%--&lt;%&ndash;//            if (event.propertyName.toLowerCase() == "value") {&ndash;%&gt;--%>
<%--&lt;%&ndash;//                alert("1The new content: " + event.srcElement.value);&ndash;%&gt;--%>
<%--&lt;%&ndash;//            }&ndash;%&gt;--%>
<%--&lt;%&ndash;//        }&ndash;%&gt;--%>

<%--&lt;%&ndash;//        function OnInput(event) {&ndash;%&gt;--%>
<%--&lt;%&ndash;//           // var word = event.target.value;&ndash;%&gt;--%>
<%--&lt;%&ndash;//            event.target.value=replace_em(event.target.value);&ndash;%&gt;--%>
<%--&lt;%&ndash;//           // $('#words').html(replace_em(word));&ndash;%&gt;--%>
<%--&lt;%&ndash;//            alert(word);&ndash;%&gt;--%>
<%--&lt;%&ndash;//           // event.target.html(replace_em(event.target.value));&ndash;%&gt;--%>
<%--&lt;%&ndash;//        }&ndash;%&gt;--%>

        <%--&lt;%&ndash;//查看结果&ndash;%&gt;--%>
        <%--&lt;%&ndash;function replace_em(str) {&ndash;%&gt;--%>
            <%--&lt;%&ndash;str = str.replace(/\</g, '&lt;');&ndash;%&gt;--%>
            <%--&lt;%&ndash;str = str.replace(/\>/g, '&gt;');&ndash;%&gt;--%>
            <%--&lt;%&ndash;str = str.replace(/\n/g, '<br/>');&ndash;%&gt;--%>
            <%--&lt;%&ndash;str = str.replace(/\[em_([0-9]*)\]/g, '<img src="face/$1.gif" border="0" />');&ndash;%&gt;--%>
            <%--&lt;%&ndash;return str;&ndash;%&gt;--%>
        <%--&lt;%&ndash;}&ndash;%&gt;--%>
    <%--&lt;%&ndash;</script>&ndash;%&gt;--%>
    <%--<table style="width: 95%">--%>
        <%--<tr>--%>
            <%--&lt;%&ndash;<td>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div align="left">&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<span class="emotion">表情</span>&ndash;%&gt;--%>
                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
            <%--<td>--%>
                <%--<div align="right">--%>
                    <%--<button class="btn btn-primary btn-lg " type="submit"--%>
                            <%--formaction="<%=basePath%>/words_write">提交--%>
                    <%--</button>--%>
                <%--</div>--%>
            <%--</td>--%>
        <%--</tr>--%>
    <%--</table>--%>
<%--</form>--%>

<div id="foot-container" class="global-width">
    <div id="foot-left-div" class="inline-block">
        <span>Luntan © 2017</span>
    </div >
    <div id="foot-right-div" class="inline-block">
        <span><a href="<%=basePath%>/roomMain_show">社区管理</a></span>

        <span>
            <a href="<%=basePath%>/roomMain_show2" >文章管理</a>
        </span>
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
<%--<%--%>
<%--不用jstl的方法直接传递--%>
<%--String room_id = (String) request.getParameter("room_id");--%>
<%--%>--%>
<%--<a><input type="text" name="name" value="<%=room_id%>"/></a>--%>