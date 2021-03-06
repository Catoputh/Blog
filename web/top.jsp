<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<header class="header">
    <nav class="navbar navbar-default" id="navbar">
        <div class="container">
            <div class="header-topbar hidden-xs link-border">
                <ul class="site-nav topmenu">
                    <C:choose>
                        <C:when test="${empty sessionScope.user}">
                            <li><a href="login.jsp" >登陆</a></li>
                        </C:when>
                        <C:otherwise>
                            <li>欢迎你:<span style="text-shadow: 0px 0px 5px darkolivegreen;color: white"><a href="admin/profile.jsp">${sessionScope.user.nickname}</a></span><img style="width: 20px;height: 20px;border-radius: 50%;border: 1px solid gray;" src='${sessionScope.user.image}' /></li><li><a style="color:green;font-size: 12px;" href="UserServlet?method=logoff" >安全退出</a></li>
                        </C:otherwise>
                    </C:choose>
                    <li><a href="#" >标签云</a></li>
                    <li><a href="#" rel="nofollow" >读者墙</a></li>
                    <li><a href="#" title="RSS订阅" >
                        <i class="fa fa-rss">
                        </i> RSS订阅
                    </a></li>
                </ul>
                勤记录 懂分享</div>
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#header-navbar" aria-expanded="false"> <span class="sr-only"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                <h1 class="logo hvr-bounce-in"><a href="#" title="木庄网络博客"><img src="images/201610171329086541.png" alt="木庄网络博客"></a></h1>
            </div>
            <div class="collapse navbar-collapse" id="header-navbar">
                <form class="navbar-form visible-xs" action="/Search" method="post">
                    <div class="input-group">
                        <input type="text" name="keyword" class="form-control" placeholder="请输入关键字" maxlength="20" autocomplete="off">
                        <span class="input-group-btn">
		<button class="btn btn-default btn-search" name="search" type="submit">搜索</button>
		</span> </div>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <li><a data-cont="木庄网络博客" title="木庄网络博客" href="index.jsp">首页</a></li>
                    <li><a data-cont="列表页" title="列表页" href="list.jsp">列表页</a></li>
                    <li><a data-cont="详细页" title="详细页" href="show.jsp">详细页</a></li>
                    <li><a data-cont="404" title="404" href="404.jsp">404</a></li>
                    <li><a data-cont="MZ-NetBolg主题" title="MZ-NetBolg主题" href="#" >MZ-NetBolg主题</a></li>
                    <li><a data-cont="IT技术笔记" title="IT技术笔记" href="#" >IT技术笔记</a></li>
                    <li><a data-cont="源码分享" title="源码分享" href="#" >源码分享</a></li>
                    <li><a data-cont="靠谱网赚" title="靠谱网赚" href="#" >靠谱网赚</a></li>
                    <li><a data-cont="资讯分享" title="资讯分享" href="file.jsp" >文件下载</a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>