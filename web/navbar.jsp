<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container d-flex align-items-center justify-content-lg-between mt-3">
    <h2 class="logo me-auto me-lg-0 display-7"><img src="images/logo.jpg"class="rounded-circle" style="filter: invert(1);" width="50px" height="35px" alt="logo"/> <a href="index.jsp">Insurify</a></h2>
    <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
            <li><a class="nav-link scrollto" href="automobileInsurance.jsp">Automobile</a></li>
            <li><a class="nav-link scrollto" href="#about">Truck</a></li>
            <li><a class="nav-link scrollto" href="#services">Motocycle</a></li>
            <li><a class="nav-link scrollto" href="#portfolio">Camper</a></li>
        </ul> <i class="bi bi-list mobile-nav-toggle"></i>
    </nav>
     <c:set var="login_check" value="${LoggedIn}"/>
 
    <div>
        <c:if test="${login_check==null}">
            <a href="login.jsp">
                <button type="button" class="btn btn-outline-light me-2" >Login</button>
            </a>
        </c:if>

        <c:if test="${login_check!=null}">
            <a href="Logout">
                <button type="button" class="btn btn-outline-light me-2" >Log Out</button>
            </a>
        </c:if>
        <a href="#contact" class="get-started-btn scrollto">Contact Us</a>
    </div>
</div>
