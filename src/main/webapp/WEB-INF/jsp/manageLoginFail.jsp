<%--
  Created by IntelliJ IDEA.
  User: 玉帝
  Date: 2020/6/30
  Time: 22:15
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
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <meta name="author" content="wxxxb">
    <title>账号登录</title>
    <style type="text/css">
        *{
            margin: 0;
        }
        body{
            /*background-image: url("/static/images/1.png") ;*/
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-attachment: fixed;
        }
        #frame{
            width: 700px;
            height: 400px;
            margin: auto;
        }
        #header1{
            width: 300px;
            height: 200px;
            margin: auto;
        }
        h1{
            color:red;
            text-align: center;
        }

    </style>
    <script>
        function verifyTel1() {
            var regexp1 = /^[a-z0-9]{3,9}$/;
            var uname = document.getElementById("uname").value;
            if(!regexp1.test(uname)) {
                document.getElementById("msg").style.display = "inline-block";
                document.getElementById("msg").innerHTML = "用户名是3-9位不得使用_+!@#$等特殊符号";
                document.getElementById("uname").focus(); //让输入框获得焦点
                document.getElementById("uname").select(); //选中输入框的内容
                return false;
            } else {
                document.getElementById("msg").style.display = "none";
                return true;
            }
        }
        function verifyTel2() {
            var regexp2 = /^[a-z0-9]{6,13}$/;
            var pwd = document.getElementById("pwd").value;
            if(!regexp2.test(pwd)) {
                document.getElementById("msg2").style.display = "inline-block";
                document.getElementById("msg2").innerHTML = "请输入正确的密码！";
                document.getElementById("pwd").focus(); //让输入框获得焦点
                document.getElementById("pwd").select(); //选中输入框的内容
                return false;
            } else {
                document.getElementById("msg2").style.display = "none";
                return true;
            }
        }
        //提交表单
        function submitForm() {
            if(verifyTel1() && verifyTel2()) {
                document.getElementById("allow").submit();
            }
        }

        function teat(){
            alert(123);
        }

    </script>

</head>
<body>
<h1>账号或密码错误，请重新登录！</h1>
<%--<div id="header1">--%>
<%--<img src="/static/images/login.jpg" style="margin: auto;margin-top: 40px;">--%>
<%--</div>--%>

<div id="frame">
    <form method="post" action="manager/login"><!--表单提交的地址-->
        <table width="500px" border="1px" cellspacing="0" >
            <tbody>
            <tr height="40px" >
                <td rowspan="4" align="center">账号登录</td>
                <th colspan="2" align="center">请输入信息</th>

            </tr>
            <tr height="40px">

                <td align="right">名称：</td>
                <td  align="center">
                    <input type="text" placeholder="请输入您的名称" name="name" >
                </td>
            </tr>
            <tr height="40px">

                <td align="right">密码：</td>
                <td align="center">
                    <input type="password" placeholder="请输入您的密码" name="password">
                </td>
            </tr>
            <tr height="40px">

                <td colspan="2" align="center">
                    <input type="submit" value="提交" style="width: 60px; height: 30px;background-color:wheat;">
                    <input type="reset" value="重置" style="width: 60px; height: 30px; background-color:wheat;">
                </td>

            </tr>
            </tbody>
        </table>
    </form>
</div>
</table>
</body>
</html>

