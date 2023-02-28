
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Enter new driver details</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form class="container p-5" method="post" action="SubmitDriverInfo">
                    <div class="mb-3">
                        <label for="driverAge" class="form-label">Age</label>
                        <input type="text" class="form-control" id="driverAge" name="driverAge" required>
                    </div>
                    <div class="mb-3">
                        <label for="noOfChallans" class="form-label">Number of Challans</label>
                        <input type="text" class="form-control" id="noOfChallans" name="noOfChallans"required>
                    </div>
                    <div class="mb-3">
                        <label for="driverMedicalHistory" class="form-label">Medical History</label>
                        <select id="driverMedicalHistory" name="medicalHistory" class="form-control" required>
                            <option value="" >select Medical History</option>
                            <option value="Good" >Good</option>
                            <option value="Average" >Average</option>
                            <option value="Bad" >Bad</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="driverWeightage" class="form-label">Weightage</label>
                        <input type="text" class="form-control" id="driverWeightage" name="weightage" required>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>

