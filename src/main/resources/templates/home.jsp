<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">

<body>

<h2>Hello dear username)</h2>

<form th:action="@{/logout}" method="post">
    <input type="submit" value="Sign Out"/>
</form>

<br>
<br>

<form th:method="POST" th:action="@{/test_json/main}">
    <button>Test</button>
</form>


</body>

</html>