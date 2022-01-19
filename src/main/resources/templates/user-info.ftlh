<!DOCTYPE html>
<html>
<head>
    <title>MangaBookStore</title>
</head>
<body>
<h1>MangaBookStore</h1><hr>
<h3>Detailed info about user:</h3>
<b>Phone number: </b> ${user.phoneNumber}<br>
<b>Email: </b> ${user.email}<br>
<h4>User info ${user.name}</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} | <a href="/product/${product.id}">For more detail..</a></p>
    </div>
<#else>
    <h3>There is no products</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>