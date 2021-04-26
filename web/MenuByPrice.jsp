<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

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
        <jsp:useBean id="DAO" class="DAO.DAO"></jsp:useBean>

            <!-- <link rel="stylesheet" href="css/responsive.css"> -->
        </head>

        <body>
            <!--[if lte IE 9]>
                    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
                <![endif]-->

            <!-- header-start -->
        <jsp:include page="head.jsp"></jsp:include>
            <!-- header-end -->

            <!-- bradcam_area_start -->
            <div class="bradcam_area breadcam_bg overlay">
                <h3>Menu</h3>
            </div>
            <!-- best_burgers_area_start  -->
            <div class="best_burgers_area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="section_title text-center mb-80">
                                <span>Sport Shoes Menu</span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    <c:forEach items="${listCountP}" var="o">
                        <div class="col-xl-6 col-md-6 col-lg-6">
                            <div class="single_delicious d-flex align-items-center">
                                <div class="thumb">
                                    <img src="${o.image}" alt="" width="300px" height="300px">
                                </div>
                                <div class="info">
                                    <a href="" style="color: while"><h3>${o.name}</h3></a>
                                    <p>${o.title}</p>
                                    <span>${o.price}$
                                        <br>
                                        <c:if test="${sessionScope.acc==null}">
                                            <a href="Login.jsp" class="btn btn-success btn-block">Add to cart</a>
                                        </c:if>
                                        <c:if test="${sessionScope.acc!=null}">
                                            <c:if test="${sessionScope.acc.isAdmin!=1}">
                                                <a href="CartControl?img=${o.image}&price=${o.price}&pName=${o.name}&sId=${o.id}" class="btn btn-success btn-block">Add to cart</a>
                                            </c:if>
                                            <c:if test="${sessionScope.acc.isAdmin==1}">
                                                <a href="edit?pid=${o.id}"><button type="button" class="btn btn-primary">Edit</button></a>
                                            </c:if>
                                        </c:if>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <%--</c:forEach>--%>
                </div>
                <div class="clearfix">
                    <!--<div class="hint-text">Showing <b>4</b> out of <b>25</b> entries</div>-->
                    <ul class="pagination">
                        <!--<li class="page-item disabled"><a href="#">Previous</a></li>-->
                            <c:forEach begin="1" end="${end}" var="i">
                            <li class="page-item ${tag==i?"active":""}"><a  href="SearchByPriceControl?index=${i}" class="page-link">${i}</a></li>
                            </c:forEach>
                        <!--<li class="page-item"><a href="#" class="page-link">Next</a></li>-->
                    </ul>
                </div>
            </div>
        </div>
        <!-- best_burgers_area_end  -->

        <!-- features_room_startt -->
        <br>
        <div class="Burger_President_area">
            <div class="Burger_President_here">
                <div class="single_Burger_President">
                    <div class="room_thumb">
                        <img src="image/nike1.1.PNG" alt="" width="800px" height="800px"/>
                        <div class="room_heading d-flex justify-content-between align-items-center">
                            <div class="room_heading_inner">
                                <h3>Nike Mercuial Superfly 7 Club CR7 safari TF</h3>
                                <p>Football Boot</p>
                                <a href="#" class="boxed-btn3">Order Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single_Burger_President">
                    <div class="room_thumb">
                        <img src="image/nikeMer1.1.PNG" alt="" width="800px" height="800px"/>
                        <div class="room_heading d-flex justify-content-between align-items-center">
                            <div class="room_heading_inner">
                                <h3>Nike Jr. Mercurial Vapor 13 Club MG</h3>
                                <p>Younger/Older kids' Multi-Ground Football</p>
                                <a href="#" class="boxed-btn3">Order Now</a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>



        <script src="js/vendor/modernizr-3.5.0.min.js"></script>
        <script src="js/vendor/jquery-1.12.4.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/isotope.pkgd.min.js"></script>
        <script src="js/ajax-form.js"></script>
        <script src="js/waypoints.min.js"></script>
        <script src="js/jquery.counterup.min.js"></script>
        <script src="js/imagesloaded.pkgd.min.js"></script>
        <script src="js/scrollIt.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/nice-select.min.js"></script>
        <script src="js/jquery.slicknav.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/plugins.js"></script>

        <!--contact js-->
        <script src="js/contact.js"></script>
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/jquery.form.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/mail-script.js"></script>

        <script src="js/main.js"></script>

    </body>

</html>