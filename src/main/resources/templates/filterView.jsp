
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

<form th:method="Post" th:action="@{/icarus3310/satellites-library/filter }" th:object="${filter}">

    <label for="name">Enter name: </label>
    <input type="text" th:field="*{datasetName}" id="name"/>


    <br><br>

    <label for="max">Enter max: </label>
    <input type="number" th:field="*{sceneFilter.cloudCoverFilter.max}" id="max"/>
    <div class="alert alert-warning" th:if="${#fields.hasErrors('*')}" th:errors="*{max}"></div>



    <br><br>

    <label for="min">Enter min: </label>
    <input type="number" th:field="*{sceneFilter.cloudCoverFilter.min}" id="min"/>

    <br><br>

    <label for="end">Enter end: </label>
    <input type="date" th:field="*{sceneFilter.acquisitionFilter.end}" id="end"/>
    <br><br>
    <label for="start">Enter start: </label>
    <input type="date" th:field="*{sceneFilter.acquisitionFilter.start}" id="start"/>

    <br><br>

    <label for="lowerLeft.x">Enter x: </label>
    <input type="text" th:field="*{sceneFilter.spatialFilter.lowerLeft.x}" id="lowerLeft.x"/>
    <br><br>
    <label for="lowerLeft.y">Enter y: </label>
    <input type="text" th:field="*{sceneFilter.spatialFilter.lowerLeft.y}" id="lowerLeft.y"/>
    <br><br>
    <label for="upperRight.x">Enter x: </label>
    <input type="text" th:field="*{sceneFilter.spatialFilter.upperRight.x}" id="upperRight.x"/>
    <br><br>
    <label for="upperRight.y">Enter y: </label>
    <input type="text" th:field="*{sceneFilter.spatialFilter.upperRight.y}" id="upperRight.y"/>
    <br><br>



    <br>
    <br>
    <input type="submit" value="Send">


</form>

<br>
<br>



</body>
</html>


