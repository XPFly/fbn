<%@ page import="java.util.List" %>
<%@ page import="com.ecjtu.fbn.orm.domain.Article" %>
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
                            <div style="float: left;color:#BABABA;margin-left: 10px;">
                                <label>
                                    <h3>
                                        <%
                                            List<Article> articleList = (List<Article>)request.getAttribute("articleList");
                                            Article article = articleList.get(0);
                                            if (!"3".equals(article.getType())){
                                                %>技术博客<%
                                            }else {
                                                %>随笔<%
                                            }
                                        %>
                                    </h3>
                                </label>
                            </div>
                            <c:forEach var="article" items="${articleList}">
                            <div class="row" style="margin-bottom: 20px;">
                                <div class=" col-md-12">
                                    <div class="box2" style="padding: 10px;">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <img class="img-rounded" src="http://127.0.0.1:8089/${article.articleImage}" style="width:270px; height: 180px">
                                            </div>
                                            <div class="col-md-8">
                                                <div style="height: 180px;">
                                                    <div style="text-align: left;">
                                                        <a href="${ctx}/fbn/article/detail/${article.uuid}"><label><h4>${article.title}</h4></label></a>
                                                    </div>
                                                    <div>
                                                        <p style="text-align: left;">
                                                            <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                                            <span>${article.author}</span>
                                                            <span class="glyphicon glyphicon-align-left" aria-hidden="true" style="margin-left: 10px;"></span>
                                                            <span>
                                                                <c:if test="${article.type == 0}">原创</c:if>
                                                                <c:if test="${article.type == 1}">转载</c:if>
                                                                <c:if test="${article.type == 2}">译文</c:if>
                                                                <c:if test="${article.type == 3}">其他</c:if>
                                                            </span>
                                                            <span class="glyphicon glyphicon-time" aria-hidden="true" style="margin-left: 10px;"></span>
                                                            <span><fmt:formatDate value="${article.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
                                                            <span class="glyphicon glyphicon-tags" aria-hidden="true" style="margin-left: 10px;"></span>
                                                            <span>${article.tag}</span>
                                                        </p>
                                                    </div>
                                                    <div style="height:90px;">
                                                        <p style="text-align:left;">
                                                            <span>
                                                                文章简介：${article.summary}
                                                            </span>
                                                        </p>
                                                    </div>
                                                    <div>
                                                        <p style="text-align: right;">
                                                            <span class="glyphicon glyphicon-comment" aria-hidden="true" style="margin-left: 10px;">评论</span>
                                                            <span>(${article.commentNumber})</span>
                                                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true" style="margin-left: 10px;">浏览</span>
                                                            <span>(${article.clickNumber})</span>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                            <%
                                List<Article> articles =  (List<Article>)request.getAttribute("articleList");
                                String type = articles.get(0).getType();
                            %>
                            <div class="row">
                                <div class=" col-md-12">
                                    <form id="searchForm" action="${ctx}/fbn/article/list/<%=type%>">
                                        <input type="hidden" name="pageNum" value="${pageInfo.pageNum}"/>
                                        <input type="hidden" name="pageSize" value="${pageInfo.pageSize}">
                                    </form>
                                    <%@include file="../layout/pagination.jsp"%>
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
</body>
</html>

