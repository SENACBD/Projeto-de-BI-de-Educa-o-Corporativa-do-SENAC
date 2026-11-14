
-- =====================================================
-- PROJETO EDUCAÇÃO CORPORATIVA - SENAC
-- CRIAÇÃO DO BANCO DE DADOS DE STAGING PARA POSSIBILITAR
-- IMPORTAÇÃO DOS CSVs PELO Table Data Import Wizard
-- MySQL 8.0
-- =====================================================


-- =====================================================
-- 0. CRIAÇÃO DO BANCO
-- =====================================================

CREATE DATABASE IF NOT EXISTS mmd_staging
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_0900_ai_ci;