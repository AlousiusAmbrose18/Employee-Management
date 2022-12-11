<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        form {
            width: 425px;
            height: 550px;
            box-shadow: 2px 2px 10px rgb(195, 195, 195);
            border-radius: 10px;
            margin: 80px auto;

        }

        .logo img {
            width: fit-content;
            height: 55px;
            margin-left: 100px;
        }

        .admin-logo img {
            width: fit-content;
            height: 55px;
            margin-left: 85px;

        }

        .admin {
            width: 150px;
            height: 25px;
            font-family: system-ui;
            text-align: center;
            letter-spacing: 2px;
            word-spacing: 2px;
            border: 1px solid rgb(3, 32, 105);
            margin: 25px auto;
            padding: 5px;
            border-radius: 5px;
        }

        .box {
            width: 350px;
            height: 500px;
            margin: 0 auto;
            padding-top: 40px;
        }

        .invalidMsg {
            font-family: system-ui;
            margin-left: 90px;
            color: red;
            letter-spacing: 0.10em;
            word-spacing: 2px;
        }

        input {
            border-style: none;
            border-bottom: 1px solid rgb(204, 204, 204);
            border-radius: 0;
            margin-top: 50px;
            margin-bottom: 10px;
        }

        input,
        button,
        .btn2 {
            width: 300px;
            height: 30px;
            margin-left: 20px;
        }

        .forgot {
            margin-left: 195px;
            text-decoration: none;
            list-style: none;
            color: rgb(3, 32, 105);
        }

        button {
            border: none;
            background-color: rgb(3, 32, 105);
            color: white;
            margin-top: 30px;
            margin-bottom: 20px;
            border-radius: 2px;
        }

        @media only screen and (max-width: 600px) {
            form {
                width: 300px;
                height: 600px;
                box-shadow: 2px 2px 10px rgb(212, 212, 212);
                border-radius: 10px;
                margin: 50px auto;
                padding: 5px;
            }

            input,
            button,
            .btn2 {
                width: 250px;
                height: 30px;
                margin-left: 20px;
            }

            .forgot {
                margin-left: 140px;
                text-decoration: none;
                list-style: none;
                color: rgb(3, 32, 105);
            }

            button {
                border: none;
                background-color: rgb(3, 32, 105);
                color: white;
                margin-top: 30px;
                margin-bottom: 30px;
                border-radius: 2px;
            }

        }
    </style>
</head>

<body>
    <div class="form-bg">

        <form action="/verifyAdmin" method="post" class="form">
            <div class="box">
                <div class="logo"><img src="https://image3.mouthshut.com/images/imagesp/925844451s.png" alt="logo">
                </div>
                <div style="display: flex; margin: 0 auto;">
                    <h4 class="admin">Admin-LogIn</h4>
                </div>
                <div class="invalidMsg">
                    <p>${invalid}</p>
                </div>
                <div>
                    <input type="text" name="adminName" placeholder="User Name" />
                </div>
                <div>
                    <input type="password" name="password" placeholder="Password" />
                </div>
                <div>
                    <a class="forgot" href="#">Forgot password?</a>
                </div>

                <button type="submit"> Login</button>
            </div>
        </form>
    </div>

</body>

</html>