<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="referrer" content="no-referrer">
        <title>FPT Capstone Project Result</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.css" integrity="sha512-xmGTNt20S0t62wHLmQec2DauG9T+owP9e6VU8GigI0anN7OXLip9i7IwEhelasml2osdxX71XcYm6BQunTQeQg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="./assets/css/mod-project.css">    
        <link rel="stylesheet" href="./assets/css/mod-post.css">    
        <link rel="stylesheet" href="./assets/css/styles.css">
        <link rel="stylesheet" href="./assets/css/responsive.css">
    </head>
    <body>
        <div class="wrapper">
            <!-- Sidebar  -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3>FPT University</h3>
                    <strong>FU</strong>
                </div>
                <ul class="list-unstyled components">
                    <li class="nav-item active">
                        <a class="nav-link" href="mod-index.jsp">
                            <i class="fas fa-fw fa-tachometer-alt"></i>
                            <span>Trang chủ</span></a>
                    </li>
                    <hr class="sidebar-divider">

                    <li class="dropdown">
                        <a href="admin.jsp" data-toggle="dropdown" aria-expanded="false" data-target="#homeSubmenu">
                            <i class="fas fa-home"></i> Quản Lí Người Dùng
                        </a>
                    </li>

                    <hr class="sidebar-divider">

                    <li>
                        <a href="mod-project.jsp" data-toggle="collapse" aria-expanded="false">
                            <i class="fas fa-briefcase"></i> Quản Lí Đồ Án
                        </a>
                    </li>
                    <li>
                        <a href="mod-team.jsp" data-toggle="collapse" aria-expanded="false">
                            <i class="fas fa-briefcase"></i> Quản Lí Nhóm Đồ Án
                        </a>
                    </li>
                    <li>
                        <a href="student.jsp" data-toggle="collapse" aria-expanded="false">
                            <i class="fas fa-briefcase"></i> Quản lí Sinh Viên
                        </a>
                    </li>
                    <li>
                        <a href="instructor.jsp" data-toggle="collapse" aria-expanded="false">
                            <i class="fas fa-briefcase"></i> Quản Lí Giảng Viên
                        </a>
                    </li>
                    <li>
                        <a href="mod-semester.jsp" data-toggle="collapse" aria-expanded="false">
                            <i class="fas fa-briefcase"></i> Quản Lí Học Kỳ
                        </a>
                    </li>

                    <hr class="sidebar-divider">

                    <li>
                        <a href="mod-post.jsp" data-toggle="collapse" aria-expanded="false">
                            <i class="fas fa-briefcase"></i> Bài Đăng Chính
                        </a>
                        <a href="mod-request.jsp" data-toggle="collapse" aria-expanded="false">
                            <i class="fas fa-copy"></i> Bài Viết Của Sinh Viên
                        </a>
                    </li>

                </ul>

            </nav>

            <!-- Page Content  -->
            <div id="content">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="container-fluid">
                        <div class="mod-header">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="left-side-menu">
                                        <button type="button" id="sidebarCollapse" class="btn btn-info">
                                            <i class="fas fa-align-left"></i>
                                        </button>
                                        <div class="menu-search">
                                            <button><i class="fa fa-search" aria-hidden="true"></i></button>
                                            <input class="mod-menu-input" type="text" placeholder="Tìm Kiếm...">
                                        </div>
                                    </div>   
                                </div>
                                <div class="col-md-6">
                                    <div class="right-side-info">
                                        <div class="info-login">
                                            <img src="https://cdn2.mhpbooks.com/2014/03/test_ttp_big.jpg" alt="">
                                            <span>Xin Chào, Moderator 1 <i class="fa fa-caret-down" aria-hidden="true"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>


                <div class="content-detail content-post add-post">
                    <h2>Thêm Đồ Án Tốt Nghiệp</h2>

                    <form action="MainController" method="POST">
                        <label for="">Tên Đồ Án</label><br>
                        <input type="text" name="project-name" required>
                        <c:if test="${requestScope.TEAM_LIST == null}">
                            <c:redirect url="MainController?action=GetListProject&page=add-project"></c:redirect>
                        </c:if>
                        <label for="">Nhóm Thực Hiện</label><br>
                        <select name="team-id" id="" required>
                            <option disabled selected>Lựa Chọn Nhóm Thực Hiện Đồ Án</option>
                            <c:forEach items="${requestScope.TEAM_LIST}" var="o">
                                <option value="${o.teamID}">${o.teamName}</option>
                            </c:forEach>
                        </select>
                        <br>
                        <c:if test="${requestScope.TEAM_LIST == null}">
                            <c:redirect url="MainController?action=GetListProject&page=add-project"></c:redirect>
                        </c:if>
                        <label for="">Giảng Viên Hướng Dẫn</label><br>
                        <select name="instructor-id" id="" required>
                            <option disabled selected>Lựa Chọn Giảng Viên Hướng Dẫn Cho Đồ Án</option>
                            <c:forEach items="${requestScope.INSTRUCTOR_LIST}" var="o">
                                <option value="${o.instructorID}">${o.instructorName}</option>
                            </c:forEach>
                        </select>
                        <br>
                        <c:if test="${requestScope.SEMESTER_LIST == null}">
                            <c:redirect url="MainController?action=GetListProject&page=add-project"></c:redirect>
                        </c:if>
                        <label for="">Học Kì</label><br>
                        <select name="semester-id" id="" required>
                            <option disabled selected>Lựa Chọn Kì Cho Đồ Án</option>
                            <c:forEach items="${requestScope.SEMESTER_LIST}" var="o">
                                <option value="${o.semesterID}">${o.semesterName}</option>
                            </c:forEach>
                        </select>
                        <br>
                        <label for="">Điểm Số Đồ Án</label><br>
                        <input type="number" step="0.05" min="0" max="10" name="project-score">
                        <label for="">Ảnh Bìa Đồ Án</label>
                        <div class="project-add-upload__image post-upload__image">
                            <label style="margin: 0;" for="file"><i class="fas fa-cloud-upload-alt"></i>Tải Ảnh Lên</label>
                            <input type="file" name="file" id="file" placeholder="Tải Ảnh Lên" required><br>
                            <input type="hidden" id="mod-post__preview-input" name="project-image">
                            <a id="mod-post__preview-link" href="">
                                <img id="mod-post__preview-image" src="" alt="">
                            </a>
                        </div>

                        <label for="">Thêm Tag Của Bài Viết</label><br>
                        <input id="post-tag" data-role="tagsinput" type="text" required>
                        <input id="post-tag-hidden" type="hidden" name="post-tag">

                        <label for="">Nội Dung Bài Viết</label><br>
                        <textarea id="editor" cols="30" rows="50" required>
                        </textarea>
                        <input id="project-description" type="hidden" name="project-description"/>
                        <br>
                        <div class="add-project-submit">
                            <button type="submit" name="action" value="AddProject">Lưu</button>
                            <button class="cancel-add-btn" type="button">Hủy Bỏ</button>
                        </div>
                    </form>
                </div>

                <script src="./ckeditor/ckeditor.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>    
                <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-tagsinput/0.8.0/bootstrap-tagsinput.min.js" integrity="sha512-9UR1ynHntZdqHnwXKTaOm1s6V9fExqejKvg5XMawEMToW4sSw+3jtLrYfZPijvnwnnE8Uol1O9BcAskoxgec+g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
                <script src="./assets/js/app.js"></script>

                <script type="text/javascript">
                    $(document).ready(function () {
                        $('#sidebarCollapse').on('click', function () {
                            $('#sidebar').toggleClass('active');
                        });
                    });
                </script>
                <script>
                    CKEDITOR.plugins.addExternal('imgur', '/FUCapstoneResult/ckeditor/plugins/imgur/', 'plugin.js');
                    var editor = CKEDITOR.replace('editor', {
                        extraPlugins: 'imgur'
                    });
                    CKEDITOR.editorConfig = function (config) {
                        config.extraPlugins = 'imgur';
                        config.imgurClientID = '424e57033a8d4ea';
                    };
                    editor.on('change', function (evt) {
                        var data = CKEDITOR.instances.editor.getData();
                        document.getElementById("project-description").value = data;
                        console.log(data)
                    });
                </script>
                <script>
                    $("document").ready(function () {
                        $("input[type=file]").on("change", function () {
                            var $files = $(this).get(0).files;
                            if ($files.length) {
                                if ($files[0].size > $(this).data("max-size") * 1024) {
                                    console.log("Vui lòng chọn file có dung lượng nhỏ hơn!");
                                    return false;
                                }
                                console.log("Đang upload hình ảnh lên imgur...");
                                var apiUrl = "https://api.imgur.com/3/image";
                                var apiKey = "dcd0ee22791c49d";
                                var settings = {
                                    async: false,
                                    crossDomain: true,
                                    processData: false,
                                    contentType: false,
                                    type: "POST",
                                    url: apiUrl,
                                    headers: {
                                        Authorization: "Client-ID " + apiKey,
                                        Accept: "application/json",
                                    },
                                    mimeType: "multipart/form-data",
                                };
                                var formData = new FormData();
                                formData.append("image", $files[0]);
                                settings.data = formData;
                                $.ajax(settings).done(function (response) {
                                    console.log(response);
                                    var obj = JSON.parse(response);
                                    document.getElementById("mod-post__preview-link").src = obj.data.link;
                                    document.getElementById("mod-post__preview-image").src = obj.data.link;
                                    document.getElementById("mod-post__preview-input").value = obj.data.link;
                                    obj.data.link;
                                });
                            }
                        });
                    });
                </script>
                <script>
                    $(function () {
                        $('input, select').on('change', function (event) {
                            var $element = $(event.target),
                                    $container = $element.closest('.example');
                            if (!$element.data('tagsinput'))
                                return;
                            var val = $element.val();
                            if (val === null) {
                                val = "null";
                            } else {
                                document.getElementById('post-tag-hidden').value = val;
                            }
                            $('code', $('pre.val', $container)).html(($.isArray(val) ? JSON.stringify(val) : "\"" + val.replace('"', '\\"') + "\""));
                            $('code', $('pre.items', $container)).html(JSON.stringify($element.tagsinput('items')));
                        }).trigger('change');
                    });
                </script>
                </body>
                </html>