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
                <jsp:include page="vehicleInfoTable.jsp"></jsp:include>
            </div>

        </div>

    </div>
</section>
