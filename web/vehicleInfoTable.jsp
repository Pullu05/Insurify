<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<div class="card recent-sales overflow-auto">

    <div class="card-body">
        <h5 class="card-title">Vehicle Details</h5>

        <table class="table table-borderless datatable">
            <thead>
                <tr>
                    <th scope="col">Vehicle Id</th>
                    <th scope="col">Vehicle Make</th>
                    <th scope="col">Vehicle Model</th>
                    <th scope="col">Vehicle MFD</th>
                    <th scope="col">Weightage</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${VehicleInfoList}" var="vehicleInfo">
                    <tr>
                        <th scope="row">${vehicleInfo.vehicleId}</th>
                        <td>${vehicleInfo.vehicleMake}</td>
                        <td>${vehicleInfo.vehicleModel}</td>
                        <td>${vehicleInfo.dateOfManufacture}</td>
                        <td>${vehicleInfo.weightage}</td>
                        <td>
                            <span class="badge text-bg-success btn" data-bs-toggle="modal" data-bs-target="#editModal" onclick="handleEditForm('EditVehicleInfo?vehicleId=${vehicleInfo.vehicleId}')" > Edit</span>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </div>

</div>