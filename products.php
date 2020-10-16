<?php 
	include 'inc/header.php';
	include 'inc/slider.php';
 ?>

 <div class="main">
    <div class="content">
    	<div class="content_top">
    		<div class="heading">
    		<h3>Latest from Iphone</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
	      <div class="section group">
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="preview-3.php"><img src="images/iphone11.png" alt="" /></a>
					 <h2>IPHONE 11 64G </h2>
					 <p>Màn hình:	IPS LCD, 6.1", Liquid Retina
Hệ điều hành:	iOS 13
Camera sau:	Chính 12 MP & Phụ 12 MP
Camera trước:	12 MP
CPU:	Apple A13 Bionic 6 nhân
RAM:	4 GB
Bộ nhớ trong:	64 GB
Thẻ SIM:
1 eSIM & 1 Nano SIM, Hỗ trợ 4G
HOTSIM Vina Bùm 120 (2GB/ngày)
Dung lượng pin:	3110 mAh, có sạc nhanh</p>
					 <p><span class="price">19400000</span></p>
				     <div class="button"><span><a href="preview.php" class="details">Details</a></span></div>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					<a href="preview-2.php"><img src="images/feature-pic2.jpg" alt="" /></a>
					 <h2>Lorem Ipsum is simply </h2>
					 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
					 <p><span class="price">$620.87</span></p> 
				     <div class="button"><span><a href="preview.php" class="details">Details</a></span></div>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					<a href="preview-4.php"><img src="images/feature-pic3.jpg" alt="" /></a>
					 <h2>Lorem Ipsum is simply </h2>
					 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
					 <p><span class="price">$220.97</span></p>
				     <div class="button"><span><a href="preview.php" class="details">Details</a></span></div>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					<img src="images/feature-pic4.png" alt="" />
					 <h2>Lorem Ipsum is simply </h2>
					 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
					 <p><span class="price">$415.54</span></p> 
				     <div class="button"><span><a href="preview.php" class="details">Details</a></span></div>
				</div>
			</div>
			<div class="content_bottom">
    		<div class="heading">
			<div class="content_bottom">
    		<div class="heading">
    		<h3>Sản phẩm mới</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
			<div class="section group">
			<?php 
	      	$product_new = $product->getproduct_new();
	      	if($product_new){
	      		while ($result_new = $product_new->fetch_assoc()) {
	      			      	
	      	 ?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php"><img src="admin/uploads/<?php echo $result_new['image'] ?>" alt="" /></a>
					 <h2><?php echo $result_new['productName'] ?></h2>
					 <p><?php echo $fm->textShorten($result_new['product_desc'], 50) ?></p>
					 <p><span class="price"><?php echo $fm->format_currency($result_new['price'])." VND" ?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result_new['productId'] ?>" class="details">Chi tiết</a></span></div>
				</div>
			<?php 
				}
				}
			?>
			</div>
    		<h3>Latest from Acer</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
			<div class="section group">
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="preview-3.php"><img src="images/new-pic1.jpg" alt="" /></a>
					 <h2>Lorem Ipsum is simply </h2>
					 <p><span class="price">$403.66</span></p>
				    
				     <div class="button"><span><a href="preview.php" class="details">Details</a></span></div>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					<a href="preview-4.php"><img src="images/new-pic2.jpg" alt="" /></a>
					 <h2>Lorem Ipsum is simply </h2>
					 <p><span class="price">$621.75</span></p>
				     <div class="button"><span><a href="preview.php" class="details">Details</a></span></div>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
					<a href="preview-2.php"><img src="images/feature-pic2.jpg" alt="" /></a>
					 <h2>Lorem Ipsum is simply </h2>
					 <p><span class="price">$428.02</span></p>
				     <div class="button"><span><a href="preview.php" class="details">Details</a></span></div>
				</div>
				<div class="grid_1_of_4 images_1_of_4">
				 <img src="images/new-pic3.jpg" alt="" />
					 <h2>Lorem Ipsum is simply </h2>					 
					 <p><span class="price">$457.88</span></p>   
				     <div class="button"><span><a href="preview.php" class="details">Details</a></span></div>
				</div>
			</div>
    </div>
 </div>
<?php 
	include 'inc/footer.php';
 ?>

