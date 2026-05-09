👥 Sistema de Empleados
Aplicación web CRUD desarrollada con Spring Boot y JSP para la gestión de empleados, conectada a una base de datos MySQL.

🛠️ Tecnologías utilizadas
CapaTecnologíaBackendJava 17+, Spring Boot, Spring MVC, Spring Data JPAORMHibernate / JPABase de datosMySQLVistasJSP + JSTLFrontendBootstrap 5UtilidadesLombok

📁 Estructura del proyecto
src/
├── main/
│   ├── java/dc/empleados/
│   │   ├── EmpleadosApplication.java       # Clase principal
│   │   ├── controller/
│   │   │   └── IndexController.java        # Controlador de rutas
│   │   ├── entity/
│   │   │   └── Empleado.java               # Entidad JPA
│   │   ├── repository/
│   │   │   └── EmpleadoRepository.java     # Repositorio JPA
│   │   └── service/
│   │       ├── IEmpleadoService.java        # Interfaz del servicio
│   │       └── EmpleadoService.java         # Implementación del servicio
│   ├── resources/
│   │   └── application.properties          # ⚠️ No incluido en el repo (ver configuración)
│   └── webapp/WEB-INF/jsp/
│       ├── index.jsp                        # Lista de empleados
│       ├── agregar.jsp                      # Formulario de alta
│       ├── editar.jsp                       # Formulario de edición
│       └── common/
│           ├── header.jsp
│           ├── navbar.jsp
│           └── footer.jsp

⚙️ Configuración
El archivo application.properties no está incluido en el repositorio por razones de seguridad. Debes crearlo manualmente en src/main/resources/ con el siguiente contenido:
propertiesspring.application.name=empleados

# Base de datos
spring.datasource.url=jdbc:mysql://localhost:3306/empleados_db?createDatabaseIfNotExist=true
spring.datasource.username=TU_USUARIO
spring.datasource.password=TU_PASSWORD
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver

# JPA / Hibernate
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

# Configuración JSP
spring.mvc.view.prefix=/WEB-INF/jsp/
spring.mvc.view.suffix=.jsp

# Context path
server.servlet.context-path=/empleados

🚀 Cómo ejecutar el proyecto
Prerrequisitos

Java 17 o superior
Maven 3.8+
MySQL 8.0+

Pasos

Clona el repositorio:

bash   git clone https://github.com/tu-usuario/empleados.git
cd empleados

Crea la base de datos (opcional, se crea automáticamente con createDatabaseIfNotExist=true):

sql   CREATE DATABASE empleados_db;

Crea el archivo application.properties con tus credenciales (ver sección anterior).
Compila y ejecuta:

bash   mvn spring-boot:run

Accede en el navegador:

http://localhost:8080/empleados/

📋 Funcionalidades

✅ Listar todos los empleados
✅ Agregar un nuevo empleado
✅ Editar datos de un empleado existente
✅ Eliminar un empleado


🗄️ Modelo de datos
CampoTipoDescripciónidEmpleadoInteger (PK)Identificador único, autoincrementalnombreEmpleadoStringNombre completodepartamentoStringÁrea o departamentosueldoDoubleSalario del empleado

⚠️ Notas importantes

El archivo application.properties está excluido del repositorio mediante .gitignore para proteger las credenciales de la base de datos.
La tabla se genera automáticamente gracias a spring.jpa.hibernate.ddl-auto=update.