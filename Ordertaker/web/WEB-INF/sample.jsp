<%-- 
    Document   : confirmOrder
    Created on : 11 10, 22, 5:42:01 PM
    Author     : Betty
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href='https://fonts.googleapis.com/css?family=Lato:300,400|Montserrat:700' rel='stylesheet' type='text/css'>
    </head>
    <body>        
        <header class="site-header" id="header">
            <%
               String order = request.getParameter("order");
            %>
            <h1 class="site-header__title" data-lead-id="site-header-title">Your order is <% out.print(order); %></h1>
	</header>

	<div class="main-content">
		<i class="fa fa-check main-content__checkmark" id="checkmark"></i>
                <p class="main-content__body" data-lead-id="main-content-body">
                    <%
                    List getOrder = (List)request.getAttribute("orderList");
                    Iterator<String> it = getOrder.iterator();

                    while(it.hasNext())
                    {
                        out.print("<br>" + it.next());
                    }
                %>
                </p>
                <form action="showReceipt" method="get">
                <input type="submit" value="DOWNLOAD RECEIPT" id="submit">
            </form><br>
            <form action="orderConfirmed">
                <input type="submit" value="Confirm Order" id="submit">
            </form><br>
            <form action="returnToOrder">
                <input type="submit" value="Return to Menu" id="submit">
            </form>
	</div> 

	<footer class="site-footer" id="footer">
		<p class="site-footer__fineprint" id="fineprint">
                <% 
                    String header = getServletContext().getInitParameter("header"); 
                    out.println(header);
                %> 
                <br>
                <% 
                    String footer = getServletContext().getInitParameter("footer"); 
                    out.println(footer);
                %></p>
	</footer>
            
    </body>
</html>

<style>
    @import url(//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css);
    
    html {
        font-size: 16px;
        background-color: #fffffe;
    }
    body {
        padding: 0 20px;
        min-width: 300px;
        font-family: 'Akkurat-Regular', sans-serif;
        background-color: #fffffe;
        color: #1a1a1a;
        text-align: center;
        word-wrap: break-word;
        -webkit-font-smoothing: antialiased
    }

    .site-header {
	margin: 0 auto;
/*	padding: 80px 0 0;*/
	max-width: 820px;
        padding-top: 150px;
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
    }
    
    .main-content {
	margin: 0 auto;
	max-width: 820px;
    }
    .main-content__checkmark {
        line-height: 1;
        color: #24b663;
        font-size: 9.75rem;
    }
    .main-content__body {
        margin: 20px 0 0;
        line-height: 1.4;
        font-size: 1.25rem;
    }
    
    .site-footer {
	margin: 0 auto;
	padding: 0;
	max-width: 820px;
        padding: 145px 0 25px;
    }
    .site-footer__fineprint {
        line-height: 1.3;
        font-weight: 300;
        font-size: 1.125rem;
    }
    
    #submit{
        margin: 150px 0 0;
        background-color: white;
        border: solid 2px #00A1E4;
        color: #00A1E4;
        font-size: 18px;
        font-weight: bold;
        border-radius: 30px;
        cursor: pointer;
        padding: 10px;
    }
</style>