<section class="container text-center rounded p-4 mt-2 mx-auto" style="box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 14px rgba(0,0,0,0.23);">
    <div id="subscription-plans-section">
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
                    <button data-sectionid="insurantData" type="button" class="btn btn-dark prevBtn" onclick="handleAutomobileSectionChange(event)">&laquo; Prev</button>
                    <button data-sectionid="sendData" type="submit" class="btn btn-dark nextBtn">Next &raquo;</button>
                </div>
            </div>
        </form>
    </div>
    <div id="form-message" class="py-5">
        <div class="loader-27"></div>
        <h4 class="mt-4">Please fill all forms!</h4>
    </div>
</section>

<style>

    [class*=loader-] {
        display: inline-block;
        width: 1em;
        height: 1em;
        color: inherit;
        vertical-align: middle;
        pointer-events: none;
    }

    .loader-27 {
        box-shadow: inset 0 0 0 0.1em currentcolor;
        border-radius: 50%;
        position: relative;
        margin-left: 1.2em;
        transform: scale(2);
    }
    .loader-27:before {
        content: "";
        display: block;
        width: inherit;
        height: inherit;
        border-radius: 50%;
        position: absolute;
        right: 1.2em;
        top: 0;
        box-shadow: inset 0 0 0 0.1em currentcolor;
    }
    .loader-27:after {
        border: 0.2em solid currentcolor;
        box-shadow: -1.2em 0 0 0 currentcolor;
        width: 0;
        height: 0;
        border-radius: 50%;
        left: 50%;
        top: 25%;
        position: absolute;
        content: "";
        -webkit-animation: loader-27 2s linear infinite alternate;
        animation: loader-27 1.5s linear infinite alternate;
    }

    @keyframes loader-27 {
        0% {
            left: 0;
        }
        100% {
            left: 0.5em;
        }
    }
</style>


