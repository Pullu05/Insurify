<%-- 
    Document   : admin
    Created on : 27-Feb-2023, 1:07:10 pm
    Author     : Nairwita Chakraborty
--%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Insurify - Admin Page</title>
        <meta content="" name="description">
        <meta content="" name="keywords">


        <!-- Google Fonts -->
        <link href="https://fonts.gstatic.com" rel="preconnect">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        Vendor CSS Files 
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
        <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

        Template Main CSS File 
        <link href="assets/css/style_1.css" rel="stylesheet">
        


        <!--<link rel="stylesheet" href="https://bootstrapmade.com/assets/css/demo-4.3.css">-->
    </head>

    <body>
        <script>
            function showDriverDetails() {
                driverDetails.classList.remove("d-none");
                vehicleDetails.classList.add("d-none");
            }
            function showVehicleDetails() {
                vehicleDetails.classList.remove("d-none");
                driverDetails.classList.add("d-none");
            }
        </script>

        <!-- ======= Header ======= -->
        <header id="header" class="header fixed-top d-flex align-items-center">

            <div class="d-flex align-items-center justify-content-between">
                <a href="admin.html" class="logo d-flex align-items-center">
                    <img src="assets/img/logo.png" alt="">
                    <span class="d-none d-lg-block">Admin Insurify</span>
                </a>
                <i class="bi bi-list toggle-sidebar-btn"></i>
            </div><!-- End Logo -->

            <div class="search-bar">
                <form class="search-form d-flex align-items-center" method="POST" action="#">
                    <input type="text" name="query" placeholder="Search" title="Enter search keyword">
                    <button type="submit" title="Search"><i class="bi bi-search"></i></button>
                </form>
            </div><!-- End Search Bar -->

            <nav class="header-nav ms-auto">
                <ul class="d-flex align-items-center">

                    <li class="nav-item d-block d-lg-none">
                        <a class="nav-link nav-icon search-bar-toggle " href="#">
                            <i class="bi bi-search"></i>
                        </a>
                    </li><!-- End Search Icon-->

                    <li class="nav-item d-block d-lg-none">     
                    <li>
                        <a class="nav-link d-flex align-items-center pe-0" href="Logout">
                            <span class="d-none d-md-block ps-2">Sign-out</span>
                        </a>
                    </li>
                    </li><!-- End Logout Nav -->

                </ul>
            </nav><!-- End Icons Navigation -->

        </header>

        <!-- ======= Sidebar ======= -->
        <aside id="sidebar" class="sidebar">

            <ul class="sidebar-nav" id="sidebar-nav">

                <li class="nav-item">
                    <a class="nav-link " href="admin.html">
                        <i class="bi bi-grid"></i>
                        <span>Dashboard</span>
                    </a>
                </li><!-- End Dashboard Nav -->

                <li class="nav-item">
                    <a class="nav-link" style="cursor: pointer;"  onclick="showDriverDetails()">Driver Details</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" style="cursor: pointer;" onclick="showVehicleDetails()" >Vehicle Details</a>
                </li>

            </ul>

        </aside><!-- End Sidebar-->

        <main id="main" class="main">

            <!-- End Page Title -->

            <section class="section dashboard">
                <!--      <div class="row">
                          
                          <div class="row">
                
                            <div class="col-xxl-4 col-md-6">
                                <div class="card">
                                    <a href="#">
                                         <div class="card-body">
                                            <h5 class="card-title text-center">Show Details</h5>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-xxl-4 col-md-6">
                                <div class="card">
                                    <a href="#">
                                         <div class="card-body">
                                            <h5 class="card-title text-center">Add Details</h5>
                                        </div>
                                    </a>
                                </div>
                            </div>
                
                
                             Table 
                            <div >
                              <div class="card recent-sales overflow-auto">
                
                                <div class="card-body">
                                  <h5 class="card-title">Driver Details</h5>
                
                                  <table class="table table-borderless datatable">
                                    <thead>
                                      <tr>
                                        <th scope="col">Driver Id</th>
                                        <th scope="col">Driver Name</th>
                                        <th scope="col">Driver Age</th>
                                        <th scope="col">Medical History</th>
                                        <th scope="col">Number Of Challans</th>
                                        <th scope="col">Action</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      <tr>
                                        <th scope="row"><a href="#">#2457</a></th>
                                        <td>Brandon Jacob</td>
                                        <td><a href="#" class="text-primary">At praesentium minu</a></td>
                                        <td>$64</td>
                                        <td><span class="badge bg-success">Approved</span></td>
                                      </tr>
                                      <tr>
                                        <th scope="row"><a href="#">#2147</a></th>
                                        <td>Bridie Kessler</td>
                                        <td><a href="#" class="text-primary">Blanditiis dolor omnis similique</a></td>
                                        <td>$47</td>
                                        <td><span class="badge bg-warning">Pending</span></td>
                                      </tr>
                                      <tr>
                                        <th scope="row"><a href="#">#2049</a></th>
                                        <td>Ashleigh Langosh</td>
                                        <td><a href="#" class="text-primary">At recusandae consectetur</a></td>
                                        <td>$147</td>
                                        <td><span class="badge bg-success">Approved</span></td>
                                      </tr>
                                      <tr>
                                        <th scope="row"><a href="#">#2644</a></th>
                                        <td>Angus Grady</td>
                                        <td><a href="#" class="text-primar">Ut voluptatem id earum et</a></td>
                                        <td>$67</td>
                                        <td><span class="badge bg-danger">Rejected</span></td>
                                      </tr>
                                      <tr>
                                        <th scope="row"><a href="#">#2644</a></th>
                                        <td>Raheem Lehner</td>
                                        <td><a href="#" class="text-primary">Sunt similique distinctio</a></td>
                                        <td>$165</td>
                                        <td><span class="badge bg-success">Approved</span></td>
                                      </tr>
                                    </tbody>
                                  </table>
                
                                </div>
                
                              </div>
                            </div> End Table 
                
                          </div>
                
                      </div>-->

                <div id ="driverDetails" class="d-none">
                    <jsp:include page="driverDetails.jsp"></jsp:include>
                    </div>

                    <div id ="vehicleDetails" class="d-none">
                    <jsp:include page="vehicleDetails.jsp"></jsp:include>
                </div>

            </section>

        </main><!-- End #main -->


        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/chart.js/chart.umd.js"></script>
        <script src="assets/vendor/echarts/echarts.min.js"></script>
        <script src="assets/vendor/quill/quill.min.js"></script>
        <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
        <script src="assets/vendor/tinymce/tinymce.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main_1.js"></script>
        <!--<script src="https://bootstrapmade.com/assets/js/demo-4.3.js"></script>-->
    </body>

</html>