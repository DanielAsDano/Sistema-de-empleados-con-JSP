<c:set var="urlInicio">
    <c:url value="${application.contextPath}/" />
</c:set>

<c:set var="urlAgregar">
    <c:url value="${application.contextPath}/agregar" />
</c:set>

<nav class="navbar navbar-expand-lg custom-navbar" data-bs-theme="dark">
    <div class="container">
        <a class="navbar-brand" href="${urlInicio}">Sistema de empleados</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto"> <!-- Alinear los links a la derecha para un aspecto más limpio -->
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/empleados">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${urlAgregar}">Agregar Empleado</a>
                </li>
            </ul>
        </div>
    </div>
</nav>