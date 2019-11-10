<?php
	if(isset($_POST['register'])){
		$fname = strtoupper(htmlentities(trim(mysqli_real_escape_string($connection,$_POST['fname']))));
		$lname = strtoupper(htmlentities(trim(mysqli_real_escape_string($connection,$_POST['lname']))));
		$email = strtolower(htmlentities(trim(mysqli_real_escape_string($connection,$_POST['email']))));
		$phone = strtolower(htmlentities(trim(mysqli_real_escape_string($connection,$_POST['phone']))));
		$lastname = strtolower(htmlentities(trim(mysqli_real_escape_string($connection,$_POST['lname']))));
		$username = strtolower(htmlentities(trim(mysqli_real_escape_string($connection,$_POST['username']))));
		
		$bitwallet = strtolower(htmlentities(trim(mysqli_real_escape_string($connection,$_POST['bitcoin']))));
		
		$pass = htmlentities(trim(mysqli_real_escape_string($connection,$_POST['password'])));
		
		$password = md5(sha1($_POST['password']));
		$reg_date = Date("d-M-Y");
		$date78 = date('Y');
		$time = time();
		$time2 = Date("H:i:s", $time);
		$time3 = "{$reg_date} {$time2}";
		$block = "not blocked";
		$desired = 30;
		$desired2 = 10000;
		$uni = uniqid();
		$rand1 = substr($uni, 0, $desired);
		$rand2 = substr(sha1(mt_rand()),17,6);
		$rand3 = substr($uni, 0, $desired2);
		$rand4 = $rand2.$rand3;
		$rand = $rand1.$rand2;
		$online = "online";
		
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

                    $query333 = "SELECT * FROM registration WHERE referal = '{$rand}'";
		$run_query333 = mysqli_query($connection, $query333);

                    if(mysqli_num_rows($run_query333) > 0){
                        $message_failure = "Registration failed try again";
                    }else{
                        $query1 = "SELECT * FROM registration WHERE email = '{$email}'";
			$run_query1 = mysqli_query($connection, $query1);
						
						if(mysqli_num_rows($run_query1) > 0){
							echo "Email Already Exists";
						}else{
                            
                            $query22 = "SELECT * FROM registration WHERE username = '{$username}'";
				$run_query22 = mysqli_query($connection, $query22);
				
				if(mysqli_num_rows($run_query22) > 0){
					$message_failure = "Username already exists";
				}else{
                            
                            $query55 = "INSERT INTO registration (first_name,last_name,email,password,user_pass,phone,referal,username,wallet,who_refered,reg_date,reg_time,block,bitcoin_wallet,image) VALUES ('{$fname}','{$lname}','{$email}','{$password}','{$pass}','{$phone}','{$rand4}','{$username}','{$rand}','{$who}','{$reg_date}','{$time2}','{$block}','{$bitwallet}','{$image_location}')";
					$run_query55 = mysqli_query($connection, $query55);

                            if($run_query55 == true){
						$query = "UPDATE registration SET status = '{$online}' WHERE email = '{$email}'";
						$run_query = mysqli_query($connection, $query);
						
						$query578 = "SELECT * FROM registration WHERE email = '{$email}' AND username = '{$username}'";
						$run_query578 = mysqli_query($connection, $query578);
							
							$subject = "Account Opening Notification";
							require'phpmailer/PHPMailerAutoload.php';
							$mail = new PHPMailer;
							
							$mail->isSMTP();
				$mail->Host='smtp.godaddy.com';
				$mail->Port=587;
				$mail->SMTPAuth=true;
				$mail->SMTPSecure='tls';
							$mail->Username='support@macchange.tech';
							$mail->Password='macchange';
							
							$mail->setFrom('support@macchange.tech', 'macchange Tech. ');
							$mail->addAddress($email);
							$mail->addReplyTo('support@macchange.tech', 'macchange');
							
							$mail->isHTML(true);
							$mail->Subject='Welcome:'.$subject;
							$mail->Body='<h4>Dear '.$username.',</h4><br>
										<p> You have successfully created an account with the worlds leading investment company</p>
										<p> we anticipate walking along this great path with you</p><br></p>
										<p>&copy; Copyright 2015 - '.$date78.' Macchange Technologies. All rights Reserved.</p>';
							
							if(!$mail->send()){
								$message_failure = "Registration not successful";
							}else{
								while($result = mysqli_fetch_assoc($run_query578)){
									$user_id = $result['id'];
									
									//$_SESSION['user_id']= $user_id;
									//header("location: user_dashboard.php?p=new_investment");
                                    
                                    echo "<script type=\"text/javascript\">
											alert(\"REGISTERED SUCCESSFULLY\");
											window.location = \"index.php\"
											</script>";
								}
							}
					}else{
                                $message_failure = "Registration Failed try again later";
                            }
                            
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




<?php
	if(Isset($_POST['register'])){
		$fname = strtoupper(htmlentities(trim(mysqli_real_escape_string($connection,$_POST['fname']))));
		$lname = strtoupper(htmlentities(trim(mysqli_real_escape_string($connection,$_POST['lname']))));
		$email = strtolower(htmlentities(trim(mysqli_real_escape_string($connection,$_POST['email']))));
		$phone = strtolower(htmlentities(trim(mysqli_real_escape_string($connection,$_POST['phone']))));
		$lastname = strtolower(htmlentities(trim(mysqli_real_escape_string($connection,$_POST['lname']))));
		$username = strtolower(htmlentities(trim(mysqli_real_escape_string($connection,$_POST['username']))));
		
		$bitwallet = strtolower(htmlentities(trim(mysqli_real_escape_string($connection,$_POST['bitcoin']))));
		
		$pass = htmlentities(trim(mysqli_real_escape_string($connection,$_POST['password'])));
		
		$password = md5(sha1($_POST['password']));
		$reg_date = Date("d-M-Y");
		$date78 = date('Y');
		$time = time();
		$time2 = Date("H:i:s", $time);
		$time3 = "{$reg_date} {$time2}";
		$block = "not blocked";
		$desired = 30;
		$desired2 = 10000;
		$uni = uniqid();
		$rand1 = substr($uni, 0, $desired);
		$rand2 = substr(sha1(mt_rand()),17,6);
		$rand3 = substr($uni, 0, $desired2);
		$rand4 = $rand2.$rand3;
		$rand = $rand1.$rand2;
		$online = "online";
		
		
		$query333 = "SELECT * FROM registration WHERE referal = '{$rand}'";
		$run_query333 = mysqli_query($connection, $query333);
		
		if(mysqli_num_rows($run_query333) > 0){
			$message_failure = "Registration failed try again";
		}else{
			$query1 = "SELECT * FROM registration WHERE email = '{$email}'";
			$run_query1 = mysqli_query($connection, $query1);
			
			if(mysqli_num_rows($run_query1) > 0){
				$message_failure = "Email already exists";
			}else{
				$query22 = "SELECT * FROM registration WHERE username = '{$username}'";
				$run_query22 = mysqli_query($connection, $query22);
				
				if(mysqli_num_rows($run_query22) > 0){
					$message_failure = "Username already exists";
				}else{
					$query55 = "INSERT INTO registration (first_name,last_name,email,password,user_pass,phone,referal,username,wallet,who_refered,reg_date,reg_time,block,bitcoin_wallet) VALUES ('{$fname}','{$lname}','{$email}','{$password}','{$pass}','{$phone}','{$rand4}','{$username}','{$rand}','{$who}','{$reg_date}','{$time2}','{$block}','{$bitwallet}')";
					$run_query55 = mysqli_query($connection, $query55);
					
					if($run_query55 == true){
						$query = "UPDATE registration SET status = '{$online}' WHERE email = '{$email}'";
						$run_query = mysqli_query($connection, $query);
						
						$query578 = "SELECT * FROM registration WHERE email = '{$email}' AND username = '{$username}'";
						$run_query578 = mysqli_query($connection, $query578);
							
							$subject = "Account Opening Notification";
							require'phpmailer/PHPMailerAutoload.php';
							$mail = new PHPMailer;
							
							$mail->isSMTP();
				$mail->Host='smtp.godaddy.com';
				$mail->Port=587;
				$mail->SMTPAuth=true;
				$mail->SMTPSecure='tls';
							$mail->Username='support@macchange.tech';
							$mail->Password='macchange';
							
							$mail->setFrom('support@macchange.tech', 'macchange Tech. ');
							$mail->addAddress($email);
							$mail->addReplyTo('support@macchange.tech', 'macchange');
							
							$mail->isHTML(true);
							$mail->Subject='Welcome:'.$subject;
							$mail->Body='<h4>Dear '.$username.',</h4><br>
										<p> You have successfully created an account with the worlds leading investment company</p>
										<p> we anticipate walking along this great path with you</p><br></p>
										<p>&copy; Copyright 2015 - '.$date78.' Macchange Technologies. All rights Reserved.</p>';
							
							if(!$mail->send()){
								$message_failure = "Registration not successful";
							}else{
								while($result = mysqli_fetch_assoc($run_query578)){
									$user_id = $result['id'];
									
									//$_SESSION['user_id']= $user_id;
									//header("location: user_dashboard.php?p=new_investment");
                                    
                                    echo "<script type=\"text/javascript\">
											alert(\"REGISTERED SUCCESSFULLY\");
											window.location = \"index.php\"
											</script>";
								}
							}
					}else{
						//$message_failure = "You cant sign up at this time, try again later";
                        echo "<script type=\"text/javascript\">
											alert(\"UNABLE TO REGISTER\");
											window.location = \"login.php\"
											</script>";
					}
				}	
			}
		}
	}
?>
