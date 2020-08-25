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
    <title>票务管理</title>
    <base href="<%=basePath%>">
</head>
<script type="text/javascript" src="static/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
    $(function () {
        loadStudentData();
        $("#btnLoader").click(function () {
            loadStudentData();
        })
        $("#add").click(function () {
            modifyData();
        })
    })
    function loadStudentData() {
        $.ajax({
            url:"ticket/display",
            type:"get",
            dataType:"json",
            success:function (data) {
                //清除旧的数据
                $("#info").html("")
                $.each(data,function (i,n) {
                    $("#info").append("<tr>")
                        .append("<td><input type='text' name='id' value='" + n.id + "' readonly='true'></td>")
                        .append("<td>" + n.type + "</td>")
                        .append("<td>" + n.price + "</td>")
                        .append("<td>" + n.num + "</td>")
                        .append("</tr>")
                })
            }
        })
    }
    function modifyData() {
        $.ajax({
            url:"ticket/display",
            type:"get",
            dataType:"json",
            success:function (data) {
                //清除旧的数据
                $("#info").html("")
                $.each(data,function (i,n) {
                    $("#info").append("<tr>")
                        .append("<td><input type='text' name='id" + n.id + "' value='" + n.id + "' readonly='true'></td>")
                        .append("<td>" + n.type + "</td>")
                        .append("<td>" + n.price + "</td>")
                        .append("<td><input type='text' name='num" + n.id + "' value='" + n.num + "'></td>")

                        .append("</tr>")
                })
                $("#info").append("<tr><td colspan='4'><input type='submit' value='提交'></td></tr>")
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
            <td>ID</td>
            <td>类型</td>
            <td>价格</td>
            <td>数量</td>
        </tr>
        </thead>
        <tbody id="info"></tbody>
    </table>
    </form>
    <input type="button" id="add" value="添加库存">
    <input type="button" id="btnLoader" value="刷新数据">
    <input type="button" id="return" value="退出" onclick="window.location.href='manager/logout'">

</div>
</body>
</html>
