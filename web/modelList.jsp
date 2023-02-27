<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<option value="" >select a Model</option>
<c:forEach items="${ModelList}" var="model">
    <option value="${model.getModelCode()}" >
        <c:out value ="${model.getModelName()}"/>
    </option>

</c:forEach>