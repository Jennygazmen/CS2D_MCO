<!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
<?php
include_once('../controller/config.php');

$index=$_SESSION["index_number"];

$sql="SELECT * FROM teacher WHERE index_number='$index'";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);
$name=$row['i_name'];
$image=$row['image_name'];

?>      
      
      <div class="user-panel">
      	<div class="pull-left image">
        	<img src="../<?php echo $image; ?>" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
        	<p><?php echo $name; ?></p>
            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active treeview">
          <a href="dashboard2.php">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
        </li>
        <li>
          <a href="teacher_profile2.php">
            <i class="fa fa-flag"></i> <span>My Profile</span>
          </a>
        </li>
         <li>
          <a href="my_student.php">
            <i class="fa fa-graduation-cap"></i> <span>My Student</span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-book"></i>
            <span>Subject</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="my_subject2.php"><i class="fa fa-circle-o"></i> My Subject</a></li>
            <li><a href="all_subject2.php"><i class="fa fa-circle-o"></i> All Subject</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-calendar-plus-o"></i>
            <span>Schedule</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="my_timetable2.php"><i class="fa fa-circle-o"></i> My Schedule</a></li>
            <li><a href="all_timetable2.php"><i class="fa fa-circle-o"></i>All Schedule</a></li>
          </ul>
        </li>
    </section>
    <!-- /.sidebar -->
  </aside>