<%--
  Created by IntelliJ IDEA.
  User: 玉帝
  Date: 2020/7/1
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>请选择您的身份</title>
    <style type="text/css">
        *{
            margin: 0;
        }
        html,body{
            height: 100%;
            margin: 0;
        }
        #a{
            width:85%;
            background-color:#16365C ;
        }
        #a p{
            color: white;
            font-size: 30px;
            text-align: center;
        }
        #c{
            width: 15%;
            background-color:#16365C ;
        }
        #c a{
            color: white;
            font-size: 20px;
            line-height: 100px;
            text-align: center;
            text-decoration: none;
        }

        #a,#c{
            float: left;height: 120px;margin: 0;
        }
        #box1{
            width: 1000px;
            height: 60px;
            background-color: #FFE4C4;
            margin:auto;/*让元素自动设置边距，达到居中的效果，水平方向有效*/
        }
        #box2{
            width: 1000px;
            height: 700px;
            background-color: #FFE4C4;
            margin:auto;/*让元素自动设置边距，达到居中的效果，水平方向有效*/
        }
        #box1 p{
            color: black;
            font-size: 20px;
            line-height: 100px;
            text-align: center;
        }
        .identity{
            margin: 60px;
            float: left;
            border:3px solid black;
            padding:20px;
        }
        .identity a{
            color: blue;
            font-size: 20px;
            line-height: 80px;
            text-align: center;
            text-decoration: none;
        }
        .identity img{
            margin: 10px;
        }
    </style>
</head>
<body>
<div id="a">
    <p style="height: 100px;line-height: 100px;">北京市上方山森林公园门票预订</p>
</div>
<div id="c">
    <a href="index.jsp" style="margin: 0 30px; border:1px solid white" >返回首页</a>
</div>
<div id="box1">
    <div align="center " style="height: 80px; line-height: 80px;">
        <p>请选择登录身份<p>
    </div>
</div>
<div id="box2">
    <div class="identity" >
        <img src="static/images/tourist.jpg"><br>
        <p align="center" style="color: red; font-size: 20px;">我是游客</p><br>
        <a href="vistorLogin.jsp" style="margin: 0 120px; border:1px solid blue">点击登录</a>
    </div>

    <div class="identity">
        <img src="static/images/admin.png" ><br>
        <p align="center" style="color: red;font-size: 20px;">我是管理员</p><br>
        <a href="managerLogin.jsp" style="margin: 0 120px; border:1px solid blue">点击登录</a>
    </div>
</div>
</body>
</html>