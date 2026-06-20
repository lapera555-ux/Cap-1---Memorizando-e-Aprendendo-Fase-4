@echo off
chcp 65001 >nul
echo Gerando recomendacoes e relatorio HTML...
python src\recomendacoes.py
python src\gerar_relatorio_html.py
echo [OK] Recomendacoes e relatorio gerados.
pause
