<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <title>Edit</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <link rel="stylesheet" href="./css/bootstrap.min.css"/>
    <link rel="stylesheet" href="./css/style2.css">

</head>

<body class="main-layout home_page back">
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

                                        <li class="active"> <a href="Formateur.jsp">formateur: ${sessionScope.nom} ${sessionScope.prenom}</a> </li>
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
            <div class="col ">

                <form role="form" method="post" action="Modif">
                    <fieldset>
                        <legend class="text-danger"> Modifier la Formation</legend>
                        <br><br>
                        <div class="form-check">
                            <label for="exampleInputCours">Nouveau nom</label>
                            <input type="text" class="form-control" id="exampleInputCours"
                            name="nomformation"     placeholder="Entrer le nouveau nom du formation">
                        </div>
 <input type="hidden" name="custId6" value="${ idform }">
                     
                        <br>

                        <div class="form-group">

                            <div class="form-check">
                                <label for="exampleInputDescription">Nouvelle Description</label>
                                <input type="text" class="form-control" id="exampleInputDescription"
                                name="description"    placeholder="entrer la Description">
                            </div>
                        </div>
 
<input type="hidden" name="custId8" value="${sessionScope.idformateur}">
                        <div class="row">

                            <div class="col-5">
                                
                            </div><div class="col-4 "></div>
                            <div class="col-3 ">
  <button type="submit" class="btn btn bg-danger">Modifier</button>
                            </div>
                        </div>                                </fieldset>
                        
                </form><a class="btn btn-secondary" href="Formateur.jsp" role="button">Annuler</a>
            </div>
        </div>
    </div>

</body>

</html>