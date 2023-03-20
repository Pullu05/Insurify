
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="vehicle" value="${VehicleData}"/>
<section class="rounded mt-3 formBlock">
    <form class="needs-validation" method = "POST" action="PreAddVehicleData" onsubmit="submitFormAndChangeSection(event)" id="vehicleDataForm" novalidate>

        <div class="form-group row">
            <label  class="col-sm-4 col-form-label" for="vin">VIN<span  style="color:red"> *</span></label>

            <div class="col-sm-6">
                <input type="text" id="vin" class="form-control" name="vin" value = "${vehicle.vin}" required>
                <div class="invalid-feedback">
                    Please enter the VIN (Vehicle Identification Number)
                </div>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="make">Make<span  style="color:red"> *</span></label>
            <div class="col-sm-6">
                <select id="make" name="make" class="form-select" value = "${vehicle.make}" onchange="fetchList('make', 'model')" required>
                    <option value="" >Select a Maker</option>
                    <c:forEach items="${MakeList}" var="make">
                        <option value="${make.getMakeName()}" <c:if test = "${make.getMakeName() == VehicleData.getMake() }"> selected </c:if> >
                            <c:out value ="${make.getMakeName()}"/>
                        </option>
                    </c:forEach>
                </select>
                <div class="invalid-feedback">
                    Please select the make of your vehicle
                </div>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="model">Model<span  style="color:red"> *</span></label>
            <div class="col-sm-6">
                <select id="model" name="model" class="form-select" value = "${vehicle.model}" required>
                    <option value="">Select a Model</option>
                </select>
                <div class="invalid-feedback">
                    Please select the model of your vehicle
                </div>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="enginePerformance">Engine Performance [kW]<span  style="color:red"> *</span></label>
            <div class="col-sm-6">
                <input type="number" id="enginePerformance" class="form-control" name="enginePerformance" value = "${vehicle.enginePerformance}" required>
                <div class="invalid-feedback">
                    Only numeric values are allowed
                </div>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="dateOfManufacture">Date of Manufacture<span  style="color:red"> *</span></label>
            <div class="col-sm-6">
                <input type="date" class="form-control" id="dateOfManufacture" name="dateOfManufacture" type="text" placeholder="DD/MM/YYYY" class="datepicker" max="2023-01-31" value = "${vehicle.dateOfManufacture}" required>
                <div class="invalid-feedback">
                    Vehicle must be made before 31-01-2023
                </div>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="numberOfSeats">Number of Seats<span  style="color:red"> *</span></label>
            <div class="col-sm-6">
                <select id="numberOfSeats" name="numberOfSeats" class="form-select" value = "${vehicle.numberOfSeats}" required>
                    <option value="">&ndash; please select &ndash;</option>
                    <option value="1" <c:if test = "${vehicle.numberOfSeats == 1  }"> selected </c:if>>1</option>
                    <option value="2" <c:if test = "${vehicle.numberOfSeats == 2  }"> selected </c:if>>2</option>
                    <option value="3" <c:if test = "${vehicle.numberOfSeats == 3  }"> selected </c:if>>3</option>
                    <option value="4" <c:if test = "${vehicle.numberOfSeats == 4  }"> selected </c:if>>4</option>
                    <option value="5" <c:if test = "${vehicle.numberOfSeats == 5  }"> selected </c:if>>5</option>
                    <option value="6" <c:if test = "${vehicle.numberOfSeats == 6  }"> selected </c:if>>6</option>
                    <option value="7" <c:if test = "${vehicle.numberOfSeats == 7  }"> selected </c:if>>7</option>
                    <option value="8" <c:if test = "${vehicle.numberOfSeats == 8  }"> selected </c:if>>8</option>
                    <option value="9" <c:if test = "${vehicle.numberOfSeats == 9  }"> selected </c:if>>9</option>
                    </select>
                    <div class="invalid-feedback">
                        Please select the no. of seats in your vehicle
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-4 col-form-label" for="fuelType">Fuel Type<span  style="color:red"> *</span></label>
                <div class="col-sm-6">
                    <select id="fuelType" name="fuelType" class="form-select" value = "${vehicle.fuelType}" required>
                    <option value="">&ndash; please select &ndash;</option>
                    <option value="Petrol" <c:if test = "${vehicle.fuelType == 'Petrol' }"> selected </c:if>>Petrol</option>
                    <option value="Diesel" <c:if test = "${vehicle.fuelType == 'Diesel' }"> selected </c:if>>Diesel</option>
                    <option value="Electric Power" <c:if test = "${vehicle.fuelType == 'Electric Power' }"> selected </c:if>>Electric Power</option>
                    <option value="Gas" <c:if test = "${vehicle.fuelType == 'Gas' }"> selected </c:if>>Gas</option>
                    <option value="Other" <c:if test = "${vehicle.fuelType == 'Other' }"> selected </c:if>>Other</option>
                    </select>
                    <div class="invalid-feedback">
                        Please select fuel type of your vehicle
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-4 col-form-label" for="listPrice">List Price (&#8377;)<span  style="color:red"> *</span></label>
                <div class="col-sm-6">
                    <input type="number" id="listPrice" class="form-control" name="listPrice" value = "${vehicle.listPrice}" required>
                <div class="invalid-feedback">
                    Only numeric values are allowed
                </div>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="licensePlateNumber">License Plate Number<span  style="color:red"> *</span></label>
            <div class="col-sm-6">
                <input type="text" id="licensePlateNumber" class="form-control" name="licensePlateNumber" value = "${vehicle.licensePlateNumber}" required>
                <div class="invalid-feedback">
                    Please enter the License Plate Number of your vehicle
                </div>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label" for="annualMileage">Annual Mileage [mi]<span  style="color:red"> *</span></label>
            <div class="col-sm-6">
                <input type="number" id="annualMileage" class="form-control" name="annualMileage" value = "${vehicle.annualMileage}" required>
                <div class="invalid-feedback">
                    Only numeric values are allowed
                </div>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label"></label>
            <div class="col-sm-6">
                <button data-sectionid="insurantData" type="submit" class="btn btn-dark nextBtn">Next &raquo;</button>
            </div>
        </div>
    </form>
</section>
<script>

    function fetchList(selectedId, targetId) {
        const selectedValue = document.getElementById(selectedId).value;
        fetch("PreAddVehicleData?" + selectedId + "=" + selectedValue).then(res => res.text()).then(data => {
            document.getElementById(targetId).innerHTML = data;
        });
    }
</script>