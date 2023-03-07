<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="driver" value="${SpecificDriverInfo}"/>

<div class="modal-header">
    <h1 class="modal-title fs-5">Edit Driver Info</h1>
    <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close" style="background-size: 40%"></button>
</div>
<div class="modal-body">
    <form class="container p-2" method="post" data-table="driverTable" action="UpdateDriverInfo" onsubmit="handleAdditionOfData(event)">
        <div class="mb-3">
            <label for="id" class="form-label">Id</label>
            <input type="text" class="form-control" id="id" name="id" value="${driver.id}" readonly >
        </div>

        <div class="mb-3">
            <label for="driverAge" class="form-label">Age</label>
            <input type="text" class="form-control" id="driverAge" name="driverAge" value="${driver.driverAge}" required>
        </div>
        <div class="mb-3">
            <label for="driverMedicalHistory" class="form-label">Medical History</label>
            <select id="driverMedicalHistory" name="medicalHistory" class="form-control" required>
                <option value="" >Select Medical History</option>
                <option value="Good" <c:if test="${driver.medicalHistory=='Good'}"> selected </c:if>>Good</option>
                <option value="Average" <c:if test="${driver.medicalHistory=='Average'}"> selected </c:if>>Average</option>
                <option value="Bad" <c:if test="${driver.medicalHistory=='Bad'}"> selected </c:if>>Bad</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="driverWeightage" class="form-label">Weightage</label>
                <input type="text" class="form-control" id="driverWeightage" name="weightage" value="${driver.weightage}" required>
        </div>
        <div class="d-flex justify-content-end gap-2 mt-4">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Update</button>
        </div>
    </form>
</div>

