Claro. Abaixo está o **Projeto BI — Fase 00 (Perguntas-Chave e Contexto)** já preenchido com base no storytelling fornecido. Onde o storytelling não fornece uma informação objetiva (por exemplo, nome do patrocinador, datas ou sistemas reais), deixei **“A definir”** em vez de inventar dados.

# 🎯 PROJETO BUSINESS INTELLIGENCE — PERGUNTAS-CHAVE E CONTEXTO (100%)

## Laboratório de Inovação IV — Prof. Edilberto Silva — 2026

---

## 👥 COMPOSIÇÃO DA EQUIPE

|ID|Nome Completo|Papel Primário|E-mail Corporativo|
|---|---|---|---|
|1|Jurandir|Mestre|jurandir@edu.df.senac.br|
|2|Rafael|Mestre|rafael@edu.df.senac.br|

**Todos os integrantes devem compreender:**

- Arquitetura completa do projeto BI;
- Fluxo de dados (ETL/ELT);
- Dashboards e KPIs principais;
- Procedimentos de manutenção.

---

# 📊 IDENTIFICAÇÃO DO PROJETO

**Nome do Projeto:**  
BI de Educação Corporativa do SENAC

**Descrição Executiva:**  
Desenvolver uma solução de Business Intelligence para monitorar e analisar o desenvolvimento dos colaboradores do SENAC, conectando necessidades de competências, oferta de cursos, participação, aprendizagem, aplicação do conhecimento e impacto organizacional.

**Stakeholder Patrocinador:**  
Paula Oliveira — Gestora da área de Ensino.

**Período de Execução:**  
De agosto até dezembro de 2026 — Duração: 16 semanas

**Área de Negócio:**  
Ensino / Educação Corporativa / Desenvolvimento de Pessoas

**População analisada:**  
Aproximadamente 500 colaboradores.

---

# 🎯 PERGUNTA-CHAVE (NORTEADORA) — 25%

## Pergunta Principal

> **Estamos desenvolvendo as pessoas certas, nas competências certas, no momento certo, e isso está produzindo resultados para o órgão?**

### Objetivo estratégico

Transformar os dados de capacitação em inteligência para apoiar decisões da área de Ensino, permitindo identificar:

- quais colaboradores estão sendo alcançados;
- quais áreas possuem baixa cobertura de capacitação;
- quais cursos apresentam maior ou menor adesão;
- quais competências estão sendo desenvolvidas;
- onde existem gaps de competências;
- se os participantes estão concluindo e aprendendo;
- se o conhecimento adquirido está sendo aplicado no trabalho;
- quais capacitações apresentam evidências de impacto organizacional.

---

## Sub-Perguntas (Decomposição)

### Pergunta 1 — Operacional / Diária

> **Quem está participando das ações de capacitação e quais inscrições, presenças, conclusões e abandonos estão ocorrendo?**

Indicadores relacionados [A MENSURAR]:

- inscrições;
- participantes;
- presença;
- conclusão;
- abandono;
- vagas ofertadas;
- vagas ocupadas.

### Pergunta 2 — Tática / Semanal

> **Quais cursos, áreas e grupos de colaboradores apresentam maior ou menor adesão e cobertura de capacitação?**

Análises:

- participação por departamento;
- participação por unidade;
- participação por cargo/função;
- cursos mais procurados;
- cursos menos procurados;
- áreas (organigrama) com baixa participação;
- colaboradores sem participação.

### Pergunta 3 — Estratégica / Mensal

> **Quais competências são prioritárias para o órgão e em que medida as ações de Ensino estão contribuindo para desenvolvê-las?**

Análises:

- competências necessárias;
- competências desenvolvidas;
- cursos associados às competências;
- cobertura por competência;
- gaps de desenvolvimento;
- áreas mais críticas.

### Pergunta 4 — Preditiva / Futura

> **Quais públicos e competências provavelmente precisarão de maior investimento em capacitação nos próximos períodos?**

Possíveis análises futuras:

