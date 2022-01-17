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
        <th scope="col">Id</th>
        <th scope="col">Cloud cover</th>
        <th scope="col">Download ref</th>
    </tr>
    </thead>
    <tbody>
    <div th:each="scene : ${scenes}" >
        <tr>
            <td th:text="${scene.getEntityId()}"></td>
            <td th:text="${scene.getCloudCover()}"> </td>
            <td> <a th:href="@{https://earthexplorer.usgs.gov/download/{datasetId}/{entityId}/
            (datasetId=${scene.getDatasetId()}, entityId=${scene.getEntityId()} ) }"> click </a> </td>


        </tr>
    </div>

    </tbody>
</table>
<br>








</body>
</html>