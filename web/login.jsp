<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <title>Sign in Insurify</title>

        <link href="images/logo.jpg" rel="icon">

        <meta name="google-signin-client_id" content="416608193695-aar2ph853ngh323aru5lns9vne7s83n4.apps.googleusercontent.com">
        <script src="https://accounts.google.com/gsi/client" async defer></script>
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
        <script src="https://code.jquery.com/jquery-3.6.3.js"
                integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" 
                crossorigin="anonymous">

        </script>
        <style>
            .divider:after,
            .divider:before {
                content: "";
                flex: 1;
                height: 1px;
                background: #eee;
            }
            .google_btn{
                display: flex;
                flex-direction: column;
                align-items: center;
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
                                <input name="email" type="email" id="form1Example13" class="form-control form-control-lg border" required />
                                <label class="form-label" for="form1Example13">Email address</label>
                            </div>

                            <!-- Password input -->
                            <div class="form-outline mb-4">
                                <input name="password" type="password" id="form1Example23" class="form-control form-control-lg border" required />
                                <label class="form-label" for="form1Example23">Password</label>
                            </div>

<!--                            <div class="d-flex justify-content-around align-items-center mb-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="form1Example3" checked />
                                    <label class="form-check-label" for="form1Example3"> Remember me </label>
                                </div>
                                <a href="#!">Forgot password?</a>
                            </div>-->
                            <button type="submit" class="btn btn-primary btn-lg btn-block w-100">Sign in</button>

                            <div class="divider d-flex align-items-center my-4">
                                <p class="text-center fw-bold mx-3 mb-0 text-muted">OR</p>
                            </div>
                            <div class="google_btn">
                                <div id="g_id_onload"
                                     data-client_id="416608193695-aar2ph853ngh323aru5lns9vne7s83n4.apps.googleusercontent.com"
                                     data-context="signup"
                                     data-ux_mode="popup"
                                     data-callback="handleCredentialResponse"
                                     data-auto_prompt="false">
                                </div>

                                <div class="g_id_signin"
                                     data-type="standard"
                                     data-shape="rectangular"
                                     data-theme="filled_blue"
                                     data-text="signin_with"
                                     data-size="large"
                                     data-logo_alignment="left">
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </section>
        <script>
            function decodeJwtResponse(data) {
                var tokens = data.split(".");
                return JSON.parse(atob(tokens[1]));
            }

            function handleCredentialResponse(response) {
                const responsePayLoad = decodeJwtResponse(response.credential);
                console.log(responsePayLoad);
                const user = {email: responsePayLoad.email, password: responsePayLoad.sub};
                console.log(user);
                $.ajax({
                    type: "Post",
                    url: "GoogleLogin",
                    data: user,
                    success: function (reponseText) {
                        console.log(reponseText);
                        if(reponseText.success){
                            location.href='index.jsp';
                        }else{
                             location.href='login.jsp';
                        }
                    }
                });
            }

        </script>
        <script
            type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.js"
        ></script>


    </body>
</html>

