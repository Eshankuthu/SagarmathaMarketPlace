<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Shopping Cart</title>
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
                    <li><a href="<c:url value='/products'/>" >Products</a>
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
    
    <div id="content">
    	<h1>Items in Cart</h1>
    	
        <table width="900px" cols="0" cellspacing="0" cellpadding="5">
          <tr bgcolor="#ddd">
                <th width="220" align="left">Image </th> 
                <th width="180" align="left">Description </th> 
                <th width="100" align="center">Quantity </th> 
                <th width="60" align="right">Price </th> 
                <th width="60" align="right">Total </th> 
                <th width="90"> </th>
                
          </tr>
            <tr>
                <td><img src="resources/images/product/01.jpg" alt="image" /></td> 
                <td>Etiam in tellus</td> 
                <td align="center"><input type="text" value="1" style="width: 20px; text-align: right" /> </td>
                <td align="right">$100 </td> 
                <td align="right">$100 </td>
                <td align="center"> <a href="#"><img src="resources/images/remove.png" alt="remove" /><br />Remove</a> </td>
            </tr>
            <tr>
                <td><img src="resources/images/product/02.jpg" alt="image" /> </td>
                <td>Hendrerit justo</td> 
                <td align="center"><input type="text" value="1" style="width: 20px; text-align: right" />  </td>
                <td align="right">$40  </td>
                <td align="right">$40 </td>
                <td align="center"> <a href="#"><img src="resources/images/remove.png" alt="remove" /><br />Remove</a>  </td>
            </tr>
            <tr>
                <td colspan="3" align="right"  height="30px">Have you modified your basket? Please click here to <a href="shoppingcart.html"><strong>Update</strong></a>&nbsp;&nbsp;</td>
                <td align="right" style="font-weight:bold"> Total </td>
                <td align="right" style="font-weight:bold">$140 </td>
                <td style="font-weight:bold"> </td>
            </tr>
        </table>
        <p class="right"><a href="checkout.html" class="button">checkout</a></p>
            
        
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