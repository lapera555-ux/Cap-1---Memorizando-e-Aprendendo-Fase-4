@echo off
chcp 65001 >nul
echo Abrindo dashboard Streamlit...
streamlit run src\dashboard.py
pause
