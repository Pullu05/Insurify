<section class="rounded mt-3 formBlock">
    <form>

        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Start Date</label>
            <div class="col-sm-6">
                <input  type="date" class="form-control" id="startDate" name="startDate" type="text" placeholder="MM/DD/YYYY" class="datepicker">
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Insurance Sum [$]</label>
            <div class="col-sm-6">
                <select id="insuranceSum" name="insuranceSum" class="form-control">
                    <option value="default">&ndash; please select &ndash;</option>
                    <option value="3000000"> 3.000.000,00</option>
                    <option value="5000000"> 5.000.000,00</option>
                    <option value="7000000"> 7.000.000,00</option>
                    <option value="10000000"> 10.000.000,00</option>
                    <option value="15000000"> 15.000.000,00</option>
                    <option value="20000000"> 20.000.000,00</option>
                    <option value="25000000"> 25.000.000,00</option>
                    <option value="30000000"> 30.000.000,00</option>
                    <option value="35000000"> 35.000.000,00</option>
                </select>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Merit Rating</label>
            <div class="col-sm-6">
                <select id="meritRating" name="meritRating" class="form-control">
                    <option value="default">&ndash; please select &ndash;</option>
                    <option value="Super Bonus">Super Bonus</option>
                    <option value="Bonus 1">Bonus 1</option>
                    <option value="Bonus 2">Bonus 2</option>
                    <option value="Bonus 3">Bonus 3</option>
                    <option value="Bonus 4">Bonus 4</option>
                    <option value="Bonus 5">Bonus 5</option>
                    <option value="Bonus 6">Bonus 6</option>
                    <option value="Bonus 7">Bonus 7</option>
                    <option value="Bonus 8">Bonus 8</option>
                    <option value="Bonus 9">Bonus 9</option>
                    <option value="Malus 10">Malus 10</option>
                    <option value="Malus 11">Malus 11</option>
                    <option value="Malus 12">Malus 12</option>
                    <option value="Malus 13">Malus 13</option>
                    <option value="Malus 14">Malus 14</option>
                    <option value="Malus 15">Malus 15</option>
                    <option value="Malus 16">Malus 16</option>
                    <option value="Malus 17">Malus 17</option>
                </select>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Damage Insurance</label>
            <div class="col-sm-6">
                <select id="damageInsurance" name="damageInsurance" class="form-control">
                    <option value="default">&ndash; please select &ndash;</option>
                    <option value="No Coverage">No Coverage</option>
                    <option value="Partial Coverage">Partial Coverage</option>
                    <option value="Full Coverage">Full Coverage</option>
                </select>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Optional Products</label>
            <div class="col-sm-6">
                <p class="row">
                    <label>
                        <input id="EuroProtection" name="optionalProducts" type="checkbox" value="Euro Protection">Euro Protection</label>
                    <label>
                        <input id="LegalDefenseInsurance" name="optionalProducts" type="checkbox" value="Legal Defense Insurance">Legal Defense Insurance</label>
                </p>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Courtesy Car</label>
            <div class="col-sm-6">
                <select id="courtesyCar" name="courtesyCar" class="form-control">
                    <option value="default">&ndash; please select &ndash;</option>
                    <option value="No"> No</option>
                    <option value="Yes"> Yes</option>
                </select>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-4 col-form-label"></label>
            <div class="col-sm-6">
                <button type="button" class="btn btn-dark prevBtn">&laquo; Prev</button>
                <button type="button" class="btn btn-dark nextBtn">Next &raquo;</button>
            </div>

        </div>
    </form>
</section>