- previsão de demanda por cursos;
- identificação de públicos com baixa cobertura;
- previsão de competências críticas;
- priorização de novas turmas;
- identificação de tendências de participação.

---

# 📖 STORYTELLING — NARRATIVA DO PROJETO — 35%

## Cenário AS-IS — Situação Atual / Problema

### Contexto

O SENAC possui aproximadamente **500 colaboradores** com diferentes funções, áreas, níveis hierárquicos e necessidades de desenvolvimento.

A área de Ensino interna é responsável por promover ações de capacitação e desenvolvimento para seus colaboradores. Entretanto, para que a área possa demonstrar seu valor estratégico, não é suficiente acompanhar apenas a quantidade de cursos realizados ou o número de participantes.

É necessário compreender toda a jornada de desenvolvimento:

```text
Necessidade
    ↓
Oferta de curso
    ↓
Inscrição
    ↓
Participação
    ↓
Conclusão
    ↓
Aprendizagem
    ↓
Aplicação
    ↓
Mudança
    ↓
Impacto
```

O principal desafio do projeto é transformar dados operacionais de cursos em informações capazes de responder se as capacitações estão atendendo às necessidades reais do órgão.

### Situação atual identificada

Atualmente, é necessário investigar e consolidar informações relacionadas a [A QUALIFICAR]:

- aproximadamente 500 colaboradores;
- departamentos e unidades;
- cargos e funções;
- cursos oferecidos;
- vagas;
- inscrições;
- presença;
- conclusão;
- abandono;
- carga horária;
- modalidades de ensino;
- avaliações de satisfação;
- aprendizagem;
- aplicabilidade;
- competências desenvolvidas;
- impacto das capacitações.

Parte fundamental dessas informações ainda precisa ser levantada junto ao gestor da área de Ensino e às respectivas fontes de dados.

### Problema central

O principal problema de negócio é a dificuldade de responder, de forma integrada e baseada em dados:

> **Quem está sendo capacitado, em quais competências, com qual resultado e qual impacto isso produz para o órgão?**

---

## Dores Principais

- 📌 **Visibilidade limitada sobre a cobertura:** não há, inicialmente, uma visão consolidada que permita identificar quais dos 500 colaboradores participaram de capacitações e quais permanecem sem atendimento.
    
- 📌 **Foco excessivo em indicadores operacionais:** contar cursos, inscrições ou horas de treinamento não demonstra, isoladamente, se houve desenvolvimento de competências.
    
- 📌 **Dificuldade de identificar gaps de competências:** é necessário relacionar as competências que o órgão precisa desenvolver com as capacitações efetivamente oferecidas e realizadas.
    
- 📌 **Baixa visibilidade sobre o pós-curso:** é necessário verificar se o conhecimento adquirido é aplicado no trabalho e se produz mudanças observáveis.
    
- 📌 **Concentração de participação:** alguns colaboradores ou departamentos podem concentrar grande parte das capacitações enquanto outros permanecem com baixa participação.
    
- 📌 **Dificuldade de mensurar impacto:** atualmente é necessário estruturar uma forma de relacionar capacitações a melhorias de processos, redução de erros, redução de retrabalho, produtividade ou qualidade.
    

---

# 🔄 TRANSIÇÃO — MUDANÇA / TRANSFORMAÇÃO

## O que vai mudar com a implantação do BI

A implantação do BI transformará a visão da área de Ensino de um modelo predominantemente operacional para uma visão orientada a desenvolvimento e competências.

### Etapa 1 — Consolidar a população

Criar uma visão única dos aproximadamente 500 colaboradores, contemplando:

- departamento;
- unidade;
- cargo/função;
- nível hierárquico;
- perfil profissional;
- histórico de participação.

### Etapa 2 — Consolidar a oferta de Ensino

Organizar e prospectar os dados dos cursos:

- curso;
- categoria;
- competência relacionada;
- modalidade;
- carga horária;
- vagas;
- turma;
- instrutor;
- período;
- status.

### Etapa 3 — Monitorar a jornada do participante

Acompanhar:

