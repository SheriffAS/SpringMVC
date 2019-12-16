<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<title>Student registration form</title>
</head>
<body>

    <form:form action="processForm" modelAttribute="student">

    First name: <form:input path="firstName"/>

    <br><br>

    Last name: <form:input path="lastName"/>

    <br><br>

        Country:

        <form:select path="country">

            <form:options items="${student.countryOptions}"/>


        </form:select>
        <br><br>

        Favourite Language:
        <ul>
            <li>Java <form:radiobutton path="favouriteLanguage" value="Java" /></li>
            <li>C# <form:radiobutton path="favouriteLanguage" value="C#" /></li>
            <li> PHP <form:radiobutton path="favouriteLanguage" value="PHP" /></li>
            <li>Ruby <form:radiobutton path="favouriteLanguage" value="Ruby" /></li>
            <li>Javascript <form:radiobutton path="favouriteLanguage" value="Javascript" /></li>
        </ul>


        <br><br>

        Operating system:
        <ul>
            <li>Linux <form:checkbox path="operatingSystems" value="Linux"/></li>
            <li>Mac OS <form:checkbox path="operatingSystems" value="Mac OS"/></li>
            <li>MS Windows <form:checkbox path="operatingSystems" value="MS Windows"/></li>
            <li>Ubuntu <form:checkbox path="operatingSystems" value="Ubuntu"/></li>
        </ul>


        <br><br>

    <input type="submit" value="Submit"/>

    </form:form>

</body>
</html>