<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <title>cours</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <link rel="stylesheet" href="./css/bootstrap.min.css"/>
    <link rel="stylesheet" href="./css/style2.css">

</head>

<body class="main-layout home_page cr">
    <header>
        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                        <div class="menu-area">
                            <div class="limit-box">
                                <nav class="main-menu">
                                    <ul class="menu-area-main">
                                        <li class="mean-last"><img src="img/user.jpg">
                                        </li>

                                        <li class="active"> <a href="Formateur.jsp">Apprenant: ${sessionScope.nom} ${sessionScope.prenom}</a> </li>
                                        <li> <a href="about.html">About us</a> </li>
                                        <li><a href="login.jsp">Contact us</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

 <div class="container login-container" align="center">
    <div class="row">
<div class="col-11">
</div>
<div class="col-1">
<form action="Deconnexion" method="get">

<li class="mean-last">

<button type="submit" class="btn btn text-danger bg-light">Déconnection</button>

 </li>
 </form>
</div>
</div>
    <div class="container login-container" align="center">
    <div class="row">
    
            <div class="col-12">
                <div class="card">
                    <h8 class="card-header" id="nomc">${sessionScope.nomformation}</h5>
                        <br> <br>
                        <div class="card-body">
                            <h5 class="card-title" id="formateurn">${sessionScope.nomformateur}</h5>
                            <p class="card-text text-dark" id="description">voila le cours de cette formation</p>
                            <a href="https://meet.google.com/eia-dtox-ofr" class="btn btn-link">->Lien meet</a>
                        </div>
                </div>
            </div>
        </div>

        <br> <br>
<div class="row">
         <div class="col-8 offset-2">
        <c:forEach var="cour" items="${sessionScope.cours}">
           <h4> ${cour.description} </h4>
        <iframe src="${cour.contenu}" style="width:600px; height:500px;" frameborder="0">
        </iframe>        
            </c:forEach>         
                
            </div>
        </div>
        <br>
     
    </div>

</body>

</html>