
<?include_once"config.php";?>
<!DOCTYPE html>
<html lang="en">

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
     <!-- Site Metas -->
    <title>StyleBarber - Bootstrap 4 Responsive HTML5 Template</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="css/versions.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
    <link rel="stylesheet" href="css/review.css">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.1/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>

	<div id="barbers" class="section lb">
	<div class="container">
	<div class='section-title row text-center'>
		<div class="section-title row text-center">
			<div class="col-md-8 offset-md-2">
			<small>MEET OUR TRAVELLER GROUPS</small>
			<h3>OUR GROUPS</h3>
			</div>
		</div></div><!-- end title -->
		<div class='row'>
		<?php	
			$sql="SELECT * FROM `hikinggroup`";
			$result = mysqli_query($conn, $sql);
			if ($result->num_rows == 1)
			{
				$row=mysqli_fetch_array($result);
				$userID = $row["userID"];
				$groupName = $row["groupName"];
				$groupNumber = $row["groupNumber"];
				$place = $row["place"];
				$ImgName=$row["ImgName"];
				$TripDate=$row["TripDate"];

			
			}		
			 foreach ($result as $row) {
				// echo ("".$row["ImgName"]."");
?>
			

			 <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">

				<div class="widget our-inner-taem clearfix">
					<div class="t-top"></div>

					<div class="hover-br">
	
						<img src="uploads/<?printf("".$row["ImgName"]."");?>" alt="" class="img-responsive" height="250" width="348">
						
					</div>
			
					<div class="team-box">
						<div class="widget-title text-center">
						<a href="#" class="line-pricing" ">Add to cart <i class="fa fa-shopping-cart"></i></a>

							<h3><?printf("".$row["groupName"]."");?></h3>
							<h3><?printf("".$row["TripDate"]."");?></h3>
							<h5><?printf("".$row["place"]."");?></h5>
						</div>
						<!-- end title -->
						<p><?printf("".$row["Description"]."");?></p>
						
					</div>
					<div class="t-bottom"></div>
				</div><!--widget -->
				
			 </div><!-- end col --><?}?>
			 <div class="container">
	<div class="row" style="margin-top:40px;">
		<div class="col-md-6">
    	<div class="well well-sm">
            <div class="text-right">
                <a class="btn btn-success btn-green" href="#reviews-anchor" id="open-review-box">Leave a Review</a>
            </div>
        
            <div class="row" id="post-review-box" style="display:none;">
                <div class="col-md-12">
                    <form accept-charset="UTF-8" action="" method="post">
                        <input id="ratings-hidden" name="rating" type="hidden"> 
                        <textarea class="form-control animated" cols="50" id="new-review" name="comment" placeholder="Enter your review here..." rows="5"></textarea>
        
                        <div class="text-right">
                            <div class="stars starrr" data-rating="0"></div>
                            <a class="btn btn-danger btn-sm" href="#" id="close-review-box" style="display:none; margin-right: 10px;">
                            <span class="glyphicon glyphicon-remove"></span>Cancel</a>
                            <button class="btn btn-success btn-lg" type="submit">Save</button>
                        </div>
                    </form>
                </div>
            </div>
		</div> 
		<div class="col-xs-12 col-md-6">
                        <div class="row rating-desc">
                            <div class="col-xs-3 col-md-3 text-right">
                                <span class="glyphicon glyphicon-star"></span>5
                            </div>
                            <div class="col-xs-8 col-md-9">
                                <div class="progress progress-striped">
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="20"
                                        aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                        <span class="sr-only">80%</span>
                                    </div>
                                </div>
                            </div>
         
		</div>
			 
			</html>
			<style>
				a:hover{
					color:red;
				}
			</style>
	
	<script src="js/all.js"></script>
	<script src="js/responsive-tabs.js"></script>
    <!-- ALL PLUGINS -->
	<script src="js/custom.js"></script>
	<script src="js/review.js"></script>