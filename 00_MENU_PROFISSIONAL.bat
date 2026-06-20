@echo off
chcp 65001 >nul
:menu
cls
echo ======================================================
echo        FARMTECH AI REGRESSOR - MENU PROFISSIONAL
echo ======================================================
echo.
echo 1 - Executar projeto completo e abrir dashboard
echo 2 - Instalar dependencias
echo 3 - Gerar dados e banco SQLite
echo 4 - Treinar modelos de regressao
echo 5 - Gerar recomendacoes e relatorio
echo 6 - Abrir dashboard Streamlit
echo 7 - Validar entrega
echo 0 - Sair
echo.
set /p opcao=Escolha uma opcao: 
if "%opcao%"=="1" call 05_executar_tudo.bat
if "%opcao%"=="2" call 00_instalar_dependencias.bat
if "%opcao%"=="3" call 01_preparar_dados_banco.bat
if "%opcao%"=="4" call 02_treinar_modelos.bat
if "%opcao%"=="5" call 03_recomendacoes_relatorio.bat
if "%opcao%"=="6" call 04_abrir_dashboard.bat
if "%opcao%"=="7" python src\validar_entrega.py & pause
if "%opcao%"=="0" exit /b
goto menu
