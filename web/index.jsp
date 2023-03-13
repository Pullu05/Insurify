<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Insurify - Home</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="images/logo.jpg" rel="icon"><!--
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">-->

        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
            rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">


    </head>

    <body>

        <!-- ======= Header ======= -->
        <header id="header" class="fixed-top">
            <jsp:include page="navbar.jsp"></jsp:include>
            </header>


            <!-- ======= Hero Section ======= -->
            <section id="hero" class="d-flex flex-column justify-content-center align-items-center">

                <div class="container text-center text-md-left" data-aos="fade-up">
                    <h1>Welcome to Insurify</h1>
                    <h2>Your safety on the road, our priority in your pocket</h2>
                <c:set var="UserloginCheck" value="${UserLoggedIn}"/>
                <c:if test="${UserLoggedIn!=null}">
                    <a href="automobileInsurance.jsp" class="btn-get-started scrollto mx-1">Get a new quote</a>
                    <a href="quotationList.jsp" class="btn-get-started scrollto mx-1">View previous quotes</a>
                </c:if>
            </div>
        </section><!-- End Hero -->

        <main id="main">

            <!-- ======= Services Section ======= -->
            <section id="services" class="services section-bg">
                <div class="container">

                    <div class="section-title" data-aos="fade-up">
                        <h2>Services</h2>
                        <p>"Drive with confidence - our car insurance services have you covered."
                        </p>
                    </div>

                    <div class="row">
                        <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="fade-up">
                            <div class="icon-box icon-box-pink">
                                <div class="icon"><i class="bx bxl-dribbble"></i></div>
                                <h4 class="title">Liability coverage</h4>
                                <p class="description">This covers the cost of damages and injuries that you may cause to other people or their property in an accident.</p>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="fade-up"
                             data-aos-delay="100">
                            <div class="icon-box icon-box-cyan">
                                <div class="icon"><i class="bx bx-file"></i></div>
                                <h4 class="title">Collision coverage</h4>
                                <p class="description">This covers the cost of damages to your own vehicle in the event of a collision.</p>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="fade-up"
                             data-aos-delay="200">
                            <div class="icon-box icon-box-green">
                                <div class="icon"><i class="bx bx-tachometer"></i></div>
                                <h4 class="title">Comprehensive coverage</h4>
                                <p class="description">This covers the cost of damages to your vehicle that are not caused by a collision, such as theft, vandalism, or natural disasters.

                                </p>
                            </div>
                        </div>

                        <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="fade-up"
                             data-aos-delay="300">
                            <div class="icon-box icon-box-blue">
                                <div class="icon"><i class="bx bx-world"></i></div>
                                <h4 class="title">Personal injury protection (PIP)</h4>
                                <p class="description">This covers the cost of medical expenses and lost wages for you and your passengers if you are injured in an accident.</p>
                            </div>
                        </div>

                    </div>

                </div>
            </section><!-- End Services Section -->

            <!-- ======= Testimonials Section ======= -->
            <section id="testimonials" class="testimonials">
                <div class="container">

                    <div class="section-title" data-aos="fade-up">
                        <h2>Team Members</h2>
                        <p></p>
                    </div>

                    <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
                        <div class="swiper-wrapper">

                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium
                                        quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                                    <h3>Soumojit Sur</h3>
                                    <h4>Ceo &amp; Founder</h4>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis
                                        quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                                    <h3>Subhadip Sarkar</h3>
                                    <h4>Designer</h4>
                                </div>
                            </div><!-- End testimonial item -->


                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis
                                        quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                                    <h3>Sneha</h3>
                                    <h4>Designer</h4>
                                </div>
                            </div>

                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim
                                        tempor labore quem eram duis noster aute amet eram fore quis sint minim.
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
                                    <h3>Nairwita Chakraborty</h3>
                                    <h4>Store Owner</h4>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit
                                        minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
                                    <h3>Rishav Dutta</h3>
                                    <h4>Freelancer</h4>
                                </div>
                            </div><!-- End testimonial item -->

                            <div class="swiper-slide">
                                <div class="testimonial-item">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa
                                        labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
                                    <h3>Anand Kumar</h3>
                                    <h4>Entrepreneur</h4>
                                </div>
                            </div><!-- End testimonial item -->

                        </div>
                        <div class="swiper-pagination"></div>
                    </div>

                </div>
            </section><!-- End Testimonials Section -->

            <!-- ======= F.A.Q Section ======= -->
            <section id="faq" class="faq section-bg">
                <div class="container">

                    <div class="section-title" data-aos="fade-up">
                        <h2>F.A.Q</h2>
                        <p>Here are the answers to some frequently asked questions</p>
                    </div>

                    <div class="faq-list">
                        <ul>
                            <li data-aos="fade-up">
                                <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" class="collapse"
                                                                               data-bs-target="#faq-list-1">What is car insurance and why is it important? <i
                                        class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                                <div id="faq-list-1" class="collapse show" data-bs-parent=".faq-list">
                                    <p>
                                        Car insurance is a contract between an individual and an insurance company that helps protect the individual financially in case of an accident, theft or damage to their car. It is important because it provides a safety net to car owners and helps them avoid the financial burden that can arise from such events.
                                    </p>
                                </div>
                            </li>

                            <li data-aos="fade-up" data-aos-delay="100">
                                <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" data-bs-target="#faq-list-2"
                                                                               class="collapsed">How is car insurance premium calculated? <i
                                        class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                                <div id="faq-list-2" class="collapse" data-bs-parent=".faq-list">
                                    <p>
                                        Car insurance premiums are calculated based on a number of factors, such as the driver's age, driving record, location, make and model of the car, and the coverage options selected.
                                    </p>
                                </div>
                            </li>

                            <li data-aos="fade-up" data-aos-delay="200">
                                <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse" data-bs-target="#faq-list-3"
                                                                               class="collapsed">Can I change my car insurance policy in the middle of the term? <i
                                        class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                                <div id="faq-list-3" class="collapse" data-bs-parent=".faq-list">
                                    <p>
                                        Yes, it is possible to change a car insurance policy in the middle of the term. However, it is important to check with the insurance company about any penalties or fees that may apply for making changes to the policy.
                                    </p>
                                </div>
                            </li>


                        </ul>
                    </div>

                </div>
            </section><!-- End F.A.Q Section -->

            <!-- ======= Contact Section ======= -->
            <section id="contact" class="contact">
                <div class="container">

                    <div class="section-title" data-aos="fade-up">
                        <h2>Contact</h2>
                        <p>Get in touch with us - we're here to help!</p>
                    </div>

                    <div class="row no-gutters justify-content-center" data-aos="fade-up">

                        <div class="col-lg-5 d-flex align-items-stretch">
                            <div class="info">
                                <div class="address">
                                    <i class="bi bi-geo-alt"></i>
                                    <h4>Location:</h4>
                                    <p>Plot 3, BENGAL ECO INTELLIGENT PARK, Unit No: C, 6th Floor, EM Block, Sector V, Kolkata, West Bengal 700091</p>
                                </div>

                                <div class="email mt-4">
                                    <i class="bi bi-envelope"></i>
                                    <h4>Email:</h4>
                                    <p>insurify@gmail.com</p>
                                </div>

                                <div class="phone mt-4">
                                    <i class="bi bi-phone"></i>
                                    <h4>Call:</h4>
                                    <p>+1 234 567 890</p>
                                </div>

                            </div>

                        </div>

                        <div class="col-lg-5 d-flex align-items-stretch">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3684.1041310182013!2d88.42524581446938!3d22.575208385181554!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a02750014d7f12f%3A0xba88c52b0fa7f529!2sExavalu!5e0!3m2!1sen!2sin!4v1678724823534!5m2!1sen!2sin" width=100% height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>

                    </div>

                    <div class="row mt-5 justify-content-center" data-aos="fade-up">
                        <div class="col-lg-10">
                            <form action="https://formsubmit.co/cru187@mailcuk.com" method="post" role="form" class="php-email-form">
                                <div class="row">
                                    <div class="col-md-6 form-group">
                                        <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                                    </div>
                                    <div class="col-md-6 form-group mt-3 mt-md-0">
                                        <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                                    </div>
                                </div>
                                <div class="form-group mt-3">
                                    <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
                                </div>
                                <div class="form-group mt-3">
                                    <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
                                </div>

                                <input type="hidden" name="_template" value="table">
                                <input type="hidden" name="_autoresponse" value="Submitted!!!">
                                <div class="text-center"><button type="submit">Send Message</button></div>
                            </form>
                        </div>

                    </div>

                </div>
            </section><!-- End Contact Section -->

        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer">
            <jsp:include page="footer.jsp"></jsp:include>
        </footer><!-- End Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
                class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/aos/aos.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>

    </body>

</html>