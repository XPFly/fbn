<%--
  Created by IntelliJ IDEA.
  User: Flyer
  Date: 2018/3/6
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%
        pageContext.setAttribute("ctx", request.getContextPath());
    %>
    <link rel="stylesheet" type="text/css" href="${ctx }/static/css/comment.css">
</head>
<body>
<section class="comments">
    <article class="comment">
        <a class="comment-img" href="#non">
            <img src="${ctx }/static/img/icon.jpg" alt="" width="50" height="50">
        </a>
        <div class="comment-body">
            <div class="text">
                <p>Hello, this is an example comment</p>
            </div>
            <p class="attribution">by <a href="#non">Joe Bloggs</a> at 14:23pm, 4th Dec 2010</p>
        </div>
    </article>
    <article class="comment">
        <a class="comment-img" href="#non">
            <img src="${ctx }/static/img/icon.jpg" alt="" width="50" height="50">
        </a>
        <div class="comment-body">
            <div class="text">
                <p>This is a much longer one that will go on for a few lines.</p>
                <p>It has multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end.</p>
            </div>
            <p class="attribution">by <a href="#non">Joe Bloggs</a> at 14:23pm, 4th Dec 2010</p>
        </div>
    </article>
</section>
</body>
</html>
