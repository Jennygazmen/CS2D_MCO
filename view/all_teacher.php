<?php
if(!isset($_SERVER['HTTP_REFERER'])){
    // redirect them to your desired location
    header('location:../index.php');
    exit;
}
?>
<?php include_once('head.php'); ?>
<?php include_once('header_admin.php'); ?>
<?php include_once('sidebar.php'); ?>
<?php include_once('alert.php'); ?>

<style>

body{
	overflow-y:scroll;	
}

.msk-col-md-4{
	width:28%;
}
.modal{
	overflow-y: auto;
}

.form-control-feedback {
  
   pointer-events: auto;
  
}

.msk-set-width-tooltip + .tooltip > .tooltip-inner { 
  
     min-width:180px;
}
.msk-set-color-tooltip + .tooltip > .tooltip-inner { 
  
     min-width:180px;
	 background-color:red;
}
.msk-image-error{
	border:1px solid #f44336;
	
}

.msk-fade {  
      
    -webkit-animation-name: animatetop;
    -webkit-animation-duration: 0.4s;
    animation-name: animatetop;
    animation-duration: 0.4s

}

/* Add Animation */
@-webkit-keyframes animatetop {
    from {top:-300px; opacity:0} 
    to {top:0; opacity:1}
}

@keyframes animatetop {
    from {top:-300px; opacity:0}
    to {top:0; opacity:1}
}


.modal-dialog1 {
  width: 75%;
  height: 100%;
  margin: 0;
  padding: 0;
}

.modal-content1 {
  height: auto;
  min-height: 100%;
  border-radius: 0;
  position: absolute;
  left: 16%; 
}
.modal-content2 {
  height: auto;
  min-height: 100%;
  border-radius: 0;
  position: absolute;
  left: 10%; 
}

.modal-content3 {
  height: auto;
  min-height: 100%;
  border-radius: 0;
  position: absolute;
  left: -31%; 
}

@media only screen and (max-width: 500px) {
	
	.modal-content1, .modal-content2, .modal-content3, .container, .modal-dialog1{
		
	 	width:100%;
	  	position: static;
		
		
	}
	
	#salaryDetails, #salary_details, #salary_details2{
		width:100%;
	}
	
	 #tableSdetails, #tableSdetails1, #tableSdetails2 , #tableSdetails3{
		
		width:100%;
		
	}
	
	.panel-body, .table1-responsive, .table2-responsive {
		overflow-x:auto !important; 
	}
	
	

}

@media only screen and (max-width: 768px) {
    /* For mobile phones: */
    [class*="col-"] {
        width: 100%;
    }
	
	.panel-body, .table1-responsive, .table2-responsive  {
		overflow-x:auto !important; 
	}
	
	
	.modal-content1, .modal-content2, .modal-content3, .container, .modal-dialog1{
		
	 	width:100%;
	  	position: static;
		
		
	}
	
	#salaryDetails, #salary_details, #salary_details2{
		width:100%;
	}
	
	 #tableSdetails, #tableSdetails1, tableSdetails2{
		
		width:100%;
		
	}
	
	
	
}

@media only screen and (max-width: 1200px) {
    /* For mobile phones: */
 
	
	.modal-content1, .modal-content2, .modal-content3, .container, .modal-dialog1{
		
	 	width:100%;
	  	position: static;
		
		
	}
	
	[class*="col-"] {
        width: 100%;
    }
	
	#salaryDetails, #salary_details, #salary_details2{
		width:100%;
	}
	
	 #tableSdetails, #tableSdetails1, tableSdetails2{
		
		width:100%;
		
	}
	
	.panel-body, .table1-responsive, .table2-responsive  {
		overflow-x:auto !important; 
	}
	
	
}


/* #modalINV css  */
#modalINV .div-logo {
	float: left;
	height: 130px;
}

#modalINV .logo{
	float: left;
	width: 90px;
	height: 90px;
	margin-right: 10px;
	border-radius: 50%;
	text-align: center;
	background-color:#8860a7;
}

#modalINV .class-name{
	float: left;		
	margin-top:0;
	padding-top:0;			
}

#modalINV h1,#modalINV h2,#modalINV h3{
	margin-top:0;
	color:#8860a7;

}

#modalINV .class-address {
	float: left;
			
}

