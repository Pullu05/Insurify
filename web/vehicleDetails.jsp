<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<script>
    function showVehicleTable() {
        vehicleTable.classList.toggle("d-none");
    }

</script>

<div class="pagetitle">
    <h1>Dashboard</h1>
</div>
<section class="section dashboard">
    <div class="row">

        <div class="row">

            <div class="col-xxl-4 col-md-6">
                <div class="card">
                    <button type="button" class="btn btn-outline-light" onclick="showVehicleTable()">
                        <div class="card-body">
                            <h5 class="card-title text-center">Show Vehicle Details</h5>
                        </div>
                    </button>
                </div>
            </div>
            <div class="col-xxl-4 col-md-6">
                <div class="card">
                    <jsp:include page="adminVehicleForm.jsp"></jsp:include>
                        <button type="button" class="btn btn-outline-light" data-bs-toggle="modal" data-bs-target="#adminVehicleForm">
                            <div class="card-body">
                                <h5 class="card-title text-center">Add Vehicle Details</h5>
                            </div>
                        </button>
                    </div>
                </div>



                <div id="vehicleTable" class="d-none">
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
                                        <td><span class="badge bg-success">Edit</span></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>

                    </div>

                </div>
            </div>

        </div>

    </div>
</section>
