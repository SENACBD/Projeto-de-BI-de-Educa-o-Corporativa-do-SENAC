
projeto-bi-crisp-dm/
│
├── README.md
├── ROADMAP.md
├── CONTRIBUTING.md
├── .gitignore
│
├── data/
│   ├── raw/
│   │   └── dados_funcionario.csv
│   ├── processed/
│   │   └── dados_funcionario_limpo.csv
│   └── README.md
│
├── docs/
│   ├── crisp-dm/
│   ├── data-dictionary/
│   └── arquitetura/
│       ├── modelo-dimensional.mwb
│       ├── er-diagram.png
│       ├── star-schema.png
│       └── ADRs.md
│
├── sql/
│   ├── ddl/
│   │   ├── 01-criar-staging.sql
│   │   ├── 02-criar-warehouse.sql
│   │   └── 03-criar-tabelas-dimensoes-fatos.sql
│   │
│   ├── etl/
│   │   ├── 01-carrega-dim-funcionario.sql
│   │   ├── 02-carrega-dim-tempo.sql
│   │   ├── 03-carrega-dim-departamento.sql
│   │   └── 04-carrega-fato-participacao.sql
│   │
│   ├── seeds/
│   │   └── staging-dados-funcionario.sql
│   │
│   └── views/
│
├── notebooks/
│   └── 03-data-preparation/
│       └── limpeza-dados-funcionario.ipynb
│
├── python/
│   ├── etl/
│   ├── eda/
│   ├── quality/
│   ├── requirements.txt
│   └── .env.example
│
├── power-bi/
│
├── tests/
├── .github/
├── config/
└── LICENSE
