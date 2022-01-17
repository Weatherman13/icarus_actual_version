<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">

<body>

<h2>Satellite info</h2>

<br>

<form th:method="post" th:action="@{/satellite_chek/saveSatellite}" th:object="${satellite}">

    <div>
        <label for="name">Enter name: </label>
        <input type="text" placeholder="Username" th:field="*{name}" id="name"/>

    </div>
    <br>

    <input type="submit" value="Create">

</form>


</body>

</html>