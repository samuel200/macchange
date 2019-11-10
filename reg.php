<?php
	require"includes/core.inc.php";
?>
<?php
	if(isset($_POST['register'])){
		$fullname =  strtolower(htmlentities(trim(mysqli_real_escape_string($connection, $_POST['fullname']))));
        $acc_type =  strtolower(htmlentities(trim(mysqli_real_escape_string($connection, $_POST['type']))));
		$email =  strtolower(htmlentities(trim(mysqli_real_escape_string($connection, $_POST['email']))));
		$phone =  strtolower(htmlentities(trim(mysqli_real_escape_string($connection, $_POST['phone']))));
		$question =  strtolower(htmlentities(trim(mysqli_real_escape_string($connection, $_POST['question']))));
		$answer =  strtolower(htmlentities(trim(mysqli_real_escape_string($connection, $_POST['answer']))));
		$username =  strtolower(htmlentities(trim(mysqli_real_escape_string($connection, $_POST['username']))));
        $address =  strtolower(htmlentities(trim(mysqli_real_escape_string($connection, $_POST['address']))));
        $country =  strtolower(htmlentities(trim(mysqli_real_escape_string($connection, $_POST['country']))));

		$date = date('Y-m-d H:i:s');
        $password = md5(sha1($_POST['password']));
        $status = "pending";
		
        $name = $_FILES['file']['name'];
        $extension = strtolower(substr($name, strpos($name, '.') + 1));
        $type = $_FILES['file']['type'];
        $size = $_FILES['file']['size'];
        $max_size = 1000000;
        $tmp_name = $_FILES['file']['tmp_name'];

        if(isset($name)){
            if(!empty ($name)){
                if(($extension == 'jpg' || $extension == 'jpeg' || $extension == 'png') && ($type == 'image/jpeg' || $type == 'image/png') && $size <= $max_size){
                    $location = 'uploads/';
                    if(move_uploaded_file($tmp_name, $location.$name)){
                    $image_location = $location.$name;

                    $query12 = " SELECT * FROM request WHERE `username` =  '{$username}'";
                    $run_query12 = mysqli_query($connection, $query12);

                    if(mysqli_num_rows($run_query12) > 0){
                        $message_failure = "Username Already Exists";
                    }else{
                        $query11 = "SELECT * FROM `request` WHERE `email` =  '{$email}'";
						$run_query11 = mysqli_query($connection, $query11);
						
						if(mysqli_num_rows($run_query11) > 0){
							echo "Email Already Exists";
						}else{
                            $query = "INSERT INTO request(acc_type,fullname,email,image, password, phone, question, answer, username, status, address, country) 
                        VALUES ('{$acc_type}','{$fullname}','{$email}','{$image_location}','{$password}','{$phone}' ,'{$question}', '{$answer}', '{$username}', '{$status}', '{$address}', '{$country}')";
                        $run_query = mysqli_query($connection, $query);

                            if($run_query == true){
                                $message = "Your Account Application was successful, we will get back to you when your application is processed through your mail";
                            }else{
                                $message_failure = "Registration Failed try again later";
                            }
                        }
                    }
                    
                }else{
                    $message_failure = '<div class="alert alert-danger alert-dismissible text-center" role="alert">
                          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                          <strong><span class="glyphicon glyphicon-check"></span> Failure:</strong> Image must be jpg/jpeg format and Must Be Less than 1000kb. 
                        </div>';
                }
            }
        } 
        	
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
	<title>Register | Macchange - Bitcoin, Ethereum &amp; Cryptocurrency Trading Platform</title>
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
                                        
                                        <h2 class="animated" data-animate="fadeInUp" data-delay="0.8">Create an account with Macchange</h2>
                                    </div>
                                    <form method="POST" action="" enctype = "multipart/form-data">
                                        
                                        
                                         <?php
							if(isset($message)){
								echo "<p class='text-center'>{$message}</p>";
							}
							if(isset($message_failure)){
								echo "<p class='text-danger text-center'>{$message_failure}</p>";
							}
						?>  
                                        
                                        <div class="row">
                                            
                                            <div class="col-sm-12">
                                                <div class="field-item animated" data-animate="fadeInUp" data-delay="0.9">
                                                    <label class="field-label ttu">Your Image:</label>
                                                    <div class="field-wrap">
                                                        <input type='file' name='file' class='form-control' required>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            
                                            
                                            <div class="col-sm-12">
                                                <div class="field-item animated" data-animate="fadeInUp" data-delay="0.9">
                                                    <label class="field-label ttu">Your First Name:</label>
                                                    <div class="field-wrap">
                                                        <input name="fullname" placeholder="Your First Name" type="text" class="input-bordered" required>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="col-sm-12">
                                                <div class="field-item animated" data-animate="fadeInUp" data-delay="0.9">
                                                    <label class="field-label ttu">Your Last Name:</label>
                                                    <div class="field-wrap">
                                                        <input name="type" placeholder="Your Last Name" type="text" class="input-bordered" required>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="col-sm-12">
                                                <div class="field-item animated" data-animate="fadeInUp" data-delay="0.9">
                                                    <label class="field-label ttu">Your Username:</label>
                                                    <div class="field-wrap">
                                                        <input name="username" placeholder="Your Username" type="text" class="input-bordered" required>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="col-sm-12">
                                                <div class="field-item animated" data-animate="fadeInUp" data-delay="0.9">
                                                    <label class="field-label ttu">Your Mobile Number:</label>
                                                    <div class="field-wrap">
                                                        <input name="phone" placeholder="Your Mobile Number" type="text" class="input-bordered" required>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="col-sm-12">
                                                <div class="field-item animated" data-animate="fadeInUp" data-delay="0.9">
                                                    <label class="field-label ttu">Your Bitcoin wallet:</label>
                                                    <div class="field-wrap">
                                                        <input name="question" placeholder="Your wallet address [optional]" type="text" class="input-bordered" required>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="col-sm-12">
                                                <div class="field-item animated" data-animate="fadeInUp" data-delay="0.9">
                                                    <label class="field-label ttu">Your Bitcoin wallet:</label>
                                                    <div class="field-wrap">
                                                        <input name="answer" placeholder="Your wallet address [optional]" type="text" class="input-bordered" required>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            
                                            
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
                                        
                                        
                                        <div class="field-item animated" data-animate="fadeInUp" data-delay="1.0">
                                            <label class="field-label ttu">Your Password</label>
                                            <div class="field-wrap">
                                                <input name="address" placeholder="Yourt Password" type="text" class="input-bordered" required>
                                            </div>
                                        </div>
                                        
                                         <div class="field-item animated" data-animate="fadeInUp" data-delay="1.0">
                                            <label class="field-label ttu">Your Password</label>
                                            <div class="field-wrap">
                                                <input name="country" placeholder="Yourt Password" type="text" class="input-bordered" required>
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="row">
                                            <div class="col-sm-5 text-right animated" data-animate="fadeInUp" data-delay="1.1">
                                                <button type="submit" name="register" class="btn btn-lg">REGISTER</button>
                                            </div>
											
                                            <!--<div class="col-sm-7 order-sm-first">
                                                <div class="form-results"></div>
                                                
                                                
                                               
                                                
                                            </div>-->
											
                                        </div>
										<center><p><br>Already have an account? <a href="login.php">Login Now</a></p></center>
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