#modalINV .class-email {
	float: right;
	margin-right:15px;
	padding-right:0;
	color:white;
	background-color:#8860a7;
}

#modalINV th{			
	background-color:#8860a7;
	color:white;
}
#modalINV .std-name{
	color:#8860a7;
	font-size:16px;
}
#modalINV #h1{
display:none;	
}
#modalINV .pdetail1 {
	padding:0;
	float:right;
	margin-right:7px; 
	
}

#modalINV .pdetail2 {
	float: right;
	
}

@media print{
	
	#show_INV{
		height:450px;
	}
	

	body{
		visibility: hidden;
	}
	
	#modalINV{
	   visibility: visible;
	}
	
	#tSalaryhistory{
		display:none !important;
	}

	#divPhoto{
		display:none;	
	}
	
	#modalINV .logo{
		background-color:#8860a7 !important;	
	}

	#modalINV h1,#modalINV h2,#modalINV h3,#modalINV .std-name{
		color:#8860a7 !important;	
	}
		
		
	#modalINV .table-bordered th{
		color:white!important;
		background-color:#8860a7 !important;		
	}
	#modalINV .class-email {
		color:white!important;
		background-color:#8860a7 !important;
	} 
	
	#modalINV .panel{
		border:hidden!important;
	}
	#modalINV #btn1,#modalINV .panel-footer ,#modalINV .msk-heading {
		display:none;
	}
		
	#modalINV #h1{
		display:inline;	
	}
	
	#modalINV .close{
		display:none;	
	}
	
	#modalINV .pdetail1 {
		margin:0;	
	}

	@-moz-document url-prefix() {
			
		.panel{
			margin:0;
			padding:0;
		}
		#modalINV{
			margin:0!important;
			padding:0!important;
			position:absolute;
			left:-150px;
		}
		@page{
			margin:0;
			padding:0;	
		}
	}
}


/* #modalINV1 css  */

#modalINV1 .div-logo {
	float: left;
	height: 130px;
}

#modalINV1 .logo{
	float: left;
	width: 90px;
	height: 90px;
	margin-right: 10px;
	border-radius: 50%;
	text-align: center;
	background-color:#8860a7;
}

#modalINV1 .class-name{
	float: left;		
	margin-top:0;
	padding-top:0;			
}

#modalINV1 h1,#modalINV1 h2,#modalINV1 h3{
	margin-top:0;
	color:#8860a7;

}

#modalINV1 .class-address {
	float: left;
			
}

#modalINV1 .class-email {
	float: right;
	margin-right:15px;
	padding-right:0;
	color:white;
	background-color:#8860a7;
}

#modalINV1 th{			
	background-color:#8860a7;
	color:white;
}
#modalINV1 .std-name{
	color:#8860a7;
	font-size:16px;
}
#modalINV1 #h1{
display:none;	
}

#modalINV1 .pdetail1 {
	padding:0;
	float:right;
	margin-right:7px; 
	
}

#modalINV1 .pdetail2 {
	float: right;
	
}


@media print{
	
	#show_INV{
		height:450px;
	}
	

	body{
		visibility: hidden;
	}
	
	#modalINV1{
	   visibility: visible;
	}
	
	#tSalaryhistory{
		display:none !important;
	}

	#divPhoto{
		display:none;	
	}
	
	#modalINV1 .logo{
		background-color:#8860a7 !important;	
	}

	#modalINV1 h1,#modalINV1 h2,#modalINV1 h3,#modalINV1 .std-name{
		color:#8860a7 !important;	
	}
		
		
	#modalINV1 .table-bordered th{
		color:white!important;
		background-color:#8860a7 !important;		
	}
	#modalINV1 .class-email {
		color:white!important;
		background-color:#8860a7 !important;
	} 
	
	#modalINV1 .panel{
		border:hidden!important;
	}
	#modalINV1 #btn1,#modalINV1 .panel-footer ,#modalINV1 .msk-heading {
		display:none;
	}
		
	#modalINV1 #h1{
		display:inline;	
	}
	
	#modalINV1 .close{
		display:none;	
	}
	#modalINV1 .pdetail1 {
		margin:0;	
		
	}
	@-moz-document url-prefix() {
			
		.panel{
			margin:0;
			padding:0;
		}
		#modalINV1{
			margin:0!important;
			padding:0!important;
			position:absolute;
			left:-150px;
		}
		@page{
			margin:0;
			padding:0;	
		}
	}
}


