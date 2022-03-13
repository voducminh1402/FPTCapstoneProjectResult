<%-- 
    Document   : project-major
    Created on : Feb 8, 2022, 7:08:40 PM
    Author     : HP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FPT Capstone Project Result </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="./assets/css/styles.css">
    <link rel="stylesheet" href="./assets/css/responsive.css">

    <style>
        .home-page-header {
            position: fixed;
            top: 0;
            background-color: var(--main-orange);
        }

        .home-page-header__logo img {
            background-color: var(--main-white);
        }
    </style>
</head>

<body>
    <div class="home-page-wrapper">
        <div class="container-fluid">
            <div class="header-all">
                <div class="header-part">
                    <header class="home-page-header">
                        <a href="./index.jsp" class="home-page-header__logo">
                            <img src="./assets/images/logo.png" alt="">
                            <span class="school-intro">Trường Đại học FPT - Phân hiệu Thành phố Hồ Chí Minh</span>
                        </a>
                    </header>
                    <div class="menu-right">
                                <div class="menu-icon">
                                    <div class="menu-icon-line1"></div>
                                    <div class="menu-icon-line2"></div>
                                    <div class="menu-icon-line3"></div>
                                </div>
                            </div>
                    <div class="menu-detail">
                        <div class="menu-wrap">
                            <div class="menu-close-button">
                                
                            </div>
                            <div class="menu-search">
                                <form action="MainController">
                                    <div class="menu-search-wrap">
                                        <input name="searchValue" type="text" placeholder="Tìm kiếm">
                                        <button name="action" value="Search" type="submit">
                                            <i class="fas fa-search"></i>
                                        </button>
                                    </div>
                                </form>
                            </div>
                            <div class="menu-items">
                                <ul>
                                    <li>
                                        <a href="./index.jsp">Trang chủ</a>
                                    </li>
                                    <li>
                                        <a href="project.jsp">Top Các Đồ Án Xuất Sắc</a>
                                    </li>
                                    <li>
                                        <a href="./project-major.html">Sự Kiện Diễn Ra Sắp Tới</a>
                                    </li>
                                    <li>
                                        <a href="./po-view-post.jsp">Nội dung của bạn</a>
                                    </li>
                                    <li>
                                        <a href="./contact.html">Liên hệ</a>
                                    </li>
                                    <li>
                                        <c:if test="${sessionScope.USER eq null}">
                                            <a href="./login.html">Đăng nhập</a>
                                        </c:if>
                                        <c:if test="${sessionScope.USER ne null}">
                                            <a style="color: var(--main-orange); text-transform: uppercase">
                                                <form action="MainController">
                                                    <button class="button-logout" type="submit" name="action" value="Logout" style="text-transform: uppercase">Đăng xuất</button>
                                                </form>
                                            </a>
                                        </c:if>
                                    </li>
                                </ul>
                            </div>
