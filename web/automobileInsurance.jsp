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
            <div class="container d-flex align-items-center justify-content-lg-between mt-3">
                <h2 class="logo me-auto me-lg-0 display-7"><a href="index.jsp">Insurify</a></h2>
                <nav id="navbar" class="navbar order-last order-lg-0">
                    <ul>
                        <li><a class="nav-link scrollto active" href="#hero">Automobile</a></li>
                        <li><a class="nav-link scrollto" href="#about">Truck</a></li>
                        <li><a class="nav-link scrollto" href="#services">Motocycle</a></li>
                        <li><a class="nav-link scrollto" href="#portfolio">Camper</a></li>
                    </ul> <i class="bi bi-list mobile-nav-toggle"></i>
                </nav> <a href="#contact" class="get-started-btn scrollto">Contact Us</a>
            </div>

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
            <div class="footer-top">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-3 col-md-6">
                            <div class="footer-info">
                                <h3>Insurify</h3>
                                <p>
                                    A108 Adam Street <br>
                                    NY 535022, USA<br><br>
                                    <strong>Phone:</strong> +1 5589 55488 55<br>
                                    <strong>Email:</strong> info@example.com<br>
                                </p>
                                <div class="social-links mt-3">
                                    <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                                    <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                                    <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                                    <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                                    <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-2 col-md-6 footer-links">
                            <h4>Useful Links</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-3 col-md-6 footer-links">
                            <h4>Our Services</h4>
                            <ul>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
                                <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
                            </ul>
                        </div>

                        <div class="col-lg-4 col-md-6 footer-newsletter">
                            <h4>Our Newsletter</h4>
                            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
                            <form action="" method="post">
                                <input type="email" name="email"><input type="submit" value="Subscribe">
                            </form>

                        </div>

                    </div>
                </div>
            </div>

            <div class="container">
                <div class="copyright">
                    &copy; Copyright <strong><span>Insurify</span></strong>. All Rights Reserved
                </div>
                <div class="credits">
                    <!-- All the links in the footer should remain intact. -->
                    <!-- You can delete the links only if you purchased the pro version. -->
                    <!-- Licensing information: https://bootstrapmade.com/license/ -->
                    <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/Insurify-free-onepage-bootstrap-theme/ -->
                    Designed by <a href="https://bootstrapmade.com/">Group E</a>
                </div>
            </div>
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