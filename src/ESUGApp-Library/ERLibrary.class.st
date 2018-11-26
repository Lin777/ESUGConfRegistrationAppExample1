Class {
	#name : #ERLibrary,
	#superclass : #WAFileLibrary,
	#category : #'ESUGApp-Library'
}

{ #category : #'as yet unclassified' }
ERLibrary class >> applicationName [

 ^ 'ESUG Application'

]

{ #category : #updating }
ERLibrary >> esugCss [
	^ '
body {
		font: 400 15px Lato, sans-serif;
		line-height: 1.8;
		color: #818181;
}
h2 {
		font-size: 24px;
		text-transform: uppercase;
		color: #303030;
		font-weight: 600;
		margin-bottom: 30px;
}
h4 {
		font-size: 19px;
		line-height: 1.375em;
		color: #303030;
		font-weight: 400;
		margin-bottom: 30px;
}

.container-fluid {
		padding: 60px 50px;
}
.bg-grey {
		background-color: #f6f6f6;
}
.logo-small {
		color: #092e44;
		font-size: 50px;
}
.logo {
		color: #092e44;
		font-size: 200px;
}

.panel {
		border: 1px solid #092e44;
		border-radius:0 !important;
		transition: box-shadow 0.5s;
}
.panel:hover {
		box-shadow: 5px 0px 40px rgba(0,0,0, .2);
}
.panel-footer .btn:hover {
		border: 1px solid #092e44;
		background-color: #fff !important;
		color: #092e44;
}
.panel-heading {
		color: #fff !important;
		background-color: #092e44 !important;
		padding: 25px;
		border-bottom: 1px solid transparent;
		border-top-left-radius: 0px;
		border-top-right-radius: 0px;
		border-bottom-left-radius: 0px;
		border-bottom-right-radius: 0px;
}
.panel-footer {
		background-color: white !important;
}
.panel-footer h3 {
		font-size: 32px;
}
.panel-footer h4 {
		color: #aaa;
		font-size: 14px;
}
.panel-footer .btn {
		margin: 15px 0;
		background-color: #092e44;
		color: #fff;
}
.navbar {
		margin-bottom: 100px;
		background-color: #FFFFFF;
		z-index: 9999;
		border: 0;
		font-size: 12px !important;
		line-height: 1.42857143 !important;
		letter-spacing: 3px;
		border-radius: 0;
		font-family: Montserrat, sans-serif;
		height: 10%;
}
.navbar li a, .navbar .navbar-brand {
		color: #092e44 !important;
		background-color: #FFFF;
}
.navbar-nav li a:hover, .navbar-nav li.active a {
		color: #0f7dfa !important;
		background-color: #fff !important;
}
.navbar-default .navbar-toggle {
		border-color: #FFFFFF;
		color: #FFFFFF !important;
}
footer .glyphicon {
		font-size: 20px;
		margin-bottom: 20px;
		color: #092e44;
}
.slideanim {visibility:hidden;}
.slide {
		animation-name: slide;
		-webkit-animation-name: slide;
		animation-duration: 1s;
		-webkit-animation-duration: 1s;
		visibility: visible;
}
@keyframes slide {
	0% {
		opacity: 0;
		transform: translateY(70%);
	}
	100% {
		opacity: 1;
		transform: translateY(0%);
	}
}
@-webkit-keyframes slide {
	0% {
		opacity: 0;
		-webkit-transform: translateY(70%);
	}
	100% {
		opacity: 1;
		-webkit-transform: translateY(0%);
	}
}
@media screen and (max-width: 768px) {
	.col-sm-4 {
		text-align: center;
		margin: 25px 0;
	}
	.btn-lg {
			width: 100%;
			margin-bottom: 35px;
	}
}
@media screen and (max-width: 480px) {
	.logo {
			font-size: 150px;
	}
}



/*  css parte de registro */


span.round-tab {
    width: 50px;
    height: 50px;
    line-height: 50px;
    display: inline-block;
    border-radius: 100px;
    background: #f3f3f3;
    border: 2px solid #e0e0e0;
    z-index: 2;
    position: absolute;
    left: 0;
    text-align: center;
    font-size: 25px;
}
span.round-tab i{
    color:#555555;
}
.wizard li.active span.round-tab {
    background: #f3f3f3;
    border: 2px solid #0f7dfa;

}
.wizard li.active span.round-tab i{
    color: #0f7dfa;
}

.wizard .nav-tabs > li {
    width: 16%;
}

.wizard li:after {
    content: " ";
    position: absolute;
    left: 46%;
    opacity: 0;
    margin: 0 auto;
    bottom: 0px;
    border: 5px solid transparent;
    border-bottom-color: #0f7dfa;
    transition: 0.1s ease-in-out;
}

.wizard li.active:after {
    content: " ";
    position: absolute;
    left: 46%;
    opacity: 1;
    margin: 0 auto;
    bottom: 0px;
    border: 10px solid transparent;
    border-bottom-color: #0f7dfa;
}

.wizard .nav-tabs > li a {
    width: 50px;
    height: 50px;
    margin: 20px auto;
    border-radius: 100%;
    padding: 0;
}

label.error{
	color: red
}
',
self styleForHomePage .
]

{ #category : #updating }
ERLibrary >> esugJs [
	^ '$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href=''#myPage'']").on(''click'', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery''s animate() method to add smooth page scroll
      $(''html, body'').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){

        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });

  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
});

