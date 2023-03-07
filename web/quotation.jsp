<%@page import="com.exavalu.models.Vehicle"%>
<%@page import="java.util.Random"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDateTime"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="user" value="${User}"/>
<c:set var="insurant" value="${InsurantData}"/>
<c:set var="vehicle" value="${VehicleData}"/>

<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Fonts -->
        <link rel="dns-prefetch" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

        <link href="images/logo.jpg" rel="icon">

        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.5.0-beta4/html2canvas.min.js"></script>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">

        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>

        <style>

            body{
                margin: 0;
                font-size: .9rem;
                font-weight: 400;
                line-height: 1.6;
                color: #212529;
                text-align: left;
                background-color: #f5f8fa;
            }

            .navbar-laravel
            {
                box-shadow: 0 2px 4px rgba(0,0,0,.04);
            }

            .navbar-brand , .nav-link, .my-form, .login-form
            {
                font-family: Arial, sans-serif;
            }

            .my-form
            {
                padding-top: 1.5rem;
                padding-bottom: 1.5rem;
            }

            .my-form .row
            {
                margin-left: 0;
                margin-right: 0;
            }

            .login-form
            {
                padding-top: 1.5rem;
                padding-bottom: 1.5rem;
            }

            .login-form .row
            {
                margin-left: 0;
                margin-right: 0;
            }
            #pdf-content{
                margin: 40px auto;
            }

            #pdf-content .form-control{
                background: #f4f4f4;
            }

            #pdf-content .form-control:focus{
                border-color: #dee2e6;
                box-shadow: none;
                outline: 0;
            }
            img{
                margin-right: 10px;
            }
        </style>

        <title>Quotation Details</title>
    </head>
    <body>
        <main class="my-form">

            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Send Quotation</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="SendQuotation" method="post" onsubmit="sendQuotationToMail(event)">
                                <div class="row mb-3">
                                    <label for="email" class="col-sm-2 col-form-label">E-Mail</label>
                                    <div class="col-sm-10">
                                        <input type="email" class="form-control" id="email" name="email">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="phone" class="col-sm-2 col-form-label">Phone</label>
                                    <div class="col-sm-10">
                                        <input type="tel" class="form-control" id="phone" name="phone">
                                    </div>
                                </div>
                                <div class="d-flex justify-content-center">
                                    <button type="submit" class="btn btn-primary px-4 d-flex align-items-center gap-2">
                                        <div class="spinner-border spinner-border-sm text-light d-none" role="status">
                                            <span class="visually-hidden">Loading...</span>
                                        </div>
                                        <span>Send</span>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <form action="SubmitQuotationData" method="post" onsubmit="saveQuotation(event)">
                <div class="cotainer col-md-11" id="pdf-content">
                    <div class="card flex py-4 rounded-bottom-0 border-bottom-0">
                        <!--<div class="card-header"><img src="images\OIP.jpeg" height="85px" style="margin-top:-10px;">-->
                        <!--<h2 class="text-center m-0"><img src="images/logo.jpg"class="rounded-circle" style="filter: invert(1);" width="50px" height="35px" alt="logo"/>Insurify India Pvt Ltd</h2>-->
                        <h2 class="text-center m-0"><img src="images/logo.jpg"class="rounded-circle" style="filter: invert(1);" width="50px" height="35px" alt="logo"/>Insurify India Pvt Ltd</h2>
                    </div>
                    <div class="card rounded-0 border-bottom-0">
                        <div class="card-header py-3">
                            <h6 class="m-0">Company Details</h6>
                        </div>
                        <div class="card-body d-flex flex-column gap-3 py-4">
                            <div class="input-group row">
                                <label class="col-sm-2 col-form-label">Company Name</label>

                                <div class="col-sm-8">
                                    <input id="name" class="form-control" name="companyname" type="text" value = "Insurify India Pvt Ltd" readonly >
                                </div>
                            </div>

                            <div class="input-group row">
                                <label class="col-sm-2 col-form-label">Proposal Number</label>
                                <div class="col-sm-8">
                                    <% Vehicle v = (Vehicle) session.getAttribute("VehicleData");
                                        String proposeNumber = "INS" + v.getVin();
                                    %>
                                    <input id="proposalno" class="form-control" name="proposalNo" type="text" value = "<%=proposeNumber%>" readonly >
                                </div>
                            </div>

                            <div class="input-group row">
                                <label class="col-sm-2 col-form-label">Company Address</label>
                                <div class="col-sm-4">
                                    <input  type="text" class="form-control" id="companyadd" name="companyadd" value = "10th Floor, 1 Ho Chi Minh Sarani" readonly >

                                </div>
                                <!--<div class="col-sm-1"></div>-->
                                <label class="col-sm-1 col-form-label">District</label>
                                <div class="col-sm-3">
                                    <input  type="text" class="form-control" id="companydist" name="companydist" value = "Kolkata" readonly >

                                </div>
                            </div>

                            <div class="input-group row">
                                <label class="col-sm-2 col-form-label">State</label>
                                <div class="col-sm-4">
                                    <input  type="text" class="form-control" id="companystate" name="companystate" value = "West-Bengal" readonly >

                                </div>
                                <!--<div class="col-sm-1"></div>-->
                                <label class="col-sm-1 col-form-label">Pin Code</label>
                                <div class="col-sm-3">
                                    <input  type="text" class="form-control" id="companypincode" name="companypincode" value = "743122" readonly >

                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="card rounded-0 border-bottom-0">
                        <div class="card-header py-3">
                            <h6 class="m-0">Quotation For Your Car</h6>
                        </div>
                        <div class="card-body d-flex flex-column gap-3 py-4">
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">E-Mail Address</label>

                                <div class="col-sm-8">
                                    <input id="email" class="form-control" name="email" type="email" value = "${user.email}" readonly>

                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Aadhaar Number</label>
                                <div class="col-sm-8">
                                    <input id="phone" class="form-control" name="aadhaarNo" type="txt" value = "${insurant.aadhaarNo}" readonly >
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Proposer Name</label>
                                <div class="col-sm-8">
                                    <input  type="text" class="form-control" id="proposerName" name="proposerName" value = "${insurant.firstName} ${insurant.lastName}" readonly >
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Quotation Date</label>
                                <div class="col-sm-8">
                                    <% SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
                                        Date date = new Date();
                                        String now = formatter.format(date);%>
                                    <input  type="text" class="form-control" id="iquotationdate" name="quotationDate" value = "<%=now%>" readonly >
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">IDV Value</label>
                                <div class="col-sm-3">
                                    <input  type="text" class="form-control" id="idvValue" name="idvValue" value = "${CVRG}" readonly >

                                </div>
                                <label class="col-sm-2 col-form-label">VIN Number</label>
                                <div class="col-sm-3">
                                    <input  type="text" class="form-control" id="vin" name="vin" value = "${vehicle.vin}" readonly >

                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">CC</label>
                                <div class="col-sm-3">
                                    <input  type="text" class="form-control" id="cc" name="cc" value = "${vehicle.enginePerformance}" readonly >

                                </div>
                                <label class="col-sm-2 col-form-label">Plate Number</label>
                                <div class="col-sm-3">
                                    <input  type="text" class="form-control" id="licensePlateNumber" name="licensePlateNumber" value = "${vehicle.licensePlateNumber}" readonly >

                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label">Vehicle Make</label>
                                <div class="col-sm-3">
                                    <input  type="text" class="form-control" id="vmake" name="make" value = "${vehicle.make}" readonly >

                                </div>
                                <label class="col-sm-2 col-form-label">Vehicle Model</label>
                                <div class="col-sm-3">
                                    <input  type="text" class="form-control" id="vmodel" name="model" value = "${vehicle.model}" readonly >

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card rounded-0 border-bottom-0">
                        <div class="card-header py-3">
                            <h6 class="m-0">Premium Details</h6>
                        </div>
                        <!--<div class="card-header" style="margin-left: -1.25rem; width: calc(100% + 2.5rem)">Premium Details</div>-->
                        <div class="card-body">
                            <div class="form-group row">
                                <div class="col-sm-3">
                                    <label class="col-form-label pb-3">Plan Name</label>
                                    <div>
                                        <input  type="text" class="form-control" id="ownpremium" name="planName" value = "${PlanName}" readonly >
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <label class="col-form-label pb-3">Own Damage Premium(A)</label>
                                    <div>
                                        <input  type="text" class="form-control" id="ownpremium" name="premium" value = "${PRM}" readonly >
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <label class="col-form-label pb-3">Liability - Premium (B)</label>
                                    <c:set var = "libPrem" value="5580"></c:set>
                                        <div>
                                            <input  type="text" class="form-control" id="liabpremium" name="liabPremium" value ="${libPrem}" readonly >
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <label class="col-form-label pb-3">Total Premium(A+B)</label>
                                    <c:set var = "libPrem" value="5580"></c:set>
                                        <div>
                                            <input  type="text" class="form-control" id="totpremium" name="totalPremium" value ="${PRM+libPrem}" readonly >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card rounded-top-0">
                        <div class="card-header py-3">
                            <h6 class="m-0">Declaration</h6>
                        </div>
                        <div class="card-body py-4">
                            <div class="form-group row mr-2">
                                <div class="col-sm-12">
                                    I/ we hereby declare and state that the above statements made by me/ us are true and complete. No part of it is false. I/ we desire to effectan insurance as describe herein with
                                    Future General India Insurance Co. Ltd.
                                    and I/ we agree that this proposal and declarations shall be the basis of contract between me/ us and the
                                    Future General India Insurance Co. Ltd.
                                    and I/ we agree to accept the policy subject to the condition specified by the Insurance Company.
                                    I/ we agree to receive the policy document (without enclosing the terms and conditions of policy) from the company and authorise the company to displayTerms and Conditions of the policy on its website that enables access by me.
                                    I hereby confirm that I have mandated Insurify India Pvt Ltd. to place my insurance cover and have read and agreed on the terms andconditions and also give my unconditional consent for receiving a call from Insurify India Pvt Ltd. Brokers or its affiliated entities on my number even if thenumber is enrolled under NDNC/DND registry

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="d-flex justify-content-center mb-4">
                    <div id="saveBtn">
                        <button type="submit" class="btn btn-primary me-3">
                            SAVE QUOTATION
                        </button>
                        <a href="index.jsp">
                            <button type="button" class="btn btn-primary">
                                CANCEL
                            </button>
                        </a>
                    </div>

                    <div class="d-none" id="btnGroup">
                        <button type="button" class="btn btn-primary me-3" id="GetFile">
                            DOWNLOAD YOUR QUOTATION
                        </button>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            SEND YOUR QUOTATION
                        </button>
                    </div>
                </div>
            </form>
        </main>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <script src='javascript/quotation.js' ></script>

    </body>
</html>