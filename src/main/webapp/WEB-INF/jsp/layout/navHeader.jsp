<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%--LOGO区域--%>
<div class="col-md-3">
    <div style="box-shadow: #666 0px 0px 10px;height: 100px;margin-top: 20px;margin-left:10px;color: white;">
        <div style="height: 100px;">
            <jsp:include page="../layout/clock.jsp"/>
        </div>
    </div>
</div>
<%--菜单栏区域--%>
<div class="col-md-9">
    <div style="box-shadow: #666 0px 0px 10px;height: 100px;margin-top: 20px;margin-right:10px;color: white;position: relative">
        <div>
            <img src="${ctx}/static/img/logo.png" style="float: left;margin-top: 8px">
        </div>
        <div style="position: absolute;bottom: 5px;left: 172px">
            <p style="font-size: 18px;font-family: 方正姚体;">
                <span>积跬步至千里,积怠惰致深渊。</span>
            </p>
        </div>
        <div style="margin-right: 10px;height: 40px;position: absolute;bottom: 0px;right: 0px">
            <a href="${ctx}/fbn/blog/home"><button type="button" class="btn btn-default">首页</button></a>
            <a href="${ctx}/fbn/article/list/0"><button type="button" class="btn btn-default">技术博客</button></a>
            <a href="${ctx}/fbn/article/list/3"><button type="button" class="btn btn-default">随笔</button></a>
            <a href="${ctx}/fbn/blog/about"><button type="button" class="btn btn-default">关于我</button></a>
            <a href="${ctx}/fbn/blog/leaveMsg"><button type="button" class="btn btn-default">留言</button></a>
        </div>
        <div>

        </div>
    </div>
</div>