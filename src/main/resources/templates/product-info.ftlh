<!DOCTYPE html>
<html lang="">
<head>
    <title>MangaBookStore</title>
</head>
<body>
<h1>MangaBookStore
</h1><hr>
<h4>Detailed info about book</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b> Title of manga:</b>${product.title}<br>
<b> Type:</b>${product.type}<br>
<b> Year:</b>${product.year}<br>
<b> Status:</b>${product.status}<br>
<b> Chapters:</b>${product.chapters}<br>
<b> Description:</b>${product.description}<br>
<b> Price:</b>${product.price}<br>
<b> Author:</b>${product.author}<br>
<b> User:</b><a href="/user/${product.user.id}">${product.user.name}</a><br>
</body>
</html>