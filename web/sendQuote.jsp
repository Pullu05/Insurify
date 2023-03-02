<section class="rounded mt-3 formBlock" id="send-quote-section">
    <form action="TotalWeightage" method="post">
        <div class="form-group row">
            <label class="col-sm-4 col-form-label">E-Mail</label>

            <div class="col-sm-6">
                <input id="email" class="form-control" name="email" type="email" required>

            </div>
        </div>



        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Phone</label>
            <div class="col-sm-6">
                <input id="phone" class="form-control" name="phone" type="tel">
            </div>
        </div>



        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Username</label>
            <div class="col-sm-6">
                <input  type="text" class="form-control" id="username" name="username" required>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Password</label>
            <div class="col-sm-6">
                <input  type="password" class="form-control" id="password" name="password" required>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Confirm Password</label>
            <div class="col-sm-6">
                <input  type="password" class="form-control" id="confirmpassword" name="confirmpassword" required>

            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Comments</label>
            <div class="col-sm-6">
                <textarea type="text-box"class="form-control" id="comment" name="comment" row="400"  col="10" > </textarea>

            </div>
        </div>

        <div class="form-group row">
            <label class="col-sm-4 col-form-label"></label>
            <div class="col-sm-6">
                <button type="button" class="btn btn-dark prevBtn">&laquo; Prev</button>
                <button type="submit" class="btn btn-dark sendBtn">Send</button>
            </div>



        </div>
    </form>
</section>

<div id="form-message2">
    <h1>Please fill the previous forms</h1>
</div>