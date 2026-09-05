# Análise e Normalização da Base de Dados - Sistema de Gestão de Funcionários

## 1. Contexto e Identificação de Problemas
Na tabela original não normalizada, mantida numa única folha de cálculo, identificaram-se os seguintes problemas graves:
- **Dados não atómicos:** Campos que misturavam moradas completas ou informações múltiplas na mesma célula.
- **Grupos repetitivos:** As colunas repetidas para filhos e contactos telefónicos criavam redundância e limitavam o registo.
- **Anomalias:** O formato original gerava anomalias de inserção, atualização e remoção devido às dependências parciais, transitivas e multivaloradas[span_0](start_span)[span_0](end_span).

## 2. Processo de Normalização

### 1.ª Forma Normal (1FN)
- **Objetivo:** Eliminar os grupos repetitivos e garantir que todos os atributos são atómicos[span_1](start_span)[span_1](end_span).
- **Ação:** Retiraram-se as colunas repetidas de filhos e telefones, criando tabelas dedicadas (`filho_funcionario` e `telefone_funcionario`) ligadas por chave estrangeira.

### 2.ª Forma Normal (2FN)
- **Objetivo:** Eliminar as dependências parciais em relação à chave primária[span_2](start_span)[span_2](end_span).
- **Ação:** Assegurou-se que todos os atributos não chave dependem totalmente da chave primária inteira.

### 3.ª Forma Normal (3FN)
- **Objetivo:** Eliminar as dependências transitivas[span_3](start_span)[span_3](end_span).
- **Ação:** Isolaram-se os dados de cargos e funções em tabelas próprias (`cargo`, `funcao`), uma vez que os códigos se repetiam entre vários funcionários[span_4](start_span)[span_4](end_span).

### 4.ª Forma Normal (4FN)
- **Objetivo:** Eliminar as dependências multivaloradas independentes[span_5](start_span)[span_5](end_span).
- **Ação:** Validou-se que a estrutura relacional final impede redundâncias multivaloradas isoladas.

## 3. Tabelas Resultantes do Esquema
- `funcionario`
- `cargo`
- `funcao`
- `posto_trabalho`
- `localidade`
- `filho_funcionario`
- `telefone_funcionario`
-
