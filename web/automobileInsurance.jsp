<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="login_check" value="${LoggedIn}"/>
<c:if test="${login_check==null}">
    <c:redirect url="login.jsp"></c:redirect>
</c:if>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Insurify - Automobile</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
            rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">
        <link href="assets/css/forms.css" rel="stylesheet">
        
    </head>

    <body>

        <header id="header" class="fixed-top">
            <jsp:include page="navbar.jsp"></jsp:include>
            </header>


            <div style="margin-top: 100px" class="container d-flex justify-content-center align-items-center">


                <button data-sectionid="vehicleData" type="button" class="btn btn-success mx-2 custom-btn" onclick="handleAutomobileSectionChange(event)">Enter Vehicle Data</button>
                <button data-sectionid="insurantData" type="button" class="btn btn-secondary mx-2 custom-btn" onclick="handleAutomobileSectionChange(event)">Enter Insurant Data</button>
                <button data-sectionid="productData" type="button" class="btn btn-secondary mx-2 custom-btn" onclick="handleAutomobileSectionChange(event)">Enter Product Data</button>
                <button data-sectionid="planData" type="button" class="btn btn-secondary mx-2 custom-btn" onclick="handleAutomobileSectionChange(event)" >Select Your Plan</button>
                <button data-sectionid="sendData" type="button" class="btn btn-secondary mx-2 custom-btn" onclick="handleAutomobileSectionChange(event)">Send Quote</button>


            </div>

        <section id="vehicleData" class="automobileFormSection d-block"><jsp:include page="vehicleData.jsp"></jsp:include></section>
        <section id="insurantData" class="automobileFormSection d-none"><jsp:include page="insurantData.jsp"></jsp:include></section>
        <section id="productData" class="automobileFormSection d-none"><jsp:include page="productData.jsp"></jsp:include></section>
        <section id="planData" class="automobileFormSection d-none"><jsp:include page="subscriptionPlans.jsp"></jsp:include></section>
        <section id="sendData" class="automobileFormSection d-none"><jsp:include page="sendQuote.jsp"></jsp:include></section>

        
        

            <footer id="footer">
            <jsp:include page="footer.jsp"></jsp:include>
        </footer><!-- End Footer -->



        <script src="assets/vendor/aos/aos.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <script src="assets/js/main.js"></script>
        <script src="javascript/automobileInsurance.js"></script>
    </body>

</html>