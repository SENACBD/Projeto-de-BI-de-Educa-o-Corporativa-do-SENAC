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