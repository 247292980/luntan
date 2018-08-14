<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
         pageEncoding="UTF-8" %>
<html>
<head>
    <%@ include file="basepage.jsp" %>
    <title>后台管理 </title>
    <style>
        li{list-style-type:none;}
        .head-container{heigth:40px;background-color:#3b5998;font-family: "inherit";
            margin-bottom: 30px;}
        .global-width{width: 950px;margin:0 auto;}
        .head-left-text>a{margin-right:630px;font-size:28px;padding-top: 3px;
            color:#ffffff;text-decoration:none;}
        .head-right-text>a{font-size: 15px;color:#ffffff;
            margin-left: 40px;line-height: 40px;}

        .inline-block{display: inline-block;}

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
<!-- padding-bottom：用来定义元素底部边框和内容之间的距离。 -->
<body>
<%--<ul class="nav nav-tabs">--%>
    <%--<li role="presentation" class="active" style="margin-left: 1%"><a href="#">推荐</a></li>--%>
    <%--&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;--%>
    <%--<li role="presentation"><a href="#">关注</a></li>--%>
    <%--<li role="presentation"><a href="#">最新</a></li>--%>
    <%--&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;&lt;%&ndash;没写&ndash;%&gt;--%>
<%--</ul>--%>
<div class="head-container">
    <ul class="global-width" style="padding-left: 0;">
        <li class="head-left-text inline-block"><a href="<%=basePath%>/roomMain_show"><b>Luntan</b></a></li>
        <li class="head-right-text inline-block"><a href="<%=basePath%>/page_roomWrite">添加文章</a></li>
        <li class="head-right-text inline-block"><a href="<%=basePath%>/page_userInfo">个人空间</a></li>
        <%--没写--%><%--没写--%><%--没写--%><%--没写--%><%--没写--%>
        <%--没写--%><%--没写--%><%--没写--%><%--没写--%><%--没写--%>
    </ul>
</div>

<div id="content-container" class="global-width">
    <c:forEach items="${roomlist}" var="line">
        <li class="list-group-item">
            <div>
                <div class="post-title">
                    <h2>
                        <a href="<%=basePath%>/room_open?roomId=${line.roomId}">
                                ${line.roomTitle}
                        </a>
                    </h2>
                    <div>
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                        <em>${line.roomUserId}</em>                                                                <!--传递 作者名称 变量 !-->
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <%----%>
                        <%--<span class="glyphicon glyphicon-tag" aria-hidden="true"></span>--%>
                        <%--<em>分类名</em>                                                                <!--传递 分类名 变量 !-->--%>
                    </div>

                </div>
                <br/>

                <div class="post-content">
                        ${line.roomWords}                                                       <!--传递 文章内容简介 变量 !-->
                </div>

                <br/>
            </div>
        </li>
        <br/>
        <br/>
    </c:forEach>

    <%
        Object pagesObject = request.getAttribute("pageIndex");
        int pageIndex = Integer.parseInt(pagesObject == null ? "" : pagesObject.toString());
        String is1Hidden = (pageIndex > 2 ? "" : "hidden");
        String is2Hidden = (pageIndex > 1 ? "" : "hidden");
    %>
    <ul class="pagination">
        <%--<li><a href="<%=basePath%>/roomMain_show?pageIndex=<%=pageIndex-1%>">&laquo;</a></li>--%>
        <li class="<%=is1Hidden%>"><a href="<%=basePath%>/roomMain_show?pageIndex=<%=pageIndex-2%>"><%=pageIndex - 2%>
        </a></li>
        <li class="<%=is2Hidden%>"><a href="<%=basePath%>/roomMain_show?pageIndex=<%=pageIndex-1%>"><%=pageIndex - 1%>
        </a></li>
        <li class="active"><a href="<%=basePath%>/roomMain_show?pageIndex=<%=pageIndex%>"><%=pageIndex%>
        </a></li>
        <li><a href="<%=basePath%>/roomMain_show?pageIndex=<%=pageIndex+1%>"><%=pageIndex + 1%>
        </a></li>
        <li><a href="<%=basePath%>/roomMain_show?pageIndex=<%=pageIndex+2%>"><%=pageIndex + 2%>
        </a></li>
        <li><a href="<%=basePath%>/roomMain_show?pageIndex=<%=pageIndex+1%>">&raquo;</a></li>
    </ul>


    <div id="foot-container">
        <div id="foot-left-div" class="inline-block">
            <span>Luntan © 2017</span>
        </div>
        <div id="foot-right-div" class="inline-block">
            <span><a href="<%=basePath%>/roomMain_show">社区管理</a></span>
            <span><a href="<%=basePath%>/roomMain_show2">文章管理</a></span>
            <!--
            <span>
            <a href="#">发现</a>
        </span>
            <span>
            <a href="">关于我们</a>
        </span>
            <span>
            <a href="#">联系我们</a>
        </span>
        !-->
        </div>


    </div>

</div>

<%--<!----%>
<%--<c:forEach items="${roomlist}" var="line">--%>
    <%--<div style="float: left;width: 100%;">--%>
        <%--<table class="table table-hover table-condensed" style=" BORDER: 1px;width: 90%;margin-left: 1%;margin-top: 0.5%">--%>
            <%--<tr>--%>
                <%--<td class="info" style="width: 5%">--%>
                    <%--<div style="text-align:center">${line.roomUserId}</div>--%>
                <%--</td>--%>
                <%--<td>--%>
                        <%--&lt;%&ndash;href和struct2的action 的name一致&ndash;%&gt;--%>
                    <%--<a href="<%=basePath%>/room_open?roomId=${line.roomId}">${line.roomTitle}</a>--%>
                <%--</td>--%>
            <%--</tr>--%>
        <%--</table>--%>
    <%--</div>--%>
<%--</c:forEach>--%>
<%--<%--%>
    <%--Object pagesObject = request.getAttribute ("pageIndex");--%>
    <%--int pageIndex= Integer.parseInt(pagesObject==null?"0":pagesObject.toString());--%>
    <%--String is1Hidden=(pageIndex>2?"":"hidden");--%>
    <%--String is2Hidden=(pageIndex>1?"":"hidden");--%>
<%--%>--%>
<%--<ul class="pagination "style="margin-left: 2%">--%>
    <%--<li><a href="<%=basePath%>/roomMain_show?pageIndex=<%=pageIndex-1%>">&laquo;</a></li>--%>
    <%--<li class="<%=is1Hidden%>"><a href="<%=basePath%>/roomMain_show?pageIndex=<%=pageIndex-2%>"><%=pageIndex-2%></a></li>--%>
    <%--<li class="<%=is2Hidden%>"><a href="<%=basePath%>/roomMain_show?pageIndex=<%=pageIndex-1%>"><%=pageIndex-1%></a></li>--%>
    <%--<li class="active"><a href="<%=basePath%>/roomMain_show?pageIndex=<%=pageIndex%>"><%=pageIndex%></a></li>--%>
    <%--<li><a href="<%=basePath%>/roomMain_show?pageIndex=<%=pageIndex+1%>"><%=pageIndex+1%></a></li>--%>
    <%--<li><a href="<%=basePath%>/roomMain_show?pageIndex=<%=pageIndex+2%>"><%=pageIndex+2%></a></li>--%>
    <%--<li><a href="<%=basePath%>/roomMain_show?pageIndex=<%=pageIndex+1%>">&raquo;</a></li>--%>
<%--</ul>--%>
<%--<nav class="navbar navbar-default navbar-fixed-bottom" id="5function">--%>
    <%--<div class="container ">--%>
        <%--<ul class="nav nav-tabs ">--%>
            <%--<li role="presentation"><a href="<%=basePath%>/roomMain_show">社区管理</a></li>--%>
            <%--<li role="presentation"><a href="<%=basePath%>/roomMain_show2">文章管理</a></li>--%>
        <%--</ul>--%>
    <%--</div>--%>
<%--</nav>--%>


</body>
</html>
