<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <title>Sign in Insurify</title>
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
            />
        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
            />
        <!-- MDB -->
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.css"
            rel="stylesheet"
            />
        <style>
            .divider:after,
            .divider:before {
                content: "";
                flex: 1;
                height: 1px;
                background: #eee;
            }
        </style>
    </head>
    <body>
        <section class="vh-100">
            <div class="container py-5 h-100">
                <div class="row d-flex align-items-center justify-content-center h-100">
                    <div class="col-md-8 col-lg-7 col-xl-6">
                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
                             class="img-fluid" alt="Phone image">
                    </div>
                    <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1 shadow p-3 mb-5 bg-white rounded">
                        <form action="Login" method="post">
                            <h1>Login</h1>
                            <!-- Error Msg -->
                            <c:set var="msg" value="${ErrorMsg}"/>                   
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
                            <!-- Email input -->
                            <div class="form-outline mb-4">
                                <input name="email" type="email" id="form1Example13" class="form-control form-control-lg border" />
                                <label class="form-label" for="form1Example13">Email address</label>
                            </div>

                            <!-- Password input -->
                            <div class="form-outline mb-4">
                                <input name="password" type="password" id="form1Example23" class="form-control form-control-lg border" />
                                <label class="form-label" for="form1Example23">Password</label>
                            </div>

                            <div class="d-flex justify-content-around align-items-center mb-4">
                                <!-- Checkbox -->
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="form1Example3" checked />
                                    <label class="form-check-label" for="form1Example3"> Remember me </label>
                                </div>
                                <a href="#!">Forgot password?</a>
                            </div>

                            <!-- Submit button -->
                            <button type="submit" class="btn btn-primary btn-lg btn-block w-100">Sign in</button>

                            <div class="divider d-flex align-items-center my-4">
                                <p class="text-center fw-bold mx-3 mb-0 text-muted">OR</p>
                            </div>

                            <a class="btn btn-primary btn-lg btn-block" style="background-color: #3b5998" href="#!"
                               role="button">
                                <i class="fab fa-facebook-f me-2"></i>Continue with Facebook
                            </a>
                            <a class="btn btn-primary btn-lg btn-block" style="background-color: #55acee" href="#!"
                               role="button">
                                <i class="fab fa-twitter me-2"></i>Continue with Twitter</a>

                        </form>
                    </div>
                </div>
            </div>
        </section>
        <script
            type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.js"
        ></script>
    </body>
</html>
