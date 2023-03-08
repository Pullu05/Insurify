<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.js" type="text/javascript"></script>
<script src="assets/js/login-register.js" type="text/javascript"></script>

<div class="container d-flex align-items-center justify-content-lg-between mt-3">
    <h2 class="logo me-auto me-lg-0 display-7"><img src="images/logo.jpg"class="rounded-circle" style="filter: invert(1);" width="50px" height="35px" alt="logo"/> <a href="index.jsp">Insurify</a></h2>

    <c:set var="login_check" value="${LoggedIn}"/>

    <div>
        <c:if test="${login_check==null}">
            <a href="login.jsp">
                <button type="button" class="btn btn-outline-light me-2" >Login</button>
            </a>
            <a href="sign-up.jsp">
                <button type="button" class="btn btn-outline-light me-2" >Sign-Up</button>
            </a>
            <a href="#contact" class="get-started-btn scrollto">Contact Us</a>
        </c:if>

        <c:if test="${login_check!=null}">
            <a href="Logout">
                <button type="button" class="btn btn-outline-light me-2" >Log Out</button>
            </a>
        </c:if>
        
    </div>
</div>
