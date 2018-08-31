<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<!--  p=new Product(), initially all the properties will have default values
	var url="/admin/addproduct"
	 -->
	<c:url value="/admin/addproduct" var="url"></c:url>
	<form:form modelAttribute="product" action="${url }">
		<table>
			<tr>
				<td></td>
				<!-- user need not give value for id, auto generation -->
				<td><form:hidden path="id"></form:hidden></td>
			</tr>
			<tr>
				<td>Enter Product Name
				</td>
				<td><form:input path="productname"></form:input></td>
			</tr>
			<tr>
			<td>Enter Product Description</td>
			<td><form:textarea path="productdesc"></form:textarea></td></tr>
			<tr>
			<td>Enter Price</td>
			<td><form:input path="price"></form:input></td></tr>
			<tr><td>Enter Quantity</td>
			<td><form:input path="quantity"></form:input></td></tr>
			<tr><td>Select the Category</td>
			
			<td><form:select path="category.id"><!-- FK column value -->
			<!-- value is to set the value for the path category.id -->
			<from:option value="100">Laptops</from:option>
			<from:option value="101">Mobiles</from:option>
			<from:option value="102">Cameras</from:option>
			<from:option value="103">PowerBanks</from:option>
			<from:option value="104">Others</from:option>
            </form:select></td></tr>
			<tr>
			<td></td>
			<td><input type="submit" value="Add Product"></td>
			</tr>


		</table>

	</form:form>
	</div>
</body>
</html>

