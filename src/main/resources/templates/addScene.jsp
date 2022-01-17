<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>


</head>
<body>
<h1>Filter</h1>

<br>
<br>

<form th:method="Post" th:action="@{/newscene }" th:object="${scene}">

    <label for="downloadId">Enter name: </label>
    <input type="text" th:field="*{downloadId}" id="downloadId"/>


    <br><br>

    <label for="entityId">Enter max: </label>
    <input type="number" th:field="*{entityId}" id="entityId"/>




    <br><br>

    <label for="cloudCover">Enter min: </label>
    <input type="number" th:field="*{cloudCover}" id="cloudCover"/>

    <br><br>

    <label for="displayId">Enter min: </label>
    <input type="number" th:field="*{displayId}" id="displayId"/>

    <br><br>

    <label for="datasetId">Enter min: </label>
    <input type="number" th:field="*{datasetId}" id="datasetId"/>


    <input type="submit" value="Send">


</form>

<br>
<br>



</body>
</html>
