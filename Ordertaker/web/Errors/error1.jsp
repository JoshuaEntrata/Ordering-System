
<%-- 
    Document   : error1
    Created on : 11 10, 22, 11:12:46 AM
    Author     : Betty
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>404 Error</title>
        <link href='https://fonts.googleapis.com/css?family=Lato:300,400|Montserrat:700' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <img src="img/error.png">
        <header class="site-header" id="header">
            <h1 class="site-header__title" data-lead-id="site-header-title"><%= response.getStatus() %></h1>
            <%response.setHeader("error", "Not Found");%>
            <h3>Oops! Something went wrong!<br><%= response.getHeader("error")%></h3>
	</header>
    </body>
</html>

<style>
    body {
        padding: 0 20px;
        min-width: 300px;
        font-family: 'Akkurat-Regular', sans-serif;
        background-color: #fffffe;
        text-align: center;
        word-wrap: break-word;
        -webkit-font-smoothing: antialiased
    }
    img{
        margin-top: 150px;
        margin-bottom: 20px;
        max-width: 100%;
        width: 400px;
        height: auto;
    }
     .site-header {
	margin: 0 auto;
	max-width: 820px;
    }
    
    .site-header__title {
        margin: 0;
        font-family: Montserrat, sans-serif;
        font-weight: 700;
        line-height: 1.1;
        text-transform: uppercase;
        -webkit-hyphens: auto;
        -moz-hyphens: auto;
        -ms-hyphens: auto;
        hyphens: auto;
        font-size: 6.25rem;
        color:#00A1E4;
    }
</style>