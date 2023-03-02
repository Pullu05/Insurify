<section class="container text-center rounded p-4 mt-2 mx-auto" style="box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 14px rgba(0,0,0,0.23);" id="subscription-plans-section">
    <div class="row mx-0 gap-2 my-2">
        <div class="col fw-bold text-white rounded-top p-2"></div>
        <div class="col fw-bold text-white rounded-top p-2" style="background-color: #8e8e8e;">Silver</div>
        <div class="col fw-bold text-white rounded-top p-2" style="background-color: #DAA520;">Gold</div>
        <div class="col fw-bold text-white rounded-top p-2" style="background-color: #A0BFB4;">Platinum</div>
        <div class="col fw-bold text-white rounded-top p-2" style="background-color: #1D63AF;">Ultimate</div>
    </div>
    <!--    <div class="row mx-0 gap-2 my-2">
            <div class="col p-2 text-start">Price per Year ($)</div>
            <div class="col fw-bold p-2">291.00</div>
            <div class="col fw-bold p-2">857.00</div>
            <div class="col fw-bold p-2">1,682.00</div>
            <div class="col fw-bold p-2">3,204.00</div>
        </div>-->
    <div class="row mx-0 gap-2 my-2">
        <div class="col bg-custom-gray p-2 text-start">Online Claim</div>
        <div class="col bg-custom-gray fw-light p-2">No</div>
        <div class="col bg-custom-gray fw-light p-2">Submit</div>
        <div class="col bg-custom-gray fw-light p-2">Submit</div>
        <div class="col bg-custom-gray fw-light p-2">Submit</div>
    </div>
    <div class="row mx-0 gap-2 my-2">
        <div class="col p-2 text-start">Claims Discount (%)</div>
        <div class="col p-2">No</div>
        <div class="col p-2">2</div>
        <div class="col p-2">5</div>
        <div class="col p-2">10</div>
    </div>
    <div class="row mx-0 gap-2 my-2">
        <div class="col bg-custom-gray p-2 text-start">Worldwide Cover</div>
        <div class="col bg-custom-gray fw-light p-2">No</div>
        <div class="col bg-custom-gray fw-light p-2">Limited</div>
        <div class="col bg-custom-gray fw-light p-2">Limited</div>
        <div class="col bg-custom-gray fw-light p-2">Unlimited</div>
    </div>
    
    <form action="CalculatePremium" method="post" onsubmit="submitFormAndChangeSection(event)">
        <div class="row mx-0 gap-2 my-2">
            <div class="col p-2 text-start">Select Option</div>
            <div class="col p-2">
                <input type="radio" class="form-check-input custom-border" name="planName" value="Silver" required/>
            </div>
            <div class="col p-2">
                <input type="radio" class="form-check-input custom-border" name="planName" value="Gold" required/>
            </div>
            <div class="col p-2">
                <input type="radio" class="form-check-input custom-border" name="planName" value="Platinum" required/>
            </div>
            <div class="col p-2">
                <input type="radio" class="form-check-input custom-border" name="planName" value="Ultimate" required />
            </div>
        </div>

        <div class="row mx-0 gap-2 my-2 mt-4">
            <div class="d-flex gap-4 justify-content-center">
                <button data-sectionid="productData" type="button" class="btn btn-dark prevBtn" onclick="handleAutomobileSectionChange(event)">&laquo; Prev</button>
                <button data-sectionid="sendData" type="submit" class="btn btn-dark nextBtn">Next &raquo;</button>
            </div>
        </div>
    </form>

</section>


<div id="form-message">
    <h1>Please fill the previous forms</h1>
</div>