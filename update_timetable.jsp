<%@page import="java.sql.*"%>
<%@page language="java"%>

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
    background-image: url("https://static.pexels.com/photos/129441/pexels-photo-129441.jpeg");
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
<br><br>
<h1>Edit your details here!!!!!</h1>
<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Update</button>

<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">×</span>
 <form class="modal-content animate" action="update_timetable_success.jsp">
    <div class="container">
     
      <label><b>Date</b></label>
      <input id="Date" type="Date" name="Date" required>

      <label><b>Time</b></label>
      <input type="Time" value="Now/" name="Time" required>
      
      <label><b>Subject</b></label>
      <input type="text" placeholder="Enter Subject" name="Subject" required>
      
      <label><b>Class</b></label>
      <input type="text" placeholder="Enter Class" name="Class" required>
       
      <input type="checkbox" checked="checked"> Remember me
                         <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
                           
                         <div class="clearfix">
                                       
                           <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
                          <button type="submit" class="signupbtn">Update</button>
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

</body>