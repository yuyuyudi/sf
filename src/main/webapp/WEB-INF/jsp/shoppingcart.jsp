<%--
  Created by IntelliJ IDEA.
  User: 玉帝
  Date: 2020/7/1
  Time: 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>购物车</title>
    <base href="<%=basePath%>">
</head>
<script type="text/javascript" src="static/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
    $(function () {
        loadStudentData();
        $("#btnLoader").click(function () {
            loadStudentData();
        })
    })
    function loadStudentData() {
        $.ajax({
            url:"shopping/cart",
            type:"get",
            dataType:"json",
            success:function (data) {
                //清除旧的数据
                $("#info").html("")
                $.each(data,function (i,n) {
                    $("#info").append("<tr>")
                        .append("<td>" + n.tickettype+ "</td>")
                        .append("<td>" + n.ticketnum + "</td>")
                        .append("</tr>")
                })
            }
        })
    }

</script>
<body>
<div align="center">
    <form action="ticket/addnum">
        <table border="2">
            <thead>
            <tr>
                <td>类型</td>
                <td>数量</td>
            </tr>
            </thead>
            <tbody id="info"></tbody>
        </table>
    </form>
    <input type="button" id="btnLoader" value="刷新数据">
    <input type="button" id="return" value="返回" onclick="window.location.href='shopping/mall'">
</div>
</body>
</html>
