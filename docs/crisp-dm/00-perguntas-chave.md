# 🎯 PROJETO BUSINESS INTELLIGENCE — PERGUNTAS-CHAVE E CONTEXTO (100%)

## Laboratório de Inovação IV — Prof. Edilberto Silva — 2026

---

## 👥 COMPOSIÇÃO DA EQUIPE

|ID|Nome Completo|Papel Primário|E-mail Corporativo|
|---|---|---|---|
|1|Jurandir|Mestre|jurandir@edu.df.senac.br|
|2|Rafael|Mestre|rafael@edu.df.senac.br|

**Todos os integrantes devem compreender:**
- ✅ Arquitetura completa do projeto BI
- ✅ Fluxo de dados (ETL/ELT)
- ✅ Dashboards e KPIs principais
- ✅ Procedimentos de manutenção

---

## 📊 IDENTIFICAÇÃO DO PROJETO

**Nome do Projeto:**  
"BI para Gestão Estratégica de Competências e Desenvolvimento dos 500 Colaboradores"

**Descrição Executiva:**  
Desenvolver uma solução de Business Intelligence para acompanhar a capacitação dos 500 colaboradores do SENAC, conectando necessidades de competências, oferta de cursos, participação, aprendizagem, aplicação do conhecimento e impacto organizacional.

**Stakeholder Patrocinador:**  
Paola Oliveira — Gestora da área de Ensino.

**Período de Execução:**  
De agosto até dezembro de 2026 — Duração: 16 semanas

**Área de Negócio:**  
Ensino / Educação Corporativa / Desenvolvimento de Pessoas

**População analisada:**  
Aproximadamente 500 colaboradores.

---

## 🎯 PERGUNTA-CHAVE (NORTEADORA) — 25%

### Pergunta Principal

**Qual é a pergunta estratégica que este BI vai responder?**

> **"Estamos desenvolvendo as pessoas certas, nas competências certas, no momento certo, e isso está produzindo resultados para o órgão?"**

**Critérios da Pergunta:**

- ✅ **Específica:** Foca no desenvolvimento de competências dos colaboradores.
- ✅ **Mensurável:** Pode ser acompanhada por indicadores de cobertura, participação, conclusão, aprendizagem, aplicabilidade e impacto.
- ✅ **Estratégica:** Relaciona a capacitação às competências necessárias ao órgão.
- ✅ **Viável:** Pode ser respondida a partir dos dados de colaboradores, cursos, participação, avaliações, aprendizagem e aplicação.
- ✅ **Impactante:** Apoia decisões sobre prioridades de capacitação, públicos atendidos e gaps de competências.

---

### Sub-Perguntas (Decomposição)

**Pergunta 1 (Operacional — Diária):**  
**"Quem está participando, concluindo ou abandonando as ações de capacitação?"**

**Pergunta 2 (Tática — Semanal):**  
**"Quais áreas, perfis e competências apresentam maior ou menor cobertura de capacitação?"**

**Pergunta 3 (Estratégica — Mensal):**  
**"Quais competências necessárias ao órgão estão sendo desenvolvidas e onde permanecem gaps?"**

**Pergunta 4 (Preditiva — Futura):**  
**"Quais competências e públicos deverão receber maior atenção nas próximas ações de capacitação?"**

---

## 📖 STORYTELLING — NARRATIVA DO PROJETO —30%

### Cenário AS-IS (Situação Atual — Problema)

**Contexto:**

O órgão possui aproximadamente **500 colaboradores**, distribuídos em diferentes departamentos, unidades, cargos, funções e níveis hierárquicos.

A área de Ensino oferece ações de capacitação para desenvolver esses colaboradores. Entretanto, a gestão precisa ir além da quantidade de cursos realizados e compreender:

- quem está sendo alcançado;
- quais áreas participam ou ficam de fora;
- quais cursos possuem maior ou menor adesão;
- quais competências estão sendo desenvolvidas;
- se os colaboradores estão aprendendo;
- se o conhecimento é aplicado no trabalho;
- quais resultados são produzidos após a capacitação.

