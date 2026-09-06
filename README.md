# normalizacao_bd_reginalda_randinho# 

Sistema de Gestão de Funcionários — Normalização de Base de Dados

* **Estudante:** Reginalda Hortencio Francisco Randinho
* **Universidade:** Universidade Licungo (Faculdade de Ciências e Tecnologias)
* **Curso:** Licenciatura em Informática

* **Trabalho de base de dados**
* **Docente:** Daniel Gimo

## 📌 Contexto do Projeto
O projeto consiste na análise de uma folha de cálculo não normalizada com dados de funcionários duma empresa moçambicana. O objetivo é identificar anomalias (redundâncias e problemas de inserção/atualização/remoção) e aplicar progressivamente o processo de normalização (até à 4FN).

## 🗂️ Estrutura do Repositório
O repositório está organizado com os seguintes artefactos:
* **`/diagramas/mer.png`** — Imagem do Modelo Entidade-Relacionamento (MER) final.
* **`/documentos/`** — Análise detalhada e justificação de cada forma normal aplicada (da 1FN à 4FN).
* **Ficheiros SQL (na raiz):**
  * `01_criacao_bd.sql` — Instruções DDL para a criação das tabelas do esquema normalizado.
  * `02_insercao_dados.sql` — Scripts de inserção de dados de exemplo.
  * `03_consultas.sql` — Queries de exemplo (com `JOIN`) para reconstituição da informação.