$(document).ready(function () {
    //Initialize tooltips
    $(''.nav-tabs > li a[title]'').tooltip();

    //Wizard
    $(''a[data-toggle="tab"]'').on(''show.bs.tab'', function (e) {

        var $target = $(e.target);

        if ($target.parent().hasClass(''disabled'')) {
            return false;
        }
    });

    $(".next-step").click(function (e) {
		if($("#formRegister").valid()){
        var $active = $(''.wizard .nav-tabs li.active'');
        $active.next().removeClass(''disabled'');
        nextTab($active);
		}
    });
    $(".prev-step").click(function (e) {

        var $active = $(''.wizard .nav-tabs li.active'');
        prevTab($active);

    });
});

function nextTab(elem) {
    $(elem).next().find(''a[data-toggle="tab"]'').click();
}
function prevTab(elem) {
    $(elem).prev().find(''a[data-toggle="tab"]'').click();
}'
, self validatorForLogin, self validatorOfRegister, self homePageJS .
]

{ #category : #updating }
ERLibrary >> homePageJS [
	^ '$("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("active");
});

/*
 NAV left collapse
*/
  $(document).ready(function() {


    $(''#sidebarCollapse'').on(''click'', function() {
      $(''#sidebar, #content'').toggleClass(''active'');
      $(''.collapse.in'').toggleClass(''in'');
      $(''a[aria-expanded=true]'').attr(''aria-expanded'', ''false'');
    });
  });
  /*
REGISTER
  */



  $(document).ready(function () {
      //Initialize tooltips
      $(''.nav-tabs > li a[title]'').tooltip();

      //Wizard
      $(''a[data-toggle="tab"]'').on(''show.bs.tab'', function (e) {

          var $target = $(e.target);

          if ($target.parent().hasClass(''disabled'')) {
              return false;
          }
      });

      $(".next-step").click(function (e) {

          var $active = $(''.wizard .nav-tabs li.active'');
          $active.next().removeClass(''disabled'');
          nextTab($active);

      });
      $(".prev-step").click(function (e) {

          var $active = $(''.wizard .nav-tabs li.active'');
          prevTab($active);
      });
  });

  function nextTab(elem) {
      $(elem).next().find(''a[data-toggle="tab"]'').click();
  }
  function prevTab(elem) {
      $(elem).prev().find(''a[data-toggle="tab"]'').click();
  }
'
]

