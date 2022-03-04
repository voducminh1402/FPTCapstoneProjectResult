<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FPT Capstone Project Result </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="./assets/css/styles.css">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</head>

<body>
    <div class="header-all">
        <div class="header-part">
            <header class="home-page-header">
                <a href="./index.html" class="home-page-header__logo">
                    <img src="./assets/images/logo.png" alt="">
                    <span class="school-intro">Trường đại học FPT - Phân hiệu thành phố Hồ Chí Minh</span>
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
                        <form action="">
                            <div class="menu-search-wrap">
                                <input type="text" placeholder="Tìm kiếm">
                                <button type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                            </div>
                        </form>
                    </div>
                    <div class="menu-items">
                        <ul>
                            <li>
                                <a href="./index.html">Trang chủ</a>
                            </li>
                            <li>
                                <a href="projects.html">Đồ án tốt nghiệp</a>
                            </li>
                            <li>
                                <a href="./project-major.html">Đồ án chuyên ngành</a>
                            </li>
                            <li>
                                <a href="./blog-single.html">Bài viết</a>
                            </li>
                            <li>
                                <a href="./contact.html">Liên hệ</a>
                            </li>
                        </ul>
                    </div>
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
    <section class="blog-single">
        <div class="container container-fluid">
            <div class="tip-header">
                <div class="row tip-row">
                    <div class="col-md-12" style="padding-bottom: 50px; padding-top: 50px;">
                        <h1 class="projects-header_content" style="font-weight:700">Những mẹo khi làm đồ án tốt nghiệp
                        </h1>
                    </div>
                </div>
            </div>
            <div class="row tip-row">
                <div class="left-column col-md-8 pr-md-4">
                    <article class="tip-content">
                        <div class="tip-content_thumbnail" style="padding-bottom: 15px;">
                            <img src="${requestScope.POST.postImage}"
                                alt="thumbnail">
                        </div>
                        <div class="tip-content__title">
                            <h1 style="font-weight:700">${requestScope.POST.postTitle}</h1>
                        </div>
                        <div class="tip-content__info" style="padding-bottom: 15px;">
                            <div class="tip-author" style="display: inline-block; padding-right: 20px">
                                <i class="bi bi-person">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                        class="bi bi-person" viewBox="0 0 16 16">
                                        <path
                                            d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z" />
                                    </svg>
                                </i>
                                <span>${requestScope.STUDENT_NAME}</span>
                            </div>
                            <div class="tip-date" style="display: inline-block; padding-right: 20px">
                                <i class="bi bi-calendar-event">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                        class="bi bi-calendar-event" viewBox="0 0 16 16">
                                        <path
                                            d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z" />
                                        <path
                                            d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
                                    </svg>
                                </i>
                                <span>${requestScope.POST.postDate}</span>
                            </div>
                            <div class="tip-interaction" style="display: inline-block">
                                <i class="bi bi-chat-right-dots">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                        class="bi bi-chat-right-dots" viewBox="0 0 16 16">
                                        <path
                                            d="M2 1a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h9.586a2 2 0 0 1 1.414.586l2 2V2a1 1 0 0 0-1-1H2zm12-1a2 2 0 0 1 2 2v12.793a.5.5 0 0 1-.854.353l-2.853-2.853a1 1 0 0 0-.707-.293H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12z" />
                                        <path
                                            d="M5 6a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
                                    </svg>
                                </i>
                                <span>05 bình luận</span>
                            </div>
                        </div>
                        <div class="tip-content__body">
                            <p>
                                ${requestScope.POST.postContent}
                            </p>
                        </div>
                    </article>
                    <div class="tip-comment">
                        <div class="tip-comment__header">
                            <h5 class="comment-num">05 bình luận</h5>
                            <ul class="tip-comment-list">
                                <li class="tip-comment-item">
                                    <div class="tip-comment__ava">
                                        <img src="http://on3-step.com/tf/homekins/html/white/assets/img/blog/avatar.jpg"
                                            alt="">
                                    </div>
                                    <div class="tip-comment__info">
                                        <span class="c-name">Trung Nguyên</span>
                                        <span class="c-date">09/10/2020</span>
                                    </div>
                                    <div class="tip-comment__content">
                                        <p>
                                            This is my comments
                                        </p>
                                    </div>
                                    <div class="tip-comment__reply">
                                        <i class="bi bi-reply-fill">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-reply-fill" viewBox="0 0 16 16">
                                                <path
                                                    d="M5.921 11.9 1.353 8.62a.719.719 0 0 1 0-1.238L5.921 4.1A.716.716 0 0 1 7 4.719V6c1.5 0 6 0 7 8-2.5-4.5-7-4-7-4v1.281c0 .56-.606.898-1.079.62z" />
                                            </svg>
                                        </i>
                                        <span>reply</span>
                                    </div>
                                </li>
                                <li class="tip-comment-item">
                                    <div class="tip-comment__ava">
                                        <img src="http://on3-step.com/tf/homekins/html/white/assets/img/blog/avatar.jpg"
                                            alt="">
                                    </div>
                                    <div class="tip-comment__info">
                                        <span class="c-name">Võ Đức Minh</span>
                                        <span class="c-date">09/10/2020</span>
                                    </div>
                                    <div class="tip-comment__content">
                                        <p>
                                            This is my comments
                                        </p>
                                    </div>
                                    <div class="tip-comment__reply">
                                        <i class="bi bi-reply-fill">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-reply-fill" viewBox="0 0 16 16">
                                                <path
                                                    d="M5.921 11.9 1.353 8.62a.719.719 0 0 1 0-1.238L5.921 4.1A.716.716 0 0 1 7 4.719V6c1.5 0 6 0 7 8-2.5-4.5-7-4-7-4v1.281c0 .56-.606.898-1.079.62z" />
                                            </svg>
                                        </i>
                                        <span>reply</span>
                                    </div>
                                </li>
                                <li class="tip-comment-item">
                                    <div class="tip-comment__ava">
                                        <img src="http://on3-step.com/tf/homekins/html/white/assets/img/blog/avatar.jpg"
                                            alt="">
                                    </div>
                                    <div class="tip-comment__info">
                                        <span class="c-name">Lê Hồng Anh</span>
                                        <span class="c-date">09/10/2020</span>
                                    </div>
                                    <div class="tip-comment__content">
                                        <p>
                                            This is my comments
                                        </p>
                                    </div>
                                    <div class="tip-comment__reply">
                                        <i class="bi bi-reply-fill">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-reply-fill" viewBox="0 0 16 16">
                                                <path
                                                    d="M5.921 11.9 1.353 8.62a.719.719 0 0 1 0-1.238L5.921 4.1A.716.716 0 0 1 7 4.719V6c1.5 0 6 0 7 8-2.5-4.5-7-4-7-4v1.281c0 .56-.606.898-1.079.62z" />
                                            </svg>
                                        </i>
                                        <span>reply</span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="form-response">
                        <div class="form-response__header">
                            <h2 style="font-weight: 800;">Bình luận</h2>
                            <span class="header-description">Tất cả góp ý sẽ được đăng tải dưới dạng ẩn danh. Những nội
                                dung bắt buộc
                                sẽ được đánh dấu *
                            </span>
                        </div>
                        <div class="form-response__body" style="padding-top: 5px;">
                            <form action="#" method="post">
                                <div class="f-response" style="padding-bottom: 30px;">
                                    <span style="padding-bottom: 10px;">Nội dung</span><br>
                                    <textarea type="text"
                                        style="height: 130px; width: 100%; margin-top: 10px; border: 1px solid lightgrey; outline: none; padding-left: 6px; padding-top: 3px;"></textarea><br>
                                </div>
                                <div class="f-name" style="padding-bottom: 30px;">
                                    <span>Họ và tên*</span><br>
                                    <textarea type="text"
                                        style="height: 60px; width: 100%; margin-top: 10px; border: 1px solid lightgrey; outline: none; padding-left: 6px; padding-top: 3px;"></textarea><br>
                                </div>
                                <div class="f-email" style="padding-bottom: 10px;">
                                    <span style="margin-bottom: 10px;">Email</span><br>
                                    <textarea type="text"
                                        style="height: 60px; width: 100%; margin-top: 10px; border: 1px solid lightgrey; outline: none; padding-left: 6px; padding-top: 3px;"></textarea><br>
                                </div>
                                <button style="color: white">Đăng tải</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="right-column col-md-4">
                    <aside>
                        <div class="row" style="padding-bottom: 50px;">
                            <div class="search col-12" >
                                <form action="#">
                                    <input type="text" placeholder="Search" name="search" class="search-box">
                                    <button class="search-btn" type="submit">
                                        <i class="bi bi-search">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                                <path
                                                    d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                                            </svg>
                                        </i>
                                    </button>
                                </form>
                            </div>
                        </div>
                        
                        <div class="recent-post" style="padding-bottom: 50px;">
                            <h1 style="font-size: 2em;">Bài viết liên quan</h1>
                            <div class="devider"></div>
                            <div class="post-list">
                                <div class="post-list__item">
                                    <img src="http://on3-step.com/tf/homekins/html/white/assets/img/blog/cover_bg_3.jpg"
                                        alt="">
                                    <h1>Đồ án 1</h1>
                                    <span>11 january, 2022</span>
                                </div>
                                <div class="post-list__item">
                                    <img src="http://on3-step.com/tf/homekins/html/white/assets/img/blog/cover_bg_3.jpg"
                                        alt="">
                                    <h1>Đồ án 2</h1>
                                    <span>11 january, 2022</span>
                                </div>
                                <div class="post-list__item">
                                    <img src="http://on3-step.com/tf/homekins/html/white/assets/img/blog/cover_bg_3.jpg"
                                        alt="">
                                    <h1>Đồ án 3</h1>
                                    <span>11 january, 2022</span>
                                </div>
                            </div>
                        </div>
                        <div class="tags" style="padding-bottom: 50px;">
                            <h1 style="font-size: 2em;">Tags</h1>
                            <div class="devider"></div>
                            <div class="tag-list">
                                <div class="tag-list__item">
                                    <a href="#">IoT</a>
                                </div>
                                <div class="tag-list__item">
                                    <a href="#">Kỹ thuật phần mềm</a>
                                </div>
                                <div class="tag-list__item">
                                    <a href="#">C#</a>
                                </div>
                                <div class="tag-list__item">
                                    <a href="#">Trí tuệ nhân tạo</a>
                                </div>
                                <div class="tag-list__item">
                                    <a href="#">An toàn thông tin</a>
                                </div>
                                <div class="tag-list__item">
                                    <a href="#">Java</a>
                                </div>
                                <div class="tag-list__item">
                                    <a href="#">HTML</a>
                                </div>
                                <div class="tag-list__item">
                                    <a href="#">Boostrap 5</a>
                                </div>
                                <div class="tag-list__item">
                                    <a href="#">Spring boot</a>
                                </div>
                            </div>
                        </div>
                        <div class="our-team" style="padding-bottom: 50px;">
                            <h1 style="font-size: 2em;">Thành viên của nhóm</h1>
                            <div class="devider"></div>
                            <div class="team-member">
                                <a class="member-ava" href="#" data-tongle="tooltip" data-placement="bottom"
                                    title="Võ Đức Minh (Leader)">
                                    <img src="https://i.pinimg.com/550x/4d/72/97/4d7297dad94265c0acbc3b677d418935.jpg"
                                        alt=""></a>
                            </div>
                            <div class="team-member">
                                <a class="member-ava" href="#" data-tongle="tooltip" data-placement="bottom"
                                    title="Nguyễn Khắc Trung Nguyên (Front-end dev)">
                                    <img src="https://i.pinimg.com/550x/4d/72/97/4d7297dad94265c0acbc3b677d418935.jpg"
                                        alt=""></a>
                            </div>
                            <div class="team-member">
                                <a class="member-ava" href="#" data-tongle="tooltip" data-placement="bottom"
                                    title="Lê Hồng Anh (Front-end dev)">
                                    <img src="https://i.pinimg.com/550x/4d/72/97/4d7297dad94265c0acbc3b677d418935.jpg"
                                        alt=""></a>
                            </div>
                            <div class="team-member">
                                <a class="member-ava" href="#" data-tongle="tooltip" data-placement="bottom"
                                    title="Phạm Đức Huy (Back-end dev)">
                                    <img src="https://i.pinimg.com/550x/4d/72/97/4d7297dad94265c0acbc3b677d418935.jpg"
                                        alt=""></a>
                            </div>
                            <div class="team-member">
                                <div class="member-ava">
                                    <a href="#" data-tongle="tooltip" data-placement="bottom"
                                        title="Trần Quang Quyền (Back-end dev)">
                                        <img src="https://i.pinimg.com/550x/4d/72/97/4d7297dad94265c0acbc3b677d418935.jpg"
                                            alt=""></a>
                                </div>
                            </div>
                        </div>
                        <div class="team-introduction">
                            <h1 style="font-size: 2em;">Thông tin của nhóm</h1>
                            <div class="devider"></div>
                            <div class="team-introduction__content">
                                <p>
                                    Proin hendrerit eget tellus sit amet vestibulum. Nullam a tincidunt leo. Sed eget
                                    sem scelerisque, malesuada lectus sed, facilisis sapien. Pellentesque quis
                                    ullamcorper est, vitae condimentum enim. Phasellus suscipit eu lacus finibus
                                    rhoncus. Maecenas
                                    sed lacus aliquam, vehicula sapien ac, cursus erat. Aenean vel erat a urna efficitur
                                    varius.
                                </p>
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </section>
    <div class="footer">
        <div class="container">
            <div class="footer-content row">
                <div class="footer-content-first col-md-4">
                    <h3>Về Đại Học FPT</h3>
                    <p>Đại học FPT hướng tới xây dựng mô hình của một trường Đại học thế hệ mới; gắn liền đào tạo với
                        thực tiễn cuộc sống và nhu cầu nhân lực của đất nước, góp phần đưa Giáo dục Việt Nam tiến tới
                        ngang tầm các nước trên thế giới.</p>
                    <a href="mailto:daihoc.hcm@fpt.edu.vn">daihoc.hcm@fpt.edu.vn</a>
                </div>
                <div class="footer-content-detail col-md-2">
                    <span>Liên Kết Hỗ Trợ</span>
                    <div><a href="./index.html">Trang chủ</a></div>
                    <div><a href="./project.html">Đồ án tốt nghiệp</a></div>
                    <div><a href="./blog-single.html">Bài viết</a></div>
                </div>
                <div class="footer-content-detail col-md-2">
                    <span>Tính Năng</span>
                    <div><a href="">Đăng Ký</a></div>
                    <div><a href="">Đăng Nhập</a></div>
                    <div><a href="">Gửi Bài Viết</a></div>
                    <div><a href="./contact.html">Liên hệ</a></div>
                </div>
                <div class="col-md-4">
                    <span>Theo Dõi Trường Đại Học FPT Tại: </span>
                    <div class="follow-social">
                        <p>Cung cấp năng lực cạnh tranh toàn cầu cho đông đảo người học, góp phần mở mang bờ cõi trí tuệ
                            đất nước</p>
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
    <script src="./assets/js/app.js"></script>
    <script>
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip({
                placement: 'bottom'
            });
        });
    </script>
    <script>
        var modal = document.getElementById('myModal');
        var btn = document.getElementById('myBtn');
        btn.addEventListener('click', openModal);
        function openModal(){
            modal.style.display= 'block'; 
        }
    </script>
</body>

</html>