<%@ include file="common/header.jsp"%>
<%@ include file="common/navbar.jsp"%>



<div class="container">
    <div class="text-center" style="margin: 30px">
        <h2>Sistema de empleados</h2>

        <div class="container">
            <table class="table table-striped table-hover table-bordered align-middle">
                <thead class="table-dark text-center">
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Departamento</th>
                    <th scope="col">Sueldo</th>
                    <th scope="col"> </th>

                </tr>
                </thead>
                <tbody>
                <c:forEach var="empleado" items="${empleados}">
                    <tr>
                        <th scope="row">${empleado.idEmpleado}</th>
                        <td>${empleado.nombreEmpleado}</td>
                        <td>${empleado.departamento}</td>
                        <td>$<fmt:formatNumber value="${empleado.sueldo}" minFractionDigits="2" maxFractionDigits="2"/></td>
                        <td class="text-center">
                            <c:set var="urlEditar">
                                <c:url value="${application.contextPath}/editar">
                                    <c:param name="idEmpleado" value="${empleado.idEmpleado}"/>
                                </c:url>
                            </c:set>
                            <a href="${urlEditar}" class="btn btn-warning btn-sm me-3">Editar</a>

                            <c:set var="urlEliminar">
                                <c:url value="${application.contextPath}/eliminar">
                                    <c:param name="idEmpleado" value="${empleado.idEmpleado}"/>
                                </c:url>
                            </c:set>
                            <a href="${urlEliminar}" class="btn btn-danger btn-sm">Eliminar</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

    </div>
</div>

<%@ include file="common/footer.jsp"%>
