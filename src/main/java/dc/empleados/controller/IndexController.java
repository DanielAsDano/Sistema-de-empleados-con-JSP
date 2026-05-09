package dc.empleados.controller;

import dc.empleados.entity.Empleado;
import dc.empleados.service.EmpleadoService;
import jakarta.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class IndexController {
    private static final Logger logger = LoggerFactory.getLogger(IndexController.class);

    @Autowired
    EmpleadoService empleadoService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String iniciar(ModelMap model){
        List<Empleado> empleados = empleadoService.listarEmpleados();
        empleados.forEach((empleado) -> logger.info(empleado.toString()));
        model.put("empleados", empleados);
        return "index";
    }

    @RequestMapping(value = "/agregar", method = RequestMethod.GET)
    public String mostrarAgregar(){
        return "agregar";
    }

    @RequestMapping(value = "/agregar", method = RequestMethod.POST)
    public String agregar(@ModelAttribute("empleadoForma") Empleado empleado){
        empleadoService.guardarEmpleado(empleado);
        logger.info("Empleado a agregar: " + empleado);
        return "redirect:/";
    }

    @RequestMapping(value = "/editar", method = RequestMethod.GET)
    public String mostrarEditar(@RequestParam int idEmpleado, ModelMap modelo){
         Empleado empleado = empleadoService.buscarEmpleadoPorId(idEmpleado);
         logger.info("Empleado a editar: " +empleado);
         modelo.put("empleado", empleado);
         return "editar";
    }

    @RequestMapping(value = "/editar", method = RequestMethod.POST)
    public String editar(@ModelAttribute("empleadoForma") Empleado empleado){
        logger.info("empleado a guardar: " + empleado);
        empleadoService.guardarEmpleado(empleado);
        return "redirect:/";
    }

    @RequestMapping(value = "/eliminar", method = RequestMethod.GET)
    public String eliminar(@RequestParam int idEmpleado){
        Empleado empleado = empleadoService.buscarEmpleadoPorId(idEmpleado);
        empleadoService.eliminarEmpleado(empleado);
        return "redirect:/";
    }
}