<!--                            <div class="menu-login">
                                <a href="login.html">LOGIN</a>
                                <div>
                                    <form>
                                        <span>Xin chào ${sessionScope.USER.userName}</span>
                                        <button style="vertical-align: initial" type="submit">LOG OUT</button>
                                    </form>
                                </div>
                            </div>-->
                            <div class="menu-contact">
                                <div>
                                    <a href="tel:02873005588">(028) 73005588</a>
                                </div>
                                <div>
                                    <a href="mailto:daihoc.hcm@fpt.edu.vn">daihoc.hcm@fpt.edu.vn</a>
                                </div>
                                <div>
                                    <a href="">Lô E2a-7, Đường D1, Khu Công nghệ cao, P.Long Thạnh Mỹ, Tp. Thủ Đức, TP.HCM.</a>
                                </div>
                            </div>
                            <div class="menu-footer">
                                <span>Theo dõi ngay:</span> 
                                <span class="menu-footer-link">
                                    <span><i class="fab fa-facebook-f"></i></span>
                                    <span><i class="fas fa-globe"></i></span>
                                    <span><i class="fab fa-twitter"></i></span>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <section class="projects-major">
                <div class="container">
                    <div class="projects-header">
                        <div class="row">
                            <div class="col-md-12">
                                <h1 class="projects-header__content">Chuyên ngành: Kỹ thuật phần mềm</h1>
                            </div>
                        </div>
                    </div>
                    <div class="project-major-content">
                        <div class="row">
                            <c:forEach items="${requestScope.LIST_POSTS}" var="o">
                            <div class="project-detail col-md-4 col-sm-6">
                                <div class="project-content project-content-major">
                                    <div class="project-content-overlay">
                                        <img class="project-content-img project-content-major-img" src=${o.postImage} alt="">
                                        <div class="project-content-text">
                                            <span>Software Engineering</span>
                                            <h5>
                                                <c:if test="${o.isMainPost eq null}">
                                                    <a href="MainController?action=viewPoPost&id=${o.postID}">${o.postTitle}</a>
                                                </c:if>
                                                <c:if test="${o.isMainPost ne null}">
                                                    <a href="MainController?action=DetailProject&id=${o.projectID}">${o.postTitle}</a>
                                                </c:if>
                                            </h5>
                                            <span>View Project</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                    <div class="projects-loading">
                        <a href="#">Thêm nhiều sản phẩm hơn ...</a>
                    </div>
                </div>
            </section>
            <div class="footer">
                <div class="container">
                   <div class="footer-content row">
                        <div class="footer-content-first col-md-4">
                            <h3>Về Đại Học FPT</h3>
                            <p>Đại học FPT hướng tới xây dựng mô hình của một trường Đại học thế hệ mới; gắn liền đào tạo với thực tiễn cuộc sống và nhu cầu nhân lực của đất nước, góp phần đưa Giáo dục Việt Nam tiến tới ngang tầm các nước trên thế giới.</p>
                            <a href="mailto:daihoc.hcm@fpt.edu.vn">daihoc.hcm@fpt.edu.vn</a>
                        </div>
                        <div class="footer-content-detail col-md-2">
                            <span>Liên Kết Hỗ Trợ</span>
                            <div><a href="./index.jsp">Trang chủ</a></div>
                            <div><a href="./project.jsp">Đồ án tốt nghiệp</a></div>
                            <div><a href="./blog-single.html">Bài viết</a></div>
                        </div>
                        <div class="footer-content-detail col-md-2">
                            <span>Tính Năng</span>
                            <div><a href="">Đăng Ký</a></div>
                            <div><a href="">Đăng Nhập</a></div>
                            <div><a href="./contact.html">Liên hệ</a></div>
                        </div>
                        <div class="col-md-4">
                            <span>Theo Dõi Trường Đại Học FPT Tại: </span>
                            <p>Cung cấp năng lực cạnh tranh toàn cầu cho đông đảo người học, góp phần mở mang bờ cõi trí tuệ đất nước</p>
                            <div class="social">
                                <a href="">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                                <a href="">
                                    <i class="fab fa-twitter"></i>
                                </a>
                                <a href="">
                                    <i class="fab fa-instagram"></i>
                                </a>
                            </div>
                        </div>
                   </div>
                </div>
                <div class="footer-end container-fluid">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <p>Trường Đại học FPT Phân hiệu Thành phố Hồ Chí Minh</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>    
    <div class="overlay-page" id="overlay-page"></div>
    <div id="loader" class="loader">
        <div class="loading">
            <div class="loading__letter">Đ</div>
            <div class="loading__letter">ạ</div>
            <div class="loading__letter">i</div>
            <div class="loading__letter">h</div>
            <div class="loading__letter">ọ</div>
            <div class="loading__letter">c</div>
            <div class="loading__letter">F</div>
            <div class="loading__letter">P</div>
            <div class="loading__letter">T</div>
            <div class="loading__letter">.</div>
            <div class="loading__letter">.</div>
            <div class="loading__letter">.</div>
          </div>
    </div>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <script src="./assets/js/app.js"></script>
</body>

</html>
