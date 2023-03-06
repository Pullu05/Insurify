<%-- 
    Document   : user
    Created on : 02-Mar-2023, 12:17:29 pm
    Author     : sinha
--%>

<!DOCTYPE html>
<html>
    <head>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css
              ">
        <title>Front Page</title>
        <style>
            body {
                margin: auto;
                font-family: -apple-system, BlinkMacSystemFont, sans-serif;
                overflow: auto;
                background: linear-gradient(315deg, rgba(101,0,94,1) 3%, rgba(60,132,206,1) 38%, rgba(48,238,226,1) 68%, rgba(255,25,25,1) 98%);
                animation: gradient 15s ease infinite;
                background-size: 400% 400%;
                background-attachment: fixed;
            }

            @keyframes gradient {
                0% {
                    background-position: 0% 0%;
                }
                50% {
                    background-position: 100% 100%;
                }
                100% {
                    background-position: 0% 0%;
                }
            }

            .wave {
                background: rgb(255 255 255 / 25%);
                border-radius: 1000% 1000% 0 0;
                position: fixed;
                width: 200%;
                height: 12em;
                animation: wave 10s -3s linear infinite;
                transform: translate3d(0, 0, 0);
                opacity: 0.8;
                bottom: 0;
                left: 0;
                z-index: -1;
            }

            .wave:nth-of-type(2) {
                bottom: -1.25em;
                animation: wave 18s linear reverse infinite;
                opacity: 0.8;
            }

            .wave:nth-of-type(3) {
                bottom: -2.5em;
                animation: wave 20s -1s reverse infinite;
                opacity: 0.9;
            }

            @keyframes wave {
                2% {
                    transform: translateX(1);
                }

                25% {
                    transform: translateX(-25%);
                }

                50% {
                    transform: translateX(-50%);
                }

                75% {
                    transform: translateX(-25%);
                }

                100% {
                    transform: translateX(1);
                }
            }

            .container {

                display: flex;
                padding-top:231px;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                height: 100%;
            }
            .button1 {
                padding: 15px 25px;
                margin-top: 20px;
                font-size: 50px;
                text-align: center;
                cursor: pointer;
                outline: none;
                color: #fff;
                background-color: #881E60;
                border: none;
                border-radius: 15px;
                box-shadow: 0 9px #999;
            }

            .button1:hover {
                background-color: #3e8e41
            }

            .button1:active {
                background-color: #3e8e41;
                box-shadow: 0 5px #666;
                transform: translateY(4px);
            }


            .button2 {
                padding: 15px 25px;

                font-size: 20px;
                text-align: center;
                cursor: pointer;
                outline: none;
                color: #fff;
                background-color: #881E60;
                border: none;
                border-radius: 15px;
                box-shadow: 0 9px #999;
            }

            .button2:hover {
                background-color: #3e8e41
            }

            .button2:active {
                background-color: #3e8e41;
                box-shadow: 0 5px #666;
                transform: translateY(4px);
            }
            .my-card
            {
                position:absolute;
                left:40%;
                top:-20px;
                border-radius:50%;
            }
            a
            {
                text-decoration: none;
            }
        </style>
    </head>

    <body>


        <div>
            <div class="wave"></div>
            <div class="wave"></div>
            <div class="wave"></div>
        </div>
        <div class="jumbotron">
            <div class="row w-100">
                <div class="col-md-3">
                    <div class="card border-info mx-sm-1 p-3">
                        <div class="card border-info shadow text-info p-3 my-card" ><span class="fa fa-car" aria-hidden="true"></span></div>
                        <div class="text-info text-center mt-3"><a><h3>Home</h3></a></div>
                        <div class="text-info text-center mt-2"><h1></h1></div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card border-success mx-sm-1 p-3">
                        <div class="card border-success shadow text-success p-3 my-card"><span class="fa fa-car" aria-hidden="true"></span></div>
                        <div class="text-success text-center mt-3"><a href="automobileInsurance.jsp"><h3>Create A new Quote</h3></a></div>
                        <div class="text-success text-center mt-2"><h1></h1></div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card border-danger mx-sm-1 p-3">
                        <div class="card border-danger shadow text-danger p-3 my-card" ><span class="fa fa-car" aria-hidden="true"></span></div>
                        <div class="text-danger text-center mt-3"><a><h3>Show Previous Quotes</h3></a></div>
                        <div class="text-danger text-center mt-2"><h1></h1></div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card border-warning mx-sm-1 p-3">
                        <div class="card border-warning shadow text-warning p-3 my-card" ><span class="fa fa-car" aria-hidden="true"></span></div>
                        <div class="text-warning text-center mt-3"><a><h3>Contact US</h3></a></div>
                        <div class="text-warning text-center mt-2"><h1></h1></div>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
