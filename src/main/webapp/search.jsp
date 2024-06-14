<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Page</title>
 <%@include file="/Components/links.jsp" %>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #c5c5c5;
            margin: 0;
            padding: 0;
            background-image:url("/img/loginback1.jpg");
            background-repeat: no-repeat;
    background-size: cover;
        }

        header {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            padding: 10px;
        }

 
      
    </style>
</head>
<body>
<%@include file="/Components/usernav.jsp" %>

 <div style="border:solid 1px white;box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;background-color: white;
                   margin-left:200px; margin-right:200px;margin-top: 20px;">
<div style="margin-left: 124px;
    margin-top: 12px;
    margin-bottom: 8px;">

<form action="/search" method="get">
   
    <input  type="text" id="state" placeholder="Enter State" name="state">
    
    
    <input type="text" id="city" placeholder="Enter City" name="city">
    
   
    <input type="text" id="category" placeholder="Enter Category(BHK)" name="category">
    
    <button class="btn btn-outline-dark my-2 my-sm-1" type="submit">Search</button>
       
</form>
 </div>
 </div>
 
 <div class="container">
 

 <div class="row" style="padding:10px;">
  <div class="col-lg-4 mb-4 col-md-6" style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;position:relative;background-color: white;border:solid 1px white;padding: 70px;">

 
 <h1>Rental tips  <br> and insights</h1>  <br>
 <p> Advice from our experts to help you along your rental journey.</p>  <br>
 
 
  <form class="form-inline my-2 my-lg-0" action="https://tatarealty.in/blogs" method="get">
    <button style="margin-right:30px"; class="btn btn-outline-dark my-2 my-sm-1" type="submit">Visit Recent Blogs</button>
     
    </form>
    </div>

  <div class="col-lg-4 mb-4 col-md-6" style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;position:relative;background-color: white;border:solid 1px white;padding: 70px;">
  
 <a style="text-decoration:none;" href="https://www.avail.co/education/articles/10-tips-for-first-time-apartment-renters-to-know-of"> <h2>  11 Steps to Follow When Renting an Apartment </h2></a>
  <p>Apartment hunting can be exciting ,yet overwhelming Simplify the task by getting organized.</p>
  
  </div>
  
  
  <div class="col-lg-4 mb-4 col-md-6" style="box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;position:relative;background-color: white;border:solid 1px white;padding: 70px;">
  
 <a style="text-decoration:none;" href="https://www.cbsnews.com/news/rents-falling-cheaper-18-cities-pay-less-relator-com-september-rental-report/"> <h2>Big Cities Where Rent Prices are Actually Decreasing.</h2>  </a>
<p>Rent is on the Rise --but not everywhere. These big cities are seeing rent decreses.</p>  
  </div>
</div>
 </div>
 
 
 <%@include file="/Components/footer.jsp" %>
</body>
</html>