# BackendPharmobile

Backend de PharmaMobil para la práctica de consumo GET con Ktor. Este repositorio personal conserva como base el proyecto PharmaSoft proporcionado para el curso e incorpora una configuración local de Docker, datos de demostración con Flyway y una colección Postman.

## Ejecutar localmente

Consulta [README-Docker.md](README-Docker.md) para crear `.env`, compilar el JAR, levantar Oracle y la API, y probar `GET /api/v1/productos`.

La aplicación Android consume el backend desde `http://10.0.2.2:8080/api/v1/` en el emulador. Swagger UI está disponible en `http://localhost:8080/swagger-ui.html` mientras se usa la configuración Docker de desarrollo.

## Contenido propio de esta adaptación

- `Dockerfile` y `compose.yaml`: API y Oracle Free para desarrollo local.
- `src/main/resources/db/docker/`: datos de demostración de categorías, productos y clientes.
- `postman/`: consultas GET y solicitudes auxiliares de la sesión 7.
- `.env.example`: nombres de variables requeridas; las contraseñas reales de `.env` no se versionan.

El código base de PharmaSoft y su historial original se mantienen para conservar la procedencia del proyecto del curso.
