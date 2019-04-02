<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
<%--pageEncoding="UTF-8"%>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>mazhiqian</title>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-responsive.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fullcalendar.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-style.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/matrix-media.css"/>
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.gritter.css"/>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>

<!--Header-part-->
<div id="header">
    <h1><a href="dashboard.html">Matrix Admin</a></h1>
</div>
<!--close-Header-part-->


<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
    <ul class="nav">
        <li class="dropdown" id="profile-messages"><a title="" href="#" data-toggle="dropdown"
                                                      data-target="#profile-messages" class="dropdown-toggle"><i
                class="icon icon-user"></i> <span class="text">Welcome User</span><b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
                <li class="divider"></li>
                <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
                <li class="divider"></li>
                <li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
            </ul>
        </li>
        <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages"
                                                   class="dropdown-toggle"><i class="icon icon-envelope"></i> <span
                class="text">Messages</span> <span class="label label-important">5</span> <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> new message</a></li>
                <li class="divider"></li>
                <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> inbox</a></li>
                <li class="divider"></li>
                <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> outbox</a></li>
                <li class="divider"></li>
                <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> trash</a></li>
            </ul>
        </li>
        <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
        <li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a>
        </li>
    </ul>
</div>
<!--close-top-Header-menu-->
<!--start-top-serch-->
<div id="search">
    <input type="text" placeholder="搜索用户"/>
    <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch-->
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
    <ul>
        <li class="active"><a href="${pageContext.request.contextPath}/user/list"><i class="icon icon-home"></i> <span>用户列表</span></a></li>
        <li><a href="${pageContext.request.contextPath}/article/getArticleInfo"><i class="icon icon-inbox"></i> <span>文章列表</span></a></li>
        <li><a href="widgets.html"><i class="icon icon-inbox"></i> <span>Widgets</span></a></li>
        <li><a href="tables.html"><i class="icon icon-th"></i> <span>Tables</span></a></li>
        <li><a href="grid.html"><i class="icon icon-fullscreen"></i> <span>Full width</span></a></li>
        <li class="submenu"><a href="#"><i class="icon icon-th-list"></i> <span>Forms</span> <span
                class="label label-important">3</span></a>
            <ul>
                <li><a href="form-common.html">Basic Form</a></li>
                <li><a href="form-validation.html">Form with Validation</a></li>
                <li><a href="form-wizard.html">Form with Wizard</a></li>
            </ul>
        </li>
        <li><a href="buttons.html"><i class="icon icon-tint"></i> <span>Buttons &amp; icons</span></a></li>
        <li><a href="interface.html"><i class="icon icon-pencil"></i> <span>Eelements</span></a></li>
        <li class="submenu"><a href="#"><i class="icon icon-file"></i> <span>Addons</span> <span
                class="label label-important">5</span></a>
            <ul>
                <li><a href="index2.html">Dashboard2</a></li>
                <li><a href="gallery.html">Gallery</a></li>
                <li><a href="calendar.html">Calendar</a></li>
                <li><a href="invoice.html">Invoice</a></li>
                <li><a href="chat.html">Chat option</a></li>
            </ul>
        </li>
        <li class="submenu"><a href="#"><i class="icon icon-info-sign"></i> <span>Error</span> <span
                class="label label-important">4</span></a>
            <ul>
                <li><a href="error403.html">Error 403</a></li>
                <li><a href="error404.html">Error 404</a></li>
                <li><a href="error405.html">Error 405</a></li>
                <li><a href="error500.html">Error 500</a></li>
            </ul>
        </li>
        <li class="content"><span>Monthly Bandwidth Transfer</span>
            <div class="progress progress-mini progress-danger active progress-striped">
                <div style="width: 77%;" class="bar"></div>
            </div>
            <span class="percent">77%</span>
            <div class="stat">21419.94 / 14000 MB</div>
        </li>
        <li class="content"><span>Disk Space Usage</span>
            <div class="progress progress-mini active progress-striped">
                <div style="width: 87%;" class="bar"></div>
            </div>
            <span class="percent">87%</span>
            <div class="stat">604.44 / 4000 MB</div>
        </li>
    </ul>
