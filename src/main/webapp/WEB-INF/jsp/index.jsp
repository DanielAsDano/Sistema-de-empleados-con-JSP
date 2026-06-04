<%@ include file="common/header.jsp"%>
<%@ include file="common/navbar.jsp"%>

<div class="container my-4">
    <!-- Contenedor principal estilo Dashboard -->
    <div class="custom-card">
        <div class="dashboard-header">
            <div>
                <h2 class="dashboard-title">Sistema de Empleados</h2>
                <p class="dashboard-subtitle">Listado oficial de personal registrado en la organización</p>
            </div>
            <div>
                <!-- Enlace rápido para agregar empleado con estilos unificados -->
                <a href="${urlAgregar}" class="btn btn-warning btn-sm">Nuevo Empleado</a>
            </div>
        </div>

        <!-- Tabla de empleados con estilos corporativos modernizados -->
        <div class="custom-table-container">
            <table class="table table-hover align-middle custom-table">
                <thead>
                    <tr>
                        <th scope="col" style="width: 10%;">ID</th>
                        <th scope="col" style="width: 35%;">Nombre Completo</th>
                        <th scope="col" style="width: 25%;">Departamento</th>
                        <th scope="col" style="width: 15%;">Sueldo Mensual</th>
                        <th scope="col" style="width: 15%;" class="text-center">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="empleado" items="${empleados}">
                        <tr>
                            <th scope="row" class="fw-semibold text-secondary">${empleado.idEmpleado}</th>
                            <td class="fw-semibold text-dark">${empleado.nombreEmpleado}</td>
                            <td>${empleado.departamento}</td>
                            <td class="font-monospace">$<fmt:formatNumber value="${empleado.sueldo}" minFractionDigits="2" maxFractionDigits="2"/></td>
                            <td class="text-center">
                                <c:set var="urlEditar">
                                    <c:url value="${application.contextPath}/editar">
                                        <c:param name="idEmpleado" value="${empleado.idEmpleado}"/>
                                    </c:url>
                                </c:set>
                                <a href="${urlEditar}" class="btn btn-warning btn-sm me-2">Editar</a>

                                <c:set var="urlEliminar">
                                    <c:url value="${application.contextPath}/eliminar">
                                        <c:param name="idEmpleado" value="${empleado.idEmpleado}"/>
                                    </c:url>
                                </c:set>
                                <a href="${urlEliminar}" class="btn btn-danger btn-sm" onclick="return confirm('¿Está seguro de eliminar al empleado: ${empleado.nombreEmpleado}?');">Eliminar</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%@ include file="common/footer.jsp"%>
