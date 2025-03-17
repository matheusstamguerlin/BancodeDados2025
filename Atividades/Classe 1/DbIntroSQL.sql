-- Criar BD
CREATE DATABASE GREENHOUSE;

-- Definir BD como padrão/utilizavel
USE GREENHOUSE;

-- Criar tabela/entidade 
CREATE TABLE `PLANTS`(
	`PLANT_NAME` CHAR(30) NOT NULL, 
    `SENSOR_VALUE` FLOAT DEFAULT NULL, 
    `SENSOR_EVENT` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    -- PK = primary key
    PRIMARY KEY `PK_PLANTS` (`PLANT_NAME`)
);

-- Visualizar todas as ocorrências em PLANTS
-- Listar todos os registros de dados
SELECT * FROM `PLANTS`;

-- Visualizar colunas específicas
SELECT PLANT_NAME, SENSOR_VALUE, SENSOR_EVENT FROM PLANTS;

-- Inserir dados na tabela/entidade PLANTS
-- Para registros usar aspas simples
INSERT INTO PLANTS (PLANT_NAME, SENSOR_VALUE) VALUES ('Rosa', 0.2319);

-- Inserir múltiplos registro de uma vez
INSERT INTO PLANTS (PLANT_NAME, SENSOR_VALUE) VALUES ('Cactus', 0.2411), ('Girasol', 0.3112), ('Orquídea', 0.4102), ('Lírio', 0.5566);

-- Consulta aplicando filtros
SELECT * FROM PLANTS WHERE PLANT_NAME = 'Cactus';

-- Filtros compostos com operadores AND OR XOR etc
SELECT * FROM PLANTS WHERE PLANT_NAME <> 'Cannabis' AND SENSOR_VALUE < 0.5566 AND SENSOR_VALUE > 0.2411;
