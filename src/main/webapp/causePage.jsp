<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- <meta http-equiv="x-ua-compatible" content="ie=edge"> -->
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
      .user-topbar .profile {
        display: flex;
        align-items: center;
        gap: 18px;
      }
      .user-topbar .profile img {
        width: 36px; height: 36px; border-radius: 50%;
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
     .modal-backdrop.fade {
  opacity: 0;
  transition: opacity 0.3s ease-in-out;
  z-index: 1040;
}

.modal-backdrop.show {
  opacity: 0.5;
}

.modal {
  z-index: 1050;
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
    <div class="user-topbar">
      <div class="brand">AidFund<span class="plus">+</span></div>
      <nav>
        <a href="index.html"><i data-lucide="home"></i>Home</a>
        <a href="donationHistory.html"><i data-lucide="book-open"></i>History</a>
        <a href="causePage" class="active"><i data-lucide="heart"></i>Causes</a>
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
                        <h3>Causes</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
 </div>

    <!-- bradcam_area_end  -->

    <!-- ===== Causes Section ===== -->
    <section class="causes-section" style="padding: 40px 0;">
        <div class="container">
        <h3 class="section-title" style="text-align:center; margin-bottom: 32px;">ACTIVE CAUSES</h3>
        
        <c:if test="${empty causes}">
            <p class="text-center text-danger">No active campaigns available at the moment.</p>
        </c:if>
        
        <div id="causesGrid" class="row" style="margin-bottom: 40px;">
             <c:forEach var="cause" items="${causes}">
                <div class="col-md-6 col-lg-4 mb-4">
                    <div class="card h-100">
                    
                        <c:choose>
                            <c:when test="${not empty cause.thumbnail}">
                                <img src="${cause.thumbnail}" class="card-img-top" alt="Cause Image" style="height:200px; object-fit:cover;">
                            </c:when>
                            <c:otherwise>
                            <div style="height:200px; background:#eee; display:flex; align-items:center; justify-content:center;">
                                    <span style="color:#bbb;">No Image</span>
                                </div>
                            </c:otherwise>
                        </c:choose>
                        
                        <div class="card-body">
                            <h5 class="card-title">${cause.title}</h5>
                            <p class="card-text">${cause.description}</p>
                            <p><strong>Target:</strong> RM ${cause.targetAmount}</p>
							<p><strong>Start Date:</strong> ${cause.startDate}</p>
   						 <p><strong>End Date:</strong> ${cause.endDate}</p>    
   						 <button type="button" class="btn btn-primary open-donation-modal"data-title="${cause.title}" data-cause-id="${cause.causeId}">
           				 Donate Now
         				 </button>
   					 </div>
                </div>
            </div>
          </c:forEach>
        </div>
    </div>
 </section>
  

   
  <!-- ===== Make a Donation Section ===== -->
  <!--  
    <div data-scroll-index='1' class="make_donation_area section_padding">
        <div class="container">
            <div class="row justify-content-center">
          <div class="col-lg-8">
                    <div class="section_title text-center mb-55">
                        <h3><span>Make a Donation</span></h3>
                    </div>
                </div>
            </div>
            
        <form id="mainDonationForm" style="max-width:500px; margin:auto;">
          <div class="form-group mb-3">
            <label for="donationAmount"><b>Amount (RM)</b></label>
            <div style="display:flex; gap:8px; margin-bottom:8px;">
              <button type="button" class="btn btn-outline-primary preset-amount" data-amount="10" style="flex:1;">10</button>
              <button type="button" class="btn btn-outline-primary preset-amount" data-amount="50" style="flex:1;">50</button>
              <button type="button" class="btn btn-outline-primary preset-amount" data-amount="other" style="flex:1;">Other</button>
            </div>
            <input type="number" class="form-control" id="amount" name="amount" min="1" required placeholder="Enter amount">
            </div>
          <div class="form-group mb-3">
            <label for="causeSelect"><b>Select Cause</b></label>
            <select id="causeSelect" name="causeId" class="form-control" required>
              <option value="">Choose a cause...</option>
 			<c:forEach var="cause" items="${causeList}">
   				 <option value="${cause.causeId}">${cause.title}</option>
			</c:forEach>
            </select>
           </div>
          <button type="button" id="openDonorModal" class="btn" style="background:#6C63FF; color:#fff; font-weight:700; border-radius:10px; padding:12px 32px; font-size:1.1em; width:100%;">Donate Now</button>
        </form>
       </div>
    </div> -->



	<!-- Donation Modal -->
<div id="donorModal" style="display:none; position:fixed; top:0; left:0; width:100vw; height:100vh; background:rgba(0,0,0,0.18); z-index:9999; align-items:center; justify-content:center;">
  <div style="background:#fff; border-radius:18px; max-width:400px; width:95%; padding:32px 24px; position:relative; max-height:90vh; overflow-y:auto;">
    <button id="closeDonorModal" style="position:absolute; top:16px; right:16px; background:none; border:none; font-size:1.5em;">&times;</button>
    <h3 style="text-align:center;">Donor Details</h3>

    <form id="donorForm" action="addDonation" method="post">
      <!-- Show title readonly -->
      <div class="form-group mb-3">
        <label>Cause</label>
        <input type="text" class="form-control" id="modalCauseTitle" readonly style="background:#f4f4f4;">
      </div>
      <input type="hidden" name="causeId" id="modalCauseId">

      <div class="form-group mb-3">
        <label>Name</label>
        <input type="text" class="form-control" name="Dname" required>
      </div>
      <div class="form-group mb-3">
        <label>Email</label>
        <input type="email" class="form-control" name="Demail" required>
      </div>
      <div class="form-group mb-3">
        <label>Phone</label>
        <input type="tel" class="form-control" name="Dphone" required>
      </div>
      <div class="form-group mb-3">
        <label>Amount (RM)</label>
        <input type="number" class="form-control" name="amount" required min="10">
      </div>

      <div class="form-group text-center">
        <button type="submit" class="btn btn-success">Donate</button>
      </div>
    </form>
  </div>
</div>

<!-- Thank You Modal -->
<div class="modal fade" id="thankYouModal" tabindex="-1" aria-labelledby="thankYouModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content" style="border-radius: 16px;">
      <div class="modal-header">
        <h5 class="modal-title" id="thankYouModalLabel">Thank You!</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" style="background:none; border:none; font-size:1.5rem;">&times;</button>
      </div>
      <div class="modal-body text-center">
        <p class="mb-2">${success}</p>
        <p>Your Reference ID:</p>
        <div style="font-weight: bold; color: #6C63FF; font-size: 1.2rem;">${refId}</div>
        <p style="font-size: 0.9rem; color: #777;">Please save this ID to track your donation.</p>
      </div>
      <div class="modal-footer justify-content-center">
        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>


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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/nice-select.min.js"></script>
    <script src="js/jquery.slicknav.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/gijgo.min.js"></script>
    <script src="js/main.js"></script>
    <div id="causesSection"></div>
    <script src="js/causes.js"></script>    
    
    <script>
  document.addEventListener("DOMContentLoaded", function () {
    document.querySelectorAll(".open-donation-modal").forEach(btn => {
      btn.addEventListener("click", function () {
        const title = this.dataset.title;
        const causeId = this.dataset["causeId"];

        document.getElementById("modalCauseTitle").value = title;
        document.getElementById("modalCauseId").value = causeId;

        document.getElementById("donorModal").style.display = "flex";
      });
    });

    document.getElementById("closeDonorModal").addEventListener("click", function () {
      document.getElementById("donorModal").style.display = "none";
    });
  });
</script>

<c:if test="${showThankYou}">
  <script>
    document.addEventListener("DOMContentLoaded", function () {
      const thankYouModal = new bootstrap.Modal(document.getElementById('thankYouModal'));
      thankYouModal.show();
      document.getElementById('thankYouModal').addEventListener('hidden.bs.modal', function () {
        document.getElementById('donorForm')?.reset();
        document.getElementById('donorModal').style.display = 'none';
      });
    });
  </script>
</c:if>


</body>
</html>