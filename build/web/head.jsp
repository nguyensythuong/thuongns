<%-- 
    Document   : head
    Created on : Jan 14, 2021, 10:04:35 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/.../css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <!--Fontawesome CDN-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <!--Custom styles-->
        <link href="login.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="styles.css">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <div class="header-area ">
                <div id="sticky-header" class="main-header-area">
                    <div class="container-fluid p-0">
                        <div class="row align-items-center no-gutters">
                            <div class="col-xl-5 col-lg-5">
                                <div class="main-menu  d-none d-lg-block">
                                    <nav>
                                        <ul id="navigation">
                                            <li><a  href="index.jsp" checked>Home</a></li>
                                            <!--<li><a  href="Menu.jsp">Menu</a></li>-->
                                            <!--<li><a  href="Control">Menu</a></li>-->
                                            <li><a href="Control">Menu <i class="ti-angle-down"></i></a>
                                                <ul class="submenu">
                                                    <li><a href="MenuAdidas.jsp">Menu Adidas</a></li>
                                                    <li><a href="MenuFuture.jsp">Menu Future</a></li>
                                                    <li><a href="MenuNike.jsp">Menu Nike</a></li>
                                                    <li><a href="MenuPuma.jsp">Menu Puma</a></li>
                                                </ul>
                                            </li>
                                            <c:if test="${sessionScope.acc == null}">
                                                <li><a href="Login.jsp">Login</a></li>
                                                </c:if>
                                                <c:if test="${sessionScope.acc!=null}">
                                                <li><a href="Login.jsp">Logout</a></li>
                                                    <c:if test="${sessionScope.acc.isAdmin !=1}">
                                                    <li><a href="CheckOut.jsp">Check out</a></li>
                                                    <li><a href="AccountUser.jsp">Hello ${sessionScope.acc.username}</a></li>
                                                    <li><a href="#">Price of Product <i class="ti-angle-down"></i></a>
                                                        <ul class="submenu">
                                                            <li><a href="SearchByPriceControl?price=100">  100$</a></li>
                                                            <li><a href="SearchByPriceControl?price=200">  200$</a></li>
                                                            <li><a href="SearchByPriceControl?price=300">  300$</a></li>
                                                            <li><a href="SearchByPriceControl?price=500">More 500$</a></li>
                                                        </ul>
                                                    </li>
                                                </c:if>
                                                <c:if test="${sessionScope.acc.isAdmin ==1}">
                                                    <li><a href="loadMyOrder">Manager Order</a></li>
                                                    <li><a href="manager">Manager Product</a></li>
                                                    <li><a href="ManagerAccount.jsp">Manager Account</a></li>
                                                    </c:if>
                                                </c:if>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="col-xl-2 col-lg-2">
                                <div class="logo-img">
                                    <a href="index.jsp">
                                        <!--<img src="img/logo.png" alt="">-->
                                        <img src="image/thuong.PNG" alt=""/>
                                        <!--<img src="Giày Adidas/Poster.PNG" alt=""/>-->
                                    </a>
                                </div>
                            </div>
                            <div class="col-xl-5 col-lg-5 d-none d-lg-block">
                                <div class="book_room">
                                    <div class="book_btn d-none d-xl-block">
                                        <!--                                        <li><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Cart </a></li>-->
                                        <div class="input-group input-group-sm">
                                            <form action="search" method="post" class="form-inline my-2 my-lg-0">
                                                <input autofocus name="txt" type="text" class="form-control"
                                                       aria-label="Small" aria-describedby="inputGroup-sizing-sm" value="${txtValue}" placeholder="Search...">
                                                <div class="input-group-append">
                                                    <button type="submit" class="btn btn-secondary btn-number">
                                                        <i class="fa fa-search"></i>
                                                    </button>
                                                </div>
                                            </form>
                                            <c:if test="${sessionScope.acc.isAdmin !=1}">
                                                <a class="btn btn-success btn-sm ml-3" href="LoadProductCart">
                                                    <span> <i class="fa fa-shopping-cart"></i> Cart (${countProduct})</span>
                                                    <!--                                                    <span class="badge badge-light">3</span>-->
                                                </a>
                                            </c:if>
                                        </div>
                                    </div>
                                    <div class="book_btn d-none d-xl-block">
                                        <a class="#" href="#">0368128093</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </body>
</html>
