<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="vehicle" value="${VehicleData}"/>
<section class="rounded mt-3 formBlock">

    <form method = "POST" action="AddVehicleData" onsubmit="submitFormAndChangeSection(event)">
        
        <div class="form-group row">
                <label class="col-sm-4 col-form-label">VIN No</label>
                <div class="col-sm-6">
                    <input id="vin" class="form-control" name="vin" type="text" value = "${vehicle.vin}" required>
            </div>
        </div>
            
        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Make</label>
            <div class="col-sm-6">
                <select id="make" name="make" class="form-control" value = "${vehicle.make}" required>
                    <option value="default">&ndash; please select &ndash;</option>
                    <option value='Audi' <c:if test = "${vehicle.make == 'Audi'  }"> selected </c:if> >Audi</option>
                    <option value='BMW' <c:if test = "${vehicle.make == 'BMW'  }"> selected </c:if>>BMW</option>
                    <option value='Ford' <c:if test = "${vehicle.make == 'Ford'  }"> selected </c:if>>Ford</option>
                    <option value='Honda' <c:if test = "${vehicle.make == 'Honda'  }"> selected </c:if>>Honda</option>
                    <option value='Mazda' <c:if test = "${vehicle.make == 'Mazda'  }"> selected </c:if> >Mazda</option>
                    <option value='Mercedes Benz' <c:if test = "${vehicle.make == 'Mercedes Benz'  }"> selected </c:if>>Mercedes Benz</option>
                    <option value='Nissan' <c:if test = "${vehicle.make == 'Nissan'  }"> selected </c:if>>Nissan</option>
                    <option value='Opel' <c:if test = "${vehicle.make == 'Opel'  }"> selected </c:if>>Opel</option>
                    <option value='Porsche' <c:if test = "${vehicle.make == 'Porsche'  }"> selected </c:if>>Porsche</option>
                    <option value='Renault' <c:if test = "${vehicle.make == 'Renault'  }"> selected </c:if>>Renault</option>
                    <option value='Skoda' <c:if test = "${vehicle.make == 'Skoda'  }"> selected </c:if>>Skoda</option>
                    <option value='Suzuki' <c:if test = "${vehicle.make == 'Suzuki'  }"> selected </c:if>>Suzuki</option>
                    <option value='Toyota' <c:if test = "${vehicle.make == 'Toyota'  }"> selected </c:if>>Toyota</option>
                    <option value='Volkswagen' <c:if test = "${vehicle.make == 'Volkswagen'  }"> selected </c:if>>Volkswagen</option>
                    <option value='Volvo' <c:if test = "${vehicle.make == 'Volvo'  }"> selected </c:if>>Volvo</option>
                    </select>
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-4 col-form-label">Engine Performance [kW]</label>
                <div class="col-sm-6">
                    <input id="enginePerformance" class="form-control" name="enginePerformance" type="text" value = "${vehicle.enginePerformance}" required>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Date of Manufacture</label>
            <div class="col-sm-6">
                <input  type="date" class="form-control" id="dateOfManufacture" name="dateOfManufacture" type="text" placeholder="MM/DD/YYYY" class="datepicker" value = "${vehicle.dateOfManufacture}" required>
            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Number of Seats</label>
            <div class="col-sm-6">
                <select id="numberOfSeats" name="numberOfSeats" class="form-control" value = "${vehicle.numberOfSeats}" required>
                    <option value="default">&ndash; please select &ndash;</option>
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
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-4 col-form-label">Fuel Type</label>
                <div class="col-sm-6">
                    <select id="fuelType" name="fuelType" class="form-control" value = "${vehicle.fuelType}" required>
                    <option value="default">&ndash; please select &ndash;</option>
                    <option value="Petrol" <c:if test = "${vehicle.fuelType == 'Petrol' }"> selected </c:if>>Petrol</option>
                    <option value="Diesel" <c:if test = "${vehicle.fuelType == 'Diesel' }"> selected </c:if>>Diesel</option>
                    <option value="Electric Power" <c:if test = "${vehicle.fuelType == 'Electric Power' }"> selected </c:if>>Electric Power</option>
                    <option value="Gas" <c:if test = "${vehicle.fuelType == 'Gas' }"> selected </c:if>>Gas</option>
                    <option value="Other" <c:if test = "${vehicle.fuelType == 'Other' }"> selected </c:if>>Other</option>
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-4 col-form-label">List Price [&#36;]</label>
                <div class="col-sm-6">
                    <input id="listPrice" class="form-control" name="listPrice" type="text" value = "${vehicle.listPrice}" required>
            </div>
            <span class="error"></span>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label">License Plate Number</label>
            <div class="col-sm-6">
                <input id="licensePlateNumber" class="form-control" name="licensePlateNumber" type="text" value = "${vehicle.licensePlateNumber}" required>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Annual Mileage [mi]</label>
            <div class="col-sm-6">
                <input id="annualMileage" class="form-control" name="annualMileage" type="text" value = "${vehicle.annualMileage}" required>
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