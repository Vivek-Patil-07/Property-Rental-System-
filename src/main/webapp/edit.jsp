<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page</title>
<%@include file="/Components/links.jsp" %>
 <style> @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
body{
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
    background-image: url(https://t4.ftcdn.net/jpg/02/34/81/69/360_F_234816930_roybJtQJQrorW5m88ESZ0ZqGPLRXwoge.jpg);
  background-repeat: no-repeat;
      background-size: cover;
}
.wrapper{
  position: relative;
  max-width: 430px;
  width: 100%;
  background: #fff;
  padding: 34px;
  border-radius: 6px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.2);
}
.wrapper h2{
  position: relative;
  font-size: 22px;
  font-weight: 600;
  color: #333;
}
.wrapper h2::before{
  content: '';
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 28px;
  border-radius: 12px;
  background: #4070f4;
}
.wrapper form{
  margin-top: 30px;
}
.wrapper form .input-box{
  height: 52px;
  margin: 18px 0;
}
form .input-box input{
  height: 100%;
  width: 100%;
  outline: none;
  padding: 0 15px;
  font-size: 17px;
  font-weight: 400;
  color: #333;
  border: 1.5px solid #C7BEBE;
  border-bottom-width: 2.5px;
  border-radius: 6px;
  transition: all 0.3s ease;
}
.input-box input:focus,
.input-box input:valid{
  border-color: #4070f4;
}
form .policy{
  display: flex;
  align-items: center;
}
form h3{
  color: #707070;
  font-size: 14px;
  font-weight: 500;
  margin-left: 10px;
}
.input-box.button input{
  color: #fff;
  letter-spacing: 1px;
  border: none;
  background: #4070f4;
  cursor: pointer;
}
.input-box.button input:hover{
  background: #0e4bf1;
}
form .text h3{
 color: #333;
 width: 100%;
 text-align: center;
}
form .text h3 a{
  color: #4070f4;
  text-decoration: none;
}
form .text h3 a:hover{
  text-decoration: underline;
}</style>
</head>
<body>

<!-- 
 
     <c:if test="${not empty pro}">
        <form action="/edit/${pro.id}" method="post">
            <div class="book-image-container">
                
                <img class="book-image" src="${pro.imageUrl}" alt="Book Image">
            </div>
            <div class="book-details">
                <h2>Edit Property Details</h2>
                
                <label for="proname">Pro name:</label>
            <input type="text" id="title" name="proname" value="${pro.proname}"><br><br>

            <label for="proowner">Pro Owner:</label>
            <input type="text" id="author" name="proowner" value="${pro.proowner}"><br><br>

            <label for="price">Price:</label>
            <input type="number" id="price" name="price" step="0.01" value="${pro.price}"><br><br>

            <label for="date">Date:</label>
            <input type="date" id="date" name="date" value="${pro.date}"><br><br>
            
             <label for="state">State:</label>
            <input type="text" id="state" name="state" value="${pro.state}"><br><br>
            
             <label for="city">City:</label>
            <input type="text" id="city" name="city" value="${pro.city}"><br><br>
            
             <label for="category">Category :</label>
            <input type="text" id="category" name="category" placeholder="(in BHK)" value="${pro.category}"><br><br>

             <label for="imageUrl">Image URL:</label>
			<input type="text" id="imageUrl" name="imageUrl" placeholder="Enter image URL" value="${pro.imageUrl}"><br><br>
             
             <label for="location">Location :</label>
			<input type="text" id="location" name="location" placeholder="Enter location link" value="${pro.location}"><br><br>
			
 
                <input type="submit" value="Update">
            </div>
        </form>
    </c:if>
    
    
   -->  
    
    
     <div style="margin-left: 70px;"  class="wrapper">
      <h2>Edit Property</h2>
     <c:if test="${not empty pro}">
        <form action="/edit/${pro.id}" method="post">
   
    
   
      <div class="input-box">
        <input type="text" name="proname" value="${pro.proname}"  >
      </div>
      <div class="input-box">
        <input type="text" name="proowner" value="${pro.proowner}">
      </div>
      <div class="input-box">
        <input type="number" name="price" value="${pro.price}">
      </div>
      <div class="input-box">
        <input type="date" name="date" value="${pro.date}">
      </div>
     
         <div class="input-box">
        <input type="text" name="state" value="${pro.state}">
      </div>
      
       <div class="input-box">
        <input type="text" name="city"value="${pro.city}">
      </div>
      
       <div class="input-box">
        <input type="text" name="category" value="${pro.category}">
      </div>
      
       <div class="input-box">
        <input type="text" name="imageUrl" value="${pro.imageUrl}">
      </div>
      
      <div class="input-box">
        <input type="text" name="location" value="${pro.location}">
      </div>
   <!--     
       <div class="input-box">
        <input type="text" name="Desc" value="${pro.desc}">
      </div>
      
      <div class="input-box">
        <input type="text" name="features" value="${pro.features}">
      </div>
     
     -->
     
      <div class="input-box button">
        <input type="Submit" value="Update">
      </div>
      
   
    
   

   </form>
    </c:if>
      </div>
    
  <a href="/viewpro">
       <img style="max-width:50px;position: relative;
   top: -368px;
    left: -73px;
" alt="" src="/img/previous.png">   </a>


    
    
</body>
</html>