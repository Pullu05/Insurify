<!-- Modal -->
<div class="modal fade" id="adminDriverForm" tabindex="-1" aria-labelledby="adminDriverForm" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5">Enter new driver details</h1>
                <button type="button" class="btn-close p-2" data-bs-dismiss="modal" aria-label="Close" style="background-size: 40%"></button>
            </div>
            <div class="modal-body">
                <form class="container p-2" method="post" data-table="driverTable" action="SubmitDriverInfo" onsubmit="handleAdditionOfData(event)">
                    <div class="mb-3">
                        <label for="driverAge" class="form-label">Age</label>
                        <input type="text" class="form-control" id="driverAge" name="driverAge" required>
                    </div>
                    <div class="mb-3">
                        <label for="driverMedicalHistory" class="form-label">Medical History</label>
                        <select id="driverMedicalHistory" name="medicalHistory" class="form-control" required>
                            <option value="" >Select Medical History</option>
                            <option value="Good" >Good</option>
                            <option value="Average" >Average</option>
                            <option value="Bad" >Bad</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="driverWeightage" class="form-label">Weightage</label>
                        <input type="text" class="form-control" id="driverWeightage" name="weightage" required>
                    </div>
                    <div class="d-flex justify-content-end gap-2 mt-4">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>