</div>
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
    <!--breadcrumbs-->
    <div id="content-header">
        <div id="breadcrumb"><a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i>
            Home</a></div>
    </div>
    <!--End-breadcrumbs-->

    <!--Action boxes-->
    <div class="container-fluid">
        <div class="widget-box">
            <div class="widget-title"><span class="icon"> <i class="icon-th"></i> </span>
                <h5>用户列表</h5>&nbsp;&nbsp;<h5><a href="#" id="insert">新增</a></h5>
            </div>
            <div class="widget-content nopadding">
                <table class="table table-bordered table-striped">
                    <thead>
                    <tr>
                        <th>编号</th>
                        <th>用户名</th>
                        <th>密码</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${userList}" var="userInfo">
                        <tr class="odd gradeX">
                            <td><span name="userid">${userInfo.userId}</span></td>
                            <td id="username">${userInfo.userName}</td>
                            <td id="password">${userInfo.password}</td>
                            <td>
                                <a href="#" class="update" data-id="${userInfo.userId}">修改</a>&nbsp;&nbsp;
                                <a href="#" class="delete" data-id="${userInfo.userId}">删除</a>
                                <a href="#" class="details" data-id="${userInfo.userId}">查看发布的文章</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!--end-main-container-part-->

<!--Footer-part-->

<div class="row-fluid">
    <div id="footer" class="span12"> 2013 &copy; Matrix Admin. Brought to you by <a href="http://themedesigner.in/">Themedesigner.in</a>
    </div>
</div>

<!--end-Footer-part-->
<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/dialog.js"></script>


<script type="text/javascript">
    (function () {
        //删除
        $(".delete").click(function () {
            //发送ajax请求
            $.ajax({
                type: "delete",//控制层delete类型就为delete
                url: "${pageContext.request.contextPath}/user/deleteUserInfo/" + $(this).data("id"),
                // data: {userId: $(this).data("id")},
                dataType: "json",
                success: function (data) {
                    //数据处理
                    if (data == 1) {
                        alert("删除成功");
                        window.location.reload();
                    } else {
                        alert("删除失败");
                    }
                }, 
                error:function () {
                    
                }
            });
        })

        $(".update").on('click', function () {
            var d = dialog({
                title: '修改用户信息',
                width: 300,
                lock: true,
                content: '账号：' + '<input type="text" name="userName" id="userName" autofocus="autofocus"  />' + '<br>' +
                    '<br>' + '密码：' + '<input type="text" name="password" id="pwd" />',
                okValue: '确 定',
                ok: function () {
                    $.ajax({
                        type: "post",
                        url: "${pageContext.request.contextPath}/user/updateUserInfo",
                        data: {userId: $(this).data("id"), userName: $("#userName").val(), password: $("#pwd").val()},
//                        dataType: "json",
                        success: function (data) {
                            if (data == 1) {
                                alert("修改成功");
                                window.location.reload();
                            }
                        },
                        error: function (e) {

                        }
                    });

                },
                cancelValue: '取消',
                cancel: function () {
                }
            });
            d.show();
        });

        $("#insert").on('click', function () {
            var d = dialog({
                title: '新增',
                lock: true,
                background: '#600', // 背景色
                opacity: 0.87,	// 透明度
                width: 300,
                content: '账号：' + '<input type="text" name="userName" id="userName" autofocus="autofocus"  />' + '<br>' +
                    '<br>' + '密码：' + '<input type="text" name="password" id="pwd" />',
                okValue: '确 定',
                ok: function () {
                    $.ajax({
                        type: "POST",
                        url: "${pageContext.request.contextPath}/user/insertUserInfo",
                        data: {userName: $("#userName").val(), password: $("#pwd").val()},
                        success: function (data) {
                            if (data == 1) {
                                alert("新增成功");
                                window.location.reload();
                            }
                        },
                        error: function (e) {

                        }
                    });

                },
                cancelValue: '取消',
                cancel: function () {

                }
            });
            d.show();
        });
        <%--//作者的所有文章--%>
        $(".details").on('click', function () {
            window.location.href = "${pageContext.request.contextPath}/user/getUserInfoAndArticles?userId=" + $(this).data("id");
        });

    })();

</script>
</body>
</html>
