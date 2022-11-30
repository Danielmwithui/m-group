<?php
include_once('user/includes/dbconnection.php');
?>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge">
<meta name="viewport" content="width=device-width, intial-scale=1.0">
<title>M-Group Technical College</title>
<link rel="stylesheet" href="css/style.css"/>
<!--fav-icon-->
<link rel="shortcut icon" href="images/favicon.png"/>

</head>

<body>
    
    <section class="main" style="background-image: url(images/bg.png); height:100vh;">
        
        <nav>
            <a href="#" class="logo">
            <h1 style="color:blue;font-zize:bold;">M - GROUP </h1>
            </a>
            <input class="menu-btn" type="checkbox" id="menu-btn"/>
            <label class="menu-icon" for="menu-btn">
                <span class="nav-icon"></span>
            </label>
            <ul class="menu" style="border-radius: 5px;">
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#courses">Courses</a></li>
                <li><a href="#">Contact</a></li>
                <li><a class="active" href="user/signup.php" onclick="document.getElementById('id01').style.display='block'" style="width:auto; border-radius: 5px; cursor: pointer;">Sign Up</a></li>
                <li><a class="active" href="user/login.php" onclick="document.getElementById('id01').style.display='block'" style="width:auto; border-radius: 5px; cursor: pointer;">sign in</a></li>
            </ul>
        </nav>
       
    

        <!--main-content-->
        <div class="home-content">
            
            <!--text-->
            <div class="home-text" >
                
                <h3 style="color: white; letter-spacing: 3px;">Welcome to M-Group Technical College</h3>
                <h1 style="color: white;"> Student Portal</h1>
                <p style="color: white;">M-Group Technical College provides a student centre of learning environment with close student faculty interaction and constant participation. The Principal mission of our college is to achieve success.</p>
            <!--login-btn-->
            <a href="user/signup.php" class="main-login" style="border-radius: 5px;">Apply Now</a>
            </div>
            <!--img-->
            <div class="home-img" style="width: 500px;">
                <img src="images/college.jpg" width="500px" style="text-shadow: 20px 22px;"/>
               
                     

            </div>
            
        </div>
        
        
    </section>
   <!--LATEST NOTIFICATION START -->
     <section class="notification">

                         <hr>
<marquee behavior="alternate" scrollamount="3" onmouseover="this.stop();" onmouseout="this.start();">
    <?php $query=mysqli_query($con,"select * from tblnotice");
while ($row=mysqli_fetch_array($query)) {
?>

    <a href="notice-details.php?nid=<?php echo $row['ID'];?>" target="_blank"><?php echo $row['Title'];?> &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    
    <?php } ?>
    
    
</marquee>

        
    </section>
    <hr>
    <!--LATEST NOTIFICATION END-->
    <!--services----------------------->
    <section class="services" id="courses">
        <!--heading----------->
        <div class="services-heading">
            <h2>OUR PROFESSIONAL COURSES</h2>
            <p>The quality of our programs and their impact on learners is a direct reflection of who we
                 are and our ability to consistently meet the objectives we set for our students.</p>
        </div>
        <!--box-container----------------->
        <div class="box-container">
            <!--box-1-------->
            <div class="box">
                <img src="images/icon5.png">
                <font>Bachelor of Computer Application</font>
                <p>We believe that quality education should be accessible to all who want to learn regardless of their financial circumstances. Your Moringa education will now be made affordable and accessible through a number of Student
                     Financing options such as Loans and Partial Scholarships.</p>
                <!--btn--------->
                <a href="user/signup.php">Apply Now</a>
            </div>
            <!--box-2-------->
            <div class="box">
                <img src="images/icon5.png">
                <font>Bachelor of Business Administration</font>
                <p>We believe that quality education should be accessible to all who want to learn regardless of their financial circumstances. Your Moringa education will now be made affordable and accessible through a number of 
                    Student Financing options such as Loans and Partial Scholarships.</p>
                <!--btn--------->
                <a href="user/signup.php">Apply Now</a>
            </div>
            <!--box-3-------->
            <div class="box">
                <img src="images/icon5.png">
                <font>Bio-Technology</font>
                <p>We believe that quality education should be accessible to all who want to learn regardless of their financial circumstances. Your Moringa education will now be made affordable and accessible through
                     a number of Student Financing options such as Loans and Partial Scholarships.</p>
                <!--btn--------->
                <a href="user/signup.php">Apply Now</a>
            </div>
            <!--box-4-------->
            <div class="box">
                <img src="images/icon5.png">
                <font>Computer Science</font>
                <p>We believe that quality education should be accessible to all who want to learn regardless of their financial circumstances. Your Moringa education will now be
                     made affordable and accessible through a number of Student Financing options such as Loans and Partial Scholarships.</p>
                <!--btn--------->
                <a href="user/signup.php">Apply Now</a>
            </div>
            <!--box-1-------->
            
        </div>
    </section>
   
    <!--footer------------->
    <footer>
        <p>Copyright (C) - 2022 | Developed By <a href="  ">Group4 </a> </p>
    </footer>
</body>

</html>
