<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%

    session = request.getSession();
    String email = "";
    System.out.println(session.getAttribute("session_user"));
    if (session.getAttribute("session_user") == null || session.getAttribute("session_user") == "" || session.getAttribute("session_user").equals("")) {
    	
        response.sendRedirect("login.jsp");
    } else {
        email = session.getAttribute("session_user").toString();
    }


%>
<!DOCTYPE html>
<html>
    <head>
        <title>COVID-19 DASHBOARD</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="css\styles.css">
        <link href="images\favicon.ico" rel="icon">
        <script defer src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
    </head>
    <body>

        <div class="container-fluid">

            <!-- Nav Bar -->

            <nav class="navbar navbar-expand-lg navbar-light">

                <a class="navbar-brand" href="">COVID-19 DASHBOARD</a>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarTogglerDemo02">

                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="about.jsp">ABOUT</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="news.jsp">NEWS</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp" >DEVELOPER</a>
                        </li>
                        <li class="nav-item">
                        	<a class="nav-link" href="logout.jsp" >LOGOUT</a>
                        </li>
                    </ul>

                </div>
            </nav>
        </div>

        <div style ="background-image: url('images/bg-image.jpg')">
            <div class="developer">

                <img class="photo" src="images\pro-photo.png" alt="Avatar" height="100" width="100" border-radius=50% >
                <h3>Meenakshi Pachaiyappan</h3>
                <a href="https://www.facebook.com/meenakshi.pachaiyappan"><i class="social-icon fab fa-facebook-f"></i></a>
                <a href="https://twitter.com/meenakshi_pachi"><i class="social-icon fab fa-twitter"></i></a>
                <a href="https://www.linkedin.com/in/meenakshi-pachaiyappan-4793b7185/"><i class="social-icon fab fa-linkedin"></i></a>

                <p>© Copyright 2020 COVID-19 Dashboard</p>
            </div>
        </div> 
        <div class="footer-padding">
            <div class="footer">
                <h3>LET'S FIGHT TOGETHER</h3>
                <p>#stay safe  #social distancing  #covid-19</p>
            </div>
        </div>
    </body>
</html>
