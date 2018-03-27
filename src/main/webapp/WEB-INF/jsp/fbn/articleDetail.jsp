<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>FBN门户首页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <%
        pageContext.setAttribute("ctx", request.getContextPath());
    %>

    <link rel="stylesheet" type="text/css" href="${ctx }/static/other/lib/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${ctx }/static/css/test.css">
    <script type="text/javascript" src="${ctx }/static/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${ctx }/static/bootstrap/js/bootstrap.min.js"></script>

    <!-- 配置文件 -->
    <script type="text/javascript" src="${ctx}/static/ueditor/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="${ctx}/static/ueditor/ueditor.all.js"></script>
</head>
<body>
<div class="container-fluid" style="background-image: url(${ctx }/static/img/bg.jpg);background-attachment: fixed;background-size: 100% 100%;">
    <div class="row">
        <div class="container" style="background-color: #2B2B2B;filter:alpha(Opacity=80);-moz-opacity:0.8;opacity: 0.8;box-shadow: #666 0px 0px 10px;margin-top: 10px;margin-bottom: 10px;">
            <div class="row">
                <div class="col-md-12 content">
                    <!-- 导航栏-->
                    <div class="row" >
                        <jsp:include page="../layout/navHeader.jsp"/>
                    </div>
                    <!--主内容区-->
                    <div class="row">
                        <div class="col-md-9">
                            <div style="box-shadow: #666 0px 0px 10px;color:#BABABA;margin-left: 10px;margin-top: 20px">
                                <label>
                                    <h3>${article.title}</h3>
                                    <h4>——${article.subtitle}</h4>
                                </label>
                                <div style="margin-bottom: 10px">
                                    <p>
                                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                        <span>${article.author}</span>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <span class="glyphicon glyphicon-align-left" aria-hidden="true" style="margin-left: 10px;"></span>
                                        <span>
                                            <c:if test="${article.type == 0}">原创</c:if>
                                            <c:if test="${article.type == 1}">转载</c:if>
                                            <c:if test="${article.type == 2}">译文</c:if>
                                            <c:if test="${article.type == 3}">其他</c:if>
                                        </span>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <span class="glyphicon glyphicon-tags" aria-hidden="true" style="margin-left: 10px;"></span>
                                        <span>${article.tag}</span>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <span class="glyphicon glyphicon-time" aria-hidden="true" style="margin-left: 10px;"></span>
                                        <span><fmt:formatDate value="${article.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="articleDetailDiv">
                                        <div style="display: none"><textarea id="content">${article.content}</textarea></div>
                                        <div id="contentDiv" style="box-shadow: #666 0px 0px 10px;color: white;padding: 10px;text-align: left">
                                            <span>${article.content}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div style="float: left;color:#BABABA;margin-left: 10px;">
                                <label>
                                    <h3>
                                        评论
                                    </h3>
                                </label>
                            </div>
                            <div class="row" style="margin-bottom: 20px;margin-left: 10px;">
                                <div class="col-md-12" style="box-shadow: #666 0px 0px 10px;">
                                    <div style="margin-top: 10px;margin-bottom: 10px">
                                        <form id="form" method="post">
                                            <textarea name="comment" style="text-align: left;background:transparent;box-shadow: #666 0px 0px 10px; color: white;resize: none" rows="4" cols="114" maxlength="200"></textarea>
                                            <input type="hidden" name="articleUuid" value="${article.uuid}">
                                            <div style="margin-top: 10px;margin-right: 10px;">
                                                <input type="submit" value="提交"/>
                                            </div>
                                        </form>
                                    </div>
                                    <div style="margin-bottom: 10px">
                                        <div>
                                            <div style="background:transparent;box-shadow: #666 0px 0px 10px; color: white;padding: 10px">
                                                <p style="text-align: left;">2131</p>
                                            </div>
                                            <div style="background:transparent;box-shadow: #666 0px 0px 10px; color: white;padding: 10px">
                                                <p style="text-align: left;">2131</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--副内容区-->
                        <div class="col-md-3">
                            <jsp:include page="../layout/subContent.jsp"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<script>
    var ue = UE.getEditor('container', {
        toolbars: [
            ['emotion']
        ],
        autoHeightEnabled: true,
        autoFloatEnabled: true,
        elementPathEnabled : false,
        maximumWords:140
    });

    $("#form").submit(function () {
        $.ajax({
            url:"${ctx}/fbn/article/comment",
            type:"POST",
            data:$("#form").serialize(),
            success:function (data) {

            }
        });
    });
</script>
</body>
</html>

