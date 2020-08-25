<%--
  Created by IntelliJ IDEA.
  User: 玉帝
  Date: 2020/7/1
  Time: 19:06
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
    <title>Title</title>
    <base href="<%=basePath%>">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>上方山门票预订</title>
    <style type="text/css">
        *{
            margin: 0;
        }
        html,body{
            height: 100%;
            margin: 0;
        }
        #a{
            width:70%;
            background-color:#16365C ;
        }
        #a p{
            color: white;
            font-size: 30px;
            text-align: center;
        }
        #c{
            width: 30%;
            background-color:#16365C ;
        }
        #c a{
            color: white;
            font-size: 20px;
            line-height: 100px;
            text-align: center;
            text-decoration: none;
        }

        #a,#b,#c{
            float: left;height: 120px;margin: 0;
        }
        #box1{

            width: 1000px;
            height: 1700px;
            background-color: #FFE4C4;
            margin:auto;/*让元素自动设置边距，达到居中的效果，水平方向有效*/
        }

        .ticket{
            margin: 80px;
            float: left;
            border:3px solid black;
            /*padding:20px solid black;*/
        }
        .ticket img{
            margin: 10px;
        }
        #banner{
            width: 1000px;
            htext-align: center;
            background-color:#FFE4C4;
            margin:auto;
        }
        .hhh{
            text-align: center;
        }
        #banner h3{
            margin:20px 80px;
        }
        #banner p{
            margin: 10px 80px;
        }
    </style>
</head>

<body>
<h3>购买失败！</h3>
<a href="index.jsp">退出</a>
<h1>请购买其他的票</h1>
<div id="box1">
    <div align="center " style="height: 80px; line-height: 80px;">
        <h2>门票类型</h2>
    </div>
    <div class="ticket" >
        <img src="static/images/hill/4.jpg"><br>
        <p align="center" style="color: red;">平日普通票(售价100RMB)</p>
        <td><a href="ticket/buy?id=1&num=1">购票</a></td><br>
        <li>仅适用于18-60岁的人士进行上山游玩</li>
        <li>仅限于一人一日入内游玩一次</li>
    </div>

    <div class="ticket">
        <img src="static/images/temple/0.jpg" ><br>
        <p align="center" style="color: red;">指定日普通票(售价130RMB)</p>
        <td><a href="ticket/buy?id=2&num=1">购票</a></td><br>
        <li>仅适用于18-60岁的人士进行上山游玩</li>
        <li>限一人在任一指定日或平日入园一次</li>
    </div>
    <div class="ticket">
        <img src="static/images/hill/7.jpg"><br>
        <p align="center" style="color: red;">平日优惠票(售价80RMB)</p>
        <td><a href="ticket/buy?id=3&num=1">购票</a></td><br>
        <li>适用于未满18周岁或60周岁以上的人士</li>
        <li>适用于所有在校学生（需6周岁以上）</li>
        <li>购票及入园时请出示相关证件</li>
        <li>仅限于一人一日入内游玩一次</li>
    </div>
    <div class="ticket">
        <img src="static/images/temple/2.jpg" ><br>
        <p align="center" style="color: red;">指定日优惠票(售价110RMB)</p>
        <td><a href="ticket/buy?id=4&num=1">购票</a></td><br>
        <li>适用于未满18周岁或60周岁以上的人士</li>
        <li>适用于所有在校学生（需6周岁以上）</li>
        <li>限一人在任一指定日或平日入园一次</li>
        <li>购票及入园时请出示相关证件</li>
    </div>
</div>
</body>
</html>
