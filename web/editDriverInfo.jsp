<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Modal -->
<div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Edit Driver Info</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
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
                        <input type="text" class="form-control" id="noOfChallans" name="noOfChallans" value="${driver.noOfChallans}" required>
                    </div>
                    <div class="mb-3">
                        <label for="driverMedicalHistory" class="form-label">Medical History</label>
                        <select id="driverMedicalHistory" name="medicalHistory" class="form-control" required>
                            <option value="" >select Medical History</option>
                            <option value="Good" <c:if test="${driver.medicalHistory=='Good'}"> selected </c:if>>Good</option>
                            <option value="Average" <c:if test="${driver.medicalHistory=='Average'}"> selected </c:if>>Average</option>
                            <option value="Bad" <c:if test="${driver.medicalHistory=='Bad'}"> selected </c:if>>Bad</option>
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
                </form>
            </div>

        </div>
    </div>
</div>