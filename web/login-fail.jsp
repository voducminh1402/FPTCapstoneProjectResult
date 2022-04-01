<%-- 
    Document   : login_fail
    Created on : Mar 31, 2022, 7:22:44 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
      integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="stylesheet" href="./assets/css/login.css" />
  </head>
  <body>
    <div class="container">
      <div class="picture">
        <div class="logo">
          <img src="./assets/images/logo.png" alt="logo" />
        </div>
        <!-- <div class="background"> -->
        <img
          class="background"
          src="./assets/images/image-product-1.jpg"
          alt="background"
        />
        <!-- </div> -->
      </div>
      <div class="content">
        <div class="content-header">
          <h1>Welcome to <span>FPT University</span></h1>
          <p>Welcome Back, Please login to your account.</p>
        </div>
        <div class="content-main">
            <h3 style="color: red">${requestScope.LOGIN_FAIL}</h3>
            <form action="MainController" method="POST">
          <form action="MainController" method="POST">
            <div class="relative">
              <i class="fas fa-envelope"></i>
              <input
                class="width-100"
                type="email"
                name="email"
                id="email"
                placeholder="Example@gmail.com"
              />
            </div>
            <div class="relative">
              <i class="fas fa-key"></i>
              <input
                class="width-100"
                type="password"
                name="password"
                id="password"
                placeholder="Password"
              />
            </div>

            <div class="more-detail">
              <div class="remember">
                <input
                  type="checkbox"
                  name="checkbox"
                  id="checkbox"
                  class="checkbox"
                  checked
                />
                <span>Remember Me</span>
              </div>
              <div class="forgot-password">
                <a href="#">Forgot password?</a>
              </div>
            </div>
            <input
              id="login"
              name="action"
              class="width-100 login-btn"
              type="submit"
              value="Login"
            />
          </form>
          <div class="line-break">OR</div>
          <div class="anotherway-login">
            <div class="google-btn">
              <a
                href="https://accounts.google.com/o/oauth2/auth?scope=email%20profile&redirect_uri=http://localhost:8080/FUCapstoneResult/login-google&response_type=code
                               &client_id=935796570214-383jldivbeu5o0mlh7dtido0lut3kd6s.apps.googleusercontent.com&approval_prompt=force"
              >
                <div class="google-icon-wrapper">
                  <img
                    class="google-icon"
                    src="https://upload.wikimedia.org/wikipedia/commons/5/53/Google_%22G%22_Logo.svg"
                  />
                </div>
                <p class="btn-text"><b>Login with Google</b></p>
              </a>
            </div>
          </div>

          <div class="content-footer">
            <p>Don't have an account? <a href="./signup.html">Sign Up</a></p>
          </div>
        </div>
      </div>
    </div>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
      integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    ></script>
    <script src="./assets/js/login.js"></script>
  </body>
</html>
