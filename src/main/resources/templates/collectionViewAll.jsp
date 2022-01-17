<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>


</head>
<body>
<h1>AllCollections</h1>
<br>
<br>

<table class="table">
    <thead>
    <tr>

        <th scope="col">Name</th>
        <th scope="col">Count of libraries</th>
        <th scope="col">Satellites</th>
        <th scope="col">Update or delete</th>
    </tr>
    </thead>
    <tbody>
    <div th:each="satC: ${collections}">
        <tr>
            <td th:text="${satC.getName()}"></td>
            <td th:text="${satC.getSatelliteList().size()}"></td>
            <td> <a th:href="@{/satellite_creator/collection/{id} (id=${satC.getId()})}">click</a> </td>
            <td> <a th:href="@{/satellite_creator/collection/{id}/edit  (id=${satC.getId()})}">click</a> </td>
        </tr>
    </div>

    </tbody>



</table>

<br>
<br>
<form th:method="GET" th:action="@{/satellite_creator/collection/add}">
    <button>Add new collection</button>
</form>
<br>

</body>
</html>
