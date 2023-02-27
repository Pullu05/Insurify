<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<script>
    function showDriverTable() {
        drivertable.classList.toggle("d-none");
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
                    <button type="button" class="btn btn-outline-light" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        <div class="card-body">
                            <h5 class="card-title text-center">Add Driver Details</h5>
                        </div>
                    </button>
                </div>
            </div>


            <!-- Table -->
            <div id="drivertable" class="d-none">
                <div class="card recent-sales overflow-auto">

                    <div class="card-body">
                        <h5 class="card-title">Driver Details</h5>

                        <table class="table table-borderless datatable">
                            <thead>
                                <tr>
                                    <th scope="col">Driver License No</th>
                                    <th scope="col">Driver Name</th>
                                    <th scope="col">Driver Age</th>
                                    <th scope="col">Medical History</th>
                                    <th scope="col">Number Of Challans</th>
                                    <th scope="col">Weightage</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${DriverInfoList}" var="driverInfo">
                                <tr>
                                    <th scope="row"><c:out value="${driverInfo.licenseNo}"> </c:out></th>
                                <td><c:out value="${driverInfo.driverName}"> </c:out></td>
                                <td><c:out value="${driverInfo.driverAge}"> </c:out></td>
                                <td><c:out value="${driverInfo.medicalHistory}"> </c:out></td>
                                <td><c:out value="${driverInfo.noOfChallans}"></c:out></td>
                                <td><c:out value="${driverInfo.weightage}"> </c:out></td>
                                <td><span class="badge bg-success">Edit</span></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>

                    </div>

                </div>
            </div><!-- End Table -->

        </div>

    </div>
</section>