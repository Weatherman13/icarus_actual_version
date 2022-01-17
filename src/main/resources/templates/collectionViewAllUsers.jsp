<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>


</head>

<body>

<h2> All collections </h2>

<table class="table">
    <thead>
    <tr>

        <th scope="col">Name</th>
        <th scope="col">Count of libraries</th>
        <th scope="col">Satellite library</th>
    </tr>
    </thead>
    <tbody>
    <div th:each="satC: ${collections}">
        <tr>
            <td th:text="${satC.getName()}"></td>
            <td th:text="${satC.getSatelliteList().size()}"></td>
            <td> <a th:href="@{/icarus3310/satellites-library/{id} (id=${satC.getId()})}">click</a> </td>
        </tr>
    </div>





</body>

</html>