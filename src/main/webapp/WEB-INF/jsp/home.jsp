<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Employee-Management</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
        <style>
            body {
                font-family: system-ui;
                color: white;
                background-color: rgb(215, 215, 215);
            }

            .box1 {

                width: 80%;
                height: 670px;
                margin: 25px auto;
                background-color: rgb(237, 236, 236);
                border-radius: 10px;
                box-shadow: 1px 2px 10px rgb(202, 202, 202);
            }

            .box2 {
                padding: 10px;
            }

            nav {
                padding: 0px;
                overflow: hidden;
                background-color: rgb(13, 51, 98);
                border-radius: 10px;
            }

            nav img {
                margin-right: 200px;
                width: 50px;
                height: 50px;
            }

            nav,
            ul {
                display: flex;
                margin: 0px;
                align-items: center;
            }

            nav,
            li {
                margin: 20px 50px;
                display: flex;
                justify-content: space-around;

            }

            a {
                color: #fff;
                text-decoration: none;
                letter-spacing: 0.15em;

                display: inline-block;
                padding: 5px 10px;
                position: relative;
            }

            a:after {
                background: none repeat scroll 0 0 transparent;
                bottom: 0;
                content: "";
                display: block;
                height: 2px;
                left: 25%;
                position: absolute;
                background: rgb(255, 255, 255);
                transition: width 0.8s ease 0s, left 0.8s ease 0s;
                width: 0;
            }

            a:hover:after {
                width: 100%;
                left: 0;
            }
            .options {
                margin-right: 20px;
                color: black;
                font-weight: 600;
            }
            .options:hover::after{
                background-color: rgb(0, 0, 0);
                border-radius: 5px;
            }

            i {
                margin-top: 8px;
            }

            .box4 {
                box-shadow: 1px 2px 10px rgb(193, 193, 193);
                width: 600px;
                height: 370px;
                margin: 20px auto;
                padding: 15px;
                background-color: white;
                border-radius: 10px;
            }

            .box4 .successMsg{
                margin-left: 100px;
                font-weight: 600;
                color: rgb(3, 219, 14);
                letter-spacing: 0.10em;
                word-spacing: 4px;
            }

            .box5 {
                width: 450px;
                height: 340px;
                margin: 0 auto;
                padding: 10px;
            }


            form .field {
                display: flex;
                align-items: center;
                justify-content: space-between;
                flex-wrap: wrap;


            }

            form .field .input-field {
                display: flex;
                flex-direction: column;
                margin-top: 15px;
                margin-bottom: 15px;

            }

            .input-field label {
                color: black;
                font-weight: 600;
                font-family: system-ui;
                letter-spacing: 0.10em;
                word-spacing: 2px;
                margin: 5px 0 5px 0;
                
            }

            .input-field input {
                outline: none;
                
                border: transparent;
                border-bottom: 1px solid rgb(157, 157, 157);
               
            }

            .input-field input:focus {
                box-shadow: 5px 5px 10px rgb(225, 225, 225);
            }

            .radio-field input {

                display: inline;
            }

            form button {
                margin-left: 140px;
                width: 180px;
                padding: 5px;
                color: white;
                margin-top: 20px;
                border-radius: 5px;
                background-color: rgb(13, 51, 98);
                letter-spacing: 0.15em;
                word-spacing: 3px;
            }
        </style>
    </head>

    <body>
        <div class="box1">
            <div class="box2">
                <nav>
                    <img src="https://www.ihy-ihealthyou.com/Admin/Res/imgs/admin.png" alt="admin-logo">
                    <ul>
                        <li><i class="fa-solid fa-house"></i><a href="home">Home</a></li>
                        <li><i class="fa-solid fa-gear"></i><a href="#">Settings</a></li>
                        <li><i class="fa-solid fa-right-from-bracket"></i><a href="/">log out</a></li>
                    </ul>
                </nav>
            </div>
            <div class="box3">
                    <ul>
                        <li><a class="options" href="home">Add Employee</a></li>
                        <li><a class="options" href="getAllEmployee">View Employee</a></li>
                        <li><a class="options" href="#">Update Employee</a></li>
                        <li><a class="options" href="#">Delete Employee</a></li>
                    </ul>
            </div>
            <div class="box4">
                <div class="successMsg">
                    <p>${successMsg}<p>
                </div>
                <div class="box5">
                    <form action="/saveEmployee" method="post">
                        <div class="field">
                            <div class="input-field">
                                <label for="name">Employee Name</label>
                                <input type="text" name="name" placeholder="" required>
                            </div>
                            <div class="input-field">
                                <label for="email">Email Id</label>
                                <input type="email" name="email" placeholder="" required>
                            </div>
                            <div class="input-field">
                                <label for="DOB">Date of Birth</label>
                                <input type="date" name="DOB" placeholder="" required>
                            </div>
                            <div class="input-field">
                                <label for="salary">Salary</label>
                                <input type="number" name="salary" placeholder="" required>
                            </div>
                            <div class="input-field">
                                <div style="display: flex; margin-top: 20px;">
                                    <label for="status"
                                        style="width: 100px;height: 25px; text-align: center; border-radius: 5px; margin-right: 30px; border: 1px solid  rgb(13, 51, 98);">Status</label>
                                    <input type="radio" name="status" placeholder="" value="true"
                                        style="border: none; box-shadow: none; margin-left: 20px; margin-top: 0;" required>
                                    <label for="active" style="margin-left: 15px;">active</label>
                                    <input type="radio" name="status" placeholder="" value="false"
                                        style="border: none; box-shadow: none; margin-left: 60px; margin-top: 0;" required>
                                    <label for="in-active" style="margin-left: 15px;">in-active</label>
                                </div>
                            </div>
                        </div>

                        <button type="submit">Add Employee</button>

                    </form>
                </div>
            </div>
        </div>
    </body>

    </html>