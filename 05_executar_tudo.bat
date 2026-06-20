@echo off
chcp 65001 >nul
title FarmTech AI Regressor - Execucao completa
echo ======================================================
echo     EXECUCAO COMPLETA - FARMTECH AI REGRESSOR
echo ======================================================
echo.
python --version
if errorlevel 1 (
  echo ERRO: Python nao encontrado. Instale Python 3.10+ e marque Add to PATH.
  pause
  exit /b 1
)
echo.
echo [1/6] Instalando dependencias...
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
if errorlevel 1 goto erro

echo [2/6] Gerando dados simulados...
python src\gerar_dados.py
if errorlevel 1 goto erro

echo [3/6] Criando e populando banco SQLite...
python src\criar_banco.py
python src\popular_banco.py
if errorlevel 1 goto erro

echo [4/6] Treinando modelos de regressao...
python src\treinar_modelos.py
if errorlevel 1 goto erro

echo [5/6] Gerando recomendacoes e relatorio...
python src\recomendacoes.py
python src\gerar_relatorio_html.py
if errorlevel 1 goto erro

echo [6/6] Validando entrega...
python src\validar_entrega.py
if errorlevel 1 goto erro

echo.
echo [OK] Projeto executado com sucesso.
echo Abrindo dashboard...
streamlit run src\dashboard.py
pause
exit /b 0
:erro
echo.
echo ERRO: a execucao foi interrompida. Veja a mensagem acima.
pause
exit /b 1
