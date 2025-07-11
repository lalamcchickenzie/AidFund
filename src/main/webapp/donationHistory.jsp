<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="donation.Donation" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>AidFund+</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/gijgo.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/slicknav.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@700&display=swap" rel="stylesheet">
    <script src="https://unpkg.com/lucide@latest"></script>
    <style>
      body {
        background: #f6f8fb;
        font-family: 'Fredoka', Arial, sans-serif;
      }
      .user-topbar {
        width: 100%;
        height: 64px;
        background: linear-gradient(90deg, #f8fafc 0%, #e9ecef 100%);
        box-shadow: 0 4px 24px rgba(108,99,255,0.08);
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 0 32px;
        border-radius: 0 0 20px 20px;
        position: sticky;
        top: 0;
        z-index: 100;
      }
      .user-topbar .brand {
        font-size: 2rem;
        font-weight: 700;
        color: #222;
        letter-spacing: 1px;
        display: flex;
        align-items: center;
      }
      .user-topbar .brand .plus { color: #a51d23; }
      .user-topbar nav {
        display: flex;
        gap: 20px;
        align-items: center;
      }
      .user-topbar nav a {
        display: flex;
        align-items: center;
        gap: 8px;
        color: #555;
        text-decoration: none;
        font-size: 1.1rem;
        font-weight: 600;
        padding: 8px 18px;
        border-radius: 10px;
        background: transparent;
        transition: background 0.2s, color 0.2s, box-shadow 0.2s, transform 0.2s;
        box-shadow: none;
      }
      .user-topbar nav a.active, .user-topbar nav a:hover {
        background: #ecebfc;
        color: #6C63FF;
        box-shadow: 0 2px 8px rgba(108,99,255,0.08);
      }
      .user-topbar nav .admin-login-btn {
        margin-left: 24px;
        background: #6C63FF;
        color: #fff;
        font-weight: 700;
        border-radius: 10px;
        box-shadow: 0 2px 8px rgba(108,99,255,0.18);
        transition: background 0.2s, color 0.2s, box-shadow 0.2s, transform 0.2s;
        font-size: 1.1rem;
      }
      .user-topbar nav .admin-login-btn:hover {
        background: #554ee2;
        color: #fff;
        box-shadow: 0 4px 16px rgba(108,99,255,0.22);
        transform: scale(1.05);
      }
      .user-topbar nav .lucide {
        width: 20px;
        height: 20px;
      }
      .main-content-user {
        margin-top: 0 !important;
        padding-top: 0 !important;
        padding-bottom: 32px;
      }
      .card-section {
        background: #fff;
        border-radius: 18px;
        box-shadow: 0 2px 12px rgba(0,0,0,0.07);
        padding: 32px;
        margin-bottom: 32px;
      }
      h1, h2, h3, h4, h5, h6 {
        font-family: 'Fredoka', Arial, sans-serif;
      }
      @media (max-width: 700px) {
        .user-topbar { flex-direction: column; height: auto; padding: 12px; }
        .user-topbar nav { gap: 10px; }
        .main-content-user { padding: 12px 0; }
      }
      .footer { background: #ecebfc !important; }
    </style>
</head>

<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

    <div class="user-topbar">
      <div class="brand">AidFund<span class="plus">+</span></div>
      <nav>
        <a href="index.html"><i data-lucide="home"></i>Home</a>
        <a href="donationHistory.html" class="active"><i data-lucide="book-open"></i>History</a>
        <a href="causePage"><i data-lucide="heart"></i>Causes</a>
        <a href="admin-login.html" class="admin-login-btn"><i data-lucide="user-shield"></i>Login as Admin</a>
      </nav>
    </div>
    <script>
      lucide.createIcons();
    </script>
    <div class="main-content-user">

    <!-- bradcam_area_start  -->
    <div class="bradcam_area breadcam_bg overlay2 d-flex align-items-center justify-content-center">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="bradcam_text text-center">
                        <h3>D O N A T I O N   H I S T O R Y</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bradcam_area_end  -->


      <!-- Donation History Search Area -->
       <!--<section class="section-padding">
            <div class="container">
                <div class="search-container">
                    <input 
                        type="text" 
                        id="searchInput" 
                        class="form-control search-input" 
                        placeholder="Enter Donation Reference ID..." 
                        aria-label="Search donation history by reference ID"
                        onkeyup="searchDonation()" 
                        autocomplete="off"
                    />
                </div>
                <div id="donationList" aria-live="polite" aria-atomic="true"></div>
            </div>
        </section>
    </div>-->
    
    <form action="searchDonation" method="post" style="margin: 20px;">
    <label>Enter Reference ID:</label><br>
    <input type="text" name="refId" required />
    <button type="submit">Search</button>
</form>

<!-- Display Result (if any) -->
<c:if test="${not empty donation}">
  <div class="card-section">
    <p><b>Name:</b> ${donation.donor.dname}</p>
	<p><b>Email:</b> ${donation.donor.demail}</p>
	<p><b>Phone:</b> ${donation.donor.dphone}</p>
    <p><b>Amount:</b> RM ${donation.amount}</p>
    <p><b>Date:</b> ${donation.donationDate}</p>
    <p><b>Reference ID:</b> ${donation.donationID}</p>
  </div>
</c:if>

<c:if test="${not empty error}">
    <div class="card-section" style="color:red;">
        ${error}
    </div>
</c:if>
    
    <!-- footer_start  -->
    <footer class="footer">
        <div class="footer_top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-4 col-md-6 col-lg-4 ">
                        <div class="footer_widget">
                            <div class="footer_logo">
                                <a href="#" style="text-decoration:none;">
                                    <span style="font-family:'Fredoka',Arial,sans-serif;font-size:2.2rem;font-weight:700;color:#222;letter-spacing:1px;display:flex;align-items:center;">
                                        AidFund<span class="plus" style="color:#a51d23;">+</span>
                                    </span>
                                </a>
                            </div>
                            <p class="address_text">AidFund+ is dedicated to empowering communities by providing essential resources such as food, clean water, clothing, and education to those in need. Join us in making a positive impact and building a brighter future for all.</p>
                            <div class="socail_links">
                                <ul>
                                    <li>
                                        <a href="#"><i class="ti-facebook"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="ti-twitter-alt"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-linkedin"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-instagram"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-6 col-lg-4">
                        <div class="footer_widget">
                            <h3 class="footer_title">Services</h3>
                            <ul class="links">
                                <li><a href="#">Donate</a></li>
                                <li><a href="#">Sponsor</a></li>
                                <li><a href="#">Fundraise</a></li>
                                <li><a href="#">Volunteer</a></li>
                                <li><a href="#">Partner</a></li>
                                <li><a href="#">Jobs</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-6 col-lg-4">
                        <div class="footer_widget">
                            <h3 class="footer_title">Contacts</h3>
                            <div class="contacts">
                                <p>+1 (800) 123-4567<br>
                                support@aidfundplus.org<br>
                                123 Hope Street, Unity City, Country</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copy-right_text">
            <div class="container">
                <div class="row">
                    <div class="bordered_1px "></div>
                    <div class="col-xl-12">
                        <p class="copy_right text-center">
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> AidFund+. All rights reserved. | Empowering communities, changing lives.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer_end  -->

    <!-- JS here -->
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/ajax-form.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/scrollIt.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/nice-select.min.js"></script>
    <script src="js/jquery.slicknav.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/gijgo.min.js"></script>

    <!--contact js-->
    <script src="js/contact.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>

    <script src="js/main.js"></script>
   <!-- <script>
        $('.datepicker').datepicker({
            iconsLibrary: 'fontawesome',
            icons: {
                rightIcon: '<span class="fa fa-calendar"></span>'
            }
        });

        $('.timepicker').timepicker({
            iconsLibrary: 'fontawesome',
            icons: {
                rightIcon: '<span class="fa fa-clock-o"></span>'
            }
        });
    $(document).ready(function() {
    $('.js-example-basic-multiple').select2();
});
  
    </script> -->
</body>
</html>