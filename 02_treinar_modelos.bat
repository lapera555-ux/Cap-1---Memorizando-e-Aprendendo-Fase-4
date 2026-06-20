@echo off
chcp 65001 >nul
echo Treinando modelos de regressao...
python src\treinar_modelos.py
echo [OK] Modelos treinados.
pause
