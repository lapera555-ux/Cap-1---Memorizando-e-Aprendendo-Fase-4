@echo off
chcp 65001 >nul
echo Gerando base simulada e banco SQLite...
python src\gerar_dados.py
python src\criar_banco.py
python src\popular_banco.py
echo [OK] Dados e banco prontos.
pause
