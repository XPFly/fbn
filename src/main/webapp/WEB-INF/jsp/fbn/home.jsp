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
                            <!--滚动条-->
                            <div class="row">
                                <div class="col-md-12"  >
                                    <div style="box-shadow: #666 0px 0px 10px; height: 200px;margin-top: 20px;margin-left: 10px; color: white;">
                                        <div id="myCarousel" class="carousel slide">
                                            <!-- 轮播（Carousel）指标 -->
                                            <ol class="carousel-indicators">
                                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                                <li data-target="#myCarousel" data-slide-to="2"></li>
                                            </ol>
                                            <!-- 轮播（Carousel）项目 -->
                                            <div class="carousel-inner">
                                                <div class="item active" >
                                                    <img src="${ctx }/static/img/slide1.png" alt="First slide" style="height: 200px;width: 100%;">
                                                    <div class="carousel-caption">标题 1</div>
                                                </div>
                                                <div class="item">
                                                    <img src="${ctx }/static/img/slide2.png" alt="Second slide" style="height: 200px;width: 100%;">
                                                    <div class="carousel-caption">标题 2</div>
                                                </div>
                                                <div class="item">
                                                    <img src="${ctx }/static/img/slide3.png" alt="Third slide" style="height: 200px;width: 100%;">
                                                    <div class="carousel-caption">标题 3</div>
                                                </div>
                                            </div>
                                            <!-- 轮播（Carousel）导航 -->
                                            <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;
                                            </a>
                                            <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--每日内容区域--%>
                            <div style="float: left;color:#BABABA;margin-left: 10px;">
                                <label>
                                    <h3>每日推送</h3>
                                </label>
                            </div>
                            <div class="row">
                                <div class=" col-md-12">
                                    <div class="box2" style="height: 125px;text-align: left;padding: 0 10px 5px 10px;overflow: hidden;text-overflow: ellipsis;">
                                        <a><label><h4>百度花费逾10亿投资酷开，联手创维布局智能家居</h4></label></a><br>
                                        <span>
                                            3月16日，百度与创维在北京举行了新闻发布会。李彦宏亲自出席，宣布百度战略投资创维旗下子公司深圳酷开网络科技有限公司10.55亿元人民币。百度将成为酷开第二大股东，持股比例约为11%。
                                            3月16日，百度与创维在北京举行了新闻发布会。李彦宏亲自出席，宣布百度战略投资创维旗下子公司深圳酷开网络科技有限公司10.55亿元人民币。百度将成为酷开第二大股东，持股比例约为11%。
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <!--文章列表区-->
                            <div style="float: left;color:#BABABA;margin-left: 10px;">
                                <label>
                                    <h3>最新文章</h3>
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
                            <div>
                                <form id="searchForm" action="${ctx}/fbn/blog/home?entry=1">
                                    <input type="hidden" name="pageNum" value="${pageInfo.pageNum}"/>
                                    <input type="hidden" name="pageSize" value="${pageInfo.pageSize}">
                                </form>
                                <%@include file="../layout/pagination.jsp"%>
                            </div>
                        </div>
                    <!--副内容区-->
                    <div class="col-md-3">
                        <div class="row">
                            <!--副内容区一-->
                            <div class="col-md-10 col-md-offset-1"  style="height: 200px; margin-top: 20px;box-shadow: #666 0px 0px 10px;padding:5px; font-size:18px;color:#BABABA">
                                <div style="height: 190px;">
                                    <ul id="myTab" class="nav nav-tabs nav-justified" style="font-size: 14px">
                                        <li class="active"><a href="#A" data-toggle="tab">个人信息</a></li>
                                        <li><a href="#B" data-toggle="tab">联系方式</a></li>
                                    </ul>
                                    <div id="myTabContent" class="tab-content">
                                        <div class="tab-pane fade in active" id="A">
                                            <div style="margin-top: 5px">
                                                <img src="${ctx }/static/img/icon.jpg" class="img-circle" style="width: 50px;height: 50px">
                                                <div style="margin-left: 35px;margin-top: 10px">
                                                    <p style="font-size: 14px;text-align: left;margin: 0.6em">
                                                        <span class="glyphicon glyphicon-user">&nbsp;姓名：</span>
                                                        <span>言午月月鸟飞</span>
                                                    </p>
                                                    <p style="font-size: 14px;text-align: left;margin: 0.6em">
                                                        <span class="glyphicon glyphicon-education">&nbsp;职业：</span>
                                                        <span>java开发工程师</span>
                                                    </p>
                                                    <p style="font-size: 14px;text-align: left;margin: 0.6em">
                                                        <span class="glyphicon glyphicon-map-marker">&nbsp;定位：</span>
                                                        <span>北京</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="B">
                                            <div style="margin-top: 20px;margin-left: 10px">
                                                <p style="font-size: 14px;text-align: left;margin: 0.6em">
                                                    <img src="${ctx }/static/img/contact/qq.png" style="width: 24px;height: 24px">
                                                    <span>1830166767</span>
                                                </p>
                                                <p style="font-size: 14px;text-align: left;margin: 0.6em">
                                                    <img src="${ctx }/static/img/contact/wechat.png" style="width: 24px;height: 24px">
                                                    <span>1830166767F</span>
                                                </p>
                                                <p style="font-size: 14px;text-align: left;margin: 0.6em">
                                                    <img src="${ctx }/static/img/contact/mail.png" style="width: 24px;height: 24px">
                                                    <span>flyer10086@gmail.com</span>
                                                </p>
                                                <p style="font-size: 14px;text-align: left;margin: 0.6em">
                                                    <img src="${ctx }/static/img/contact/github.png" style="width: 24px;height: 24px">
                                                    <span>https://github.com/XPFly</span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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
    /**
     * 提交表单
     * @returns {boolean}
     */
    function subForm() {
        $('#paginationForm').submit();
    }
</script>
</body>
</html>

