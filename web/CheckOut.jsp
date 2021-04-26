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
                                <span>Check Out</span>
                            </div>
                        </div>
                    </div>

                    <div class="shopper-informations">
                        <div class="row">
                            <div class="col-sm-5 clearfix">
                                <div class="bill-to">
                                    <p>Bill To</p>
                                    <div class="form-one">
                                        <form action="CheckOutControl" method="post">
                                            <a>   Email:       </a>
                                            <input type="text" class="mb-2 ml-3"  placeholder="Email*" name="email" value="${sessionScope.email}">
                                        <br/>
                                        <a>    Name:        </a>
                                        <input type="text" class="mb-2 ml-3" placeholder="Name *" name="name" value="${sessionScope.user}">
                                        <br/>
                                        <a>    Address:     </a>
                                        <input type="text" class="mb-2 ml-3" placeholder="Address 1 *" name="address"  value="${sessionScope.address}">
                                        <br/>
                                        <a>Phone number:</a>
                                        <input type="text" class="mb-2 ml-3" placeholder="Phone *" name="phone" value="0${sessionScope.phone}">
                                        <a class="btn btn-primary" href="CheckOutControl"> <button type="submit">Payment for the orders </button></a>
                                    </form>
                                </div>
                                <!--                                <div class="form-two">
                                                                    <form action="CheckOut" method="post">
                                                                        <input type="text" placeholder="Zip / Postal Code *" name="ZipCode">
                                
                                                                    </form>
                                                                </div>-->
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="order-message">
                                <p>Shipping Order</p>
<!--                                <textarea name="message"  placeholder="Notes about your order, Special Notes for Delivery" rows="8">-->
                                        <img src="image/nikeMer1.1.PNG" alt="" width="300px" height="300px"/>
<!--                                </textarea>-->
                                <label><input type="checkbox"> Shipping to bill address</label>
                            </div>	
                        </div>					
                    </div>
                </div>
                <div class="review-payment">
                    <h2>Review & Payment</h2>
                </div>

                <div class="table-responsive cart_info">
                    <table class="table table-condensed">
                        <thead>
                            <tr class="cart_menu">
                                <td class="image">Item</td>
                                <td class="description"></td>
                                <td class="price">Price</td>
                                <td class="quantity">Quantity</td>
                                <td class="total">Total</td>
                                <td class="delete">Delete</td>
                                <td></td>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${sessionScope.listC}" var="o">
                                <tr>
                                    <td class="cart_product">
                                        <a href=""><img src="${o.image}" alt="" style="width: 150px; height: 150px;"></a>
                                    </td>
                                    <td class="cart_description">
                                        <h4><a href="">${o.name}</a></h4>
                                        <p>${o.id}</p>
                                    </td>
                                    <td class="cart_price">
                                        <p>${o.price}$</p>
                                    </td>
                                    <td class="cart_quantity">
                                        <div class="cart_quantity_button" readonly >
                                            <button>${o.quanity}</button>
                                            <!--<input class="cart_quantity_input"  type="text" name="quanity" value="${o.quanity}" autocomplete="off" size="2">-->
                                        </div>
                                    </td>
                                    <td class="cart_total">
                                        <p class="cart_total_price">$ ${(o.price)}</p>
                                    </td>
                                    <td class="cart_delete">
                                        <a class="cart_quantity_delete" href="DeleteProduct?dId=${o.id}"><i class="fa fa-times"></i></a>
                                    </td>
                                </tr>
                            </c:forEach>
                            <tr>
                                <td colspan="4">&nbsp;</td>
                                <td colspan="2">
                                    <table class="table table-condensed total-result">
                                        <!--<tr>-->
                                        <tr><h2 style="color: #F79960">Discount:   ${sessionScope.discount}%</h2></tr>
                        <br>
                        <tr><h2 style="color: #F79960">Total: ${sessionScope.Sum - (sessionScope.Tax*sessionScope.Sum)}$</h2></tr>
                        <!--</tr>-->
                    </table>
                    </td>
                    </tr>
                    </tbody>
                    </table>      
                </div>
            </div>
        </div>

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
