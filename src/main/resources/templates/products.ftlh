<!DOCTYPE html>
<html lang="">
<head>
    <title>MangaBookStore</title>
</head>
<body>
<h1>MangaBookStore</h1><hr>
<#if user.email??>
    <h3>User Name: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Logout">
    </form>
<#else>
    <a href="/login">Login</a></h1><hr>
</#if>

<form action="/" method="get">
    <b>Searching by name:</b> <input type="text" name ="title"><br>
    <input type="submit" value="Search"/>
</form>
<hr>
<h4>All items</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} | <a href="/product/${product.id}">For more detail..</a></p>
    </div>
    <#else>
    <h3>There is no products</h3>
</#list>
<#if user.email??>
    <hr>
    <h3> Create new product</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Title: <input type="text" name ="title"><br><br>
        Type: <input type="text" name ="type"><br><br>
        Year: <input type="number" name ="year"><br><br>
        Status: <input type="text" name ="status"><br><br>
        Chapters: <input type="number" name ="chapters"><br><br>
        Description: <input type="text" name ="description"><br><br>
        Price: <input type="text" name ="price"><br><br>
        Author: <input type="text" name ="author"><br><br>
        First photo: <input type="file" name ="file1"><br><br>
        Second photo: <input type="file" name ="file2"><br><br>
        Third photo: <input type="file" name ="file3"><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Add product">
    </form>
</#if>
</body>
</html>