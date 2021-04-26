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
            <div class="bradcam_area breadcam_bg_2" url="">
            <c:if test="${sessionScope.acc.isSell ==1}">
                <h3>List Product </h3>
                <h3>  of ${sessionScope.acc.username}</h3>
            </c:if>
        </div>
        <br/>

        <!-- bradcam_area_end -->

        <!-- ================ contact section start ================= -->
        <div class="container">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Image</th>
                        <th scope="col">Price</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                <a href="AddToProductByAdmin.jsp"><button type="button" class="btn btn-primary">Add new Product</button></a>
                <c:forEach items="${list}" var="o">
                    <tr>
                        <th scope="row">${o.id}</th>
                        <td >${o.name}</td>
                        <td>
                            <img src="${o.image}" width="100px" height="100px">
                        </td>
                        <td>${o.price} $</td>
                        <td>
                            <a href="edit?pid=${o.id}"><button type="button" class="btn btn-primary">Edit</button></a>
                            <a href="delete?pid=${o.id}"><button type="button" class="btn btn-danger">Delete</button></a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="clearfix">
                <!--<div class="hint-text">Showing <b>4</b> out of <b>25</b> entries</div>-->
                <ul class="pagination">
                    <!--<li class="page-item disabled"><a href="#">Previous</a></li>-->
                        <c:forEach begin="1" end="${end}" var="i">
                        <li class="page-item ${tag==i?"active":""}"><a  href="manager?index=${i}" class="page-link">${i}</a></li>
                        </c:forEach>
                    <!--<li class="page-item"><a href="#" class="page-link">Next</a></li>-->
                </ul>
            </div>  
        </div>
        <!-- ================ contact section end ================= -->

        <!-- footer_start  -->
        <jsp:include page="footer.jsp"></jsp:include>
        <!-- footer_end  -->

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