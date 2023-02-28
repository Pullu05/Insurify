<%-- 
    Document   : editDriverInfo
    Created on : 28-Feb-2023, 10:53:37 am
    Author     : RISHAV DUTTA
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Edit Driver Info</h1>
        <c:set var="driver" value="${specificDriverInfo}"/>
        <form class="container p-5" method="post" action="UpdateDriverInfo">
            <div class="mb-3">
                <label for="id" class="form-label">Id</label>
                <input type="text" class="form-control" id="id" name="id" value="${driver.id}" readonly >
            </div>
            <div class="mb-3">
                <label for="driverAge" class="form-label">Age</label>
                <input type="text" class="form-control" id="driverAge" name="driverAge" value="${driver.driverAge}" required>
            </div>
            <div class="mb-3">
                <label for="noOfChallans" class="form-label">Number of Challans</label>
                <input type="text" class="form-control" id="noOfChallans" name="noOfChallans"value="${driver.noOfChallans}" required>
            </div>
            <div class="mb-3">
                <label for="driverMedicalHistory" class="form-label">Medical History</label>
                <select id="driverMedicalHistory" name="medicalHistory" class="form-control"  required>
                    <option value="Good" <c:if test="${driver.medicalHistory=='Good'}"> selected </c:if> >Good</option>
                    <option value="Average" <c:if test="${driver.medicalHistory=='Average'}"> selected </c:if>  >Average</option>
                    <option value="Bad" <c:if test="${driver.medicalHistory=='Bad'}"> selected </c:if>  >Bad</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="driverWeightage" class="form-label">Weightage</label>
                <input type="text" class="form-control" id="driverWeightage" name="weightage" value="${driver.weightage}" required>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
    </body>
</html>
