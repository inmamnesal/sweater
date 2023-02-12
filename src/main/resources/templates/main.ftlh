<#import "./parts/common.ftlh" as c>
<#import "./parts/login.ftlh" as l>

<@c.page>
    <div>
        <@l.logout/>
        <span><a href="/user">User list</a></span>
    </div>
    <div>
        <form method="post">
            <input type="text" name="text" placeholder="Enter message">
            <input type="text" name="tag" placeholder="Tag">
            <button type="submit">Add</button>
        </form>
    </div>
    <div>Message list</div>
    <form method="get" action="main">
        <input type="text" name="filter" value="${filter}">
        <button type="submit">Найти</button>
    </form>
    <#list messages as messages>
    <div>
        <b>${messages.id}</b>
        <span>${messages.text}</span>
        <i>${messages.tag}</i>
        <strong>${messages.authorName}</strong>
    </div>
    <#else>
        no messages
    </#list>
</@c.page>