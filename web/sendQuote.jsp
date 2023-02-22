<%-- 
    Document   : index
    Created on : 21-Feb-2023, 1:34:20 pm
    Author     : Sneha
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enter Vehicle Data</title>



        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <style>
  
            #automobilesendquote{
                margin: auto;
                /*border: 2px solid;*/
                width: 50%;
                padding: 30px 0;
                padding-left: 100px;
             
            }



            .form-group{
                margin: 25px 0px;
            }
            #prev_Btn{
                width: 30%;
            }
            #send_Btn{
                width: 30%;
            }
            

        </style>



    </head>
    <body>
        <section id="automobilesendquote" class="rounded  border border-dark mt-3">
            <form>
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
                        <button type="button" class="btn btn-dark" id="prev_Btn">&laquo;Prev</button>
                        <button type="button" class="btn btn-dark" id="send_Btn">&laquo;Send&raquo;</button>
                    </div>
                    
                        
                    
                </div>
            </form>
        </section>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </body>
</html>