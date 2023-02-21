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
        <style>
            
        </style>
    </head>
    <body>
        <section id="automobileVehicledata">
            <div class="field">
                <label class="main">Make</label>
                <select id="make" name="Make" class="form-control">
                    <option value="default">--please select-</option>
                    <option value='Audi'>Audi</option><option value='BMW'>BMW</option><option value='Ford'>Ford</option><option value='Honda'>Honda</option><option value='Mazda'>Mazda</option><option value='Mercedes Benz'>Mercedes Benz</option><option value='Nissan'>Nissan</option><option value='Opel'>Opel</option><option value='Porsche'>Porsche</option><option value='Renault'>Renault</option><option value='Skoda'>Skoda</option><option value='Suzuki'>Suzuki</option><option value='Toyota'>Toyota</option><option value='Volkswagen'>Volkswagen</option><option value='Volvo'>Volvo</option>                                        </select>
                <span class="error"></span>
            </div>

            <div class="field">
                <label class="main">Engine Performance [kW]</label>
                <input id="engineperformance" name="engineperformance" type="text">
                <span class="error"></span>
            </div>

            <div class="field">
                <label class="main">Date of Manufacture</label>
                <input  type="date" id="dateofmanufacture" name="dateofmanufacture" type="text" placeholder="MM/DD/YYYY" class="datepicker">
                <span class="error"></span>
            </div>

            <div class="field">
                <label class="main">Number of Seats</label>
                <select id="numberofseats" name="Number of Seats">
                    <option value="default">--please select--</option>
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
                <span class="error"></span>
            </div>
            <div class="field">
                <label class="main">Fuel Type</label>
                <select id="fuel" name="Fuel Type">
                    <option value="default">&ndash; please select &ndash;</option>
                    <option value="Petrol">Petrol</option>
                    <option value="Diesel">Diesel</option>
                    <option value="Electric Power">Electric Power</option>
                    <option value="Gas">Gas</option>
                    <option value="Other">Other</option>
                </select>
                <span class="error"></span>
            </div>
            <div class="field">
                <label class="main">List Price [&#36;]</label>
                <input id="listprice" name="List Price" type="text">
                <span class="error"></span>
            </div>
            <div class="field">
                <label class="main">License Plate Number</label>
                <input id="licenseplatenumber" name="License Plate Number" type="text">
                <span class="error"></span>
            </div>
            <div class="field">
                <label class="main">Annual Mileage [mi]</label>
                <input id="annualmileage" name="Annual Mileage" type="text">
                <span class="error"></span>
            </div>

    </body>
</html>
