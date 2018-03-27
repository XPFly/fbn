<%@ page import="java.util.List" %>
<%@ page import="com.ecjtu.fbn.orm.domain.Article" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .c-index-hot1 {
        background-color: #f54545;
    }
    .c-index-hot2 {
        background-color: #ff8547;
    }
    .c-index-hot3 {
        background-color: #ffac38;
    }
    .c-index {
        display: inline-block;
        padding: 1px 0;
        color: #fff;
        width: 14px;
        line-height: 100%;
        font-size: 12px;
        text-align: center;
        background-color: #8eb9f5;
    }
    .c-gap-icon-right-small {
        margin-right: 5px;
    }
</style>
<div class="row">
    <div class="col-md-10 col-md-offset-1"  style="height: 150px; margin-top: 20px;box-shadow: #666 0px 0px 10px;padding:5px; font-size:18px;color:#BABABA">
        <label style="color: #BABABA;">标签云</label>
        <hr style=" width:80%; border:1px groove #BABABA" />
    </div>
</div>
<div class="row">
    <div class="col-md-10 col-md-offset-1"  style="height: 300px; margin-top: 20px;box-shadow: #666 0px 0px 10px;padding:5px; font-size:18px;color:#BABABA">
        <label style="color: #BABABA;">排行榜</label>
        <hr style=" width:80%; border:1px groove #BABABA" />
        <%
            List<Article> clickNumberList = (List<Article>)request.getAttribute("clickNumberList");
            String title1 = clickNumberList.get(0).getTitle();
            String title2 = clickNumberList.get(1).getTitle();
            String title3 = clickNumberList.get(2).getTitle();
            List<Article> clickNumberList1 = clickNumberList.subList(clickNumberList.size()-7,clickNumberList.size());
        %>
        <div style="word-break: keep-all;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;">
            <table style="color: white;table-layout: fixed">
                <tbody>
                <tr>
                    <td><span class="c-index  c-index-hot1 c-gap-icon-right-small" style="background-color: #f54545;">1</span></td>
                    <td style="text-align: left;width: 100%;word-break: keep-all;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;"><a href="${ctx}/fbn/article/detail/<%=clickNumberList.get(0).getUuid()%>" title="<%=title1%>"><span><%=title1%></span></a></td>
                </tr>
                <tr>
                    <td><span class="c-index  c-index-hot1 c-gap-icon-right-small" style="background-color: #ff8547;">2</span></td>
                    <td style="text-align: left;width: 100%;word-break: keep-all;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;"><a href="${ctx}/fbn/article/detail/<%=clickNumberList.get(1).getUuid()%>" title="<%=title2%>"><span><%=title2%></span></a></td>
                </tr>
                <tr>
                    <td><span class="c-index  c-index-hot1 c-gap-icon-right-small" style="background-color: #ffac38;">3</span></td>
                    <td style="text-align: left;width: 100%;word-break: keep-all;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;"><a href="${ctx}/fbn/article/detail/<%=clickNumberList.get(2).getUuid()%>" title="<%=title3%>"><span><%=title3%></span></a></td>
                </tr>
                <c:forEach var="article" items="<%=clickNumberList1%>" varStatus="status">
                    <tr>
                        <td><span class="c-index  c-index-hot1 c-gap-icon-right-small">${status.count+3}</span></td>
                        <td style="text-align: left;width: 100%;word-break: keep-all;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;"><a href="${ctx}/fbn/article/detail/${article.uuid}" title="${article.title}"><span>${article.title}</span></a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>