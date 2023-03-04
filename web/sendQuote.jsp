<style>
    .my-btn {
        width: 130px;
        height: 40px;
        color: #fff;
        border-radius: 5px;
        padding: 10px 25px;
        font-family: 'Lato', sans-serif;
        font-weight: 500;
        background: transparent;
        cursor: pointer;
        transition: all 0.3s ease;
        position: relative;
        display: inline-block;
        box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
            7px 7px 20px 0px rgba(0,0,0,.1),
            4px 4px 5px 0px rgba(0,0,0,.1);
        outline: none;
    }

    .btn-3 {
        background: linear-gradient(to right, #434343 0%, black 100%);
        width: 130px;
        height: 40px;
        line-height: 42px;
        padding: 0;
        border: none;

    }
    .btn-3 span {
        position: relative;
        display: block;
        width: 100%;
        height: 100%;
    }
    .btn-3:before,
    .btn-3:after {
        position: absolute;
        content: "";
        right: 0;
        top: 0;
        background: black;
        transition: all 0.3s ease;
    }
    .btn-3:before {
        height: 0%;
        width: 2px;
    }
    .btn-3:after {
        width: 0%;
        height: 2px;
    }
    .btn-3:hover{
        background: transparent;
        box-shadow: none;
    }
    .btn-3:hover:before {
        height: 100%;
    }
    .btn-3:hover:after {
        width: 100%;
    }
    .btn-3 span:hover{
        color: black;
    }
    .btn-3 span:before,
    .btn-3 span:after {
        position: absolute;
        content: "";
        left: 0;
        bottom: 0;
        background: black;
        transition: all 0.3s ease;
    }
    .btn-3 span:before {
        width: 2px;
        height: 0%;
    }
    .btn-3 span:after {
        width: 0%;
        height: 2px;
    }
    .btn-3 span:hover:before {
        height: 100%;
    }
    .btn-3 span:hover:after {
        width: 100%;
    }
</style>

<section class="rounded mt-3 formBlock">
    <div id="send-quote-section">
        <form action="TotalWeightage" method="post">
            <div class="form-group row">
                <label class="col-sm-4 col-form-label"></label>
                <div class="col-sm-6 d-flex gap-3">
                    <button data-sectionid="planData" type="button" class="my-btn btn-3 prevBtn" onclick="handleAutomobileSectionChange(event)"><span>Prev</span></button>
                    <!--<button type="submit" class="btn btn-dark sendBtn">Show Quote &raquo;</button>-->

                    <button type="submit" class="my-btn btn-3 sendBtn"><span>Show Quote</span></button>
                </div>
            </div>
        </form>
    </div>

    <div id="form-message2" class="py-5 text-center" style="margin-left: -100px;">
        <div class="loader-27"></div>
        <h4 class="mt-4">Please fill all forms!</h4>
    </div>
</section>
