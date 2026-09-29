# Backend local para la práctica Ktor GET

Este entorno levanta Oracle Free y PharmaBackend. El archivo `.env` contiene credenciales **solo de desarrollo local** y no se versiona. `.env.example` incluye valores de demostración para el primer arranque; cámbialos si usarás el servicio fuera de una prueba local.

Desde esta carpeta:

```powershell
Copy-Item .env.example .env
# Opcional: cambia las contraseñas de demostración en .env.
mvn -DskipTests package
docker compose up -d --build
docker compose ps
```

La primera descarga e inicialización de Oracle puede tardar varios minutos. Cuando ambos servicios estén activos, probar:

```powershell
Invoke-RestMethod http://localhost:8080/api/health
Invoke-RestMethod 'http://localhost:8080/api/v1/productos?pagina=0&tamanio=20'
```

Swagger UI local: `http://localhost:8080/swagger-ui.html`. Docker habilita Swagger explícitamente para esta práctica; el perfil `prod` del backend lo mantiene deshabilitado por defecto fuera de este Compose local. La colección Postman de la sesión 7 está en `postman/PharmaMobil-GET-Sesion07.postman_collection.json`: incluye el GET evaluado, consultas auxiliares y dos POST opcionales para preparar datos manualmente.

El GET de productos devuelve un objeto paginado; la lista está en `contenido`. Las migraciones crean el esquema y datos de demostración en un volumen persistente. Al reiniciar los contenedores se conservan los datos. **No uses `docker compose down -v`** si deseas conservarlos.

La migración V3 añade otra categoría, un producto y dos clientes ficticios. **Ventas y detalles de venta no se precargan**: deben generarse al probar esas funciones. Flyway aplica V3 una sola vez, incluso si se reinician los contenedores.

En el emulador Android, `10.0.2.2` apunta al equipo anfitrión; por eso la app usa `http://10.0.2.2:8080/api/v1/`. En un teléfono físico habría que cambiar esa URL por la IP local del equipo y configurar la seguridad de red para desarrollo. Para producción se debe usar HTTPS y credenciales distintas.
