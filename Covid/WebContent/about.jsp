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

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js" ></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="css\styles.css">
        <link href="images\favicon.ico" rel="icon">

        <!-- Bootstrap Scripts -->

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

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

        <div>
            <div class="colored-section" id="title">
                <div class="row">
                    <div class="col-lg-6">
                        <h1 class="big-heading">What is COVID-19?</h1>
                        <p>
                            The most recently discovered coronavirus causes coronavirus disease
                            COVID-19. COVID-19 is the infectious disease caused by the most
                            recently discovered corona virus. This new virus and disease were
                            unknown before the outbreak began in Wuhan, China, in December 2019.
                            Although for most people COVID-19 causes only mild illness, it can
                            make some people very ill. More rarely, the disease can be fatal.
                            Older people, and those with pre- existing medical conditions (such as
                            high blood pressure, heart problems or diabetes) appear to be more
                            vulnerable.
                        </p>
                    </div>

                    <div class="col-lg-6">
                        <img class="covid-image" src="images\corona-virus.jpg" />
                    </div>
                </div>
            </div>

            <!-- Symptoms -->
            <div class="white-section" id="symptoms">
                <div class="container-fluid">
                    <div class="row">
                        <div class="symptoms-box col-lg-4">
                            <img class="fever" src="images\fever.jpg" width="150" height="150" />
                            <h3 class="symptom-title">High Temperature</h3>
                            <p class="content">
                                The most primary symptom of the disease is mild to high fever.
                            </p>
                        </div>

                        <div class="symptoms-box col-lg-4">
                            <img
                                class="drycough"
                                src="images\dry-cough.jpg"
                                width="150"
                                height="150"
                                />
                            <h3 class="symptom-title">Dry Cough</h3>
                            <p class="content">
                                Dry cough and troubled breathing are two another major symptoms.
                            </p>
                        </div>

                        <div class="symptoms-box col-lg-4">
                            <img
                                class="headache"
                                src="images\head-ache.jpg"
                                width="150"
                                height="150"
                                />
                            <h3 class="symptom-title">Severe headache</h3>
                            <p class="content">
                                Headache is a secondary symptom which varies from person to person.
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Precautions -->
            <div class="colored-section" id="precautions">
                <div id="precautions-carousel" class="carousel slide" data-ride="false">
                    <div class="carousel-inner">
                        <div class="carousel-item active container-fluid">
                            <em><h3>How can we safeguard ourselves?</h3></em>
                            <h2 class="precaution-text">
                                Wear a mask when physical distancing is not possible.
                            </h2>
                            <img class="precaution-image" src="images\facemask.png" />
                        </div>
                        <div class="carousel-item container-fluid">
                            <em><h3>How can we safeguard ourselves?</h3></em>
                            <h2 class="precaution-text">
                                Clean your hands often. Use soap and water, or an alcohol-based hand
                                rub.
                            </h2>
                            <img class="precaution-image" src="images\washhands.jpg" />
                        </div>
                        <div class="carousel-item container-fluid">
                            <em><h3>How can we safeguard ourselves?</h3></em>
                            <h2 class="precaution-text">
                                Maintain a safe distance from anyone who is coughing or sneezing.
                            </h2>
                            <img class="precaution-image" src="images\socialdistancing.jpg" />
                        </div>
                        <div class="carousel-item container-fluid">
                            <em><h3>How can we safeguard ourselves?</h3></em>
                            <h2 class="precaution-text">Stay home if you feel unwell.</h2>
                            <img class="precaution-image" src="images\stayhome.jpg" />
                        </div>

                        <div>
                            <a
                                class="carousel-control-prev"
                                href="#precautions-carousel"
                                role="button"
                                data-slide="prev"
                                >
                                <span class="carousel-control-prev-icon"></span>
                            </a>
                            <a
                                class="carousel-control-next"
                                href="#precautions-carousel"
                                role="button"
                                data-slide="next"
                                >
                                <span class="carousel-control-next-icon"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer-padding">
            <div class="footer">
                <h3>LET'S FIGHT TOGETHER</h3>
                <p>#stay safe  #social distancing  #covid-19</p>
            </div>
        </div>

        <script>
            <c:if test = "${loginInitial eq 'true'}">
            $(document).ready(function () {
                swal("Welcome", "Successfully Logged In!", "success");
            });

            </c:if>

        </script>
    </body>
</html>

