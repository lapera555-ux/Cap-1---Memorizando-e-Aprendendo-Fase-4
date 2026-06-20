# FarmTech Assistente Agrícola Inteligente

Projeto da Fase 4 - Previsão Inteligente na Agricultura.

Aluno: Pedro Vinicius Gomes dos Santos  
Grupo 73  
Curso: Inteligência Artificial

## O que o projeto faz

Este projeto cria um protótipo de Assistente Agrícola Inteligente para a FarmTech Solutions. Ele simula dados de sensores IoT/Wokwi, armazena as leituras em banco SQLite, treina modelos de regressão com Scikit-Learn e apresenta previsões em um dashboard Streamlit.

O sistema prevê:

1. Umidade futura do solo.
2. pH futuro do solo.
3. Produtividade estimada em sc/ha.
4. Irrigação recomendada em mm.
5. Fertilização recomendada em kg/ha.

Também gera recomendações automáticas de manejo para o gestor agrícola.

## Como rodar no Windows

1. Extraia o ZIP.
2. Abra a pasta do projeto.
3. Clique em `INICIAR_PROJETO.bat`.
4. Escolha a opção `1 - Rodar projeto completo`.

O sistema vai gerar a base, criar o banco, treinar os modelos, gerar recomendações, criar relatório HTML e abrir o dashboard.

## Onde está cada requisito

| Requisito | Onde está |
|---|---|
| Banco de dados | `database/farmtech_ai.db` |
| IoT/Wokwi | `esp32/sensor_virtual_wokwi.ino` e `wokwi/diagram.json` |
| Python | pasta `src/` |
| Scikit-Learn | `src/treinar_modelos.py` |
| Regressão | modelos `LinearRegression`, `Ridge`, `RandomForestRegressor` |
| Métricas | `outputs/metricas_modelos.csv` |
| Recomendações | `src/recomendacoes.py` e aba Manejo |
| Dashboard | `src/dashboard.py` |
| PDF | `docs/relatorio_farmtech_ai_regressor.pdf` |

## Estrutura

```txt
data/        base simulada dos sensores
database/    banco SQLite
src/         scripts Python
models/      modelos treinados
outputs/     métricas, previsões e recomendações
reports/     relatório HTML
docs/        PDF, roteiro e documentação
esp32/       código do sensor virtual
wokwi/       diagrama do Wokwi
```

## Observação técnica

Os dados são simulados para a POC, mas foram construídos com faixas plausíveis para soja e milho safrinha: produtividade, umidade, pH, chuva, nutrientes e manejo seguem lógica agronômica simplificada.
