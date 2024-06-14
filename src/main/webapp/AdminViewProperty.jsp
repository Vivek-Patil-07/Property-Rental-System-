<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin View Property Page</title>
 <%@include file="/Components/links.jsp" %>
 <style>
     body {
           
            font-family: Arial, sans-serif;
            background-color: #fff;
            margin: 0;
            padding: 0;
           
        
           
        }
       
    </style>
</head>
<body>
<%@include file="/Components/adminnav.jsp" %>



<!--  
<table>
    <tr>
        <th>Sr. No</th>
        
        <th>Pro_Name</th>
        <th>Pro_Owner</th>
         <th>State</th>
          <th>City</th>
        <th>Price</th>
        <th>Date</th>
        <th>Category</th>
        
       
        <th>Delete</th>
        <th>Update</th>
    </tr>
    <c:forEach var="pro" items="${proList}">
        <tr>
            <td>${pro.id}</td>
            <td><img src="${pro.imageUrl}" alt="Pro Image" width="100px" height="100px"></td>
            <td>${pro.proname}</td>
            <td>${pro.proowner}</td>
            <td>${pro.state}</td>
            <td>${pro.city}</td>
            <td>${pro.price}</td>
            <td>${pro.date}</td>
            <td>${pro.category}</td>
           
           
            <td><button><a href="<c:url value='/delete/${pro.id}'/>">Delete</a></button></td>
            <td><button><a href="${pro.id}">Edit</a></button></td>
        </tr>
    </c:forEach>
</table>

-->

       <div style="border:solid 1px white;box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;;background-color: white;
                   margin-left: 360px;
    margin-right: 360px;
    margin-top: 14px;margin-bottom: 11px;">
<div style="margin-left: 186px;
    margin-top: 12px;
    margin-bottom: 8px;">

   <h1>All Properties</h1>
 </div>
 </div>



   <div class="container-fluid ">
    <div style="box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;" class="card my-2 py-5">
    
    
        
        
           <table style="margin-top: -48px;text-align: center;" border="1" ;">
    
    <tr>
   <th>Sr. No</th>
        <th>Pro_Image</th>
        <th>Pro_Name</th>
        <th>Pro_Owner</th>
         <th>State</th>
          <th>City</th>
        <th>Price</th>
        <th>Date</th>
        <th>Category</th>
        
       
        <th>Delete</th>
        <th>Update</th>
    </tr>
    
   <c:forEach var="pro" items="${proList}">
        <tr>
            <td>${pro.id}</td>
            <td><img src="${pro.imageUrl}" alt="Pro Image" width="100px" height="100px"></td>
            <td>${pro.proname}</td>
            <td>${pro.proowner}</td>
            <td>${pro.state}</td>
            <td>${pro.city}</td>
            <td>${pro.price}</td>
            <td>${pro.date}</td>
            <td>${pro.category}</td>
           
           
            <td><button><a style="text-decoration:none;" href="<c:url value='/delete/${pro.id}'/>">Delete</a></button></td>
            <td><button><a style="text-decoration:none;" href="${pro.id}">Edit</a></button></td>
        </tr>
    </c:forEach>
 
    </table>

         
         
    </div>
    </div>




</body>
</html>