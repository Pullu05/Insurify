<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<option value="" >Select a Model</option>
<c:forEach items="${ModelList}" var="model">
    <option value="${model.getModelName()}" >
        <c:out value ="${model.getModelName()}"/>
    </option>
</c:forEach>