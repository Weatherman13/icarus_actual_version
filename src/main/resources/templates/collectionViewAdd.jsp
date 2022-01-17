<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>


</head>
<body>
<h1>New collection</h1>

<form th:method="POST" th:action="@{/satellite_creator/collection}" th:object="${newCollection}">

    <label for="name">Enter name: </label>
    <input type="text" th:field="*{name}" id="name"/>
    <br>
    <input type="submit" value="Add">

</form>



</body>
</html>
