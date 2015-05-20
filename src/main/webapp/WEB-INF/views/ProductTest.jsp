<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container body-content">

	  	<p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
	  	<h1>Message : ${message}</h1>
	  	<h1>Message : ${message1}</h1>
	  	
	  	
	  	<tr>
      <td>Skills:</td>
      <td><select name="skills" multiple="true">
          <option value="Potions">Potions</option>
          <option value="Herbology" selected="selected">Herbology</option>
          <option value="Quidditch">Quidditch</option></select>
      	</td>
  	  </tr>
  
<div align="center">
            <h1>Contact List</h1>
            <h3><a href="/newContact">New Contact</a></h3>
            <table border="1" >
                <th>No</th>
                <th>Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Telephone</th>
                <th>Action</th>
                 
                <c:forEach var="contact" items="${listContact}" varStatus="status">
                <tr>
                    <td>${status.index + 1}</td>
                    <td>${contact.name}</td>
                    <td>${contact.email}</td>
                    <td>${contact.address}</td>
                    <td>${contact.telephone}</td>
                    <td>
                        <a>${contact.id}">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="/deleteContact?id=${contact.id}">Delete</a>
                    </td>
                             
                </tr>
                </c:forEach>             
            </table>
        </div>
  
  <tr>
      <td>Country:</td>
      <td>
          <select name="country">
              <option value="-">--Please Select</option>
              <option value="AT">Austria</option>
              <option value="UK" selected="selected">United Kingdom</option>
              <option value="US">United States</option>
          </select>
      </td>
  </tr>
  
        <footer class="text-center">
        
            <p><small>MAS - Powered by Dev Team &copy; </small></p>
            
        </footer>
    </div>
    
</body>

</html>

