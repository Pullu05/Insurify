<%-- 
    Document   : index
    Created on : 21-Feb-2023, 1:34:20 pm
    Author     : RISHAV DUTTA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enter Vehicle Data</title>


        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <style>
            #automobileVehicledata{
                margin: auto;
                /*border: 2px solid;*/
                width: 50%;
                padding: 30px 0;
                padding-left: 100px;
            }

            .form-group{
                margin: 25px 0px;
            }
            #next_Btn{
                width: 30%;
            }
        </style>

    </head>
    <body>
        <section id="automobileVehicledata" class="rounded  border border-dark mt-3">
            <form>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Make</label>
                    <div class="col-sm-6">
                        <select id="make" name="Make" class="form-control">
                            <option value="default">&ndash; please select &ndash;</option>
                            <option value='Audi'>Audi</option><option value='BMW'>BMW</option><option value='Ford'>Ford</option><option value='Honda'>Honda</option><option value='Mazda'>Mazda</option><option value='Mercedes Benz'>Mercedes Benz</option><option value='Nissan'>Nissan</option><option value='Opel'>Opel</option><option value='Porsche'>Porsche</option><option value='Renault'>Renault</option><option value='Skoda'>Skoda</option><option value='Suzuki'>Suzuki</option><option value='Toyota'>Toyota</option><option value='Volkswagen'>Volkswagen</option><option value='Volvo'>Volvo</option>  
                        </select>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Engine Performance [kW]</label>
                    <div class="col-sm-6">
                        <input id="engineperformance" class="form-control" name="engineperformance" type="text">
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Date of Manufacture</label>
                    <div class="col-sm-6">
                        <input  type="date" class="form-control" id="dateofmanufacture" name="dateofmanufacture" type="text" placeholder="MM/DD/YYYY" class="datepicker">
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Number of Seats</label>
                    <div class="col-sm-6">
                        <select id="numberofseats" name="Number of Seats" class="form-control">
                            <option value="default">&ndash; please select &ndash;</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Fuel Type</label>
                    <div class="col-sm-6">
                        <select id="fuel" name="Fuel Type" class="form-control">
                            <option value="default">&ndash; please select &ndash;</option>
                            <option value="Petrol">Petrol</option>
                            <option value="Diesel">Diesel</option>
                            <option value="Electric Power">Electric Power</option>
                            <option value="Gas">Gas</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">List Price [&#36;]</label>
                    <div class="col-sm-6">
                        <input id="listprice" class="form-control" name="List Price" type="text">
                    </div>
                    <span class="error"></span>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">License Plate Number</label>
                    <div class="col-sm-6">
                        <input id="licenseplatenumber" class="form-control" name="License Plate Number" type="text">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Annual Mileage [mi]</label>
                    <div class="col-sm-6">
                        <input id="annualmileage" class="form-control" name="Annual Mileage" type="text">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label"></label>
                    <div class="col-sm-6">
                        <button type="button" class="btn btn-dark" id="next_Btn">Next&raquo;</button>
                    </div>
                </div>
            </form>
        </section>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </body>
</html>
