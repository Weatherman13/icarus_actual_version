<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">

<body>

<h2 th:text="${editSatellite.name}"> Edited satellite </h2>

<br>

<form th:method="PATCH" th:action="@{/satellite_chek/{id}(id=${editSatellite.getId()})}" th:object="${editSatellite}">
    <label for="name">Enter name: </label>
    <input type="text" th:field="*{name}" id="name"/>
    <br>
    <input type="submit" value="Edit">

</form>


</body>

</html>