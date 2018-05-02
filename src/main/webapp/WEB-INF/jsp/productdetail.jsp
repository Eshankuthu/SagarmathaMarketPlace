<%@ include file = "navigation.jsp" %>
    
    <div id="tooplate_main"><span class="main_border main_border_t"></span><span class="main_border main_border_b"></span>
    
    	<div class="product">
        	<div class="col col_2 product_preview">
	            <a rel="lightbox" href="<c:url value='/resources/images/product/07_l.jpg'/>"><img src="<c:url value='/resources/images/product/07_preview.jpg'/>" class=" left" alt="image" /></a>
                <ul class="nobullet">
					<li><a rel="lightbox" href="<c:url value='/resources/images/product/07_l.jpg'/>"><img src="<c:url value='/resources/images/product/07_s.jpg'/>"" alt="image" /></a></li>
                    <li><a rel="lightbox" href="<c:url value='/resources/images/product/07_l.jpg'/>"><img src="<c:url value='/resources/images/product/07_s.jpg'/>" alt="image" /></a></li>
				</ul>
                <div class="clear"></div>
            </div>
            <div class="col col_2 product_detail">
            	<h1>Product Detail</h1>
                <p><em>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tincidunt massa odio.</em></p>
                <p>Donec eget tincidunt felis. Pellentesque et mauris sed eros faucibus consequat et et ante. Cras sed arcu ut nulla iaculis imperdiet. Donec in est erat, rutrum ullamcorper nisl. Fusce tortor mauris, accumsan nec viverra nec, elementum et arcu. Vivamus quis sem nisi. Proin nunc mi, tempor ac dictum sit amet, fermentum ac urna. </p>
                <div class="clear h20"></div>
              <p class="price">$30<span>Avaliability: <strong>In stock</strong></span></p>
                <div class="clear h20"></div>
              <p class="add_to_cart">Quantity <input type="text" value="1" style="width: 20px; text-align: right" /></p>
              <a href="shoppingcart.html" class="button left">Add to Cart</a>
			</div>
            <div class="">
            </div>
            
            <div class="clear"></div>
		</div>
         
            
        <div class="clear"></div>
    </div> <!-- END of main -->
    
</div> <!-- END of wrapper -->

<%@ include file = "footer.jsp" %>