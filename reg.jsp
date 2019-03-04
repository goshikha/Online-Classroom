<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
<!DOCTYPE html>
<html>
<title>Registration</title>
<style>
/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
body  {
    background-image: url("https://annaleogurlz92.files.wordpress.com/2013/02/library-books-1.jpg");
    background-color: #cccccc;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}
.loginbtn {
    padding: 14px 20px;
    background-color: #ffff;
}
/* Float cancel and signup buttons and add an equal width */
.cancelbtn,.signupbtn,.loginbtn {float:left;width:50%}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 35px;
    top: 15px;
    color: #000;
    font-size: 40px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>
<body>
 <input type="button" value="ABOUT" onclick="Myhome();" />
 <input type="button" value="HELP" onclick="contact();" /> 
<p id="demo"></p>
<script>
function Myhome() {
	window.location="Myhome.jsp";
	
}
function contact() {
	window.location="contact.jsp";
}
</script>
	<br><br><br>

<center>
<h2 style="color:white;">SIGN UP FOR FREE!!!!</h2>
<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Sign Up</button>
<a href="http://localhost:8080/Widget/index.jsp"><button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button></a>

<br>
<center><label><b style="color: white;">OR SIGN UP USING</b></label></center><br>
  <center><script>
  // This is called with the results from from FB.getLoginStatus().
  
  function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);
    // The response object is returned with a status field that lets the
    // app know the current login status of the person.
    // Full docs on the response object can be found in the documentation
    // for FB.getLoginStatus().
    if (response.status === 'connected') {
      // Logged into your app and Facebook.
      testAPI();
    } else {
      // The person is not logged into your app or we are unable to tell.
      document.getElementById('status').innerHTML = 'you are not logged into fb';
    }
  }
  
  // This function is called when someone finishes with the Login
  // Button.  See the onlogin handler attached to it in the sample
  // code below.
  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }

  window.fbAsyncInit = function() {
  FB.init({
    appId      : '1081784575299618',
    cookie     : true,  // enable cookies to allow the server to access 
                        // the session
    xfbml      : true,  // parse social plugins on this page
    version    : 'v2.8' // use graph api version 2.8
  });

  // Now that we've initialized the JavaScript SDK, we call 
  // FB.getLoginStatus().  This function gets the state of the
  // person visiting this page and can return one of three states to
  // the callback you provide.  They can be:
  //
  // 1. Logged into your app ('connected')
  // 2. Logged into Facebook, but not your app ('not_authorized')
  // 3. Not logged into Facebook and can't tell if they are logged into
  //    your app or not.
  //
  // These three cases are handled in the callback function.

  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });

  };

  // Load the SDK asynchronously
  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));

  // Here we run a very simple test of the Graph API after login is
  // successful.  See statusChangeCallback() for when this call is made.
  function testAPI() {
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', function(response) {
      console.log('Successful login for: ' + response.name +"Email :" + response.email  );
      document.getElementById('status').innerHTML =
        'Thanks for logging in, ' + response.name + '!';
    });
  }
</script>

<!--
  Below we include the Login Button social plugin. This button uses
  the JavaScript SDK to present a graphical Login button that triggers
  the FB.login() function when clicked.
-->

<fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
</fb:login-button>

<div id="status">
</div></center>

<br><center> <label><b style="color: white;">OR</b></label></center><br>

<center><html lang="en">
  <head>
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="524397277804-8pj69acaecng2oe2q9vjsq6kaeka5b3i.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
  </head>
  <body>
    <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
    <script>
      function onSignIn(googleUser) {
        // Useful data for your client-side scripts:
        var profile = googleUser.getBasicProfile();
        console.log("ID: " + profile.getId()); // Don't send this directly to your server!
        console.log('Full Name: ' + profile.getName());
        console.log('Given Name: ' + profile.getGivenName());
        console.log('Family Name: ' + profile.getFamilyName());
        console.log("Image URL: " + profile.getImageUrl());
        console.log("Email: " + profile.getEmail());

        // The ID token you need to pass to your backend:
        var id_token = googleUser.getAuthResponse().id_token;
        console.log("ID Token: " + id_token);
      };
     </script>
    
     
