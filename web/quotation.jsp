<style>
    @import url(https://fonts.googleapis.com/css?family=Raleway:300,400,600);


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
</style>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Fonts -->
        <link rel="dns-prefetch" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



        <link rel="icon" href="Favicon.png">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

        <title>Quotation Details</title>
    </head>
    <body>
        <main class="my-form">
            <div class="cotainer">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card flex">
                            <div class="card-header"><img src="images\OIP.jpeg" height="85px" style="margin-top:-10px;">
                                <h2>The New India Assurance pvt ltd</h2></div>
                        </div>
                        <div class="card">
                            <div class="card-header">Company Details</div>
                            <div class="card">
                                <div class="card-body">
                                    <form name="my-form" onsubmit="return validform()" action="success.php" method="">
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Company Name</label>

                                            <div class="col-sm-8">
                                                <input id="name" class="form-control" name="companyname" type="text" value = "The New India Assurance pvt ltd" readonly>

                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Proposal Number</label>
                                            <div class="col-sm-8">
                                                <input id="proposalno" class="form-control" name="proposalno" type="text" value = "P55789458" readonly>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Company Address</label>
                                            <div class="col-sm-4">
                                                <input  type="text" class="form-control" id="companyadd" name="companyadd" value = "10th Floor, 1 Ho Chi Minh Sarani" readonly>

                                            </div>
                                            <label class="col-sm-2 col-form-label">District</label>
                                            <div class="col-sm-2">
                                                <input  type="text" class="form-control" id="companydist" name="companydist" value = "Kolkata" readonly>

                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">State</label>
                                            <div class="col-sm-3">
                                                <input  type="text" class="form-control" id="companystate" name="companystate" value = "West-Bengal" readonly>

                                            </div>
                                            <label class="col-sm-2 col-form-label">Pin Code</label>
                                            <div class="col-sm-3">
                                                <input  type="text" class="form-control" id="companypincode" name="companypincode" value = "743122" readonly>

                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="card-header">Quotation For Your Car</div>
                                <div class="card-body">
                                    <form name="my-form" onsubmit="return validform()" action="success.php" method="">
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">E-Mail Address</label>

                                            <div class="col-sm-8">
                                                <input id="email" class="form-control" name="email" type="email" required>

                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Phone Number</label>
                                            <div class="col-sm-8">
                                                <input id="phone" class="form-control" name="phone" type="tel">
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Proposer Name</label>
                                            <div class="col-sm-8">
                                                <input  type="text" class="form-control" id="proposername" name="proposerName" required>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Quotation Date</label>
                                            <div class="col-sm-8">
                                                <input  type="text" class="form-control" id="invoicedate" name="invoiceDate" required>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">IDV Value</label>
                                            <div class="col-sm-3">
                                                <input  type="text" class="form-control" id="idvvalue" name="idvValue" required>

                                            </div>
                                            <label class="col-sm-2 col-form-label">VIN Number</label>
                                            <div class="col-sm-3">
                                                <input  type="text" class="form-control" id="vinnumber" name="vinNumber" required>

                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">CC</label>
                                            <div class="col-sm-3">
                                                <input  type="text" class="form-control" id="cc" name="cc" required>

                                            </div>
                                            <label class="col-sm-2 col-form-label">Plate Number</label>
                                            <div class="col-sm-3">
                                                <input  type="text" class="form-control" id="licensePlateNumber" name="licensePlateNumber" required>

                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Vehicle Make</label>
                                            <div class="col-sm-3">
                                                <input  type="text" class="form-control" id="vmake" name="make" required>

                                            </div>
                                            <label class="col-sm-2 col-form-label">Vehicle Model</label>
                                            <div class="col-sm-3">
                                                <input  type="text" class="form-control" id="vmodel" name="model" required>

                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label p-lg-4">Own Damage Premium(A)</label>
                                            <label class="col-sm-4 col-form-label p-lg-4">Liability - Premium (B)</label>
                                            <label class="col-sm-4 col-form-label p-lg-4">Total Premium(A+B)</label>
                                        </div>


                                        <div class="form-group row">
                                            <div class="col-sm-3 p-lg-3">
                                                <input  type="text" class="form-control" id="ownpremium" name="ownPremium" required>

                                            </div>
                                            <div class="col-sm-3 offset-1 p-lg-3">
                                                <input  type="text" class="form-control" id="liabpremium" name="liabPremium" value ="$ 5580" readonly>

                                            </div>
                                            <div class="col-sm-4 offset-1 p-lg-3">
                                                <input  type="text" class="form-control" id="totpremium" name="totPremium" required>

                                            </div>
                                        </div>
                                        <div class="form-group row mr-2">
                                            <div class="col-sm-10">
                                                <strong>Declaration:  </strong>
                                                I/ we hereby declare and state that the above statements made by me/ us are true and complete. No part of it is false. I/ we desire to effectan insurance as describe herein with
                                                Future Generali India Insurance Co. Ltd.
                                                and I/ we agree that this proposal and declarations shall be the basis ofcontract between me/ us and the
                                                Future Generali India Insurance Co. Ltd.
                                                and I/ we agree to accept the policy subject to the condition specified by theInsurance Company.
                                                I/ we agree to receive the policy document (without enclosing the terms and conditions of policy) from the company and authorise the company to displayTerms and Conditions of the policy on its website that enables access by me.
                                                I hereby confirm that I have mandated Aditya Birla Insurance Brokers Ltd. to place my insurance cover and have read and agreed on the terms andconditions and also give my unconditional consent for receiving a call from Aditya Birla Insurance Brokers or its affiliated entities on my number even if thenumber is enrolled under NDNC/DND registry

                                            </div>
                                        </div>


                                        <div class="col-md-6 offset-md-4">
                                            <button type="submit" class="btn btn-primary">
                                                DOWNLOAD THE PDF
                                            </button>
                                        </div>
                                </div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </main>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    </body>
</html>