```text
Inscrição
   ↓
Presença
   ↓
Conclusão
   ↓
Avaliação
   ↓
Aprendizagem
   ↓
Aplicabilidade
```

### Etapa 4 — Criar o mapa de desenvolvimento

Relacionar:

```text
COLABORADORES
       ×
CURSOS
       ×
COMPETÊNCIAS
       ×
RESULTADOS
```

Isso permitirá identificar quais públicos estão sendo atendidos e quais apresentam gaps de desenvolvimento.

### Etapa 5 — Evoluir para impacto

Sempre que houver dados disponíveis, relacionar capacitação a:

- mudança de comportamento;
- aplicação do conhecimento;
- melhoria de processos;
- redução de erros;
- redução de retrabalho;
- aumento de produtividade;
- melhoria do atendimento;
- outros resultados organizacionais.

---

# 📊 PRINCIPAIS KPIs PROPOSTOS

## Indicadores de cobertura

**Cobertura de Capacitação:**

```text
Colaboradores que participaram de pelo menos um curso
------------------------------------------------------
Total de colaboradores
```

**Percentual de colaboradores sem capacitação:**

```text
Colaboradores sem participação
------------------------------
Total de colaboradores
```

## Indicadores de participação

- Número de inscrições;
- Número de participantes;
- Taxa de presença;
- Número médio de cursos por colaborador;
- Participação por departamento;
- Participação por unidade;
- Participação por cargo/função.

## Indicadores de conclusão

**Taxa de conclusão:**

```text
Participantes que concluíram
----------------------------
Participantes inscritos
```

## Indicadores de oferta

- Cursos oferecidos;
- Turmas realizadas;
- Vagas ofertadas;
- Vagas ocupadas;
- Taxa de ocupação;
- Carga horária total;
- Carga horária média por colaborador;
- Cursos presenciais, online e híbridos.

## Indicadores de experiência

- Satisfação média;
- Avaliação do instrutor;
- Avaliação do conteúdo;
- Avaliação da metodologia;
- Avaliação de aplicabilidade.

## Indicadores de aprendizagem

- Aproveitamento;
- Resultado de avaliações;
- Evolução de conhecimento antes/depois;
- Percentual de aprovação;
- Competências desenvolvidas.

## Indicadores de aplicação e impacto

- Taxa de aplicabilidade;
- Mudança percebida após a capacitação;
- Aplicação da competência;
- Avaliação do gestor;
- Casos de melhoria decorrentes de capacitação;
- Impacto em processos e resultados.

---

# 📈 VISÃO EXECUTIVA PROPOSTA

O dashboard deverá responder rapidamente:

> **Como está a saúde do desenvolvimento dos 500 colaboradores?**

### Visão inicial

```text
┌─────────────────────────────────────────────┐
│        EDUCAÇÃO CORPORATIVA — SENAC         │
├─────────────────────────────────────────────┤
│                                             │
│ Colaboradores              500              │
│ Cobertura                  XX%              │
│ Cursos realizados          XXX              │
│ Participantes              XXX              │
│ Conclusão                  XX%              │
│ Satisfação                 X,X / 5          │
│ Aplicabilidade             XX%              │
│                                             │
├─────────────────────────────────────────────┤
│       COMPETÊNCIAS PRIORITÁRIAS             │
│                                             │
│ Gestão                 █████████░  XX%      │
│ Liderança              ████████░░  XX%      │
│ Dados / BI             ██████░░░░  XX%      │
│ Processos              █████░░░░░  XX%      │
│ Comunicação            ███████░░░  XX%      │
│                                             │
└─────────────────────────────────────────────┘
```

Os valores `XX` deverão ser preenchidos após a integração e validação das fontes de dados.

---

# 🗺️ MAPA DE DESENVOLVIMENTO DOS 500

Será proposta uma visão analítica denominada:

## **Mapa de Desenvolvimento dos 500 Colaboradores**

Essa visão permitirá selecionar um departamento, unidade, cargo ou colaborador e analisar:

