<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="login_check" value="${LoggedIn}"/>
<c:if test="${login_check==null}">
    <c:redirect url="login.jsp"></c:redirect>
</c:if>
<!DOCTYPE html>
<html lang="en" class="h-100">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Insurify - Automobile</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="images/logo.jpg" rel="icon">


        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
            rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet">
        <link href="assets/css/forms.css" rel="stylesheet">
        <style>
            /* Chrome, Safari, Edge, Opera */
            input::-webkit-outer-spin-button,
            input::-webkit-inner-spin-button {
                -webkit-appearance: none;
                margin: 0;
            }

            /* Firefox */
            input[type=number] {
                -moz-appearance: textfield;
            }
        </style>

    </head>

    <body class="d-flex flex-column h-100">

        <header id="header" class="fixed-top">
            <jsp:include page="navbar.jsp"></jsp:include>
            </header>


            <main class="flex-grow-1">
                <div style="margin-top: 100px" class="container d-flex justify-content-center align-items-center">


                    <button data-sectionid="vehicleData" type="button" class="btn btn-success mx-2 custom-btn" onclick="handleAutomobileSectionChange(event)">Enter Vehicle Data</button>
                    <button data-sectionid="insurantData" type="button" class="btn btn-secondary mx-2 custom-btn" onclick="handleAutomobileSectionChange(event)">Enter Insurant Data</button>
                    <button data-sectionid="planData" type="button" class="btn btn-secondary mx-2 custom-btn" onclick="handleAutomobileSectionChange(event)" >Select Your Plan</button>
                    <button data-sectionid="sendData" type="button" class="btn btn-secondary mx-2 custom-btn" onclick="handleAutomobileSectionChange(event)">Send Quote</button>


                </div>

                <section id="vehicleData" class="automobileFormSection d-block pt-5"><jsp:include page="vehicleData.jsp"></jsp:include></section>
            <section id="insurantData" class="automobileFormSection d-none pt-5"><jsp:include page="insurantData.jsp"></jsp:include></section>
            <section id="planData" class="automobileFormSection d-none pt-5"><jsp:include page="subscriptionPlans.jsp"></jsp:include></section>
            <section id="sendData" class="automobileFormSection d-none pt-5"><jsp:include page="sendQuote.jsp"></jsp:include></section>
            </main>

            <footer id="footer">
            <jsp:include page="footer.jsp"></jsp:include>
        </footer>

        <script src="javascript/automobileInsurance.js"></script>
    </body>

</html>