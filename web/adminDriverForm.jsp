<%-- 
    Document   : adminDriverForm
    Created on : 27-Feb-2023, 3:39:22 pm
    Author     : Subhadip Sarkar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">


    </head>
    <body>
        <form class="container p-5" method="post" action=""> 
            <h1>Enter new driver details</h1>
            <div class="mb-3">
                <label for="licenseNo" class="form-label">License No</label>
                <input type="text" class="form-control" id="licenseNo" name="licenseNo">
            </div>

       
            <div class="mb-3">
                <label for="driverAge" class="form-label">Age</label>
                <input type="text" class="form-control" id="driverAge" name="driverAge">
            </div>
            <div class="mb-3">
                <label for="noOfChallans" class="form-label">Number of Challans</label>
                <input type="text" class="form-control" id="noOfChallans" name="noOfChallans">
            </div>
            <div class="mb-3">
                <label for="driverMedicalHistory" class="form-label">Medical History</label>
                <input type="text" class="form-control" id="driverMedicalHistory" name="medicalHistory">
            </div>
            <div class="mb-3">
                <label for="driverWeightage" class="form-label">Weightage</label>
                <input type="text" class="form-control" id="driverWeightage" name="weightage">
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </body>
</html>
