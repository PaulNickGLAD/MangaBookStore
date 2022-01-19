<!DOCTYPE html>
<html lang="">
<head>
    <title>MangaBookStore</title>
</head>
<body>
<h1>MangaBookStore</h1><hr>
<h4>Admin panel</h4>
<table border="1">
    <tr>
        <th>Email</th>
        <th>Phone number</th>
        <th>IsActive</th>
        <th>Roles</th>
        <th>Ban</th>
        <th>Edit</th>
        <th>Detailed info</th>
    </tr>
    <#list users as user>
        <tr>
            <th>${user.email}</th>
            <th>${user.phoneNumber}</th>
            <th><#if user.active>true<#else>false</#if></th>
            <th><#list user.roles as role>${role}<#sep>, </#list></th>
            <th>
                <form action="/admin/user/ban/${user.id}"} method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Ban">
                </form></th>
            <th><a href="/admin/user/edit/${user.id}">Editing</a></th>
            <th><a href="/user/${user.id}">Detailed info</a></th>
        </tr>
        <#else>
        <h3> There is no users</h3>
    </#list>
</table>

</body>
</html>