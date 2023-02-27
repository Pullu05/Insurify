<%-- 
    Document   : adminVehicleForm
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

        <!--        <style>@media (min-width: 1025px) {
                        .h-custom {
                            height: 100vh !important;
                        }
                    }</style>-->

    </head>
    <body>
        <form class="container p-5" method="post" action=""> 
            <h1>Enter new vehicle details</h1>
            <div class="mb-3">
                <label for="vehicleMake" class="form-label">Make</label>
                <input type="text" class="form-control" id="vehicleMake" name="vehicleMake">
            </div>
            <div class="mb-3">
                <label for="vehicleModel" class="form-label">Model</label>
                <input type="text" class="form-control" id="vehicleModel" name="vehicleModel">
            </div>
            <div class="mb-3">
                <label for="dateofManufacture" class="form-label">Year of Manufacture</label>
                <input type="text" class="form-control" id="vehicleMake" name="vehicleMake">
            </div>
            <div class="mb-3">
                <label for="vehicleWeightage" class="form-label">Weightage</label>
                <input type="text" class="form-control" id="vehicleWeightage" name="vehicleWeightage">
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </body>
</html>
