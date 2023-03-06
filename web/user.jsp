<%-- 
    Document   : user
    Created on : 02-Mar-2023, 12:17:29 pm
    Author     : sinha
--%>

<!DOCTYPE html>
<html>
    <head>
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

        </style>
    </head>

    <body>


        <div>
            <div class="wave"></div>
            <div class="wave"></div>
            <div class="wave"></div>
        </div>
        <div class="container">

            <button class="button1" onclick="window.location.href = 'automobileInsurance.jsp'">Get A Quote</button>&nbsp;&nbsp;
            <button class="button2">Preview Quote</button>
        </div>

    </body>
</html>