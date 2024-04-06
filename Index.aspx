<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SecureCryptApp.Index" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Ishinfo">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>Secure Crypt - Home</title>

    <!-- Bootstrap core CSS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/toastr/toastr.min.css" rel="stylesheet" />

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">

    <!-- Link Swiper's CSS -->
    <link href="vendor/swiper/swiper.min.css" rel="stylesheet" />
    <script src="assets/js/fontawesome.js"></script>

</head>

<body>
    <form id="form1" runat="server">
        <!-- Sub Header -->
        <div class="sub-header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-sm-8">
                        <div class="left-content">
                            <p></p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-4">
                        <div class="right-icons">
                            <ul>
                                <li><a href="#"><i class="fa fa-phone-square"></i>7842200666</a></li>
                                <li><a href="mailto:support@Securecrypt.com" target="_blank"><i class="fa fa-envelope-o"></i>
                                    support@Securecrypt.com</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ***** Header Area Start ***** -->
        <header class="header-area header-sticky">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="main-nav">
                            <!-- ***** Logo Start ***** -->
                            <a href="index.html" class="logo">Secure Crypt
                            </a>
                            <!-- ***** Logo End ***** -->
                            <!-- ***** Menu Start ***** -->
                            <ul class="nav">
                                <li class="scroll-to-section"><a href="#top" class="active">Home</a></li>
                                <li class="scroll-to-section"><a href="#upcoming">Getting Started</a></li>
                                <li class="scroll-to-section"><a href="#Facts">Why Us?</a></li>
                                <li class="scroll-to-section"><a href="#Feedback">Testimonials</a></li>
                                <li class="scroll-to-section"><a href="#contact">Contact Us</a></li>
                            </ul>
                            <a class='menu-trigger'>
                                <span>Menu</span>
                            </a>
                            <!-- ***** Menu End ***** -->
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- ***** Header Area End ***** -->

        <!-- ***** Main Banner Area Start ***** -->
        <section class="section main-banner" id="top" data-section="section1">
            <video autoplay muted loop id="bg-video">
                <source src="assets/images/course-video.mp4" type="video/mp4" />
            </video>

            <div class="video-overlay header-text">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="caption">
                                <h6>Hello Folkz,</h6>
                                <h2>Welcome to <span id="head_text" style="color: red;"></span></h2>
                                <p>
                                    The future of data security will be kept safe by using the great standards of <b>Securecrypt</b>. Our
                cutting-edge API provides robust encryption and decryption services that ensure your sensitive
                information remains confidential and protected.
                                </p>
                                <div class="main-button-red">
                                    <div class="scroll-to-section"><a href="" data-toggle="modal" data-target="#joinusmodal" class="red_button">Join Us Now!</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ***** Main Banner Area End ***** -->

        <section class="services" id="features">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="owl-service-item owl-carousel">

                            <div class="item">
                                <div class="icon">
                                    <img src="assets/images/service-icon-01.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>Access Key Management</h4>
                                    <p>
                                        Provide secure methods for generating, storing, and managing encryption keys, ensuring they are
                  adequately protected from unauthorized access.
                                    </p>
                                </div>
                            </div>

                            <div class="item">
                                <div class="icon">
                                    <img src="assets/images/service-icon-02.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>Data Integrity</h4>
                                    <p>
                                        Incorporate mechanisms to verify the integrity of encrypted data, preventing unauthorized
                  modifications or tampering.
                                    </p>
                                </div>
                            </div>

                            <div class="item">
                                <div class="icon">
                                    <img src="assets/images/service-icon-03.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>Secure Transmission</h4>
                                    <p>
                                        Facilitate secure transmission of encrypted data over networks by implementing protocols like HTTPS
                  (Hypertext Transfer Protocol Secure) to prevent eavesdropping and data interception.<br />
                                    </p>
                                </div>
                            </div>

                            <div class="item">
                                <div class="icon">
                                    <img src="assets/images/service-icon-02.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>Authentication</h4>
                                    <p>
                                        Integrate authentication mechanisms to validate the identity of parties involved in encryption and
                  decryption processes, preventing unauthorized access.
                                    </p>
                                </div>
                            </div>

                            <div class="item">
                                <div class="icon">
                                    <img src="assets/images/service-icon-03.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>Auditing and Logging</h4>
                                    <p>
                                        Enable logging and auditing features to track encryption and decryption activities for accountability
                  and forensic analysis in case of security incidents.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="services-background">
            <div class="container">
            </div>
        </section>

        <section class="heading-page header-text" id="upcoming">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>Getting Started</h2>
                    </div>
                </div>
            </div>
        </section>

        <section class="meetings-page" id="meetings_all">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="filters">
                                    <ul>
                                        <li class="active"><a href="" data-toggle="modal" data-target="#joinusmodal" class="red_button">Join Us</a></li>
                                        <li><a href="" data-toggle="modal" data-target="#signinmodal" class="red_button">Sign In</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="our-facts" id="Facts">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="row">
                            <div class="col-lg-12">
                                <h2>A Few Facts About
                                    <br>
                                    Secure Crypt</h2>
                            </div>
                            <div class="col-lg-6">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="count-area-content percentage">
                                            <div class="count-digit">99.99</div>
                                            <div class="count-title">Success Rate</div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="count-area-content">
                                            <div class="count-digit">1266</div>
                                            <div class="count-title">Current Requests</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="count-area-content new-students">
                                            <div class="count-digit">2345</div>
                                            <div class="count-title">Clients</div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="count-area-content">
                                            <div class="count-digit">3</div>
                                            <div class="count-title">Trending</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 align-self-center">
                        <div class="video">
                            <a href="https://www.youtube.com/watch?v=HndV87XpkWg" target="_blank">
                                <img src="assets/images/play-icon.png"
                                    alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="our-courses" id="Feedback">
            <div class="contain">
                <!-- Side infos -->
                <div class="side-info">
                    <span></span>
                    <h1>Clients Feedback</h1>
                    <hr />
                    <h4 style="color: cadetblue;">See What Our Users Have to Say!</h4>
                    <br>
                    <p>
                        Explore feedback from users who have experienced our encryption and decryption API firsthand. Their
          testimonials reflect the quality and reliability of our service.
                    </p>
                    <br>
                    <div class="main-button-red">
                        <a href="#" data-toggle="modal" data-target="#joinusmodal" class="red_button">Join us!</a>
                    </div>
                </div>
                <!-- Swiper slider -->
                <div class="swiper">
                    <div class="swiper-wrapper">
                        <!-- Content 1 -->
                        <div class="swiper-slide slide-one">
                            <div>
                                <div class="content-wrapper">
                                    <div class="content-right">
                                        <img src="./assets/images/user.png" alt="Car Image" class="rounded-circle w-25 h-25 p-3">
                                        <span class="star-icon">⭐</span>
                                        <span class="star-icon">⭐</span>
                                        <span class="star-icon">⭐</span>
                                        <span class="star-icon">⭐</span>
                                        <span class="star-icon">⭐</span>
                                        <h3>Vamsi Reddy</h3>
                                        <br>
                                        <p class="small-para">
                                            Your encryption API is incredibly easy to integrate into our system. It's been a lifesaver for
                    securing our sensitive data!
                                        </p>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!-- Content 2 -->
                        <div class="swiper-slide slide-two">
                            <div>
                                <div class="content-wrapper">
                                    <div class="content-right">
                                        <img src="./assets/images/user.png" alt="Car Image" class="rounded-circle w-25 h-25 p-3">
                                        <span class="star-icon">⭐</span>
                                        <span class="star-icon">⭐</span>

                                        <span class="star-icon">⭐</span>
                                        <span class="star-icon">⭐</span>
                                        <h3>Bindu</h3>
                                        <br>
                                        <p class="small-para">
                                            Impressed with the speed and reliability of your decryption service. It's made our data access
                    processes much smoother.
                                        </p>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!-- Content 3 -->
                        <div class="swiper-slide slide-three">
                            <div>
                                <div class="content-wrapper">
                                    <div class="content-right">
                                        <img src="./assets/images/user.png" alt="Car Image" class="rounded-circle w-25 h-25 p-3">
                                        <span class="star-icon">⭐</span>
                                        <span class="star-icon">⭐</span>

                                        <span class="star-icon">⭐</span>

                                        <h3>Satheesh</h3>
                                        <br>
                                        <p class="small-para">
                                            Thanks to your encryption API, we feel much more confident about the security of our customer data.
                    Great job!
                                        </p>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <!-- Content 4 -->
                        <div class="swiper-slide slide-four">
                            <div>
                                <div class="content-wrapper">
                                    <div class="content-right">
                                        <img src="./assets/images/user.png" alt="Car Image" class="rounded-circle w-25 h-25 p-3">
                                        <span class="star-icon">⭐</span>
                                        <span class="star-icon">⭐</span>
                                        <span class="star-icon">⭐</span>

                                        <h3>Avi</h3>
                                        <br>
                                        <p class="small-para">
                                            Overall, using your encryption and decryption API has been a game-changer for our organization. Keep
                    up the great work!
                                        </p>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                    <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </section>

        <section class="contact-us" id="contact">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 align-self-center">
                        <div class="row">
                            <div class="col-lg-12 contact">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <h2>Let's get in touch</h2>
                                    </div>
                                    <div class="col-lg-4">
                                        <fieldset>
                                            <asp:TextBox ID="Cont_Name" runat="server" Placeholder="Your Name" CssClass="form-control"></asp:TextBox>
                                        </fieldset>
                                    </div>
                                    <div class="col-lg-6">
                                        <fieldset>
                                            <asp:TextBox ID="Cont_Email" runat="server" TextMode="Email" PlaceHolder="Your Email" CssClass="form-control"></asp:TextBox>
                                        </fieldset>
                                    </div>
                                    <div class="col-lg-12">
                                        <fieldset>
                                            <asp:TextBox ID="Cont_Subject" runat="server" CssClass="form-control" PlaceHolder="Subject"></asp:TextBox>
                                        </fieldset>
                                    </div>
                                    <div class="col-lg-12">
                                        <fieldset>
                                            <asp:TextBox ID="Cont_Message" runat="server" TextMode="MultiLine" CssClass="form-control" PlaceHolder="Message"></asp:TextBox>
                                        </fieldset>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="main-button-red">
                                            <asp:Button ID="RaiseQuery" runat="server" OnClick="RaiseQuery_Click" Text="Send Now" CssClass="red_button" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="right-info">
                            <ul>
                                <li>
                                    <h5>Phone Number</h5>
                                    <span>+91 - 7842200666</span>
                                </li>
                                <li>
                                    <h5>Email Address</h5>
                                    <span><a href="mailto:support@Securecrypt.com" target="_blank"
                                        style="color: white;">support@Securecrypt.com</a></span>
                                </li>
                                <li>
                                    <h5>Street Address</h5>
                                    <span>@ Chittoor, A.P. - 517126</span>
                                </li>
                                <li>
                                    <h5>Website URL</h5>
                                    <span><a href="#/" target="_blank" style="color: white;">www.Securecrypt.com</a></span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <footer class="footer">
                    <div class="container row">
                        <div class="footer-col">
                            <h4>SecureCrypt</h4>
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#features">Our services</a></li>
                                <li><a href="#" data-toggle="modal" data-target="#privacymodal">Privacy Policy</a></li>
                            </ul>
                        </div>
                        <div class="footer-col">
                            <h4>Get Help</h4>
                            <ul>
                                <li><a href="#contact">FAQs</a></li>
                                <li><a href="#">Documenation</a></li>
                                <li><a href="#contact">Contact Us</a></li>
                            </ul>
                        </div>
                        <div class="footer-col">
                            <h4>follow us</h4>
                            <div class="social-links">
                                <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                                <a href="#"><i class="fa-brands fa-x-twitter"></i></a>
                                <a href="#"><i class="fa-brands fa-instagram"></i></a>
                                <a href="#"><i class="fa-brands fa-linkedin-in"></i></a>
                                <a href="https://github.com/vamsiGone" target="_blank"><i class="fa-brands fa-github"></i></a>
                            </div>
                        </div>
                        <div class="footer-col">
                            <h4>Platforms</h4>
                            <ul>
                                <li><a href="#" class="platform-button">
                                    <i class="fab fa-android"></i>Android
                                </a></li>
                                <li><a href="#" class="platform-button">
                                    <i class="fab fa-windows"></i>Windows
                                </a></li>
                                <li><a href="#" class="platform-button">
                                    <i class="fab fa-apple"></i>Mac
                                </a></li>
                            </ul>
                        </div>
                    </div>
                </footer>
            </div>
        </section>


        <!--  sign in Modal -->
        <div class="modal" id="signinmodal" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body">
                        <section class="meetings-page" id="sign_in_modal">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <h2>Login Now</h2>
                                        <div class="row">
                                            <div class="row justify-content-center">
                                                <div class="col-lg-9">
                                                    <div class="m-3">
                                                        <fieldset>
                                                            <asp:TextBox ID="Sign_Email" runat="server" TextMode="Email" placeholder="Your Email" CssClass="form-control"></asp:TextBox>
                                                        </fieldset>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row justify-content-center">
                                                <div class="col-lg-9">
                                                    <div class="m-3">
                                                        <fieldset>
                                                            <asp:TextBox ID="Sign_Password" runat="server" TextMode="Password" placeholder="Your Password" CssClass="form-control"></asp:TextBox>
                                                        </fieldset>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="main-button-red">
                                                    <asp:Button ID="Sign_In" runat="server" OnClick="Sign_In_Click" Text="Sign In" CssClass="red_button" OnClientClick="signIn();" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>


        <!-- Join Us Modal -->
        <div class="modal" id="joinusmodal" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body">
                        <section class="meetings-page" id="join_us_modal">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <h2>Register</h2>
                                        <div class="row">
                                            <div class="row justify-content-center">
                                                <div class="col-lg-9">
                                                    <div class="m-3">
                                                        <fieldset>
                                                            <asp:TextBox ID="Join_Name" runat="server" placeholder="Your Name" CssClass="form-control"></asp:TextBox>
                                                        </fieldset>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row justify-content-center">
                                                <div class="col-lg-9">
                                                    <div class="m-3">
                                                        <fieldset>
                                                            <asp:TextBox ID="Join_Email" runat="server" placeholder="Your Email" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                                        </fieldset>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row justify-content-center">
                                                <div class="col-lg-9">
                                                    <div class="m-3">
                                                        <fieldset>
                                                            <asp:TextBox ID="Join_Password" runat="server" placeholder="Your Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                                        </fieldset>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row justify-content-center">
                                                <div class="col-lg-9">
                                                    <div class="m-3">
                                                        <fieldset>
                                                            <asp:TextBox ID="Join_CPassword" runat="server" placeholder="Your Confirm Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                                        </fieldset>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="main-button-red">
                                                    <asp:Button ID="Register" runat="server" OnClick="Register_Click" CssClass="red_button" Text="Join Us" OnClientClick="return register();" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>

                    </div>

                </div>
            </div>
        </div>

        <!-- privacy Modal -->
        <div class="modal" id="privacymodal" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body">
                        <section class="meetings-page" id="privacy_modal">
                            <div class="container">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <h2>Privacy Policy</h2>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="meeting-single-item">
                                                    <div class="down-content">
                                                        <p>
                                                            At <b>Secure Crypt</b>, we take your privacy seriously. This Privacy Policy outlines how we
                            collect, use, disclose, and safeguard your personal information when you use our encryption
                            and decryption API services.
                                                        </p>
                                                        <br>

                                                        <h4 class="text-center text-primary">Information We Collect</h4>

                                                        <ul>
                                                            <li><strong>Personal Information:</strong> When you sign up for our services, we may collect
                              personal information such as your name, email address, and contact details.</li>
                                                            <li><strong>Usage Data:</strong> We may collect data on how you interact with our API,
                              including the types of encryption/decryption requests made, timestamps, and IP addresses.
                                                            </li>
                                                        </ul>
                                                        <br>

                                                        <h4 class="text-center text-primary">How We Use Your Information</h4>

                                                        <ul>
                                                            <li><strong>Providing Services:</strong> We use the information collected to provide,
                              maintain, and improve our encryption and decryption services, including troubleshooting
                              issues and enhancing user experience.</li>
                                                            <li><strong>Communication:</strong> We may use your contact information to send you
                              important notifications, updates, and service-related announcements.</li>
                                                            <li><strong>Analytics:</strong> We may analyze usage data to understand trends, optimize
                              performance, and make informed business decisions.</li>
                                                        </ul>
                                                        <br>

                                                        <h4 class="text-center text-primary">Data Sharing and Disclosure</h4>

                                                        <ul>
                                                            <li><strong>Third-Party Service Providers:</strong> We may share your information with
                              third-party service providers who assist us in operating our business, such as hosting
                              providers and analytics platforms. These providers are contractually obligated to keep
                              your information confidential and use it solely for the purposes outlined by us.</li>
                                                            <li><strong>Legal Compliance:</strong> We may disclose your information when required to
                              comply with applicable laws, regulations, legal processes, or governmental requests.</li>
                                                        </ul>
                                                        <br>

                                                        <h4 class="text-center text-primary">Data Security</h4>

                                                        <p>
                                                            We employ industry-standard security measures to protect your information from unauthorized
                            access, alteration, disclosure, or destruction. However, please note that no method of
                            transmission over the internet or electronic storage is 100% secure, and we cannot guarantee
                            absolute security.
                                                        </p>
                                                        <br>

                                                        <h4 class="text-center text-primary">Data Retention</h4>

                                                        <p>
                                                            We retain your personal information only for as long as necessary to fulfill the purposes
                            outlined in this Privacy Policy, unless a longer retention period is required or permitted
                            by law.
                                                        </p>
                                                        <br>

                                                        <h4 class="text-center text-primary">Your Rights</h4>

                                                        <p>
                                                            You have the right to access, update, or delete your personal information. You may also
                            object to the processing of your information or request restrictions on its use. To exercise
                            these rights, please contact us at <a
                                href="mailto:support@Securecrypt.com">support@Securecrypt.com</a>.
                                                        </p>
                                                        <br>

                                                        <h4 class="text-center text-primary">Changes to this Privacy Policy</h4>

                                                        <p>
                                                            We reserve the right to update or modify this Privacy Policy at any time. We will notify
                            you of any changes by posting the updated policy on our website. It is your responsibility
                            to review this policy periodically for changes.
                                                        </p>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="main-button-red">
                                            <a href="" data-dismiss="modal" class="red_button">close</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>

                    </div>

                </div>
            </div>
        </div>
    </form>

    <!-- Scripts -->
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/toastr/toastr.min.js"></script>
    <script src="assets/js/toaster.js"></script>
    <script src="assets/js/valid.js"></script>

    <script src="assets/js/isotope.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/lightbox.js"></script>
    <script src="assets/js/tabs.js"></script>
    <script src="assets/js/video.js"></script>
    <script src="assets/js/slick-slider.js"></script>
    <script src="assets/js/custom.js"></script>

    <!-- Swiper JS -->
    <script src="vendor/swiper/swiper.min.js"></script>
    <script>
        //according to loftblog tut
        $('.nav li:first').addClass('active');

        var showSection = function showSection(section, isAnimate) {
            var
                direction = section.replace(/#/, ''),
                reqSection = $('.section').filter('[data-section="' + direction + '"]'),
                reqSectionPos = reqSection.offset().top - 0;

            if (isAnimate) {
                $('body, html').animate({
                    scrollTop: reqSectionPos
                },
                    800);
            } else {
                $('body, html').scrollTop(reqSectionPos);
            }

        };

        var checkSection = function checkSection() {
            $('.section').each(function () {
                var
                    $this = $(this),
                    topEdge = $this.offset().top - 80,
                    bottomEdge = topEdge + $this.height(),
                    wScroll = $(window).scrollTop();
                if (topEdge < wScroll && bottomEdge > wScroll) {
                    var
                        currentId = $this.data('section'),
                        reqLink = $('a').filter('[href*=\\#' + currentId + ']');
                    reqLink.closest('li').addClass('active').
                        siblings().removeClass('active');
                }
            });
        };

        $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function (e) {
            e.preventDefault();
            showSection($(this).attr('href'), true);
        });

        $(window).scroll(function () {
            checkSection();
        });
    </script>
    <script>
        $(document).ready(function () {
            var i = 0;
            var txt = 'Secure Crypt';
            var speed = 500;

            function typeWriter() {
                if (i < txt.length) {
                    document.getElementById("head_text").innerHTML += txt.charAt(i);
                    i++;
                    setTimeout(typeWriter, speed);
                }
            }
            typeWriter();
        });
    </script>

    <script>
        var swiper = new Swiper(".swiper", {
            effect: "coverflow",
            grabCursor: true,
            centeredSlides: true,
            coverflowEffect: {
                rotate: 0,
                stretch: 0,
                depth: 100,
                modifier: 3,
                slideShadows: true,
            },
            keyboard: {
                enabled: true,
            },
            loop: true,
            autoplay: {
                delay: 2000,
                disableOnInteraction: true,
            },
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            breakpoints: {
                640: {
                    slidesPerView: 2,
                },
                768: {
                    slidesPerView: 1,
                },
                1024: {
                    slidesPerView: 2,
                },
                1560: {
                    slidesPerView: 3,
                },
            },
        });
    </script>
</body>

</html>