{ #category : #updating }
ERLibrary >> selectorsToInclude [
 
 ^ Array with: 'esugCss' with: 'esugJs'
]

{ #category : #updating }
ERLibrary >> styleForHomePage [
	^ ' body {
   font-family: ''Poppins'', sans-serif;
   background: #fafafa;
 }

 p {
   font-family: ''Poppins'', sans-serif;
   font-size: 1.1em;
   font-weight: 300;
   line-height: 1.7em;
   color: #999;
 }

 a,
 a:hover,
 a:focus {
   color: inherit;
   text-decoration: none;
   transition: all 0.3s;
 }

 .navbar1 {
   padding: 15px 10px;
   background: #fff;
   border: none;
   border-radius: 0;
   margin-bottom: 40px;
   box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
 }

 .navbar-btn {
   box-shadow: none;
   outline: none !important;
   border: none;
 }

 .line {
   width: 100%;
   height: 1px;
   border-bottom: 1px dashed #ddd;
   margin: 40px 0;
 }
 /* ---------------------------------------------------
 SIDEBAR STYLE
----------------------------------------------------- */

 #sidebar {
   width: 250px;
   position: fixed;
   top: 0;
   left: 0;
   height: 100vh;
   z-index: 999;
   background: #092e44;
   color: #fff !important;
   transition: all 0.3s;
 }

 #sidebar.active {
   margin-left: -250px;
 }

 #sidebar .sidebar-header {
   padding: 20px;
   background: #092e44;
 }

 #sidebar ul.components {
   padding: 20px 0;
   border-bottom: 1px solid #47748b;
 }

 #sidebar ul p {
   color: #fff;
   padding: 10px;
 }

 #sidebar ul li a {
   padding: 10px;
   font-size: 1.1em;
   display: block;
   color:white;
 }

 #sidebar ul li a:hover {
   color: #47748b;
   background: #fff;
 }

 #sidebar ul li.active>a,
 a[aria-expanded="true"] {
   color: #fff;
   background: #0f7dfa;
 }

 a[data-toggle="collapse"] {
   position: relative;
 }

 a[aria-expanded="false"]::before,
 a[aria-expanded="true"]::before {
   content: ''\e259'';
   display: block;
   position: absolute;
   right: 20px;
   font-family: ''Glyphicons Halflings'';
   font-size: 0.6em;
 }

 a[aria-expanded="true"]::before {
   content: ''\e260'';
 }

 ul ul a {
   font-size: 0.9em !important;
   padding-left: 30px !important;
   background: #0f7dfa;
 }

 ul.CTAs {
   padding: 20px;
 }

 ul.CTAs a {
   text-align: center;
   font-size: 0.9em !important;
   display: block;
   border-radius: 5px;
   margin-bottom: 5px;
 }

 a.download {
   background: #fff;
   color: #7386D5;
 }

 a.article,
 a.article:hover {
   background: #0f7dfa !important;
   color: #fff !important;
 }
 /* ---------------------------------------------------
 CONTENT STYLE
----------------------------------------------------- */

 #content {
   width: calc(100% - 250px);
   padding: 40px;
   min-height: 100vh;
   transition: all 0.3s;
   position: absolute;
   top: 0;
   right: 0;
 }

 #content.active {
   width: 100%;
 }
 /* ---------------------------------------------------
 MEDIAQUERIES
----------------------------------------------------- */

 @media (max-width: 768px) {
   #sidebar {
     margin-left: -250px;
   }
   #sidebar.active {
     margin-left: 0;
   }
   #content {
     width: 100%;
   }
   #content.active {
     width: calc(100% - 250px);
   }
   #sidebarCollapse span {
     display: none;
   }
 }

 /* ---------------------------------------------------
Search
----------------------------------------------------- */

.stylish-input-group .input-group-addon{
    background: white !important;
}
.stylish-input-group .form-control{
	border-right:0;
	box-shadow:0 0 0;
	border-color:#ccc;
}
.stylish-input-group button{
    border:0;
    background:transparent;
}


/* ---------------------------------------------------
floating button
----------------------------------------------------- */


*{padding:0;margin:0;}

.float{
	position:fixed;
	width:60px;
	height:60px;
	bottom:40px;
	right:40px;
	background-color:#FFC300;
	color:#FFF;
	border-radius:100px;
	text-align:center;
	box-shadow: 2px 2px 3px #999;
}

.my-float{
	margin-top:22px;
}

/* ---------------------------------------------------
REGISTER
----------------------------------------------------- */



span.round-tab {
    width: 50px;
    height: 50px;
    line-height: 50px;
    display: inline-block;
    border-radius: 100px;
    background: #f3f3f3;
    border: 2px solid #e0e0e0;
    z-index: 2;
    position: absolute;
    left: 0;
    text-align: center;
    font-size: 25px;
}
span.round-tab i{
    color:#555555;
}
.wizard li.active span.round-tab {
    background: #f3f3f3;
    border: 2px solid #0f7dfa;

}
.wizard li.active span.round-tab i{
    color: #0f7dfa;
}

.wizard .nav-tabs > li {
    width: 16%;
}

