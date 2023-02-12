<#import "./parts/common.ftlh" as c>

<@c.page>
Edit User
<form action="/user" method="post">
    <input type="text" value="${user.username}" name="username">
    <#list roles as role>
        <div>
            <input type="checkbox" id="${role}" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>
            <label for="${role}">${role}</label>
        </div>
    </#list>
    <input type="hidden" value="${user.id}" name="userId">
    <button type = "submit">Save</button>
</form>
</@c.page>