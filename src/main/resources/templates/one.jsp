<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">

<body>

<h2>Hello dear username)</h2>
<br>
<p>Home: <a th:href="@{/home}"> click </a></p>

<form th:method="GET" th:action="@{/login}">
    <button>Login in</button>
</form>

</body>

</html>