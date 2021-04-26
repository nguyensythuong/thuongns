<%-- 
    Document   : AddToProductByAdmin
    Created on : Jan 22, 2021, 12:10:46 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
                <h3>Update Product</h3>
            </div>
            <br/>
            <div class="container">
                <form action="update" method="post">
                    <div class="form-group col-md-12">
                        <p>ID</p>
                        <input value="${edit.id}"  type="text" name="ID" class="form-control" required="required" placeholder="ProductName" readonly="">
                    </div>
                    <div class="form-group col-md-12">
                        <p>Name</p>
                        <input value="${edit.name}"  type="text" name="ProductName" class="form-control" required="required" placeholder="ProductName">
                    </div>
                    <div class="form-group col-md-12">
                        <p>Image</p>
                        <input value="${edit.image}" type="text" name="linkimage" class="form-control" required="required" placeholder="Image">
                    </div>
                    <div class="form-group col-md-12">
                        <p>Price</p>
                        <input value="${edit.price}" type="number" name="Price" class="form-control" required="required" placeholder="Price">
                    </div>
                    <div class="form-group col-md-12">
                        <p>Title</p>
                        <input value="${edit.title}" type="text" name="Title" class="form-control" required="required" placeholder="Title">
                    </div>
                    <div class="form-group col-md-12">
                        <p>Description</p>
                        <input value="${edit.description}" type="text" name="Description" class="form-control" required="required" placeholder="Description">
                    </div>
                    <div class="form-group col-md-12">
                        <p>Cate ID</p>
                        <input value="${edit.cateID}" type="number" name="Category" class="form-control" required="required" placeholder="Category">
                    </div>
                    <input class="btn btn-primary" type="submit" value="Update">
            </form>
        </div>
    </body>
</html>
