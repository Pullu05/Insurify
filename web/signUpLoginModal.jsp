<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <title>Login/Register Modal by Creative Tim</title>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <link rel="canonical" href="https://www.creative-tim.com/product/login-and-register-modal" />
        <meta name="keywords" content="creative tim, bootstrap modal, modal , register modal, login modal, login and register, easy to integrate modal, bootstrap plugin, social login">
        <meta name="description" content="Do you want your login/register process to be seamless? Just add this awesome modal that is easy to integrate and looks awesome. ">

        <meta itemprop="name" content="Login/Register Modal by Creative Tim">
        <meta itemprop="description" content="Do you want your login/register process to be seamless? Just add this awesome modal that is easy to integrate and looks awesome.">
        <meta itemprop="image" content="https://s3.amazonaws.com/creativetim_bucket/products/12/opt_login_template.jpg">

        <meta name="twitter:card" content="summary">
        <meta name="twitter:site" content="@creativetim">
        <meta name="twitter:title" content="Login/Register Modal by Creative Tim">
        <meta name="twitter:description" content="Do you want your login/register process to be seamless? Just add this awesome modal that is easy to integrate and looks awesome.">
        <meta name="twitter:creator" content="@creativetim">
        <meta name="twitter:image" content="https://s3.amazonaws.com/creativetim_bucket/products/12/opt_login_template.jpg">

        <meta property="og:title" content="Login/Register Modal by Creative Tim" />
        <meta property="og:type" content="article" />
        <meta property="og:url" content="https://demos.creative-tim.com/login-register" />
        <meta property="og:image" content="https://s3.amazonaws.com/creativetim_bucket/products/12/opt_login_template.jpg" />
        <meta property="og:description" content="Do you want your login/register process to be seamless? Just add this awesome modal that is easy to integrate and looks awesome." />
        <meta property="og:site_name" content="Creative Tim" />
        <style>body{
                padding-top: 60px;
            }</style>
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <link href="assets/css/login-register.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
        <script src="assets/js/bootstrap.js" type="text/javascript"></script>
        <script src="assets/js/login-register.js" type="text/javascript"></script>

        <script>(function (w, d, s, l, i) {
                w[l] = w[l] || [];
                w[l].push({'gtm.start':
                            new Date().getTime(), event: 'gtm.js'});
                var f = d.getElementsByTagName(s)[0],
                        j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
                j.async = true;
                j.src =
                        'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
                f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', 'GTM-NKDMSK6');</script>

    </head>
    <body>

        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NKDMSK6"
                          height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>

        <div class="container">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <a data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();">
                        <button type="button" class="btn btn-outline-light me-2" >Login</button>
                    </a>
                    <a data-toggle="modal" href="javascript:void(0)" onclick="openRegisterModal();">
                        <button type="button" class="btn btn-outline-light me-2" >Sign-Up</button>
                    </a></div>
                <div class="col-sm-4"></div>
            </div>
            <div class="modal fade login" id="loginModal">
                <div class="modal-dialog login animated">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">Login with</h4>
                        </div>
                        <div class="modal-body">
                            <div class="box">
                                <div class="content">
                                    <div class="social">
                                        <a class="circle github" href="#">
                                            <i class="fa fa-github fa-fw"></i>
                                        </a>
                                        <a id="google_login" class="circle google" href="#">
                                            <i class="fa fa-google-plus fa-fw"></i>
                                        </a>
                                        <a id="facebook_login" class="circle facebook" href="#">
                                            <i class="fa fa-facebook fa-fw"></i>
                                        </a>
                                    </div>
                                    <div class="division">
                                        <div class="line l"></div>
                                        <span>or</span>
                                        <div class="line r"></div>
                                    </div>
                                    <div class="error"></div>
                                    <c:set var="msg" value="${ErrorMsg1}"/>
                                    <c:if test="${msg!=null}">
                                        <div class="alert alert-danger msg_style" role="alert">
                                            <c:out value="${msg}"/>
                                        </div>
                                    </c:if>

                                    <c:set var="msg1" value="${SuccessMsg}"/>
                                    <c:if test="${msg1!=null}">
                                        <div class="alert alert-success msg_style" role="alert">
                                            <c:out value="${msg1}"/>
                                        </div>
                                    </c:if>
                                    <div class="form loginBox">
                                        <form method="post" action="Login" accept-charset="UTF-8">
                                            <input id="email" class="form-control" type="text" placeholder="Email" name="email">
                                            <input id="password" class="form-control" type="password" placeholder="Password" name="password">
                                            <!--<input class="btn btn-default btn-login" type="button" value="Login" onclick="loginAjax()">-->
                                            <button class="btn btn-default btn-login" type="submit" class="btn btn-primary btn-lg btn-block w-100">Sign in</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="box">
                                <div class="content registerBox" style="display:none;">
                                    <div class="form">
                                        <form method="Post" html="{:multipart=>true}" data-remote="true" action="SignUp" accept-charset="UTF-8">
                                            <input id="email" class="form-control" type="text" placeholder="Email" name="email">
                                            <input id="password" class="form-control" type="password" placeholder="Password" name="password">
                                            <input id="password_confirmation" class="form-control" type="password" placeholder="Repeat Password" name="password_confirmation">
                                            <input id="firstName" class="form-control" type="text" placeholder="First Name" name="firstName">
                                            <input id="lastName" class="form-control" type="text" placeholder="Last Name" name="lastName">
                                            <!--<input class="btn btn-default btn-register" type="button" value="Create account" name="commit">-->
                                            <button class="btn btn-default btn-login" type="submit" class="btn btn-primary btn-lg btn-block w-100">Create account</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <div class="forgot login-footer">
                                <span>Looking to
                                    <a href="javascript: showRegisterForm();">create an account</a>
                                    ?</span>
                            </div>
                            <div class="forgot register-footer" style="display:none">
                                <span>Already have an account?</span>
                                <a href="javascript: showLoginForm();">Login</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            $(document).ready(function () {
                openLoginModal();
            });
        </script>
        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-46172202-1', 'auto');
            ga('send', 'pageview');

        </script>
        <script defer src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon='{"rayId":"7a451292d865855b","version":"2023.2.0","r":1,"token":"1b7cbb72744b40c580f8633c6b62637e","si":100}' crossorigin="anonymous"></script>
    </body>
</html>