- participação em capacitações;
- cursos realizados;
- carga horária;
- taxa de conclusão;
- satisfação;
- aprendizagem;
- competências desenvolvidas;
- aplicabilidade;
- gaps de desenvolvimento.

A análise deverá permitir sair de:

> **“Quantos cursos foram realizados?”**

para:

> **“Onde estão os principais gaps de desenvolvimento?”**

---

# 📚 STORYTELLING EXECUTIVO

A narrativa principal do dashboard será construída em cinco atos.

### ATO 1 — Quem precisa ser desenvolvido?

Apresentar os aproximadamente 500 colaboradores e sua distribuição por:

- área;
- departamento;
- unidade;
- função;
- nível hierárquico.

### ATO 2 — O que estamos oferecendo?

Apresentar:

- cursos;
- turmas;
- modalidades;
- vagas;
- horas;
- categorias;
- competências associadas.

### ATO 3 — Quem está participando?

Responder:

> **Estamos conseguindo alcançar as pessoas certas?**

Mostrar:

- cobertura;
- participação;
- presença;
- conclusão;
- abandono;
- concentração por área.

### ATO 4 — O que acontece depois do curso?

Mostrar a evolução:

```text
Participação
     ↓
Conclusão
     ↓
Aprendizagem
     ↓
Aplicação
     ↓
Mudança
```

### ATO 5 — Estamos desenvolvendo as competências certas?

Cruzar:

```text
COMPETÊNCIAS NECESSÁRIAS
          ×
COMPETÊNCIAS DESENVOLVIDAS
```

O objetivo é identificar as competências com maior necessidade e menor cobertura.

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
**Abas:**[A REVER]

**Atualização:** Toda segunda-feira às 14:00 (DDD de SMS)  
**Responsável:** \[Nome \- Analista de Negócio\]


---

# 📁 DADOS MÍNIMOS NECESSÁRIOS

## Dimensão Colaborador

Campos esperados:

- id_colaborador;
- departamento;
- unidade;
- cargo;
- função;
- nível hierárquico;
- data de admissão;
- situação funcional.

## Dimensão Curso

Campos esperados:

- id_curso;
- nome_curso;
- categoria;
- competência;
- modalidade;
- carga_horaria;
- instrutor;
- curso_obrigatorio;
- curso_estrategico.

## Dimensão Turma

Campos esperados:

- id_turma;
- id_curso;
- data_inicio;
- data_fim;
- vagas_ofertadas;
- local;
- modalidade;
- instrutor.

## Fato Participação

Campos esperados:

- id_colaborador;
- id_turma;
- data_inscricao;
- presença;
- conclusão;
- status;
- nota/aproveitamento.

## Fato Avaliação

Campos esperados:

- id_colaborador;
- id_curso;
- avaliação_instrutor;
- avaliação_conteúdo;
- avaliação_metodologia;
- avaliação_aplicabilidade;
- satisfação_geral.

## Fato Aplicabilidade / Impacto

Campos esperados:

- id_colaborador;
- id_curso;
- competência_aplicada;
- aplicação_no_trabalho;
- avaliação_gestor;
- mudança_observada;
- resultado_obtido;
- evidência_de_impacto.

---

# 🏗️ MODELO ANALÍTICO PROPOSTO

A estrutura inicial poderá seguir um modelo dimensional em estrela:

```text
                 DIM_COLABORADOR
                       │
                       │
                       ▼
DIM_TEMPO ───── FAT_PARTICIPACAO ───── DIM_CURSO
                       │                    │
                       │                    │
                       ▼                    ▼
                 DIM_TURMA           DIM_COMPETENCIA
                       │
                       ▼
                FAT_AVALIACAO
                       │
                       ▼
             FAT_APLICABILIDADE
```

A implementação definitiva dependerá da estrutura das fontes encontradas durante a etapa de entendimento dos dados.

---

# 📁 ESTRUTURA DE DIRETÓRIOS — REPOSITÓRIO GITHUB — 15%

## Repositório

