package dc.empleados.service;


import dc.empleados.entity.Empleado;

import java.util.List;

public interface IEmpleadoService {
    public List<Empleado> listarEmpleados();
    public void guardarEmpleado(Empleado empleado);
    public Empleado buscarEmpleadoPorId(Integer id);
    public void eliminarEmpleado(Empleado empleado);
}
