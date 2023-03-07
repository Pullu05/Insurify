<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="vehicle" value="${SpecificVehicleInfo}"/>

<div class="modal-header">
    <h1 class="modal-title fs-5">Edit Vehicle Info</h1>
    <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close" style="background-size: 40%"></button>
</div>
<div class="modal-body">
    <form class="container p-2" method="post" data-table="vehicleTable" action="UpdateVehicleInfo" onsubmit="handleAdditionOfData(event)">
        <div class="mb-3">
            <label for="vehicleId" class="form-label">Vehicle Id</label>
            <input type="text" class="form-control" id="vehicleId" name="vehicleId" value="${vehicle.vehicleId}" readonly >
        </div>

        <div class="mb-3">
            <label for="vehicleMake" class="form-label">Make</label>
            <input type="text" class="form-control" id="vehicleMake" name="vehicleMake" value="${vehicle.vehicleMake}" required>
        </div>

        <div class="mb-3">
            <label for="vehicleModel" class="form-label">Model</label>
            <input type="text" class="form-control" id="vehicleModel" name="vehicleModel" value="${vehicle.vehicleModel}" required>
        </div>

        <div class="mb-3">
            <label for="dateOfManufacture" class="form-label">Year of Manufacture</label>
            <input type="text" class="form-control" id="dateOfManufacture" name="dateOfManufacture" value="${vehicle.dateOfManufacture}" required>
        </div>

        <div class="mb-3">
            <label for="weightage" class="form-label">Weightage</label>
            <input type="text" class="form-control" id="weightage" name="weightage" value="${vehicle.weightage}" required>
        </div>

        <div class="d-flex justify-content-end gap-2 mt-4">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Update</button>
        </div>
    </form>
</div>

