<!DOCTYPE html>
<html>
<head>
    <title>MangaBookStore</title>
</head>
<body>
<h1>MangaBookStore</h1><hr>
<h4>Autorization</h4>
<form action="/login" method="post">
    Email: <input type="email" name="username"><br><br>
    Password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Enter"/>
</form>
<a href="/registration">Register</a>
</body>
</html>