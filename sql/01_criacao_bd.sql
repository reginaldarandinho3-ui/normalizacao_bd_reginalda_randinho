-- Criação da Base de Dados
CREATE DATABASE IF NOT EXISTS normalizacao_funcionarios;
USE normalizacao_funcionarios;

-- 1. Tabela de Cargos
CREATE TABLE cargo (
    id_cargo INT AUTO_INCREMENT PRIMARY KEY,
    nome_cargo VARCHAR(100) NOT NULL,
    codigo_cargo VARCHAR(20) UNIQUE NOT NULL
);

-- 2. Tabela de Funções
CREATE TABLE funcao (
    id_funcao INT AUTO_INCREMENT PRIMARY KEY,
    nome_funcao VARCHAR(100) NOT NULL,
    codigo_funcao VARCHAR(20) UNIQUE NOT NULL
);

-- 3. Tabela de Postos de Trabalho
CREATE TABLE posto_trabalho (
    id_posto INT AUTO_INCREMENT PRIMARY KEY,
    descricao_posto VARCHAR(100) NOT NULL
);

-- 4. Tabela de Localidades (Moradas)
CREATE TABLE localidade (
    id_localidade INT AUTO_INCREMENT PRIMARY KEY,
    rua_avenida VARCHAR(150),
    bairro VARCHAR(100),
    cidade VARCHAR(100),
    provincia VARCHAR(100),
    pais VARCHAR(100)
);

-- 5. Tabela Principal de Funcionários
CREATE TABLE funcionario (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    data_nascimento DATE,
    nuit VARCHAR(20) UNIQUE,
    bi VARCHAR(30) UNIQUE,
    email VARCHAR(150),
    data_admissao DATE,
    id_cargo INT,
    id_funcao INT,
    id_posto INT,
    id_localidade INT,
    FOREIGN KEY (id_cargo) REFERENCES cargo(id_cargo),
    FOREIGN KEY (id_funcao) REFERENCES funcao(id_funcao),
    FOREIGN KEY (id_posto) REFERENCES posto_trabalho(id_posto),
    FOREIGN KEY (id_localidade) REFERENCES localidade(id_localidade)
);

-- 6. Tabela de Filhos dos Funcionários
CREATE TABLE filho_funcionario (
    id_filho INT AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT,
    nome_filho VARCHAR(150) NOT NULL,
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario) ON DELETE CASCADE
);

-- 7. Tabela de Contactos Telefónicos dos Funcionários
CREATE TABLE telefone_funcionario (
    id_telefone INT AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT,
    numero_telefone VARCHAR(30) NOT NULL,
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario) ON DELETE CASCADE
);