O desafio central é transformar informações sobre cursos e participação em uma visão de **desenvolvimento organizacional e gestão estratégica de competências**.

**Dores Principais:**

- 📌 Dificuldade para identificar quais dos 500 colaboradores estão sendo efetivamente alcançados pelas ações de capacitação.
- 📌 Ausência ou insuficiência de informações integradas sobre aprendizagem, aplicação do conhecimento e mudança produzida no trabalho.
- 📌 Dificuldade para relacionar as capacitações oferecidas às competências que o órgão realmente precisa desenvolver.

---

### Transição (MUDANÇA — Transformação)

**O que vai mudar com a implantação do BI:**

A implantação do BI deverá transformar a visão da área de Ensino de um acompanhamento predominantemente operacional para uma visão estratégica de desenvolvimento de pessoas e competências.

A solução deverá permitir acompanhar a jornada:

```text
Necessidades dos 500 colaboradores
    ↓
Oferta de cursos
    ↓
Participação / Adesão
    ↓
Conclusão
    ↓
Aprendizagem
    ↓
Aplicação no trabalho
    ↓
Mudança / Resultado
    ↓
Impacto no órgão
    ↓
Decisão
```

O dashboard poderá ser estruturado em cinco perspectivas:

- **Quem somos?** — perfil e distribuição dos 500 colaboradores.
- **O que estamos oferecendo?** — cursos, categorias, horas, modalidades, vagas e carga horária.
- **Quem está participando?** — cobertura, inscrições, presença, conclusão, abandono e participação por área e perfil.
- **O que acontece depois do curso?** — satisfação, aprendizagem, aplicabilidade, avaliação do gestor e mudanças observadas.
- **Estamos desenvolvendo as competências certas?** — cruzamento entre competências necessárias e competências desenvolvidas.

O produto analítico proposto é o **Mapa de Desenvolvimento dos 500 Colaboradores**, permitindo visualizar indicadores de cobertura, conclusão, satisfação, aplicabilidade e desenvolvimento de competências por departamento.

---

---

## 📊 FONTES DE DADOS E INFORMAÇÕES — 25%

### Tabela Consolidada de Fontes

| ID   | Sistema/Fonte         | Tipo      | URL/Localização      | Frequência | Volume    | Contato   |
| :--- | :-------------------- | :-------- | :------------------- | :--------- | :-------- | :-------- |
| F-01 | Planilha Complementos | Excel/CSV | `moodle.df.senac.br` | Semanal    | 5k linhas | \[Email\] |

---

### Descrição Técnica — Cada Fonte

#### **F-01: Dados Complementares (Excel)** [A REVER]

**Localização:**

Caminho: \\\\servidor\\compartilhado\\dados\_bi\\  
Arquivo: dados\_complementares\_2024.xlsx  
**Abas: **[A REVER]

**Atualização:** Toda segunda-feira às 14:00 (DDD de SMS)  
**Responsável:** \[Nome \- Analista de Negócio\]

---

## 📁 ESTRUTURA DE DIRETÓRIOS — REPOSITÓRIO GITHUB — 10%

### Repositório GitHub

**URL Principal:** https://github.com/SENACBD/Projeto-de-BI-de-Educa-o-Corporativa-do-SENAC/edit/main/docs/crisp-dm/00-perguntas-chave.md
**Proprietário:** Jurandir / Rafael
**Visibilidade:** PÚBLICO

**Estrutura padrão para projeto BI com Power BI:**

