<?php
session_start();
?>
<html>
<head>

	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <meta name="description" content="">
	    <meta name="author" content="">

	    <title>moblie no. verification</title>
	    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	    <link href="css/modern-business.css" rel="stylesheet">
	    <style>
	    .navbar-toggler {
	        z-index: 1;
	    }

	    @media (max-width: 576px) {
	        nav > .container {
	            width: 100%;
	        }
	    }
	    </style>
	        <style>
	    .errorWrap {
	    padding: 10px;
	    margin: 0 0 20px 0;
	    background: #fff;
	    border-left: 4px solid #dd3d36;
	    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
	    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
	}
	.succWrap{
	    padding: 10px;
	    margin: 0 0 20px 0;
	    background: #fff;
	    border-left: 4px solid #5cb85c;
	    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
	    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
	}
	    </style>


</head>
<body>


	<div class="row" >
	<div class="col-md-9 col-md-offset-2">

		<?php

			if(isset($_POST['sendopt'])) {

				require('textlocal.class.php');
				require('credential.php');
				$textlocal = new Textlocal(false, false, API_KEY);
                // You can access MOBILE from credential.php
				// $numbers = array(MOBILE);
                // Access enter mobile number in input box
                $numbers = array($_POST['mobile']);
								
				$sender = 'TXTLCL';
				$otp = mt_rand(10000, 99999);
				$message = "Hello   This is your OTP: " . $otp;
				try {
				    $result = $textlocal->sendSms($numbers, $message, $sender);
				    setcookie('otp', $otp);
				    echo "OTP successfully send..";
				} catch (Exception $e) {
				    die('Error: ' . $e->getMessage());
				}
			}
			if(isset($_POST['verifyotp'])) {
				$otp = $_POST['otp'];
        #$_COOKIE['otp']=12345;



				if($_COOKIE['otp'] == $otp) {

          	echo '<script>';
					echo 'Congratulation, Your mobile is verified';
						echo '<script>';
						$_SESSION['otp'] = $otp;
						$num = $_POST['mobile'];
						$_SESSION['mobile']=$num;
						header("Location:become-donar.php");


				} else {
					echo "Please enter correct otp.";
				}
			}
		?>
	</div></div>

	<?php include('includes/header.php');?>
	<div class="container">


							<!-- Page Heading/Breadcrumbs -->
							<h1 class="mt-4 mb-3">Mobile number <small>verification</small></h1>
							<ol class="breadcrumb">
			            <li class="breadcrumb-item">
			                <a href="index.php">Home</a>
			            </li>
			            <li class="breadcrumb-item active">Mobile number verification</li>
			        </ol>
         <form role="form" method="post" enctype="multipart/form-data">
				<div class="row">

				<div class="col-lg-4 mb-4">
				<div class="font-italic">Mobile Number<span style="color:red">*</span></div>
				<div><input type="text" id="mobile" name="mobile" value="" maxlength="10" class="form-control" required></div>
			</div>
			    <div class="col-sm-9 form-group">
			     <button type="submit" name="sendopt" class="btn btn-primary">Send OTP</button>
				 </div>		</div>
			            </form>


      <form method="POST" action="">


	  <div class="row">
						<div class="col-lg-4 mb-4">
						<div class="font-italic">OTP<span style="color:red">*</span></div>
						<div><input type="text"  id="otp" name="otp" value="" maxlength="5" class="form-control" required></div>
						 </div>


                <div class="col-sm-9 form-group">
                    <button  type="submit" name="verifyotp" class="btn btn-primary" >Verify</button>

                </div>
    </div>

 </form>
</div>

<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/tether/tether.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>



</body>
</html>
