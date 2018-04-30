<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clothing Template, free HTML CSS template</title>
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
	                    <li><a href="<c:url value='/'/>" class="selected">Home</a></li>
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
	    
	<div id="tooplate_slider" class="section_content"><span class="frame"></span>
	        <div id="carousel">
	            <div class="panel">
	                
	                <div class="details_wrapper">
	                    
	                    <div class="details">
	                    
	                        <div class="detail">
	                            <h2>Dolor sit amet</h2>
	                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec orci erat. </p>
	                            <a href="productdetail.html" title="Read more" class="slider_more">Read more</a>
	                        </div><!-- /detail -->
	                        
	                        <div class="detail">
	                            <h2>Lorem ipsum dolor</h2>
	                            <p> Donec nec orci vel risus condimentum suscipit dapibus quis justo.</p>
	                            <a href="productdetail.html" title="Read more" class="slider_more">Read more</a>
	                        </div><!-- /detail -->
	                        
	                        <div class="detail">
	                            <h2>Aenean massa cum sociis</h2>
	                            <p> Nam non lectus a nunc fringilla aliquet ac id lectus. </p>
	                            <a href="productdetail.html" title="Read more" class="slider_more">Read more</a>
	                        </div><!-- /detail -->
	                    
	                    </div><!-- /details -->
	                    
	                </div><!-- /details_wrapper -->
	                
	          </div><!-- /panel -->
	        
	            <a href="javascript:void(0);" class="previous" title="Previous" >Previous</a>
	            <a href="javascript:void(0);" class="next" title="Next">Next</a>
	        
	<div id="slider-image-frame">
	                <div class="backgrounds">
	                    
	                    <div class="item item_1">
	                        <img src="<c:url value='/resources/images/slider/01.jpg'/>" alt="image" />
	                    </div><!-- /item -->
	                    
	                    <div class="item item_2">
	                        <img src="<c:url value='/resources/images/slider/02.jpg'/>" alt="image" />
	                    </div><!-- /item -->
	                    
	                    <div class="item item_3">
	                        <img src="<c:url value='/resources/images/slider/03.jpg'/>" alt="image" />
	                    </div><!-- /item -->
	                   
	                </div><!-- /backgrounds -->
	            </div>
	        </div>
	        <div class="clear"></div>
	    </div> <!-- END of slider -->
	    
	    <div id="tooplate_main"><span class="main_border main_border_t"></span><span class="main_border main_border_b"></span>
	    	<div class="product">
	        	<h1>New Products</h1>
	            <div class="product_box">
	            	<div class="img_box"><span></span>
		                <a href="productdetail.html"><img src="<c:url value='/resources/images/product/01.jpg'/>" alt="image" /></a>
					</div>
	                <h2><a href="productdetail.html">Product One</a></h2>
	                <p class="price">$30</p>
	            </div>
	            <div class="product_box">
	               	<div class="img_box"><span></span>
		                <a href="productdetail.html"><img src="<c:url value='/resources/images/product/02.jpg'/>" alt="image" /></a>
				  </div>
	                <h2><a href="productdetail.html">Product One</a></h2>
	                <p class="price">$30</p>
	            </div>
	            <div class="product_box">
	                <div class="img_box"><span></span>
		                <a href="productdetail.html"><img src="<c:url value='/resources/images/product/03.jpg'/>" alt="image" /></a>
					</div>
	                <h2><a href="productdetail.html">Product One</a></h2>
	                <p class="price">$30</p>
	            </div>
	            <div class="product_box">
	                <div class="img_box"><span></span>
		                <a href="productdetail.html"><img src="<c:url value='/resources/images/product/04.jpg'/>" alt="image" /></a>
					</div>
	                <h2><a href="productdetail.html">Product One</a></h2>
	                <p class="price">$30</p>
	            </div>
			</div>    
	        
	        <div class="clear h20"></div>
	        <hr />
	        <div class="clear h10"></div>
	        
	        <div class="product">
	        	<h1>Popular Products</h1>
	            <div class="product_box">
	            	<div class="img_box"><span></span>
		                <a href="productdetail.html"><img src="<c:url value='/resources/images/product/01.jpg'/>" alt="image" /></a>
					</div>
	                <h2><a href="productdetail.html">Product One</a></h2>
	                <p class="price">$30</p>
	            </div>
	            <div class="product_box">
	               	<div class="img_box"><span></span>
		                <a href="productdetail.html"><img src="<c:url value='/resources/images/product/02.jpg'/>" alt="image" /></a>
					</div>
	                <h2><a href="productdetail.html">Product One</a></h2>
	                <p class="price">$30</p>
	            </div>
	            <div class="product_box">
	                <div class="img_box"><span></span>
		                <a href="productdetail.html"><img src="<c:url value='/resources/images/product/03.jpg'/>" alt="image" /></a>
					</div>
	                <h2><a href="productdetail.html">Product One</a></h2>
	                <p class="price">$30</p>
	            </div>
	            <div class="product_box">
	                <div class="img_box"><span></span>
		                <a href="productdetail.html"><img src="<c:url value='/resources/images/product/04.jpg'/>" alt="image" /></a>
					</div>
	                <h2><a href="productdetail.html">Product One</a></h2>
	                <p class="price">$30</p>
	            </div>
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