<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RevMetrix - Log In</title>
   	<link rel = "stylesheet" type ="text/css" href="CSS/loginStyles.css">
</head>
<body>

 <!-- Navigation Bar -->
    <jsp:include page="navbar.jsp" />
    <div class="topPage">
        <h1>RevMetrix</h1>
    </div>
    
    
    
    
    <!-- Login Form -->
    <form action="login" method="post">
        <input type="text" id="username" name="username" placeholder="Username">
        <br>
        <input type="password" id="password" name="password" placeholder="Password">
        <br>
        <input type="submit" value="Sign In">
    </form>
    
    
    
    <script>
		function redirectIfCorrect() {
            var User = document.getElementById('username').value;
            var Pass = document.getElementById('password').value;
            
            if (User.trim() === '' || Pass.trim() === '') {
                alert("Please fill in both username and password fields.");
                return false; // Prevent form submission
            }
            
            var correctUser = "Don";
            var correctPass = "Hake";
            var correctUser1 = "Charles";
            var correctPass1 = "12345";
            
            if ((User === correctUser && Pass === correctPass) || (User === correctUser1 && Pass === correctPass1) ) {
                window.location.href = "http://localhost:8081/revMetrix/account";
                return false; // Prevent form submission
            } else {
                alert("Incorrect Username or Password");
                return false; // Prevent form submission
            }
        }

    </script>
    
</body>
</html>
