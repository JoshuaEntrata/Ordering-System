<%-- 
    Document   : confirmOrder
    Created on : 11 10, 22, 5:42:01 PM
    Author     : Betty
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href='https://fonts.googleapis.com/css?family=Lato:300,400|Montserrat:700' rel='stylesheet' type='text/css'>
    </head>
    <body>        
	<div class="main-content">
            <p class="main-content__body" data-lead-id="main-content-body">
                Ever since 2020, <span>UST Eating Restaurant</span> has been the favorite stop to relish great food at
                affordable prices. Our great legacy of mouthwatering dishes continues to satisfy our customers. 
                We offer a variety of meal sets to satisfy your heart’s desires.
                <br><br>
                Check out our menu that consists of four affordable meal sets, and visit our nearest branch in 
                <span>UST</span> to feast on our tasty offerings with your family and friends. 
                <br><br>
            </p>
	</div> 
        
        <div>
            <form action="orderServlet" method="get">
            <div>
                <input type="radio" hidden name="order" value="null"checked>
                <label>
                    <input type="radio" name="order" value="MEAL SET A">
                    <img src="img\MEAL SET A.png" id="img">
                </label>
                <label>
                    <input type="radio" name="order" value="MEAL SET B">
                    <img src="img\MEAL SET B.png" id="img">
                </label>
                <label>
                    <input type="radio" name="order" value="MEAL SET C">
                    <img src="img\MEAL SET C.png" id="img">
                </label>
                <label>
                    <input type="radio" name="order" value="MEAL SET D">
                    <img src="img\MEAL SET D.png" id="img">
                </label>
            </div>
            <input type="submit" value="Order" id="submit">
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
    
    html {
        font-size: 16px;
        background-color: #fffffe;
    }
    body {
        margin-top: 80px;
        padding: 0 20px;
        min-width: 300px;
        font-family: 'Akkurat-Regular', sans-serif;
        background-color: #fffffe;
        color: #1a1a1a;
        text-align: center;
        word-wrap: break-word;
        -webkit-font-smoothing: antialiased
    }
    
    span{
        color: #00A1E4;
    }

    [type=radio] { 
      position: absolute;
      opacity: 0;
      width: 0;
      height: 0;
    }
    
    [type=radio] + img {
      cursor: pointer;
    }

    [type=radio]:checked + img {
      outline: 2px solid #00A1E4;
    }
    
    #img{
        max-width: 100%;
        width: 350px;
        height: auto;
        padding: 25px;
    }
    
    .main-content {
	margin: 0 auto;
	max-width: 820px;
    }
    .main-content__body {
        margin: 20px 0 0;
        line-height: 1.4;
        font-size: 1.25rem;
        font-weight: bold;
    }
    
    .site-footer {
	margin: 0 auto;
	max-width: 820px;
        padding: 25px 0 25px;
    }
    .site-footer__fineprint {
        line-height: 1.3;
        font-weight: 300;
        font-size: 1.125rem;
    }
    
    #submit{
        margin-top: 30px;
        background-color: white;
        border: solid 2px #00A1E4;
        color: #00A1E4;
        font-size: 18px;
        font-weight: bold;
        border-radius: 30px;
        cursor: pointer;
        padding: 10px;
    }
    
    #submit:hover{
        will-change: transform;
        transform: perspective(1000px) scale3d(1.05,1.05,1.05);
    }
</style>