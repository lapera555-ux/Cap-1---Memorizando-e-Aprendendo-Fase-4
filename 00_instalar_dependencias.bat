@echo off
chcp 65001 >nul
echo Instalando dependencias do projeto...
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
echo.
echo [OK] Dependencias instaladas.
pause
