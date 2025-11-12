@echo off
echo ========================================
echo   POWERSOFT - Sistema Contable
echo ========================================
echo.
echo Verificando Node.js...
node --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Node.js no esta instalado
    echo Por favor instala Node.js desde: https://nodejs.org/
    pause
    exit
)

echo Verificando dependencias...
if not exist "node_modules" (
    echo Instalando dependencias por primera vez...
    call npm install
)

echo.
echo Iniciando servidor API en puerto 3000...
echo.
echo IMPORTANTE: NO CIERRES ESTA VENTANA
echo El sistema esta corriendo en: http://localhost:3000
echo.
echo Para usar el sistema:
echo 1. Abre tu navegador
echo 2. Abre el archivo: login.html
echo.

start http://localhost:3000
start login.html

json-server --watch db.json --port 3000

pause