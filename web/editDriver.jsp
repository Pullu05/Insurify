<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Driver Data</title>


        <link href="images/logo.jpg" rel="icon">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <style>
            #editDriver{
                margin: auto;
                width: 50%;
                padding: 30px 20px;
                padding-left: 40px;
            }



            .form-group row{
                margin: 25px 0px;
            }

        </style>



    </head>
    <body>
        <c:set var="driver" value="${specificDriverInfo}"/>
        <section id="editDriver" class="rounded  border border-dark mt-1" >
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Edit Driver Info</h1>
            </div>
            <form class="container p-5" method="post" action="UpdateDriverInfo">
                <div class="form-group row">
                    <label for="id" class="form-label">Id</label>
                    <div class="mb-3">
                        <input type="text" class="form-control" id="id" name="id" value="${driver.id}" readonly >
                    </div>
                </div>
                <div class="form-group row">
                    <label for="driverAge" class="form-label">Age</label>
                    <div class="mb-3">

                        <input type="text" class="form-control" id="driverAge" name="driverAge" value="${driver.driverAge}" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="noOfChallans" class="form-label">Number of Challans</label>
                    <div class="mb-3">

                        <input type="text" class="form-control" id="noOfChallans" name="noOfChallans" value="${driver.noOfChallans}" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="driverMedicalHistory" class="form-label">Medical History</label>
                    <div class="mb-3">

                        <select id="driverMedicalHistory" name="medicalHistory" class="form-control" required>
                            <option value="" >select Medical History</option>
                            <option value="Good" <c:if test="${driver.medicalHistory=='Good'}"> selected </c:if>>Good</option>
                            <option value="Average" <c:if test="${driver.medicalHistory=='Average'}"> selected </c:if>>Average</option>
                            <option value="Bad" <c:if test="${driver.medicalHistory=='Bad'}"> selected </c:if>>Bad</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="driverWeightage" class="form-label">Weightage</label>
                        <div class="mb-3">

                            <input type="text" class="form-control" id="driverWeightage" name="weightage" value="${driver.weightage}" required>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="modal-footer">

                        <button type="submit" class="btn btn-primary">Update</button>
                    </div>
                </div>


            </form>
        </section>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </body>
</html>
