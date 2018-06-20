<%@ page language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
<head>
    <meta charset="gbk">
    <title>张世丹的博客</title>
    <link href="https://cdn.bootcss.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/base.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">
    <link href="css/m.css" rel="stylesheet">
    <link rel="stylesheet" href="css/gbook.css">
    <script src="js/modernizr.js"></script>
</head>
<body class="body">
<header>
    <div class="logo">Blog</div>
    <%@ include file="nav.jsp" %>
    <script>
        window.onload = function () {
            var obj = null;
            var As = document.getElementById('nav').getElementsByTagName('a');
            obj = As[0];
            for (i = 1; i < As.length; i++) {
                if (window.location.href.indexOf(As[i].href) >= 0)
                    obj = As[i];
            }
            obj.id = 'selected'
        }
    </script>
</header>
<article>
    <%@ include file="side_menu.jsp" %>
    <div class="r_box">
        <div class="form-group">
            <label for="exampleFormControlTextarea1">留言内容</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
        </div>
        <button type="submit" class="btn btn-primary fr">发表</button>
        <ul class="remark-list">
            <li>
                <div>
                    <div style="display: inline-block;">
                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAsUlEQVRYR2OM6Nrzn2EAAeOoAwY8BPq23UNJA6eu3ENJEWY6Sih8dHn05ENIPbo846gDBjwE0BMhehyduPMBJZqZfrzDW2r84xBCkbdQEcCbhjDKgVEH0D0E0BMhegSjpwFSqw30NICuH6McGHXAoAsBQmU/oTSBnqhJTgOjDhgNgdEQoHkIoLcHCNXnhPI9oYIMvT2B0R4YdcCAhwChdj2paYCQeQTbhNTOBejmjToAAM46+AFBkt0DAAAAAElFTkSuQmCC" alt="avatar" style="width: 40px; height: 40px; border-radius: 50%; box-shadow: rgb(204, 204, 204) 1px 1px 3px 0.5px;">
                    </div>
                    <div style="margin: -60px 0px 0px 60px;">
                        <p class="comment-header">
                            <span style="display: inline-block; margin-right: 10px; color: rgb(136, 136, 136); font-size: 14px;">jelech</span>
                            <span style="display: inline-block; margin-right: 10px; color: rgb(187, 187, 187); font-size: 12px; font-family: calligraffittiregular, sans-serif;">2018/6/15 下午8:44:25</span>
                        </p>
                        <p class="comment-body" style="font-size: 14px; color: rgb(52, 73, 94);">
                        <p>。。评论还能用？</p>
                        </p>
                    </div>
                </div>
            </li>
            <li>
                <div>
                    <div style="display: inline-block;">
                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAsUlEQVRYR2OM6Nrzn2EAAeOoAwY8BPq23UNJA6eu3ENJEWY6Sih8dHn05ENIPbo846gDBjwE0BMhehyduPMBJZqZfrzDW2r84xBCkbdQEcCbhjDKgVEH0D0E0BMhegSjpwFSqw30NICuH6McGHXAoAsBQmU/oTSBnqhJTgOjDhgNgdEQoHkIoLcHCNXnhPI9oYIMvT2B0R4YdcCAhwChdj2paYCQeQTbhNTOBejmjToAAM46+AFBkt0DAAAAAElFTkSuQmCC" alt="avatar" style="width: 40px; height: 40px; border-radius: 50%; box-shadow: rgb(204, 204, 204) 1px 1px 3px 0.5px;">
                    </div>
                    <div style="margin: -60px 0px 0px 60px;">
                        <p class="comment-header">
                            <span style="display: inline-block; margin-right: 10px; color: rgb(136, 136, 136); font-size: 14px;">jelech</span>
                            <span style="display: inline-block; margin-right: 10px; color: rgb(187, 187, 187); font-size: 12px; font-family: calligraffittiregular, sans-serif;">2018/6/15 下午8:44:25</span>
                        </p>
                        <p class="comment-body" style="font-size: 14px; color: rgb(52, 73, 94);">
                        <p>。。评论还能用？</p>
                        </p>
                    </div>
                </div>
            </li>
            <li>
                <div>
                    <div style="display: inline-block;">
                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAsUlEQVRYR2OM6Nrzn2EAAeOoAwY8BPq23UNJA6eu3ENJEWY6Sih8dHn05ENIPbo846gDBjwE0BMhehyduPMBJZqZfrzDW2r84xBCkbdQEcCbhjDKgVEH0D0E0BMhegSjpwFSqw30NICuH6McGHXAoAsBQmU/oTSBnqhJTgOjDhgNgdEQoHkIoLcHCNXnhPI9oYIMvT2B0R4YdcCAhwChdj2paYCQeQTbhNTOBejmjToAAM46+AFBkt0DAAAAAElFTkSuQmCC" alt="avatar" style="width: 40px; height: 40px; border-radius: 50%; box-shadow: rgb(204, 204, 204) 1px 1px 3px 0.5px;">
                    </div>
                    <div style="margin: -60px 0px 0px 60px;">
                        <p class="comment-header">
                            <span style="display: inline-block; margin-right: 10px; color: rgb(136, 136, 136); font-size: 14px;">jelech</span>
                            <span style="display: inline-block; margin-right: 10px; color: rgb(187, 187, 187); font-size: 12px; font-family: calligraffittiregular, sans-serif;">2018/6/15 下午8:44:25</span>
                        </p>
                        <p class="comment-body" style="font-size: 14px; color: rgb(52, 73, 94);">
                        <p>。。评论还能用？</p>
                        </p>
                    </div>
                </div>
            </li>
            <li>
                <div>
                    <div style="display: inline-block;">
                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAsUlEQVRYR2OM6Nrzn2EAAeOoAwY8BPq23UNJA6eu3ENJEWY6Sih8dHn05ENIPbo846gDBjwE0BMhehyduPMBJZqZfrzDW2r84xBCkbdQEcCbhjDKgVEH0D0E0BMhegSjpwFSqw30NICuH6McGHXAoAsBQmU/oTSBnqhJTgOjDhgNgdEQoHkIoLcHCNXnhPI9oYIMvT2B0R4YdcCAhwChdj2paYCQeQTbhNTOBejmjToAAM46+AFBkt0DAAAAAElFTkSuQmCC" alt="avatar" style="width: 40px; height: 40px; border-radius: 50%; box-shadow: rgb(204, 204, 204) 1px 1px 3px 0.5px;">
                    </div>
                    <div style="margin: -60px 0px 0px 60px;">
                        <p class="comment-header">
                            <span style="display: inline-block; margin-right: 10px; color: rgb(136, 136, 136); font-size: 14px;">jelech</span>
                            <span style="display: inline-block; margin-right: 10px; color: rgb(187, 187, 187); font-size: 12px; font-family: calligraffittiregular, sans-serif;">2018/6/15 下午8:44:25</span>
                        </p>
                        <p class="comment-body" style="font-size: 14px; color: rgb(52, 73, 94);">
                        <p>。。评论还能用？</p>
                        </p>
                    </div>
                </div>
            </li>
            <li>
                <div>
                    <div style="display: inline-block;">
                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAsUlEQVRYR2OM6Nrzn2EAAeOoAwY8BPq23UNJA6eu3ENJEWY6Sih8dHn05ENIPbo846gDBjwE0BMhehyduPMBJZqZfrzDW2r84xBCkbdQEcCbhjDKgVEH0D0E0BMhegSjpwFSqw30NICuH6McGHXAoAsBQmU/oTSBnqhJTgOjDhgNgdEQoHkIoLcHCNXnhPI9oYIMvT2B0R4YdcCAhwChdj2paYCQeQTbhNTOBejmjToAAM46+AFBkt0DAAAAAElFTkSuQmCC" alt="avatar" style="width: 40px; height: 40px; border-radius: 50%; box-shadow: rgb(204, 204, 204) 1px 1px 3px 0.5px;">
                    </div>
                    <div style="margin: -60px 0px 0px 60px;">
                        <p class="comment-header">
                            <span style="display: inline-block; margin-right: 10px; color: rgb(136, 136, 136); font-size: 14px;">jelech</span>
                            <span style="display: inline-block; margin-right: 10px; color: rgb(187, 187, 187); font-size: 12px; font-family: calligraffittiregular, sans-serif;">2018/6/15 下午8:44:25</span>
                        </p>
                        <p class="comment-body" style="font-size: 14px; color: rgb(52, 73, 94);">
                        <p>。。评论还能用？</p>
                        </p>
                    </div>
                </div>
            </li>
            <li>
                <div>
                    <div style="display: inline-block;">
                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAsUlEQVRYR2OM6Nrzn2EAAeOoAwY8BPq23UNJA6eu3ENJEWY6Sih8dHn05ENIPbo846gDBjwE0BMhehyduPMBJZqZfrzDW2r84xBCkbdQEcCbhjDKgVEH0D0E0BMhegSjpwFSqw30NICuH6McGHXAoAsBQmU/oTSBnqhJTgOjDhgNgdEQoHkIoLcHCNXnhPI9oYIMvT2B0R4YdcCAhwChdj2paYCQeQTbhNTOBejmjToAAM46+AFBkt0DAAAAAElFTkSuQmCC" alt="avatar" style="width: 40px; height: 40px; border-radius: 50%; box-shadow: rgb(204, 204, 204) 1px 1px 3px 0.5px;">
                    </div>
                    <div style="margin: -60px 0px 0px 60px;">
                        <p class="comment-header">
                            <span style="display: inline-block; margin-right: 10px; color: rgb(136, 136, 136); font-size: 14px;">jelech</span>
                            <span style="display: inline-block; margin-right: 10px; color: rgb(187, 187, 187); font-size: 12px; font-family: calligraffittiregular, sans-serif;">2018/6/15 下午8:44:25</span>
                        </p>
                        <p class="comment-body" style="font-size: 14px; color: rgb(52, 73, 94);">
                        <p>。。评论还能用？</p>
                        </p>
                    </div>
                </div>
            </li> <li>
            <div>
                <div style="display: inline-block;">
                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAsUlEQVRYR2OM6Nrzn2EAAeOoAwY8BPq23UNJA6eu3ENJEWY6Sih8dHn05ENIPbo846gDBjwE0BMhehyduPMBJZqZfrzDW2r84xBCkbdQEcCbhjDKgVEH0D0E0BMhegSjpwFSqw30NICuH6McGHXAoAsBQmU/oTSBnqhJTgOjDhgNgdEQoHkIoLcHCNXnhPI9oYIMvT2B0R4YdcCAhwChdj2paYCQeQTbhNTOBejmjToAAM46+AFBkt0DAAAAAElFTkSuQmCC" alt="avatar" style="width: 40px; height: 40px; border-radius: 50%; box-shadow: rgb(204, 204, 204) 1px 1px 3px 0.5px;">
                </div>
                <div style="margin: -60px 0px 0px 60px;">
                    <p class="comment-header">
                        <span style="display: inline-block; margin-right: 10px; color: rgb(136, 136, 136); font-size: 14px;">jelech</span>
                        <span style="display: inline-block; margin-right: 10px; color: rgb(187, 187, 187); font-size: 12px; font-family: calligraffittiregular, sans-serif;">2018/6/15 下午8:44:25</span>
                    </p>
                    <p class="comment-body" style="font-size: 14px; color: rgb(52, 73, 94);">
                    <p>。。评论还能用？</p>
                    </p>
                </div>
            </div>
        </li>
            <li>
                <div>
                    <div style="display: inline-block;">
                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAsUlEQVRYR2OM6Nrzn2EAAeOoAwY8BPq23UNJA6eu3ENJEWY6Sih8dHn05ENIPbo846gDBjwE0BMhehyduPMBJZqZfrzDW2r84xBCkbdQEcCbhjDKgVEH0D0E0BMhegSjpwFSqw30NICuH6McGHXAoAsBQmU/oTSBnqhJTgOjDhgNgdEQoHkIoLcHCNXnhPI9oYIMvT2B0R4YdcCAhwChdj2paYCQeQTbhNTOBejmjToAAM46+AFBkt0DAAAAAElFTkSuQmCC" alt="avatar" style="width: 40px; height: 40px; border-radius: 50%; box-shadow: rgb(204, 204, 204) 1px 1px 3px 0.5px;">
                    </div>
                    <div style="margin: -60px 0px 0px 60px;">
                        <p class="comment-header">
                            <span style="display: inline-block; margin-right: 10px; color: rgb(136, 136, 136); font-size: 14px;">jelech</span>
                            <span style="display: inline-block; margin-right: 10px; color: rgb(187, 187, 187); font-size: 12px; font-family: calligraffittiregular, sans-serif;">2018/6/15 下午8:44:25</span>
                        </p>
                        <p class="comment-body" style="font-size: 14px; color: rgb(52, 73, 94);">
                        <p>。。评论还能用？</p>
                        </p>
                    </div>
                </div>
            </li>

        </ul>
    </div>
</article>
<%@ include file="footer.jsp" %>
</body>

</html>
