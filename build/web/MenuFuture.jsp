<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
        </head>

        <body>
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
                                <span>Adidas</span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    <c:forEach items="${DAO.getProductByCID(3)}" var="o">
                        <div class="col-xl-6 col-md-6 col-lg-6">
                            <div class="single_delicious d-flex align-items-center">
                                <div class="thumb">
                                    <img src="${o.image}" alt="" width="300px" height="300px">
                                </div>
                                <div class="info">
                                    <h3>${o.name}</h3>
                                    <p>${o.title}</p>
                                    <span>${o.price}$
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
                                <a href="MenuNike.jsp" class="boxed-btn3">Nike</a>
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
                                <a href="MenuPuma.jsp" class="boxed-btn3">Puma</a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- features_room_end -->

        <!-- instragram_area_start -->
  

        <!-- JS here -->
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