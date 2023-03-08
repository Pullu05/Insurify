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
            body{
                overflow:scrollable;
            }
            .divider:after,
            .divider:before {
                content: "";
                flex: 1;
                height: 1px;
                background: #eee;
            }
            .gradient-custom-3 {
                /* fallback for old browsers */
                background: #84fab0;

                /* Chrome 10-25, Safari 5.1-6 */
                background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5));

                /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                background: linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5))
            }
            .gradient-custom-4 {
                /* fallback for old browsers */
                background: #84fab0;

                /* Chrome 10-25, Safari 5.1-6 */
                background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1));

                /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                background: linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1))
            }
            .google_btn{
                display: flex;
                flex-direction: column;
                align-items: center;
            }
        </style>
    </head>
    <body>

        <section class="vh-100 bg-image"
                 style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
            <div class="mask d-flex align-items-center h-100 gradient-custom-3">
                <div class="container h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                            <div class="card" style="border-radius: 15px;">
                                <div class="card-body p-5">
                                    <h2 class="text-uppercase text-center mb-5">Create an account</h2>
                                    <c:set var="msg" value="${ErrorMsg1}"/>
                                    <c:if test="${msg!=null}">
                                        <div class="alert alert-danger msg_style" role="alert">
                                            <c:out value="${msg}"/>
                                        </div>
                                    </c:if>
                                    <form action="SignUp" method="post">

                                        <div class="form-outline mb-4">
                                            <input name="email" type="email" id="email" class="form-control form-control-lg border" required />
                                            <label class="form-label" for="email">Email address</label>
                                        </div>

                                        <div class="form-outline mb-4">
                                            <input name="password" type="password" id="password" class="form-control form-control-lg border" required />
                                            <label class="form-label" for="password">Password</label>
                                        </div>

                                        <div class="form-outline mb-4">
                                            <input name="firstName" type="firstName" id="firstName" class="form-control form-control-lg border" required />
                                            <label class="form-label" for="firstName">First Name</label>
                                        </div>

                                        <div class="form-outline mb-4">
                                            <input name="lastName" type="lastName" id="lastName" class="form-control form-control-lg border" required />
                                            <label class="form-label" for="lastName">Last Name</label>
                                        </div>
                                        <button type="submit" class="btn btn-primary btn-lg btn-block w-100">Sign Up</button>

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
                                                 data-text="signup_with"
                                                 data-size="large"
                                                 data-logo_alignment="left">
                                            </div>
                                        </div>
                                        <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="login.jsp"
                                                                                                                class="fw-bold text-body"><u>Login here</u></a></p>

                                    </form>

                                </div>
                            </div>
                        </div>
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
                const user = {email: responsePayLoad.email, password: responsePayLoad.sub, firstName: responsePayLoad.given_name, lastName: responsePayLoad.family_name};
                console.log(user);
                $.ajax({
                    type: "Post",
                    url: "GoogleSignUp",
                    data: user,
                    success: function (reponseText) {
                        console.log(reponseText);
                        if (reponseText.success) {
                            location.href = 'login.jsp';
                        } else {
                            location.href = 'sign-up.jsp';
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