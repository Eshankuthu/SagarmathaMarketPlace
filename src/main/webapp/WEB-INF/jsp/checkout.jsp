<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="<c:url value='/resources/css/tooplate_style.css'/>" rel="stylesheet" />
<link href="<c:url value='/resources/css/ddsmoothmenu.css'/>" rel="stylesheet" />


<script type="text/javascript" src="<c:url value='/resources/js/jquery.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/js/ddsmoothmenu.js'/>"></script>


<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "tooplate_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>

<link rel="stylesheet" type="text/css" media="all" href="<c:url value='/resources/css/jquery.dualSlider.0.2.css'/>" />

<script type="text/javascript" src="<c:url value='/resources/js/jquery-1.3.2.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/js/jquery.easing.1.3.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/js/jquery.timers-1.2.js'/>"></script>
<script type="text/javascript" src="<c:url value='/resources/js/jquery.dualSlider.0.3.min.js'/>"></script>


<script type="text/javascript">
    
    $(document).ready(function() {
        
        $("#carousel").dualSlider({
            auto:false,
            autoDelay: 6000,
            easingCarousel: "swing",
            easingDetails: "easeOutBack",
            durationCarousel: 1000,
            durationDetails: 600
        });
        
    });
    
    
</script>

<link href="<c:url value='/resources/css/slimbox2.css'/>" rel="stylesheet" media="screen" />
<script type="text/javascript" src="<c:url value='/resources/js/slimbox2.js'/>"></script>
</head>
<body>

<div id="tooplate_wrapper">
	<div id="tooplate_header">
    	<div id="header_top">
        	<div id="site_title"><a href="<c:url value='/'/>">Sagarmatha Marketplace</a></div>
            <div id="tooplate_menu" class="ddsmoothmenu">
                <ul>
                    <li><a href="<c:url value='/'/>">Home</a></li>
                    <li><a href="<c:url value='/products'/>">Products</a>
                        <ul>
                            <li><a href="#">Category One</a></li>
                            <li><a href="#">Category Two</a></li>
                            <li><a href="#">Category Three</a></li>
                            <li><a href="#">Category Four</a></li>
                            <li><a href="#">Category Five</a></li>
                      	</ul>
                    </li>
                    <li><a href="contact.html" class="last">Contact</a></li>
                </ul>
                <br style="clear: left" />
            </div> <!-- end of tooplate_menu -->
        </div> <!-- END of header top -->
        
        <div id="header_bottom">
        	<p>
            <a href="<c:url value='/shoppingcart'/>">My Cart</a> | 
            <a href="<c:url value='/checkout'/>">Check Out</a> |
        	<span>Item in Cart ( 10 )</span>
            </p>
            
             <div id="tooplate_search">
                <form action="#" method="get">
                  <input type="text" value=" " name="keyword" id="keyword" title="keyword" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field" />
                  <input type="submit" name="Search" value=" " alt="Search" id="searchbutton" title="Search" class="sub_btn"  />
                </form>
            </div>
        </div> <!-- END of header bottom -->
    </div> <!-- END of header -->
    
    <div id="tooplate_main"><span class="main_border main_border_t"></span><span class="main_border main_border_b"></span>
    	<div class="col col_1">
            <h1>Checkout</h1>
            
            <h3>BILLING DETAILS	</h3>
		</div>
        <div class="col col_2">
            <label>Enter your full name as it is on the credit card:<label>
            <input name="fullname" type="text" id="fullname"  style="width:300px;"  />
            <label>Address:</label>
           	<input name="address" type="text" id="address"  style="width:300px;"  />
            <label>City:</label>
            <input name="city" type="text" id="city"  style="width:300px;"  />
            <label>Country:</label>
            <input name="country" type="text" id="country"  style="width:300px;"  />
            
        </div>
        
        <div class="col col_2">
            <label>E-MAIL</label>
            <input name="email" type="text" id="email"  style="width:300px;"  />
          <label>PHONE</label>
            <span style="font-size:10px; display: block;">Please, specify your reachable phone number. YOU MAY BE GIVEN A CALL TO VERIFY AND COMPLETE THE ORDER.</span>
            <input name="phone" type="text" id="phone"  style="width:300px;"  />
        </div>
            
		<hr />
        
        <div class="col col_1">
            <h3>SHOPPING CARD</h3>
            <h4>TOTAL: <strong>$140</strong></h4>
            <p><input type="checkbox" />I have accepted the Terms of Use.</p>
            <p><a href="#"><img src="<c:url value='/resources/images/1311260370_paypal-straight.png'/>" alt="paypal" /></a>&nbsp;Recommended if you have a PayPal account. Fastest delivery time.</p>
		</div>        
        <div class="clear"></div>
    </div> <!-- END of main -->
    
</div> <!-- END of wrapper -->


<div id="tooplate_footer_wrapper">
	<div id="tooplate_footer">
    	Copyright © 2048 Your Company Name 
        
        - Designed by <a href="http://www.tooplate.com">Tooplate</a>
    </div> <!-- END of footer -->
</div> <!-- END of footer wrapper -->

</body>
</html>