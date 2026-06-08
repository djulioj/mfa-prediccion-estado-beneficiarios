@echo off
REM =============================================================================
REM setup_env.bat — Configura el entorno virtual y el kernel de Jupyter
REM Proyecto: Predicción Estado Beneficiarios MFA
REM Uso: Doble clic o ejecutar desde CMD en la carpeta del proyecto
REM =============================================================================

SET PROJECT_NAME=mfa-ciencia-datos

echo.
echo ==================================================
echo   Setup: %PROJECT_NAME%
echo ==================================================
echo.

REM ─── 1. Verificar Python ─────────────────────────────────────────────
echo ^ Verificando Python...
python --version
IF ERRORLEVEL 1 (
    echo [ERROR] Python no encontrado. Instala Python 3.10+ desde python.org
    pause
    exit /b 1
)

REM ─── 2. Crear entorno virtual ────────────────────────────────────────
IF EXIST venv (
    echo ^ Entorno virtual ya existe. Omitiendo creacion.
) ELSE (
    echo ^ Creando entorno virtual...
    python -m venv venv
    echo   OK Entorno virtual creado.
)

REM ─── 3. Activar entorno virtual ──────────────────────────────────────
echo ^ Activando entorno virtual...
CALL venv\Scripts\activate.bat
echo   OK Entorno activado.

REM ─── 4. Actualizar pip ───────────────────────────────────────────────
echo ^ Actualizando pip...
pip install --upgrade pip --quiet
echo   OK pip actualizado.

REM ─── 5. Instalar dependencias ────────────────────────────────────────
echo ^ Instalando dependencias desde requirements.txt...
pip install -r requirements.txt --quiet
echo   OK Dependencias instaladas.

REM ─── 6. Registrar kernel de Jupyter ─────────────────────────────────
echo ^ Registrando kernel de Jupyter...
python -m ipykernel install --user --name "%PROJECT_NAME%" --display-name "MFA Ciencia de Datos"
echo   OK Kernel registrado.

REM ─── 7. Crear carpetas necesarias ────────────────────────────────────
echo ^ Verificando estructura de carpetas...
IF NOT EXIST data\raw mkdir data\raw
IF NOT EXIST data\processed mkdir data\processed
IF NOT EXIST notebooks mkdir notebooks
IF NOT EXIST src mkdir src
IF NOT EXIST reports\figuras mkdir reports\figuras
IF NOT EXIST models mkdir models
echo   OK Estructura lista.

REM ─── 8. Resumen ──────────────────────────────────────────────────────
echo.
echo ==================================================
echo   Setup completado exitosamente
echo ==================================================
echo.
echo   Para activar el entorno manualmente:
echo     venv\Scripts\activate
echo.
echo   Para abrir Jupyter:
echo     jupyter notebook notebooks\
echo.
echo   Kernel disponible: "MFA Ciencia de Datos"
echo   Kernel ^> Change Kernel ^> MFA Ciencia de Datos
echo ==================================================
echo.
pause