```
projeto-bi-crisp-dm/  
│  
├── 📄 README.md  
├── 📄 ROADMAP.md  
├── 📄 CONTRIBUTING.md  
├── 📄 .gitignore  
│  
├── 📁 docs/  
│ ├── crisp-dm/  
│ │ ├── 📄 00-perguntas-chave.md  
│ │ ├── 📄 01-business-understanding.md  
│ │ ├── 📄 02-data-understanding.md  
│ │ ├── 📄 03-data-preparation.md  
│ │ ├── 📄 04-modeling.md  
│ │ ├── 📄 05-evaluation.md  
│ │ └── 📄 06-deployment.md  
│ │  
│ ├── data-dictionary/  
│ │ ├── 📄 tabelas-fato-dimensao.md  
│ │ ├── 📊 dicionario-dados.xlsx  
│ │ └── 📄 glossario-bi.md  
│ │  
│ ├── arquitetura/  
│ │ ├── 📊 diagrama-arquitetura.png  
│ │ ├── 📊 er-diagram.png  
│ │ ├── 📊 star-schema.png  
│ │ └── 📄 ADRs.md  
│  
├── 📁 sql/  
│ ├── ddl/  
│ │ ├── 📄 01-criar-staging.sql  
│ │ ├── 📄 02-criar-warehouse.sql  
│ │ ├── 📄 03-criar-views.sql  
│ │ └── 📄 04-criar-indices.sql  
│ │  
│ ├── etl/  
│ │ ├── 📄 01-carrega-dim-clientes.sql  
│ │ ├── 📄 02-carrega-dim-produtos.sql  
│ │ ├── 📄 03-carrega-dim-tempo.sql  
│ │ ├── 📄 04-carrega-fato-vendas.sql  
│ │ ├── 📄 05-atualiza-agregacoes.sql  
│ │ └── 📄 jobs-agendamento.sql  
│ │  
│ ├── seeds/  
│ │ ├── 📄 dados-teste-exemplo.sql  
│ │ └── 📄 limpar-staging.sql  
│ │  
│ └── views/  
│ ├── 📄 v-fato-vendas.sql  
│ ├── 📄 v-dim-cliente.sql  
│ ├── 📄 v-kpis-executivos.sql  
│ └── 📄 v-dados-brutos.sql  
│  
├── 📁 power-bi/  
│ ├── 📊 projeto-principal.pbix  
│ ├── 📊 modelo-dados.bim  
│ ├── 📊 dashboard-executivo.pbix  
│ ├── 📊 dashboard-vendas.pbix  
│ └── 📊 dashboard-operacional.pbix  
│  
├── 📁 python/  
│ ├── etl/  
│ ├── eda/  
│ ├── ai-helpers/  
│ ├── quality/  
│ ├── 📄 requirements.txt  
│ └── 📄 .env.example  
│  
├── 📁 tests/  
├── 📁 .github/  
├── 📁 config/  
├── 📁 notebooks/  
├── 📄 Makefile  
├── 📄 docker-compose.yml  
└── 📄 LICENSE
```

---

## 🤖 USO DE IA PARA CRIAR MÉTRICAS E TRATAR DADOS — 10%

### Assistentes de IA Disponíveis

**1. Claude (Anthropic) x ChatGPT (OpenAI) x …**

Uso: Sugerir KPIs, formular perguntas de negócio, revisar DAX e apoiar a definição de indicadores relacionados à gestão de Ensino e competências.

Prompt exemplo:

> "Considerando um órgão com 500 colaboradores e dados de cursos, inscrições, presença, conclusão, satisfação, aprendizagem, aplicabilidade e competências, sugira KPIs para acompanhar cobertura de capacitação, desenvolvimento de competências e impacto das ações de Ensino."

Uso: Sugerir transformações SQL, revisão de código ETL e apoio à preparação dos dados.

Prompt exemplo:

> "Crie uma query SQL que identifique colaboradores que não participaram de nenhuma ação de capacitação e agrupe o resultado por departamento."

---

## ✅ PRÓXIMAS ETAPAS

**Após completar este documento (Fase 00):**

1. ✅ Planeje a **Fase 1:** `01-business-understanding.md` (100%)

---

**Documento Criado:** 17/09/2026
**Versão:** 1.0  
**Status:** Em desenvolvimento

_"Bom BI começa com perguntas certas!"_ 🎯
