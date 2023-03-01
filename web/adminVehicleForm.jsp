<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Modal -->
<div class="modal fade" id="adminVehicleForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5">Enter new vehicle details</h1>
                <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close" style="background-size: 40%"></button>
            </div>
            <div class="modal-body">
                <form class="container p-2" method="post" data-table="vehicleTable" action="SubmitVehicleInfo" onsubmit="handleFormSubmission(event)">
                    <div class="mb-3">
                        <label for="vehicleMake" class="form-label">Make</label>
                        <input type="text" class="form-control" id="vehicleMake" name="vehicleMake">
                    </div>
                    <div class="mb-3">
                        <label for="vehicleModel" class="form-label">Model</label>
                        <input type="text" class="form-control" id="vehicleModel" name="vehicleModel">
                    </div>
                    <div class="mb-3">
                        <label for="dateOfManufacture" class="form-label">Year of Manufacture</label>
                        <input type="text" class="form-control" id="dateOfManufacture" name="dateOfManufacture">
                    </div>
                    <div class="mb-3">
                        <label for="weightage" class="form-label">Weightage</label>
                        <input type="text" class="form-control" id="weightage" name="weightage">
                    </div>

                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>

        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.3.js"
        integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" 
        crossorigin="anonymous">
</script>


<script>

    function fetchList(selectedId, targetId) {
        $.ajax({
            url: 'PreAddVehicleData',
            data: {
                [selectedId]: $("#" + selectedId).val()
            },
            success: function (responseText) {
                $("#" + targetId).html(responseText);
            }
        });
    }
</script>