.wizard li:after {
    content: " ";
    position: absolute;
    left: 46%;
    opacity: 0;
    margin: 0 auto;
    bottom: 0px;
    border: 5px solid transparent;
    border-bottom-color: #0f7dfa;
    transition: 0.1s ease-in-out;
}

.wizard li.active:after {
    content: " ";
    position: absolute;
    left: 46%;
    opacity: 1;
    margin: 0 auto;
    bottom: 0px;
    border: 10px solid transparent;
    border-bottom-color: #0f7dfa;
}

.wizard .nav-tabs > li a {
    width: 50px;
    height: 50px;
    margin: 20px auto;
    border-radius: 100%;
    padding: 0;
}
'
]

{ #category : #updating }
ERLibrary >> validatorForLogin [
	^ '$(function(){
    $("#loginbutton").on("click", function(){
        $("#formLogin").validate();
        $("#email").rules("add", {
            required: true,
            email: true, 
            minlength: 8,
            maxlength:80,
            messages: {
                required: "Please enter your email", 
                email: "The format of email is incorrect", 
                minlenght: "The minimum number of characters allowed is 8", 
                maxlenght: "The maximum number of characters allowed is 80"
            }
        });
        $("#password").rules("add", {
            required: true,
            messages:
            {
                required: "Please enter your password"
            } 
        });
    });
});'
]

{ #category : #updating }
ERLibrary >> validatorOfRegister [
	^ ' $().ready(function() {
    $("#formRegister").validate({
        rules:
        {
            "days[]": {required: true, maxlength:5}
        },
        messages:
        {
            "days[]": {required: "You must check at least 1 box", maxlength: "Check no more than {0} boxes"}
        }
    });
    $("#firstName").rules("add", {
        required: true,
        messages: {required: "Please enter your First Name"}
    });
    $("#lastName").rules("add", {
        required: true,
        messages: {required: "Please enter your Last Name"}
    });
    $("#registerEmail").rules("add", {
        required: true,
        email: true, 
        minlength: 8, 
        maxlength:30,
        messages: {
            required: "Please enter your email", 
            email: "The format of email is incorrect", 
            minlength: "The minimum number of characters allowed is 8", 
            maxlength: "The maximum number of characters allowed is 30"
        }
    });
    $("#registerPassword").rules("add", {
        required: true,
        minlength: 8, 
        messages: {
            required: "Please enter your password", 
            minlength: "Your password must have at least 8 characters"
        }
    });
    $("#confirmPassword").rules("add", {
        required: true,
        equalTo: "#registerPassword",
        messages: {
            required: "Please confirm your password", 
            equalTo: "Your password does not match"
        }
    });
    $("#contactAddress").rules("add", {
        required: true,
        messages: {
            required: "Please enter your contact Address"
        }
    });
    $("#contactCity").rules("add", {
        required: true,
        messages: {
            required: "Please enter your contact City"
        }
    });
    $("#contactProvince").rules("add", {
        required: true,
        messages: {
            required: "Please enter your contact Province/State"
        }
    });
    $("#contactPostal").rules("add", {
        required: true,
        messages: {
            required: "Please enter your contact Postal/ZipCode"
        }
    });
    
    /*$("#contactFacebook").rules("add", {
        required: true,
        messages: {}
    });
    $("#contactTwitter").rules("add", {
        required: true,
        messages: {}
    });
    $("#contactHomePage").rules("add", {
        required: true,
        messages: {}
    });

    $("days[]").rules("add", {
        required: true,
        maxlength:5,
        messages: {
            required: "You must check at least 1 box", 
            maxlength: "Check no more than {0} boxes"
        }
    });*/
    $("#orgName").rules("add", {
        required: true,
        messages: {
            required: "Please enter your Organization Name"
        }
    });
    $("#orgAddress").rules("add", {
        required: true,
        messages: {
            required: "Please enter your Organization Address"
        }
    });
    $("#orgCity").rules("add", {
        required: true,
        messages: {
            required: "Please enter your Organization City"
        }
    });
    $("#orgProvince").rules("add", {
        required: true,
        messages: {
            required: "Please enter your Organization Province"
        }
    });
    $("#orgPostal").rules("add", {
        required: true,
        messages: {
            required: "Please enter your Code Postal of your Organization"
            }
    });

 });'
]
