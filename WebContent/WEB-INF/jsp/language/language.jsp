<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:forEach items="${languages}" var="language">
    <tr>
        <td>Language Name: <c:out value="${language.languageName}"/></td>
    </tr>
</c:forEach>