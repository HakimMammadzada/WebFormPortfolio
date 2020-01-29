<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MyPortfolioWebForm.Index"  %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<%@ Import Namespace="MyPortfolioWebForm.Models" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Hakim - Software Portfolio</title>
	<meta name="description" content="Justin - Personal Portfolio" />
	<meta name="keywords"
		content="blog, business card, creative, creative portfolio, cv theme, online resume, personal, portfolio, professional cv, responsive portfolio, resume, resume theme, vcard" />
	<meta name="author" content="beingeorge" />
	<meta name="theme-color" content="#2a2d35">
	<link rel="stylesheet" href="Content/vendor.css" />
	<link href="Content/justin.css" rel="stylesheet">
	<link href="Content/custom.css" rel="stylesheet">
</head>

<body data-spy="scroll" data-target=".navbar">
    
	<div id="preloader" class="preloader">
		<div class="spinner-grow text-dark" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>

	<div class="page-wrapper">

		<nav class="navbar navbar-expand-lg navbar-custom navbar-light fixed-top">
			<div class="container">

				<a class="navbar-brand  mr-auto " href="index.html">Ay-Kasiblar:))
					<!-- <img src="assets/images/logo.png" alt="Logo"> -->
				</a>

				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggler"
					aria-controls="navbarToggler" aria-expanded="false" aria-label="Toggle navigation">
					<svg class="ham hamRotate ham1" viewBox="0 0 100 100" width="60">
						<path class="line top"
							d="m 30,33 h 40 c 0,0 9.044436,-0.654587 9.044436,-8.508902 0,-7.854315 -8.024349,-11.958003 -14.89975,-10.85914 -6.875401,1.098863 -13.637059,4.171617 -13.637059,16.368042 v 40">
						</path>
						<path class="line middle" d="m 30,50 h 40"></path>
						<path class="line bottom"
							d="m 30,67 h 40 c 12.796276,0 15.357889,-11.717785 15.357889,-26.851538 0,-15.133752 -4.786586,-27.274118 -16.667516,-27.274118 -11.88093,0 -18.499247,6.994427 -18.435284,17.125656 l 0.252538,40">
						</path>
					</svg>
				</button>

				<div class="collapse navbar-collapse" id="navbarToggler">
					<ul class="navbar-nav ml-auto">
						<li></li>
						
					</ul>
				</div>
				
			</div>
		</nav>

		<!-- START: HOME -->
		<section class="section-home" id="home" style="background-image:url(/Image/ho.jpg)">
			<div class="overlay d-flex justify-content-center align-items-center">
				<div class="overlay-wrap section-head">
					<span class="mb-2">Hello, I am</span>
					<h1>HAKIM</h1>

				</div>
			</div>
		</section>
		<!-- END: HOME -->

		<!-- START: ABOUT -->
		<section class="section section-about" id="about">

			<div class="section-about-wrap">

				<div class="row justify-content-center align-items-center">

				<%
                    using (AppDbContext db = new AppDbContext())
                    {
                        foreach (var item in db.Abouts)
                        {
                            Response.Write("	<div class='col-md-7'>" +
                            "<div class='about-desc'>" +
                            "<div class='about-desc-content'>" +
                                $"<h2>{item.Title}</h2>" +
                                $"<p class='mt-4 font-weight-light'>{item.Description}</p>" +
                            "</div>" +
                            "<ul class='about-desc-social mt-4 list-unstyled list-inline'>" +
                            "<li class='list-inline-item'><a href='#'><i class='fab fa-linkedin-in'></i></a></li>" +
                            "<li class='list-inline-item'><a href='#'><i class='fab fa-instagram'></i></a></li>" +
                            "<li class='list-inline-item'><a href='#'><i class='fab fa-facebook-square'></i></a></li>" +
                             "<li class='list-inline-item'><a href='#'><i class='fab fa-github'></i></a></li>" +

                            "</ul>" +
                            "</div>" +
                            "</div>" +

                            "<div class='col-md-5 d-none d-md-block'>" +
                            $"<img class='img-fluid img-thumbnail' src='Image/{item.MyPicture}' alt='About Picture'>" +
                            "</div>");

                        }


					%>

				</div>

			</div>

		</section>
		<!-- END: ABOUT -->

		<!-- START: SERVICES -->
		<section class="section section-services" id="services" style="background-image:url(/Image/ser.jpg)">
			<div class="container">
				<div class="section-head">
					<h2 style="color: white;">My Services</h2>
				</div>

				<div class="row mt-4">
					<%
                        using (AppDbContext db1 = new AppDbContext())
                        {
                            foreach (var item in db1.Services)
                            {
                                Response.Write("<div class='col-sm-6 col-md-4'>" +
                                "<div class='services-flip wow fadeInUp' data-wow-duration='1.5s'>" +
                                "<div class='services-list'>" +
                                "<div class='services-list-front services-list-1'>" +
                                    "<div class='flip-content'>" +
                                        $"<h5 class='mb-0' style='background-color:#9cbc68;'>{item.Title}</h5>" +
                                    "</div>" +
                                "</div>" +
                                "<div class='services-list-back'>" +
                                    "<div class='flip-content'>" +
                                        "<div class='services-list-icon'>" +
                                            $"<i class='{item.LinkIcon}' ></i>" +
                                        "</div>" +
                                        "<div class='mt-4'>" +
                                            $"<h5 class='mb-0'>{item.Title}</h5>" +
                                            $"<p class=' mt-3'>{item.Description}</p>" +
                                        "</div>" +
                                    "</div>" +
                                "</div>" +
                                "</div>" +
                                "</div>" +
                                "</div>");
                            }
                        }
					  %>
				</div>
			</div>
		</section>
		<!-- END: SERVICES -->

		<!-- START: RESUME -->
		<section class="section section-dark section-resume" id="resume">
			<div class="container">
				<div class="section-head">
					<h2>My Story</h2>
				</div>

				<div class="row mt-4 ">
					<%
                        using (AppDbContext db2 = new AppDbContext())
                        {
                            foreach (var item in db2.Stories)
                            {
                                Response.Write("<div class='col-sm-6 col-lg-6'>" +

                                "<div class='resume-list b-box hover-state p-4 mt-4 wow fadeInUp' data-wow-duration='1.5s'>" +
                                "<div>" +
                                $"<h5>{item.Head}</h5>" +
                                $"<p>{item.Content}</p>" +
                                "</div>" +
                                "</div>" +
                                "</div>");
                            }
                        }
							%>

				</div>
			</div>
		</section>
		<!-- END: RESUME -->


		<!-- START: Skills -->
		<section class="section section-light section-blog" id="blog">
			<div class="container">
				<div class="section-head">
					<h2>My Skills</h2>
				</div>
				<div class="row mt-5">
							<%
                                    using (AppDbContext db3 = new AppDbContext())
                                    {
                                        foreach (var item in db3.Skills)
                                        {
                                            Response.Write("<div class='col-lg-4 mt-5'><a href='https://github.com/codeacademyprogramming/P212_DotNetProjects' class='swiper-slide blog-list b-box hover-state d-block mb-4'>" +
                                            "<div class='blog-list--img wow fadeIn' data-wow-duration='1.5s'>" +
                                            $"<img src='/Image/{item.Picture}' alt='Blog Image' class='img-fluid'>" +
                                            "<div class='blog-list--details d-flex justify-content-center align-items-center'>" +
                                            "<div class='blog-list--details-in'>" +
                                                $"<p class='blog-by text-white'>{item.Name}</p>" +
                                            "</div>" +
                                            "</div>" +
                                            "</div>" +
                                            "<div class='blog-list--desc p-3'>" +
                                            $"<p>{item.Description}</p>" +
                                            "</div>" +
                                            "</a></div>");
                                        }
                                    }
                                }
							  %>
							
						

						<div class="swiper-progressbar"></div>
					</div>
				</div>
			
		</section>
		<!-- END: BLOG -->

		<!-- START: CONTACT -->
		<section class="section section-dark section-contact" id="contact">
			<div class="container">
				<div class="section-head">
					<h2>Contact </h2>
				</div>

				<div class="contact-Otherdetails">
					<div class="container">
						<div class="contact-details">
							<div class="row">
								<%
                                        using (AppDbContext db4 = new AppDbContext())
                                        {
                                            foreach (var item in db4.Contacts)
                                            {
                                                Response.Write("<div class='col-md-4 col-lg-4'>" +
                                        "<div class='contact-details--panel p-4 b-box text-center hover-state wow fadeInUp'" +
                                            "data-wow-duration='1.5s'>" +
                                            "<div class='mb-4'>" +
                                               $"<i class='{item.İconName}'></i>" +
                                            "</div>" +
                                            "<div class='mt-2'>" +

                                              $" <a href='#'>{item.Name}</a>" +

                                                $"<p class='mt-1 font-weight-bold '>{item.Contetn}</p>" +
                                            "</div>" +
                                        "</div>" +
                                    "</div>");
                                            }
                                        }
                                    
									%>
								
								
							</div>
						</div>

					</div>
				</div>
				</div>
		</section>
		<!-- END: CONTACT -->
		
		<!--START: FOOTER-->
		<footer class="footer section section-light">
			<div class="container">
               <p class="copyright text-center mb-0">&copy; Justin 2019 | <a href="AdminPanel.aspx" style="color: #6e7373">All</a> Right Reserved
                </p>
			</div>
		</footer>
		<!--END: FOOTER-->
	</div>

	<script src="Scripts/vendor.js"></script>

	    <script src="https://kit.fontawesome.com/c28590621c.js"></script>
	<script src="Scripts/custom.js"></script>
 
</body>
</html>