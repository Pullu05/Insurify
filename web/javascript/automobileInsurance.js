/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */
function showVehicleData() {
    document.getElementById("sendData").style.display = "none";
    document.getElementById("insurantData").style.display = "none";
    document.getElementById("planData").style.display = "none";
    document.getElementById("productData").style.display = "none";
    document.getElementById("vehicleData").style.display = "block";

    document.getElementById("vehicle_btn").classList.add("btn-success");


    document.getElementById("insurant_btn").classList.remove("btn-success");
    document.getElementById("plan_btn").classList.remove("btn-success");
    document.getElementById("quote_btn").classList.remove("btn-success");
    document.getElementById("product_btn").classList.remove("btn-success");

}
function showInsurantData() {
    document.getElementById("vehicleData").style.display = "none";
    document.getElementById("productData").style.display = "none";
    document.getElementById("planData").style.display = "none";
    document.getElementById("sendData").style.display = "none";
    document.getElementById("insurantData").style.display = "block";

    document.getElementById("insurant_btn").classList.add("btn-success");

    document.getElementById("vehicle_btn").classList.remove("btn-success");
    document.getElementById("vehicle_btn").classList.add("btn-secondary");
    document.getElementById("product_btn").classList.remove("btn-success");
    document.getElementById("plan_btn").classList.remove("btn-success");
    document.getElementById("quote_btn").classList.remove("btn-success");
}
function showProductData() {
    document.getElementById("vehicleData").style.display = "none";
    document.getElementById("insurantData").style.display = "none";
    document.getElementById("planData").style.display = "none";
    document.getElementById("sendData").style.display = "none";
    document.getElementById("productData").style.display = "block";

    document.getElementById("product_btn").classList.add("btn-success");

    document.getElementById("vehicle_btn").classList.remove("btn-success");
    document.getElementById("vehicle_btn").classList.add("btn-secondary");
    document.getElementById("insurant_btn").classList.remove("btn-success");
    document.getElementById("plan_btn").classList.remove("btn-success");
    document.getElementById("quote_btn").classList.remove("btn-success");
}

function showPlanData() {
    document.getElementById("vehicleData").style.display = "none";
    document.getElementById("insurantData").style.display = "none";
    document.getElementById("sendData").style.display = "none";
    document.getElementById("productData").style.display = "none";
    document.getElementById("planData").style.display = "block";

    document.getElementById("plan_btn").classList.add("btn-success");

    document.getElementById("vehicle_btn").classList.remove("btn-success");
    document.getElementById("vehicle_btn").classList.add("btn-secondary");
    document.getElementById("insurant_btn").classList.remove("btn-success");
    document.getElementById("quote_btn").classList.remove("btn-success");
    document.getElementById("product_btn").classList.remove("btn-success");
}

function showQuoteData() {
    document.getElementById("vehicleData").style.display = "none";
    document.getElementById("insurantData").style.display = "none";
    document.getElementById("planData").style.display = "none";
    document.getElementById("productData").style.display = "none";
    document.getElementById("sendData").style.display = "block";

    document.getElementById("quote_btn").classList.add("btn-success");

    document.getElementById("vehicle_btn").classList.remove("btn-success");
    document.getElementById("vehicle_btn").classList.add("btn-secondary");
    document.getElementById("insurant_btn").classList.remove("btn-success");
    document.getElementById("plan_btn").classList.remove("btn-success");
    document.getElementById("product_btn").classList.remove("btn-success");
}