</style>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
    <section class="content-header">
    	<h1>
        	All Instructor
            <small>Preview</small>
        </h1>
        <ol class="breadcrumb">
        	<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#"><i class="fa fa-teacher"></i> Instructor</a></li>
            <li><a href="#"> All Instructor</a></li>
         </ol>
     </section>

    <!-- table for view all records //MSK-00112 -->
    <section class="content" > <!-- Start of table section -->
        <div class="row" id="table1"><!-- after delete methanata thamay overite karanne view_classroom table -->
            <div class="col-md-8">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">All Instructor</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body table-responsive">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <th class="col-md-1">ID</th>
                                <th class="col-md-3">Name</th>
                
                            </thead>
                            <tbody>
<?php
include_once('../controller/config.php');
$sql="SELECT * FROM teacher";
$result=mysqli_query($conn,$sql);
$count = 0;
$cant_remove1=0;
$cant_remove2=0;
$cant_remove3=0;
$cant_remove4=0;
$cant_remove5=0;
$cant_remove6=0;
$cant_remove7=0;
$cant_remove8=0;
$cant_remove9=0;
$cant_remove10=0;

if(mysqli_num_rows($result) > 0){
	while($row=mysqli_fetch_assoc($result)){
    	$count++;
		$id=$row['id'];
		$index=$row['index_number'];
?>   
                                <tr>
                                    <td><?php echo $count; ?></td>
                                    <td id="td1_<?php echo $row['id']; ?>">
                                    	<a href="#modalViewform" onClick="showModal1(this)" class=""  data-id="<?php echo $row["id"]; ?>" data-toggle="modal">
											<?php echo $row['i_name']; ?>
                                        </a>
                                    </td>
                                    <td>

<?php

$sql1="SELECT * FROM subject_routing WHERE teacher_id='$id'";	
   
$result1=mysqli_query($conn,$sql1);

if(mysqli_num_rows($result1) > 0){
	$cant_remove1=1;
}else{
	$cant_remove1=0;
}

$sql2="SELECT * FROM timetable WHERE teacher_id='$id'";	
   
$result2=mysqli_query($conn,$sql2);

if(mysqli_num_rows($result2) > 0){
	$cant_remove2=1;
}else{
	$cant_remove2=0;
}

$sql6="SELECT * FROM my_friends WHERE friend_index='$index'";	
   
$result6=mysqli_query($conn,$sql6);

if(mysqli_num_rows($result6) > 0){
	$cant_remove6=1;
}else{
	$cant_remove6=0;
}


$sql7="SELECT * FROM online_chat WHERE user_index='$index' AND user_type='Teacher'";	
   
$result7=mysqli_query($conn,$sql7);

if(mysqli_num_rows($result7) > 0){
	$cant_remove7=1;
}else{
	$cant_remove7=0;
}

$sql8="SELECT * FROM petty_cash WHERE received_by='$index' AND received_type='Teacher'";	
   
$result8=mysqli_query($conn,$sql8);

if(mysqli_num_rows($result8) > 0){
	$cant_remove8=1;
}else{
	$cant_remove8=0;
}

$sql9="SELECT * FROM petty_cash_history WHERE received_by='$index' AND received_type='Teacher'";	
   
$result9=mysqli_query($conn,$sql9);

if(mysqli_num_rows($result9) > 0){
	$cant_remove9=1;
}else{
	$cant_remove9=0;
}

?>                                    

                                    </td>
                                </tr>
<?php } } ?>
                            </tbody>
                        </table>
                	</div><!-- /.box-body -->	
                </div>
            </div>
        </div>
    </section> <!-- End of table section --> 

 

<!--redirect your own url when clicking browser back button -->
<script>
(function(window, location) {
history.replaceState(null, document.title, location.pathname+"#!/history");
history.pushState(null, document.title, location.pathname);

window.addEventListener("popstate", function() {
  if(location.hash === "#!/history") {
    history.replaceState(null, document.title, location.pathname);
    setTimeout(function(){
      location.replace("../index.php");//path to when click back button
    },0);
  }
}, false);
}(window, location));
</script>
  	 	
</div><!-- /.content-wrapper -->  
                             
