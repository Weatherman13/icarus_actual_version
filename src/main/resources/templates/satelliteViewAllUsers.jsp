<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>


</head>
<body>
<h1>AllSatellite</h1>
<br>
<br>

<table class="table">
    <thead>
    <tr>
        <th scope="col">Name</th>
        <th scope="col">Get download filter</th>
    </tr>
    </thead>
    <tbody>
    <div th:each="sat: ${satellites}" >
        <tr>
            <td th:text="${sat.getName()}"></td>
            <td > <a th:href="@{/icarus3310/satellites-library/filter/{idOfSatellite} (idOfSatellite=${sat.getId()}) }">click</a> </td>

        </tr>
    </div>

    </tbody>
</table>
<br>

<br>






</body>
</html>