<%-- 
    Document   : showQutation
    Created on : 05-Mar-2023, 12:31:16 pm
    Author     : RISHAV DUTTA
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="quotation" value="${IdSpecificQuotataion}"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Fonts -->
        <link rel="dns-prefetch" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

        <link rel="icon" href="Favicon.png">

        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.5.0-beta4/html2canvas.min.js"></script>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
        <title>Show Quotation</title>
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
            .acpt_reject_btn{
                display: flex;
                justify-content: center;
                gap: 1rem;
                margin-top: 15px;
            }
        </style>
    </head>
    <body>
        <div class="cotainer col-md-11" id="pdf-content">
            <div class="card flex py-4 rounded-bottom-0 border-bottom-0">
                <!--<div class="card-header"><img src="images\OIP.jpeg" height="85px" style="margin-top:-10px;">-->
                <h2 class="text-center m-0">Insurify India Pvt Ltd</h2>
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
                            <input id="proposalno" class="form-control" name="proposalNo" type="text" value = "INS${quotation.vin}"  readonly >
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
                            <input id="email" class="form-control" name="email" type="email" value = "${quotation.email}" readonly>

                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Aadhaar Number</label>
                        <div class="col-sm-8">
                            <input id="phone" class="form-control" name="aadhaarNo" type="txt" value = "${quotation.aadhaarNo}" readonly >
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Proposer Name</label>
                        <div class="col-sm-8">
                            <input  type="text" class="form-control" id="proposerName" name="proposerName" value = "${quotation.proposerName}" readonly >
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Quotation Date</label>
                        <div class="col-sm-8">

                            <input  type="text" class="form-control" id="iquotationdate" name="quotationDate" value = "${quotation.quotationDate}" readonly >
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">IDV Value</label>
                        <div class="col-sm-3">
                            <input  type="text" class="form-control" id="idvValue" name="idvValue" value = "${quotation.idvValue}" readonly >

                        </div>
                        <label class="col-sm-2 col-form-label">VIN Number</label>
                        <div class="col-sm-3">
                            <input  type="text" class="form-control" id="vin" name="vin" value = "${quotation.vin}" readonly >

                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">CC</label>
                        <div class="col-sm-3">
                            <input  type="text" class="form-control" id="cc" name="cc" value = "${quotation.cc}" readonly >

                        </div>
                        <label class="col-sm-2 col-form-label">Plate Number</label>
                        <div class="col-sm-3">
                            <input  type="text" class="form-control" id="licensePlateNumber" name="licensePlateNumber" value = "${quotation.licensePlateNumber}" readonly >

                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 col-form-label">Vehicle Make</label>
                        <div class="col-sm-3">
                            <input  type="text" class="form-control" id="vmake" name="make" value = "${quotation.make}" readonly >

                        </div>
                        <label class="col-sm-2 col-form-label">Vehicle Model</label>
                        <div class="col-sm-3">
                            <input  type="text" class="form-control" id="vmodel" name="model" value = "${quotation.model}" readonly >

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
                                <input  type="text" class="form-control" id="ownpremium" name="planName" value = "${quotation.planName}" readonly >
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <label class="col-form-label pb-3">Own Damage Premium(A)</label>
                            <div>
                                <input  type="text" class="form-control" id="ownpremium" name="premium" value = "${quotation.premium}" readonly >
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <label class="col-form-label pb-3">Liability - Premium (B)</label>
                            <c:set var = "libPrem" value="5580"></c:set>
                                <div>
                                    <input  type="text" class="form-control" id="liabpremium" name="liabPremium" value ="${quotation.liabPremium}" readonly >
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <label class="col-form-label pb-3">Total Premium(A+B)</label>
                            <c:set var = "libPrem" value="5580"></c:set>
                                <div>
                                    <input  type="text" class="form-control" id="totpremium" name="totalPremium" value ="${quotation.totalPremium}" readonly >
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

            <div class="acpt_reject_btn">
                <c:if test="${quotation.status=='PENDING'}">
                    <form action="SaveStatus" method="post">
                        <button value="1" name="status" type="submit" class="btn btn-primary btn-lg">Accept</button>  
                        <button value="0" name="status" type="submit" class="btn btn-danger btn-lg">Reject</button> 
                    </form>
                </c:if>
                <c:if test="${quotation.status!='PENDING'}">
                    <button disabled class="btn btn-dark btn-lg">${quotation.status}</button>  
                </c:if>
            </div>
        </div>

    </body>
</html>