**URL Principal:** [Repositório](https://github.com/SENACBD/Projeto-de-BI-de-Educa-o-Corporativa-do-SENAC/)
**Proprietário:** Jurandir / Rafael  
**Visibilidade:** PÚBLICO  

A estrutura proposta será:

```
projeto-bi-crisp-dm/  
│  
├── 📄 README.md                 ← Start aqui  
├── 📄 ROADMAP.md               ← Timeline do projeto  
├── 📄 CONTRIBUTING.md     ← Como contribuir  
├── 📄 .gitignore                         ← Excluir .pbix, .env  
│  
├── 📁 docs/  
│   ├── crisp-dm/  
│   │   ├── 📄 00-perguntas-chave.md      ← ESTE ARQUIVO (100%)  
│   │   ├── 📄 01-business-understanding.md  ← Fase 1 (100%)  
│   │   ├── 📄 02-data-understanding.md      ← Fase 2 (100%)  
│   │   ├── 📄 03-data-preparation.md        ← Fase 3 (100%)  
│   │   ├── 📄 04-modeling.md                ← Fase 4 (100%)  
│   │   ├── 📄 05-evaluation.md              ← Fase 5 (100%)  
│   │   └── 📄 06-deployment.md              ← Fase 6 (100%)  
│   │  
│   ├── data-dictionary/  
│   │   ├── 📄 tabelas-fato-dimensao.md  
│   │   ├── 📊 dicionario-dados.xlsx  
│   │   └── 📄 glossario-bi.md  
│   │  
│   ├── arquitetura/  
│   │   ├── 📊 diagrama-arquitetura.png  
│   │   ├── 📊 er-diagram.png  
│   │   ├── 📊 star-schema.png  
│   │   └── 📄 ADRs.md  
│   │  
├── 📁 sql/  
│   ├── ddl/  
│   │   ├── 📄 01-criar-staging.sql       ← Tabelas de trabalho  
│   │   ├── 📄 02-criar-warehouse.sql     ← Data Warehouse  
│   │   ├── 📄 03-criar-views.sql         ← Views para Power BI  
│   │   └── 📄 04-criar-indices.sql       ← Otimizações  
│   │  
│   ├── etl/  
│   │   ├── 📄 01-carrega-dim-clientes.sql  
│   │   ├── 📄 02-carrega-dim-produtos.sql  
│   │   ├── 📄 03-carrega-dim-tempo.sql  
│   │   ├── 📄 04-carrega-fato-vendas.sql  
│   │   ├── 📄 05-atualiza-agregacoes.sql  
│   │   └── 📄 jobs-agendamento.sql       ← SQL Agent Jobs  
│   │  
│   ├── seeds/  
│   │   ├── 📄 dados-teste-exemplo.sql  
│   │   └── 📄 limpar-staging.sql  
│   │  
│   └── views/  
│       ├── 📄 v-fato-vendas.sql  
│       ├── 📄 v-dim-cliente.sql  
│       ├── 📄 v-kpis-executivos.sql  
│       └── 📄 v-dados-brutos.sql  
│  
├── 📁 power-bi/  
│   ├── 📊 projeto-principal.pbix         ← ARQUIVO PRINCIPAL  
│   ├── 📊 modelo-dados.bim               ← Modelo (JSON)  
│   ├── 📊 dashboard-executivo.pbix   ← C-Level  
│   │   ├── 📊 dashboard-vendas.pbix      ← Gerentes  
│   │   └── 📊 dashboard-operacional.pbix ← Analistas  
│   │  
│   ├── measures/  
│   │   ├── 📄 medidas-receita.dax  
│   │   ├── 📄 medidas-lucro.dax  
│   │   ├── 📄 medidas-performance.dax  
│   │   └── 📄 colunas-calculadas.dax  
│   │  
├── 📁 python/  
│   ├── etl/  
│   │   ├── 📄 extract.py                 ← Coleta de dados  
│   │   ├── 📄 transform.py               ← Transformações (com IA)  
│   │   ├── 📄 load.py                    ← Carregamento  
│   │   ├── 📄 main.py                    ← Orquestração  
│   │   └── 📄 config.yaml                ← Configurações  
│   │  
│   ├── eda/  
│   │   ├── 📓 01-exploracao-vendas.ipynb  
│   │   ├── 📓 02-analise-qualidade.ipynb  
│   │   ├── 📓 03-outliers-anomalias.ipynb  
│   │   └── 📄 profiling.py               ← Data Profiling  
│   │  
│   ├── ai-helpers/  
│   │   ├── 📄 gerar-metricas-ia.py       ← 🤖 Sugerir KPIs com Claude/OpenAI  
│   │   ├── 📄 sugerir-transformacoes-ia.py ← 🤖 Sugerir limpeza de dados  
│   │   ├── 📄 detectar-anomalias-ml.py   ← 🤖 Detecção com ML  
│   │   └── 📄 tratar-valores-ausentes.py ← 🤖 Imputation com IA  
│   │  
│   ├── quality/  
│   │   ├── 📄 teste-integridade.py  
│   │   ├── 📄 teste-qualidade.py  
│   │   └── 📄 relatorio-qualidade.py  
│   │  
│   ├── 📄 requirements.txt                ← Dependências  
│   └── 📄 .env.example                    ← Variáveis (exemplo)  
│  
├── 📁 tests/  
│   ├── 📄 test\_qualidade\_dados.py  
│   ├── 📄 test\_integridade\_fk.sql  
│   └── 📄 test\_performance.py  
│  
├── 📁 .github/  
│   ├── workflows/  
│   │   ├── 📄 etl-pipeline.yml           ← Executa ETL diário  
│   │   ├── 📄 data-quality.yml           ← Valida qualidade  
│   │   └── 📄 testes.yml                 ← Roda testes  
│   │  
│   └── templates/  
│       ├── 📄 bug\_report.md  
│       └── 📄 feature\_request.md  
│  
├── 📁 config/  
│   ├── 📄 conexoes.json                  ← Strings de conexão  
│   ├── 📄 .env                           ← Variáveis (secreto)  
│   └── 📄 sla.yaml                       ← SLA e políticas  
│  
├── 📁 notebooks/  
│   ├── 📓 01-eda-completa.ipynb  
│   ├── 📓 02-feature-engineering.ipynb  
│   └── 📓 03-metricas-propostas.ipynb  
│  
├── 📄 Makefile                            ← Automação (opcional)  
├── 📄 docker-compose.yml                  ← Dev environment (opcional)  
└── 📄 LICENSE  
```

**Observação de segurança:** arquivos contendo credenciais, senhas, tokens ou informações pessoais não deverão ser versionados no GitHub.

---

# 🤖 USO DE IA PARA CRIAR MÉTRICAS E TRATAR DADOS — 10%

## Assistentes de IA

Poderão ser utilizados **ChatGPT (OpenAI)** e **Claude (Anthropic)** como ferramentas auxiliares para:

- sugerir KPIs;
- decompor perguntas de negócio;
- revisar medidas DAX;
- sugerir transformações SQL;
- auxiliar na documentação;
- identificar possíveis problemas de qualidade;
- sugerir análises exploratórias;
- auxiliar na interpretação dos resultados.

### Prompt para sugestão de KPIs

> "Dado um dataset de educação corporativa contendo colaborador, departamento, curso, competência, inscrição, presença, conclusão, avaliação, aprendizagem e aplicabilidade, sugira KPIs executivos, táticos e operacionais que permitam avaliar cobertura de capacitação, desenvolvimento de competências e impacto das ações de Ensino."

### Prompt para análise de gaps

> "Considerando uma matriz de competências necessárias por área e o histórico de capacitações realizadas pelos colaboradores, identifique possíveis gaps de desenvolvimento e sugira indicadores para monitorá-los."

### Prompt para revisão de DAX

> "Revise esta medida DAX considerando boas práticas de modelagem dimensional, contexto de filtro, desempenho e tratamento de valores nulos. Explique possíveis problemas e proponha uma versão melhorada."

### Cuidados com o uso de IA

- Não enviar credenciais, senhas ou tokens para ferramentas de IA;
- Não expor dados pessoais desnecessários;
- Validar tecnicamente todo código produzido;
- Validar KPIs junto ao gestor da área;
- Manter rastreabilidade das transformações;
- Utilizar IA como apoio, e não como substituição da validação de negócio.

---

# 🎯 DECISÕES QUE O BI DEVERÁ APOIAR

O projeto deverá apoiar decisões como:

1. Quais cursos devem ser mantidos, ampliados ou descontinuados?
2. Quais departamentos apresentam baixa cobertura?
3. Quais colaboradores ou grupos estão ficando para trás?
4. Quais competências são críticas e possuem maior gap?
5. Onde devem ser abertas novas turmas?
6. Quais cursos apresentam baixa adesão?
7. Quais cursos apresentam melhor resultado?
8. Onde existe concentração excessiva de participação?
9. Quais capacitações apresentam maior aplicabilidade?
10. Onde os investimentos em capacitação podem gerar maior retorno organizacional?

---

# 🚦 MATURIDADE ESPERADA DO BI

```text
NÍVEL 1 — RELATÓRIO OPERACIONAL
"Quantos cursos realizamos?"
             ↓
NÍVEL 2 — MONITORAMENTO
"Quem está participando?"
             ↓
NÍVEL 3 — INTELIGÊNCIA DE ENSINO
"O que os colaboradores estão aprendendo?"
             ↓
NÍVEL 4 — INTELIGÊNCIA DE PESSOAS
"Quais competências estamos desenvolvendo?"
             ↓
NÍVEL 5 — INTELIGÊNCIA ORGANIZACIONAL
"Qual impacto o desenvolvimento das pessoas
está produzindo no órgão?"
```

---

# ❓ PERGUNTA DE ENCERRAMENTO DA ENTREVISTA

A entrevista com o gestor deverá ser encerrada com:

> **“Se você pudesse enxergar uma única tela mostrando a saúde do desenvolvimento dos 500 colaboradores, o que precisaria aparecer nela para você tomar melhores decisões?”**

Essa resposta será utilizada para validar os requisitos do dashboard e priorizar os indicadores.

---

# 🔗 RELAÇÃO ENTRE NEGÓCIO E BI

```text
NECESSIDADE DO GESTOR
          ↓
PERGUNTAS DE NEGÓCIO
          ↓
INDICADORES
          ↓
FONTES DE DADOS
          ↓
ETL / ELT
          ↓
MODELO DIMENSIONAL
          ↓
DASHBOARD
          ↓
STORYTELLING
          ↓
DECISÃO
```

---

# 🏁 CONCLUSÃO DO PROJETO

O projeto não terá como objetivo apenas contabilizar cursos, inscrições ou horas de treinamento.

O propósito será construir uma visão integrada do desenvolvimento dos colaboradores, conectando:

```text
500 COLABORADORES
       ↓
NECESSIDADES
       ↓
CURSOS
       ↓
PARTICIPAÇÃO
       ↓
APRENDIZAGEM
       ↓
COMPETÊNCIAS
       ↓
APLICAÇÃO
       ↓
IMPACTO
       ↓
DECISÃO
```

Dessa forma, o BI permitirá que a área de Ensino evolua de uma visão operacional para uma visão estratégica de desenvolvimento de pessoas.

A principal pergunta que orientará o projeto será:

> **“Estamos desenvolvendo as pessoas certas, nas competências certas, no momento certo, e isso está produzindo resultados para o órgão?”**

---

**Documento Criado:** 10/09/2026  
**Versão:** 1.0  
**Status:** Em elaboração — aguardando entrevista com o gestor e levantamento/validação das fontes de dados.

_"Bom BI começa com perguntas certas!"_ 🎯

**Prof. Edilberto Silva — FACSENAC — v.1.set.26**

Esse preenchimento já está alinhado ao storytelling e, principalmente, **não inventa fontes, sistemas, volumes ou resultados que ainda não foram levantados**. Isso é importante para a Fase 00: os dados fictícios do modelo original foram substituídos por requisitos que deverão ser confirmados na entrevista.
