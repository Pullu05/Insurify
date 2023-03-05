<%-- 
    Document   : previousQuotation
    Created on : 05-Mar-2023, 11:36:46 am
    Author     : RISHAV DUTTA
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css"
            rel="stylesheet"
            />

        <!-- Google Fonts -->
        <link href="https://fonts.gstatic.com" rel="preconnect">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!--        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">-->
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
        <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">
        <link href="assets/css/style_1.css" rel="stylesheet">
        <title>Previous Quotation</title>
        <style>

        </style>
    </head>
    <body>

        <div class="card recent-sales overflow-auto" style="
             width: 80%;
             display: block;
             margin: auto;
             margin-top: 5rem;
             ">
            <div class="card-body">
                <div style="
                     display: flex;
                     justify-content: space-between;
                     ">
                    <h5 class="card-title">Previous Quotation</h5>
                    <div>
                        <a href="index.jsp">
                            <span id="boot-icon" class="bi bi-arrow-return-left"style="font-size:2rem"></span>
                        </a>
                    </div>
                </div>
                <table class="table table-borderless datatable">
                    <thead>
                        <tr>
                            <th scope="col">Quotation Id</th>
                            <th scope="col">Quotation Date</th>
                            <th scope="col">Proposal Name</th>
                            <th scope="col" >Proposal Number</th>
                            <th scope="col">Status</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <c:if test="${PrevQuotList.size()>0}">
                        <tbody>
                            <c:forEach items="${PrevQuotList}" var="quotation">
                                <tr>
                                    <td>
                                        <p class="fw-bold mb-1">${quotation.quotationId}</p>
                                    </td>
                                    <td>
                                        <p class="fw-bold mb-1">${quotation.quotationDate}</p>
                                    </td>
                                    <td>
                                        <div class="d-flex align-items-center">

                                            <div class="ms-3">
                                                <p class="fw-bold mb-1"> ${quotation.proposerName}</p>
                                                <p class="text-muted mb-0">${quotation.email}</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <p class="fw-bold mb-1">INS${quotation.vin}</p>
                                    </td>
                                    <td>
                                        <c:if test="${quotation.status=='PENDING'}">
                                            <span class="badge badge-primary">${quotation.status}</span>
                                        </c:if>
                                        <c:if test="${quotation.status=='ACCEPTED'}">
                                            <span class="badge badge-success">${quotation.status}</span>
                                        </c:if>
                                        <c:if test="${quotation.status=='REJECTED'}">
                                            <span class="badge badge-warning">${quotation.status}</span>
                                        </c:if>
                                    </td>
                                    <td>
                                        <a href=ShowQuotation?quotationId=${quotation.quotationId}>
                                            <span class="badge bg-success">Action</span>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </c:if>
                </table>
            </div>
        </div>
    </div>


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
    <script
        type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"
    ></script>
</body>

</html>
