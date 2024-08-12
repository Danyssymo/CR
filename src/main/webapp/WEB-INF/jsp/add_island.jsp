<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Island Information Form</title>
    <link rel="stylesheet" type="text/css" href="resources/css/add_island.css">
</head>
<body>
<div class="text-style-add">
    <c:out value="${AddInfo}" escapeXml="true"/>
</div>>
<div class="form-container">
    <h2>Island Information Form</h2>
    <form:form action="${pageContext.request.contextPath}/add_island" modelAttribute="island" method="post">

        <label for="islandName">Enter Island Name:</label>
        <form:input path="islandName" id="islandName" required="true"/>

        <label for="islandArea">Enter Island Area (sq km):</label>
        <form:input path="area" id="islandArea" type="number" required="true"/>

        <label for="islandPrice">Enter Island Price ($):</label>
        <form:input path="price" id="islandPrice" type="number" required="true"/>

        <label for="pricePerDay">Enter Price Per Day ($):</label>
        <form:input path="pricePerDay" id="pricePerDay" type="number" required="true"/>

        <label for="country">Select Country:</label>
        <form:select path="country.id" id="country" required="true">
            <form:options items="${countries}" itemValue="id" itemLabel="countryName" />
        </form:select>

        <button type="submit">Submit</button>
    </form:form>
</div>
</body>
</html>