</center>

</center>
<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">×</span>
  <form class="modal-content animate" action="registration.jsp">
    <div class="container">
      <label><b>First Name</b></label>
      <input type="text" placeholder="Enter First Name" name="fname" required>
      
      <label><b>Last Name</b></label>
      <input type="text" placeholder="Enter Last Name" name="lname" required>
      
      <label><b>Email</b></label>
      <input type="text" placeholder="Enter Email" name="email" required>
      
      <label><b>User Name</b></label>
      <input type="text" placeholder="Enter User Name" name="uname" required>
      
      <label><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pass" required>
       
        <label><b>School</b></label>
      <input type="text" placeholder="Enter School Name" name="school" required>
      
      <label><b>Courses</b></label>
      <select name="course">
                       <option value="Physics">Physics</option>
                       <option value="Chemistry">Chemistry</option>
                       <option value="Biology">Biology</option>
                       <option value="Maths">Maths</option></td>
                    </select><br><br>
      </select>
                   
      <label><b>Board</b></label>
       <select name="board">
                       <option value="CBSE">CBSE</option>
                       <option value="ISC">ISC</option>
                       <option value="UP Board">UP Board</option>
                       <option value="Others">Others</option></td>
                    </select><br><br>
       <label><b>States</b></label>
        <select name="states">
                         <option value="Andhra Pradesh">Andhra Pradesh</option>
                         <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                         <option value="Assam">Assam</option>
                         <option value="Bihar">Bihar</option>
                         <option value="Chhattisgarh">Chhattisgarh</option>
                         <option value="Goa">Goa</option>
                         <option value="Gujarat">Gujarat</option>
                         <option value="Haryana">Haryana</option>
                         <option value="Himachal Pradesh">Himachal Pradesh</option>
                         <option value="Jammu Kashmir">Jammu Kashmir</option>
                         <option value="Jharkhand">Jharkhand</option>
                         <option value="Karnataka">Karnataka</option>
                         <option value="Kerala">Kerala</option>
                         <option value="Madhya Pradesh">Madhya Pradesh</option>
                         <option value="Maharashtra">Maharashtra</option>
                         <option value="Manipur">Manipur</option>
                         <option value="Meghalaya">Meghalaya</option>
                         <option value="Mizoram">Mizoram</option>
                         <option value="Nagaland">Nagaland</option>
                         <option value="Odisha">Odisha</option>
                         <option value="Punjab">Punjab</option>
                         <option value="Rajasthan">Rajasthan</option>
                         <option value="Sikkim">Sikkim</option>
                         <option value="Tamilnadu">Tamilnadu</option>
                         <option value="Telangana">Telangana</option>
                         <option value="Tripura">Tripura</option>
                         <option value="Uttar Pradesh">Uttar Pradesh</option>
                         <option value="Uttarakhand">Uttarakhand</option>
                         <option value="West Bengal">West Bengal</option>
                         <option value="Delhi">Delhi</option></td>
                         </select><br><br>
                         <input type="checkbox" checked="checked"> Remember me
                         <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
                           
                         <div class="clearfix">
                                       
                           <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                           <button type="submit" class="signupbtn">Sign Up</button>
                           
                           
                         </div>
                          </div>
                              <script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
 <button onclick="myFunction()">Sign Out</button>
     <script>
        function myFunction() {
        gapi.auth2.getAuthInstance().disconnect();
        location.reload();
     }
    </script>
</form>
                                       
                         
  

 

<!-- Start of LiveChat (www.livechatinc.com) code -->
<script type="text/javascript">
window.__lc = window.__lc || {};
window.__lc.license = 8908674;
(function() {
  var lc = document.createElement('script'); lc.type = 'text/javascript'; lc.async = true;
  lc.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'cdn.livechatinc.com/tracking.js';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(lc, s);
})();
</script>
<!-- End of LiveChat code -->

</body>
</html>
