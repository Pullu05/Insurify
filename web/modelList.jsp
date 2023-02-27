<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<option value="0" >select a Model</option>
<c:forEach items="${ModelList}" var="model">
    <option value='<c:out value ="${model.getModelCode()}"/>' <c:if test = "${model.getModelCode() == User.getModelCode() }"> selected </c:if>>
        <c:out value ="${model.getModelName()}"/>
    </option>

</c:forEach>