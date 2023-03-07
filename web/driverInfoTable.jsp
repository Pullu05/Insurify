<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<div class="card recent-sales overflow-auto">

    <div class="card-body">
        <h5 class="card-title">Driver Details</h5>
        <table class="table table-borderless datatable driver-table">
            <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Driver Age</th>
                    <th scope="col">Medical History</th>
                    <th scope="col">Weightage</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${DriverInfoList}" var="driverInfo">
                    <tr>
                        <th scope="row"><c:out value="${driverInfo.id}"> </c:out></th>
                        <td><c:out value="${driverInfo.driverAge}"> </c:out></td>
                        <td><c:out value="${driverInfo.medicalHistory}"> </c:out></td>
                        <td><c:out value="${driverInfo.weightage}"> </c:out></td>
                            <td>
                                <span class="badge text-bg-success btn" data-bs-toggle="modal" data-bs-target="#editModal" onclick="handleEditForm('EditDriverInfo?id=${driverInfo.id}')" > Edit</span>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </div>

</div>