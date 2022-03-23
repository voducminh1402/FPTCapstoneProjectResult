<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>FPT Capstone Project Result</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
              integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="./assets/css/mod-project.css">
        <link rel="stylesheet" href="./assets/css/styles.css">
        <link rel="stylesheet" href="./assets/css/responsive.css">
        <link rel="stylesheet" href="assets/css/mod-request.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="assets/css/mod-project.css">

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
                                            <input class="mod-menu-input" type="text" placeholder="Tìm kiếm...">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="right-side-info">
                                        <div class="info-login">
                                            <img src="https://cdn2.mhpbooks.com/2014/03/test_ttp_big.jpg" alt="">
                                            <span>Xin chào, Moderator 1 <i class="fa fa-caret-down"
                                                                           aria-hidden="true"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
                <div class="content-detail">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <h2>Quản lí bài viết của sinh viên</h2>
                                <div class="direct-link">
                                    <i class="fas fa-home"></i>
                                    <i class="fas fa-chevron-right"></i>
                                    <span>Quản lí bài viết của sinh viên</span>
                                </div>
                            </div>
                        </div>
                        <div class="content-filter">
                            <div class="row">
                                <div class="col-md-8 col-sm-12">
                                    <div class="filter">
                                        <span>Hiển thị</span>
                                        <form action="MainController">
                                            <select name="status" id="">
                                                <option value="0">Tất cả trạng thái</option>
                                                <option value="1">Đã duyệt</option>
                                                <option value="2">Đang chờ xét duyệt</option>
                                                <option value="3">Đã từ chối</option>
                                            </select>
                                            <button name="action" value="filterPostByStatus">Tìm kiếm</button>
                                        </form>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-12">
                                    <div class="manage-project">
                                        <form action="MainController">
                                            <div class="menu-search menu-search-project">
                                                <button name="action" value="SearchPoPostByName"><i class="fa fa-search" aria-hidden="true"></i></button>
                                                <input name="name" class="mod-menu-input" type="text" placeholder="Tìm kiếm bài đăng...">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="content-table2">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Tên người dùng</th>
                                            <th>Email</th>
                                            <th>Tiêu đề bài đăng</th>
                                            <th>Ngày yêu cầu</th>
                                            <th></th>
                                            <th>Trạng thái</th>
                                            <th></th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:if test="${requestScope.POPOST_LIST == null}">
                                            <c:redirect url="MainController?action=ViewModRequestPage"></c:redirect>
                                        </c:if>
                                        <c:forEach items="${requestScope.POPOST_LIST}" var="o" varStatus="counter">
                                            <c:if test="${o.postStatusID eq 2}">
                                                <tr>
                                                    <td>${counter.count}</td>
                                                    <td>${o.userName}</td>
                                                    <td>${o.userEmail}</td>
                                                    <td>
                                                        ${o.postName}
                                                    </td>
                                                    <td>${o.postDate}</td>
                                                    <td></td>
                                                    <td>
                                                        <span style="color: darkkhaki">
                                                            Đang chờ
                                                        </span>
                                                    </td>
                                                    <td>
                                                    </td>
                                                    <td class="last-type__menu">
                                                        <i class="fas fa-ellipsis-h more-choice__dot"></i>
                                                        <div class="more-choice__menu">
                                                            <div class="more-choice__item">
                                                                <a href="MainController?action=ViewPoPostDetail&id=${o.postID}">
                                                                    <span>Xem chi tiết</span>
                                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                                </a>
                                                            </div>
                                                            <div class="more-choice__item">
                                                                <a href="MainController?action=DeletePoPost&id=${o.postID}">
                                                                    <span>Xóa</span>
                                                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:if>
                                            <c:if test="${o.postStatusID eq 1}">
                                                <tr>
                                                    <td>${counter.count}</td>
                                                    <td>${o.userName}</td>
                                                    <td>${o.userEmail}</td>
                                                    <td>
                                                        ${o.postName}
                                                    </td>
                                                    <td>${o.postDate}</td>
                                                    <td></td>
                                                    <td>
                                                        <span style="color: green">
                                                            Đã được duyệt
                                                        </span>
                                                    </td>
                                                    <td>
                                                    </td>
                                                    <td class="last-type__menu">
                                                        <i class="fas fa-ellipsis-h more-choice__dot"></i>
                                                        <div class="more-choice__menu">
                                                            <div class="more-choice__item">
                                                                <a href="MainController?action=EditPoPost&id=${o.postID}">
                                                                    <span>Xem chi tiết</span>
                                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                                </a>
                                                            </div>
                                                            <div class="more-choice__item">
                                                                <a href="MainController?action=EditPoPost&id=${o.postID}">
                                                                    <span>Chỉnh sửa</span>
                                                                    <i class="fa fa-pencil" aria-hidden="true"></i>
                                                                </a>
                                                            </div>
                                                            <div class="more-choice__item">
                                                                <a href="MainController?action=DeletePoPost&id=${o.postID}">
                                                                    <span>Xóa</span>
                                                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:if>
                                            <c:if test="${o.postStatusID eq 3}">
                                                <tr>
                                                    <td>${counter.count}</td>
                                                    <td>${o.userName}</td>
                                                    <td>${o.userEmail}</td>
                                                    <td>
                                                        ${o.postName}
                                                    </td>
                                                    <td>${o.postDate}</td>
                                                    <td></td>
                                                    <td>
                                                        <span style="color: red">
                                                            Đã từ chối
                                                        </span>
                                                    </td>
                                                    <td>
                                                    </td>
                                                    <td class="last-type__menu">
                                                        <i class="fas fa-ellipsis-h more-choice__dot"></i>
                                                        <div class="more-choice__menu">
                                                            <div class="more-choice__item">
                                                                <a href="MainController?action=EditPoPost&id=${o.postID}">
                                                                    <span>Xem chi tiết</span>
                                                                    <i class="fa fa-eye" aria-hidden="true"></i>
                                                                </a>
                                                            </div>
                                                            <div class="more-choice__item">
                                                                <a href="MainController?action=EditPoPost&id=${o.postID}">
                                                                    <span>Chỉnh sửa</span>
                                                                    <i class="fa fa-pencil" aria-hidden="true"></i>
                                                                </a>
                                                            </div>
                                                            <div class="more-choice__item">
                                                                <a href="MainController?action=DeletePoPost&id=${o.postID}">
                                                                    <span>Xóa</span>
                                                                    <i class="fa fa-trash" aria-hidden="true"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:if>
                                        </c:forEach>                                   
                                    </tbody>
                                </table>

                            </div>
                        </div>
                        <div class="content-project-pagination">
                            <div class="pagination">
                                <span><i class="fas fa-chevron-left"></i></span>
                                <span class="active-pagination">1</span>
                                <span>2</span>
                                <span>3</span>
                                <span>...</span>
                                <span>10</span>
                                <span><i class="fas fa-chevron-right"></i></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="overlay-page-mod" id="overlay-page overlay-page-mod"></div>

        <script src="https://cdn.tiny.cloud/1/m862mtwmvofelufcxf6kpr7rr30u4mh13bb09ks2g0xg8gdf/tinymce/5/tinymce.min.js"
        referrerpolicy="origin"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
                integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
                integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
                integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
        <script src="./assets/js/app.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $('#sidebarCollapse').on('click', function () {
                    $('#sidebar').toggleClass('active');
                });
            });
        </script>

        <script>
            tinymce.init({
                selector: 'textarea',
                plugins: 'advlist autolink lists link image charmap print preview hr anchor pagebreak',
                toolbar_mode: 'floating',
                content_css: "./assets/css/mod-project.css"
            });
        </script>
        <!-- dropdown  -->
        <script>
            /* When the user clicks on the button, 
             toggle between hiding and showing the dropdown content */
            function myFunction() {
                document.getElementById("myDropdown").classList.toggle("show");
            }

            // Close the dropdown if the user clicks outside of it
            window.onclick = function (event) {
                if (!event.target.matches('.dropbtn')) {
                    var dropdowns = document.getElementsByClassName("dropdown-content");
                    var i;
                    for (i = 0; i < dropdowns.length; i++) {
                        var openDropdown = dropdowns[i];
                        if (openDropdown.classList.contains('show')) {
                            openDropdown.classList.remove('show');
                        }
                    }
                }
            }
        </script>

    </body>

</html>