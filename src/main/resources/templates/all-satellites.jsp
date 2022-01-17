<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>


</head>
<body>
<h1>AllSatellites</h1>
<br>
<br>


<br>
<br>


<br>



<input type="button" value="addSatellites"
       onclick="window.location.href='addSatellite'">
<br>

<div th:each="sat : ${allSatellites}">

    <form th:method="GET" th:action="@{/satellite_chek/{id}/edit (id=${sat.getId()})}">
        <a th:text="${sat.getName()}"> &nbsp; &nbsp;</a>
        <button>edit</button>
    </form>
</div>


</body>
</html>



