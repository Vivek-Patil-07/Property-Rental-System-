<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Property Page</title>
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
   
    <div class="container">
        
        <form action="addpro" method="post" enctype="multipart/form-data">
            <h2>Add Pro <img alt="Pro" src="/img/book_2029020.png" width="40px" height="40px"> </h2>
            <label for="proname">Pro name:</label>
            <input type="text" id="proname" name="proname" required><br><br>

            <label for="proowner">Pro Owner:</label>
            <input type="text" id="proowner" name="proowner" required><br><br>

            <label for="price">Price:</label>
            <input type="number" id="price" name="price" step="0.01" required><br><br>

            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required><br><br>
            
            <label for="state">State:</label>
            <input type="text" id="state" name="state" required><br><br>
            
            <label for="city">City:</label>
            <input type="text" id="city" name="city" required><br><br>
            
             <label for="category">Category :</label>
            <input type="text" id="category" name="category" placeholder="(in BHK)" required><br><br>

             <label for="imageUrl">Image URL:</label>
			<input type="text" id="imageUrl" name="imageUrl" placeholder="Enter image URL" required><br><br>
             
             <label for="location">Location :</label>
			<input type="text" id="location" name="location" placeholder="Enter location" required><br><br>
			
			<label for="Desc">Description :</label>
			<input type="text" id="Desc" name="Desc" placeholder="Enter Description" required><br><br>

             <label for="features">Features :</label>
			<input type="text" id="features" name="features" placeholder="Enter features" required><br><br>
			 
            <button type="submit">Add Property</button>
        </form>
    </div>

-->


        <div style="margin-left: 70px;;"  class="wrapper">
    <h2>Add Property</h2>
    
    <form action="addpro" method="post">
      <div class="input-box">
        <input type="text" name="proname" placeholder="Enter Property Name" required>
      </div>
      <div class="input-box">
        <input type="text" name="proowner" placeholder="Enter Property Owner" required>
      </div>
      <div class="input-box">
        <input type="number" name="price" placeholder="Enter Price" required>
      </div>
      <div class="input-box">
        <input type="date" name="date" placeholder="Enter Date" required>
      </div>
     
         <div class="input-box">
        <input type="text" name="state" placeholder="Enter your state" required>
      </div>
      
       <div class="input-box">
        <input type="text" name="city" placeholder="Enter your city" required>
      </div>
      
       <div class="input-box">
        <input type="text" name="category" placeholder="Enter category( in BHK )" required>
      </div>
      
       <div class="input-box">
        <input type="text" name="imageUrl" placeholder="Enter Image Url" required>
      </div>
      
      <div class="input-box">
        <input type="text" name="location" placeholder="Enter location Url" required>
      </div>
      
      <div class="input-box">
        <input type="text" name="Desc" placeholder="Enter description" required>
      </div>
      
      <div class="input-box">
        <input type="text" name="features" placeholder="Enter features" required>
      </div>
     
      <div class="input-box button">
        <input type="Submit" value="Add Property">
      </div>
      
   
    </form>
   
  </div>
  <a href="AdminHome.jsp">
       <img style="max-width:50px;position: relative;
    top: -435px;
    left: -73px;
" alt="" src="/img/previous.png">   </a>
     

</body>
</html>