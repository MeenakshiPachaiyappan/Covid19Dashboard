<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js" ></script>

        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta
            name="author"
            content="Mark Otto, Jacob Thornton, and Bootstrap contributors"
            />
        <meta name="generator" content="Jekyll v4.1.1" />
        <title>Sign in Page</title>

        <link
            rel="canonical"
            href="https://getbootstrap.com/docs/4.5/examples/sign-in/"
            />
        <!-- Bootstrap core CSS -->
        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
            integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
            crossorigin="anonymous"
            />
        
        <link href="css\styles.css" rel="stylesheet" />
        <link href="images\favicon.ico" rel="icon" />
        <link href="images\mask.jpg" rel="mask" />
        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }
        </style> 
    </head>

    <body class="text-center">
        <div class="signin">
            <form class="form-signin" action="LoginServlet" method="post">
                <img class="mb-4" src="images\mask.jpg" width="82" height="82" />
                <h1 style="font-family: sans-serif; font-size: 40px">
                    Sign in to know about COVID-19
                </h1>
                <label for="inputEmail" class="sr-only">Email address</label>
                <input
                    type="email"
                    name="email"
                    id="inputEmail"
                    class="form-control"
                    placeholder="Email address"
                    required
                    autofocus
                    />
                <label for="inputPassword" class="sr-only">Password</label>
                <input
                    type="password"
                    name="password"
                    id="inputPassword"
                    class="form-control"
                    placeholder="Password"
                    required
                    />
                <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me" /> Remember me
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block" type="submit">
                    Sign in
                </button>
                <a href="resgister.jsp">Create New Account</a>
            </form>
        </div>

        <c:if test = "${loginFailed eq 'true'}">
            <script>
                $(document).ready(function () {
                    swal("Failed!", "Incorrect Login-Credentials", "error");
                });
            </script>
        </c:if>
    </body>
</html>
