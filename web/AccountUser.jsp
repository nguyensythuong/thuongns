<%-- 
    Document   : AccountUser
    Created on : Feb 10, 2021, 3:08:45 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Sport Shoes</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- <link rel="manifest" href="site.webmanifest"> -->
        <link rel="shortcut icon" type="image/x-icon" href="image/Poster.PNG">
        <!-- Place favicon.ico in the root directory -->

        <!-- CSS here -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/themify-icons.css">
        <link rel="stylesheet" href="css/nice-select.css">
        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/slicknav.css">
        <link rel="stylesheet" href="css/style.css">
        <jsp:include page="head.jsp"></jsp:include>
    </head>
    <body>
        <div class="bradcam_area breadcam_bg overlay">
            <h3>Manage Account </h3>
        </div>
        <br/>
        <div class="container">
            <form action="SaveInformationUser" method="post">
                <div class="form-group col-md-12">
                    <h3>ID:</h3>
                    <input type="text" name="id" class="form-control" readonly value="${sessionScope.id}" required="required" placeholder="ID">
                </div>
                <div class="form-group col-md-12">
                    <h3>User Name:</h3>
                    <input type="text" name="UsserName" class="form-control" value="${sessionScope.user}" required="required" placeholder="User Name">
                </div>
                <div class="form-group col-md-12">
                    <h3>E-mail:</h3>
                    <input type="text" name="E-mail" class="form-control" value="${sessionScope.email}" required="required" placeholder="E-mail">
                </div>
                <div class="form-group col-md-12">
                    <h3>Phone Number:</h3>
                    <input type="number" name="PhoneNumber" class="form-control" value="0${sessionScope.phone}" required="required" placeholder="Phone Number">
                </div>
                <div class="form-group col-md-12">
                    <h3>Address:</h3>
                    <input type="text" name="Address" class="form-control" value="${sessionScope.address}" required="required" placeholder="Address">
                </div>
                <input class="btn btn-primary" type="submit" value="Save">
            </form>
        </div>
    </body>
</html>
