<%@ include file="common/header.jsp"%>
<%@ include file="common/navbar.jsp"%>

<div class="container my-5">
    <div class="form-card-container">
        <!-- Tarjeta del formulario estilo premium -->
        <div class="custom-card">
            <div class="dashboard-header">
                <div>
                    <h3 class="dashboard-title">Agregar Empleado</h3>
                    <p class="dashboard-subtitle">Complete la información para dar de alta al nuevo integrante</p>
                </div>
            </div>

            <form action="${urlAgregar}" modelAtribute="empleadoForma" method="post">
                <div class="mb-4">
                    <label for="nombre" class="form-label">Nombre Completo</label>
                    <input type="text" class="form-control" id="nombre" name="nombreEmpleado" required autocomplete="off" placeholder="Ej. Juan Pérez">
                </div>
                <div class="mb-4">
                    <label for="departamento" class="form-label">Departamento</label>
                    <input type="text" class="form-control" id="departamento" name="departamento" required autocomplete="off" placeholder="Ej. Recursos Humanos">
                </div>
                <div class="mb-4">
                    <label for="sueldo" class="form-label">Sueldo Mensual</label>
                    <div class="input-group">
                        <span class="input-group-text bg-white border-end-0 text-secondary" style="border: 1px solid var(--gris-claro); border-radius: 8px 0 0 8px;">$</span>
                        <input type="number" step="any" class="form-control ps-2" id="sueldo" name="sueldo" required placeholder="0.00" style="border-top-left-radius: 0; border-bottom-left-radius: 0;">
                    </div>
                </div>
                <div class="d-flex justify-content-end gap-3 mt-5">
                    <a href="${urlInicio}" class="btn btn-danger">Regresar</a>
                    <button type="submit" class="btn btn-warning">Agregar</button>
                </div>
            </form>
        </div>
    </div>
</div>

<%@ include file="common/footer.jsp"%>
