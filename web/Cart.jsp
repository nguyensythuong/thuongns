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
                                <span>Add to Cart</span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">id</th>
                                    <th scope="col">name</th>
                                    <th scope="col">image</th>
                                    <th scope="col">price</th>
                                    <th scope="col">quantity</th>
                                    <th scope="col">total</th>
                                    <th scope="col">Delete</th>

                                </tr>
                            </thead>
                        <c:forEach items="${list}" var="o">
                            <tr>
                                <td><p>${o.id}</p></td>
                                <td class="cart_description">
                                    <h4>${o.name}</h4>
                                </td>
                                <td class="cart_product"> 
                                    <a href=""><img src="${o.image}" alt="" style="width: 150px; height: 150px;"></a>
                                </td>
                                <td class="cart_price">
                                    <p>$ ${o.price}</p>
                                </td>
                                <td class="cart_quantity" readonly>
                                    <div class="cart_quantity_button" readonly >
                                        <button>${o.quanity}</button>
                                        <!--<input class="cart_quantity_input"  type="text" name="quanity" value="${o.quanity}" autocomplete="off" size="2">-->
                                    </div>
                                </td>
                                <td class="cart_total">
                                    <p class="cart_total_price">$ ${(o.price) * o.quanity}  </p>
                                </td>
                                <td class="cart_delete">
                                    <a class="cart_quantity_delete" href="DeleteProductInCart?dId=${o.id}"><i class="fa fa-times"></i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>

                </div>
            </div>
        </div>
    </section> <!--/#cart_items-->
    <c:if test="${sessionScope.listC != null}">
        <section id="do_action">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="total_area">
                            <table>
                                <ul>
                                    <li>Cart Sub Total:   <span class="mb-4 ml-2">$ ${Sum}</span></li>
                                    <li>Discount Cost:    <span class="mb-4 ml-2">${sessionScope.discount}%</span></li>
                                    <li>Total:            <span class="mb-4 ml-5">$ ${sessionScope.Sum - (sessionScope.Tax*sessionScope.Sum)}</span></li>
                                    <li>${mess}</li>
                                </ul>
                            </table>
                            <!--<button><a class="btn btn-default update" href="#">Update</a></button>-->
                            <button><a class="btn btn-default check_out" href="CheckOut.jsp?Sum=${Sum}">Check Out</a></button>
                        </div>
                    </div>
                </div>
            </div>
        </section><!--/#do_action-->
    </c:if>
    <!-- best_burgers_area_end  -->

    <!-- features_room_startt -->
    <br>



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
