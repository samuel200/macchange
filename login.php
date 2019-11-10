<?php
    ob_start();
	session_start();
?>
<?php
	require"includes/core.inc.php";
?>
<?php
	if(isset($_POST['signin'])){
		$email = strtolower(htmlentities(trim(mysqli_real_escape_string($connection, $_POST['email']))));
		$password = md5(sha1($_POST['password']));
		$reg_date = Date("d-M-Y");
		$time = time();
		$time2 = Date("H:i:s", $time);
		$time3 = "{$reg_date} {$time2}";
		$online = "online";
		
		$query = "SELECT * FROM registration WHERE email = '{$email}' AND password = '{$password}'";
		$run_query = mysqli_query($connection, $query);
		
		if(mysqli_num_rows($run_query)== 1){
			while($result = mysqli_fetch_assoc($run_query)){
				$user_id = $result['id'];
				$block = $result['block'];
				
				if($block == "block"){
					$message_failure = "Your account has been blocked contact support@macchange.tech.com";
				}else{
					$query = "UPDATE registration SET status = '{$online}' WHERE email = '{$email}'";
					$run_query = mysqli_query($connection, $query);
					
					//$_SESSION['user_id']= $user_id;
					//header("location: user_dashboard.php?p=new_investment");
                    
                    echo "<script type=\"text/javascript\">
											alert(\"LOGGED IN SUCCESSFULLY\");
											window.location = \"index.php\"
											</script>";
                    
				}
			}
		}else{
			//$message_failure = "incorrect email and password combination";
            
            echo "<script type=\"text/javascript\">
											alert(\"UNABLE TO LOGIN\");
											window.location = \"login.php\"
											</script>";
		}
	}
?>





<!DOCTYPE html>
<html lang="en" class="js">



<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<!-- Fav Icon  -->
	<link rel="shortcut icon" href="c_image/favicon.png">
	<!-- Site Title  -->
	<title>Login | Macchange - Bitcoin, Ethereum &amp; Cryptocurrency Trading Platform</title>
	<!-- Bundle and Base CSS -->
	<link rel="stylesheet" href="c_asset/css/vendor.bundlee332e332.css?ver=161">
	<link rel="stylesheet" href="c_asset/css/stylee332e332.css?ver=161">
	<!-- Azalea CSS -->
	<link rel="stylesheet" href="c_asset/css/azaleae332e332.css?ver=161">
	<!-- Color Scheme CSS -->
	<link rel="stylesheet" href="c_asset/css/themee332e332.css?ver=161" id="theming">
	<style>
		.demo-panel, .promo-content, .promo-trigger {
			display: none;
		}
	</style>
    
    <link rel="apple-touch-icon" href="assets/img/myimages/logo2_res.png">
    <link rel="icon" href="assets/img/myimages/logo2_res.png">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,400i,500,500i" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/elements.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
    <link href="assets/css/responsive.css" rel="stylesheet">
    
    
</head>
 
<body class="nk-body body-wider bg-theme">
	<div class="nk-wrap">
		
    
        <main class="nk-pages tc-light">
            
            
            
            
            
            <!-- // -->
            <section class="section section-l" id="contact">
                <?php
            
                require_once('header.php');
            
            ?>

                <div class="container">
                    <!-- Block @s -->
                    <div class="nk-block nk-block-about">
                        <div class="row justify-content-between align-items-center gutter-vr-50px">
                            <div class="col-lg-6">
                                <div class="nk-block-text">
                                    <div class="nk-block-text-head">
                                        
                                        <h2 class="animated" data-animate="fadeInUp" data-delay="0.8">Login to your account</h2>
                                    </div>
                                    <form method="POST" action="">
                                        
                                        <?php
							if(isset($message)){
								echo "<p style='color:green;' class='text-center'>{$message}</p>";
							}
							if(isset($message_failure)){
								echo "<p style='color:red;' class='text-danger text-center'>{$message_failure}</p>";
							}
						?>  
                                        
                                        <div class="row">
                                            
                                            <div class="col-sm-12">
                                                <div class="field-item animated" data-animate="fadeInUp" data-delay="0.9">
                                                    <label class="field-label ttu">Your Email</label>
                                                    <div class="field-wrap">
                                                        <input name="email" placeholder="Your Email Address" type="email" class="input-bordered" required>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="field-item animated" data-animate="fadeInUp" data-delay="1.0">
                                            <label class="field-label ttu">Your Password</label>
                                            <div class="field-wrap">
                                                <input name="password" placeholder="Yourt Password" type="password" class="input-bordered" required>
                                            </div>
                                        </div>
                                        
                                        <div class="row">
                                            <div class="col-sm-5 text-right animated" data-animate="fadeInUp" data-delay="1.1">
                                                <button type="submit" name="signin" class="btn btn-lg">LOGIN</button>
                                            </div>
											
                                            <!--<div class="col-sm-7 order-sm-first">
                                                <div class="form-results"></div>
                                            </div>-->
											
                                        </div>
										<center><p><br>Don't have an account? <a href="register.php">Register now</a></p></center>
                                    </form>
                                </div>
                            </div>
                            <div class="col-lg-5 text-center order-lg-first">
                                <div class="nk-block-contact nk-block-contact-s1  animated" data-animate="fadeInUp" data-delay="0.1">
                                <a href="index.php" class="logo-link">
									<img class="logo-dark" src="c_image/logo-s2-white.png" alt="logo">
									<img class="logo-light" src="c_image/logo-s2-white.png" alt="logo">
								</a>
                                    <div class="nk-circle-animation nk-df-center white small"></div><!-- .circle-animation -->
                                </div>
                                
                                
                            </div>
                        </div>
                    </div><!-- .block @e -->
                </div>
            </section>
	        
        </main>
        
        
        <?php
        
            require_once('footer.php');
        
        ?>
        
        <!--<footer class="nk-footer-bar section section-s">
            <div class="container container-xxl">
                <div class="row gutter-vr-10px">
                    <div class="col-lg-6 order-lg-last text-lg-right">
                        <ul class="footer-nav">
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms & Conditions</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-6">
                        <div class="copyright-text copyright-text-s2">© 2019 All Rights Reserved</div>
                    </div>
                </div>
				
            </div>
        </footer>-->
       
        <div class="nk-ovm nk-ovm-repeat nk-ovm-fixed shape-i">
            <div class="ovm-line"></div>
        </div>
	</div>
    
	<div class="preloader no-default">
	    <div class="text-zoom">
	        <div class="text-item"><div class="text-small">M</div><div class="text-large">M</div></div>
	        <div class="text-item"><div class="text-small">A</div><div class="text-large">A</div></div>
	        <div class="text-item"><div class="text-small">C</div><div class="text-large">C</div></div>
	        <div class="text-item"><div class="text-small">C</div><div class="text-large">C</div></div>
	        <div class="text-item"><div class="text-small">H</div><div class="text-large">H</div></div>
	        <div class="text-item"><div class="text-small">A</div><div class="text-large">A</div></div>
	        <div class="text-item"><div class="text-small">N</div><div class="text-large">N</div></div>
	        <div class="text-item"><div class="text-small">G</div><div class="text-large">G</div></div>
            <div class="text-item"><div class="text-small">E</div><div class="text-large">E</div></div>
	    </div>
	</div>
	
	<!-- JavaScript -->
	<script src="c_asset/js/jquery.bundlee332e332.js?ver=161"></script>
	<script src="c_asset/js/scriptse332e332.js?ver=161"></script>
	<script src="c_asset/js/charts.js"></script>
	<!--Start of Tawk.to Script-->

    
    
    
<!--End of Tawk.to Script-->
<script async data-id="14275" src="../cdn.widgetwhats.com/script.min.js"></script>
</body>



</html>
