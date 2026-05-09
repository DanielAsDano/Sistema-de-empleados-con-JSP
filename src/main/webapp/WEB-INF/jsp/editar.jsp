<%@ include file="common/header.jsp"%>
<%@ include file="common/navbar.jsp"%>

<div class="container">
    <div class="text-center" style="margin: 30px">
        <h3>Editar Empleado</h3>
    </div>

    <div>
        <form action="${urlEditar}" modelAttribute="empleadoForma" method="post">
            <input type="hidden" name="idEmpleado" value="${empleado.idEmpleado}"/>
            <div class="mb-3">
                <label for="nombreEmpleado" class="form-label">Nombre</label>
                <input type="text" class="form-control" id="nombre" name="nombreEmpleado" required="true" value="${empleado.nombreEmpleado}">
            </div>
            <div class="mb-3">
                <label for="departamento" class="form-label">Departamento</label>
                <input type="text" class="form-control" id="departamento" name="departamento" required="true" value="${empleado.departamento}">
            </div>
            <div class="mb-3">
                <label for="sueldo" class="form-label">Sueldo</label>
                <input type="number" step="any" class="form-control" id="sueldo" name="sueldo" required="true" value="${empleado.sueldo}">
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-warning btn-sm me-3">Modificar</button>
                <a href="${urlInicio}" class="btn btn-danger btn-sm">Regresar</a>
            </div>
        </form>
    </div>
</div>

<%@ include file="common/footer.jsp"%>