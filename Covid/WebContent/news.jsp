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
        <link rel="stylesheet" href="css\styles.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="images\favicon.ico" rel="icon">

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

        <section class="news">
            <div class="banner-area">
                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-md-6 col-12">
                            <div class="content-part">
                                <div class="banner-content">
                                    <h2>COVID-19 Updates</h2>
                                    <h4>Total Confirmed Corona Cases</h4>-
                                    <h2 id="totalCount" class="count-people">0</h2>
                                    <ul class="lab-ul">
                                        <li>Recovered cases <span id="recoveredCount" class="count-people">0</span></li>
                                        <li>Deaths <span id="deathCount" class="count-people">0</span></li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-12">
                            <div class="banner-round">
                                <img src="images\stats-image.jpg" alt="banner" height="300" width="300">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.countdown/2.2.0/jquery.countdown.min.js"></script>

        <script>

            $(window).on("load", function () {

                fetch('https://wuhan-coronavirus-api.laeyoung.endpoint.ainize.ai/jhu-edu/brief')
                        // asynchronously load contents of the url
                        // return a Promise that resolves when res is loaded
                        .then(res => res.json())
                        // call this function when res is loaded
                        // return a Promise with result of above function
                        .then(data => {
                            // call this function when the above chained Promise resolves
                            console.log("hello data");
                            console.log(data);
                            var test = data.confirmed;
                            console.log(test);
                            //var helloWorld = $('#totalCount').html();
                            $('#totalCount').html(test);
                            $('#recoveredCount').html(data.recovered);
                            $('#deathCount').html(data.deaths);

                        })
            });

        </script>

        <div class="footer-padding">
            <div class="footer">
                <h3>LET'S FIGHT TOGETHER</h3>
                <p>#stay safe  #social distancing  #covid-19</p>
            </div>
        </div>

    </body>
</html>



