<!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
<?php
include_once('../controller/config.php');

$index=$_SESSION["index_number"];

$sql="SELECT * FROM admin WHERE index_number='$index'";
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
          <a href="dashboard.php">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
        </li>
         <li>
          <a href="admin_profile.php">
            <i class="fa fa-flag"></i> <span>My Profile</span>
          </a>
        </li>
        <li>
          <a href="class_room.php">
            <i class="fa fa-list-ul"></i> <span>Classroom</span>
          </a>
        </li>
   
        <li>
          <a href="subject.php">
            <i class="fa fa-book"></i> <span>Subject</span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-user" aria-hidden="true"></i>
            <span>Instructor</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="teacher.php"><i class="fa fa-circle-o"></i> Add Instructor</a></li>
            <li><a href="all_teacher.php"><i class="fa fa-circle-o"></i> All Instructor</a></li>
          </ul>
        </li>
        <li>
          <a href="timetable.php">
            <i class="fa fa-calendar-plus-o"></i> <span>Schedule</span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-graduation-cap"></i>
            <span>Student</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="student.php"><i class="fa fa-circle-o"></i> Add Student</a></li>
            <li><a href="all_student.php"><i class="fa fa-circle-o"></i> All Student</a></li>
            <li><a href="student_leave.php"><i class="fa fa-circle-o"></i> Leave Student</a></li>
          </ul>
        </li>
    </section>
    <!-- /.sidebar -->
  </aside>