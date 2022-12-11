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
                background-color: rgb(235, 234, 234);
            }

            .box1 {

                width: 80%;
                height: auto;
                margin: 25px auto;
                padding:20px 0 20px 0;
                background-color: rgb(209, 209, 209);
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
                box-shadow: 1px 2px 10px rgb(212, 212, 212);
                width: 88%;
                height: max-content;
                border-radius: 10px;
                margin: 20px auto;
                padding: 15px;
                background-color: white;
                padding-bottom: 25px;

            }

            table {
                border-collapse: collapse;
                width: 100%;
                background-color: white;
            }
            
            td,th {
                color: rgb(0, 0, 0);
                padding: 20px;
                text-align: start;
                border-bottom: 1px solid #ddd;
            }
            td a{
                width: 60px;
                height: 25px;
                outline: none;
                background-color: white;
                color: rgb(13, 51, 98);
                transition: none;
                border: 1px solid rgb(13, 51, 98);
                border-radius: 4px;
                text-align: center;
            }

            td a:hover{
                outline: none;
                color: white;
                background-color: rgb(13, 51, 98);
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
                    <li><a class="options" href="/home">Add Employee</a></li>
                    <li><a class="options" href="/getAllEmployee">View Employee</a></li>
                    <li><a class="options" href="#">Update Employee</a></li>
                    <li><a class="options" href="#">Delete Employee</a></li>
                </ul>
            </div>
            <div class="box4">
                <div align="center">
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Salary</th>
                            <th>Date Of Birth</th>
                            <th>Age</th>
                            <th>Status</th>
                            <th>Update</th>
                            <th>Delete</th>
                        </tr>


                        <c:forEach var="employee" items="${Employees}">
                            <tr>
                                <td>
                                    <c:out value="${employee.id}" />
                                </td>
                                <td>
                                    <c:out value="${employee.name}" />
                                </td>
                                <td>
                                    <c:out value="${employee.email}" />
                                </td>
                                <td>
                                    <c:out value="${employee.salary}" />
                                </td>
                                <td>
                                    <c:out value="${employee.DOB}" />
                                </td>
                                <td>
                                    <c:out value="${employee.age}" />
                                </td>
                                <td>
                                    <c:out value="${employee.status}" />
                                </td>

                                <td>
                                    <a href="/edit/${employee.id}">Edit</a>
                                </td>

                                <td>
                                    <a href="/deleteEmployee/${employee.id}">delete</a>
                                </td>
                            </tr>
                        </c:forEach>

                    </table>
                </div>

            </div>
        </div>
    </body>

    </html>