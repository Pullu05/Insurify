<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<script>
    function showDriverTable() {
        driverTable.classList.toggle("d-none");
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
                    <button type="button" class="btn btn-outline-light" onclick="showDriverTable()">
                        <div class="card-body">
                            <h5 class="card-title text-center">Show Driver Details</h5>
                        </div>
                    </button>
                </div>
            </div>
            <div class="col-xxl-4 col-md-6">
                <div class="card">
                    <jsp:include page="adminDriverForm.jsp"></jsp:include>
                        <button type="button" class="btn btn-outline-light" data-bs-toggle="modal" data-bs-target="#adminDriverForm">
                            <div class="card-body">
                                <h5 class="card-title text-center">Add Driver Details</h5>
                            </div>
                        </button>
                    </div>
                </div>


                <!-- Table -->
                <div id="driverTable" class="d-none">
                <jsp:include page="driverInfoTable.jsp"></jsp:include>
            </div>


        </div>

    </div>
</section>