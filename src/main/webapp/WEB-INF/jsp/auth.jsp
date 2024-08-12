<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<c:set var="usernamePlaceholder"><spring:message code="auth.sign_in.placeholder.username"/></c:set>
<c:set var="emailPlaceholder"><spring:message code="auth.sign_in.placeholder.email"/></c:set>
<c:set var="passwordPlaceholder"><spring:message code="auth.sign_in.placeholder.password"/></c:set>

<!DOCTYPE html>
<html lang="ru">
<head>

    <meta charset="UTF-8">
    <title>Пример страницы</title>
    <link rel="stylesheet" href="resources/css/welcome.css">
    <style>
        .language-buttons {
            position: absolute;
            top: 10px;
            right: 10px;
        }

        .language-buttons button {
            background-color: #007BFF;
            color: yellow;
            border: none;
            width: 40px;
            height: 40px;
            margin: 2px;
            border-radius: 50%;
            cursor: pointer;
            font-size: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .language-buttons button:hover {
            background-color: #0056b3;
        }

        .text-field {
            position: absolute;
            top: 20px;
            display: flex;
            justify-content: center;
            width: 90%;
            max-width: 600px;
            padding: 10px;
            font-size: 18px;
            font-family: 'Georgia', serif;
        }
    </style>
</head>
<body>

<div class="language-buttons">
    <a href="?lang=ru">Русский</a>
    <a href="?lang=en">English</a>
</div>

<div class="text-field">
    <c:out value="${Info}" escapeXml="true"/>
</div>

<div class="container right-panel-active">
    <div class="container__form container--signup">
        <form:form action="${pageContext.request.contextPath}/sign_up" class="form" method="post" modelAttribute="user"
                   id="form1">

            <h2 class="form__title"><spring:message code='auth.sign_up'/></h2>
            <form:input type="text" path="username" placeholder="${usernamePlaceholder}"  class="input"/>
            <form:errors path="username" cssClass="error" element="div"/>
            <form:input type="email" path="email" placeholder="${emailPlaceholder}" class="input"/>
            <form:errors path="email" cssClass="error" element="div"/>
            <form:password path="password" placeholder="${passwordPlaceholder}" class="input"/>
            <form:errors path="password" cssClass="error" element="div"/>
            <label>
                <input type="checkbox" value="creator" name="creator"/>creator
            </label>
            <button class="btn" type="submit"><spring:message code='auth.sign_up'/></button>
        </form:form>
    </div>

    <!-- Sign In -->
    <div class="container__form container--signin">
        <form:form action="${pageContext.request.contextPath}/sign_in" class="form" method="post"
                   modelAttribute="authInfo" id="form2">
            <h2 class="form__title"><spring:message code='auth.sign_in'/></h2>
            <form:input type="text" path="authUsername" placeholder="${emailPlaceholder}" class="input"/>
            <form:password path="authPassword" placeholder="${passwordPlaceholder}" class="input"/>
            <label><form:checkbox path="rememberMe"/><spring:message code='auth.remember'/></label>
            <button type="submit" class="btn"><spring:message code='auth.sign_in'/></button>
        </form:form>
    </div>

    <!-- Overlay -->
    <div class="container__overlay">
        <div class="overlay">
            <div class="overlay__panel overlay--left">
                <button class="btn" id="signIn"><spring:message code='auth.sign_in'/></button>
            </div>
            <div class="overlay__panel overlay--right">
                <button class="btn" id="signUp"><spring:message code='auth.sign_up'/></button>
            </div>
        </div>
    </div>
</div>
<script src="resources/js/js.js"></script>
</body>
</html>