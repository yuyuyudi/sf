<%--
  Created by IntelliJ IDEA.
  User: 玉帝
  Date: 2020/6/30
  Time: 22:35
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
<div id="a">

    <p style="height: 100px;line-height: 100px;">北京市上方山森林公园门票预订</p>
</div>

<div id="c">
    <a href="select.jsp" style="margin: 0 30px; border:1px solid white" >登录</a>
    <a href="register.jsp"style="margin: 0 30px;border:1px solid white">注册</a>
</div>

<div id="box1">
    <div align="center " style="height: 80px; line-height: 80px;">
        <h2>门票类型</h2>
    </div>
    <div class="ticket" >
        <img src="static/images/hill/4.jpg"><br>
        <p align="center" style="color: red;">平日普通票(售价100RMB)</p><br>
        <li>仅适用于18-60岁的人士进行上山游玩</li>
        <li>仅限于一人一日入内游玩一次</li>
    </div>

    <div class="ticket">
        <img src="static/images/temple/0.jpg" ><br>
        <p align="center" style="color: red;">指定日普通票(售价130RMB)</p><br>
        <li>仅适用于18-60岁的人士进行上山游玩</li>
        <li>限一人在任一指定日或平日入园一次</li>
    </div>
    <div class="ticket">
        <img src="static/images/hill/7.jpg"><br>
        <p align="center" style="color: red;">平日优惠票(售价80RMB)</p><br>
        <li>适用于未满18周岁或60周岁以上的人士</li>
        <li>适用于所有在校学生（需6周岁以上）</li>
        <li>购票及入园时请出示相关证件</li>
        <li>仅限于一人一日入内游玩一次</li>
    </div>
    <div class="ticket">
        <img src="static/images/temple/2.jpg" ><br>
        <p align="center" style="color: red;">指定日优惠票(售价110RMB)</p><br>
        <li>适用于未满18周岁或60周岁以上的人士</li>
        <li>适用于所有在校学生（需6周岁以上）</li>
        <li>限一人在任一指定日或平日入园一次</li>
        <li>购票及入园时请出示相关证件</li>
    </div>
    <div id="banner">
        <h1 class="hhh" >
					<span style="background-color: lightgray;">
						小Tips
					</span>
        </h1>
        <h3>
            带好证件，缓慢入内
        </h3>
        <p>
            为了方便您快速有序入园，请您依次排队，提前准备好身份证，经过预检、门票查验和安全检查后进入园区。
            门票查验时，持优惠票的游客须同时出示相关享受优惠的有效证件，感谢您的配合。
        </p>
        <h3>
            平安出行，安全游玩
        </h3>
        <p>
            游玩千万条，安全第一条。为了保障您的人身安全，请勿携带宠物、无人机、风筝、对讲机、扩音器等可能妨碍他人参观。
            儿童、行动不便的老人请慎重攀爬。如遇紧急情况，请就近向工作人员寻求帮助。
        </p>
        <h3>
            绿色在心，行动在手
        </h3>
        <p>
            为了使您和他人有一个绿色、美丽的游园环境，请您文明礼貌游玩，
            保护公共设施和环境卫生，爱护花草树木。请勿攀爬、破坏建筑和展品。
        </p>
        </h3>
        <h3>
            上下缆车，切勿嬉闹
        </h3>
        <p>
            为了各位游客的安全，请在缆车附近和乘坐在缆车时切勿嬉闹，儿童须在家长的陪同下上缆车。
        </p>
    </div>
</div>


</body>
</html>
