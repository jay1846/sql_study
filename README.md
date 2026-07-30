# SQL Learning Journey

Personal learning log and practice scripts for the SQL Full Course for Beginners (30 Hours) by Data With Baraa.

Environment: macOS (Apple Silicon), Docker, SQL Server 2022, VS Code with the MSSQL extension.

## About

This repository tracks progress through the course, section by section. Each section has its own folder with practice scripts and notes, written up as each section is completed.

- Course: SQL Full Course for Beginners, Data With Baraa (YouTube)
- Official course repo: https://github.com/DataWithBaraa/sql-ultimate-course
- Local setup details: docs/environment-setup.md

## Quick Start

```bash
# Start the SQL Server container
docker start sqlserver

# Open the repo in VS Code
code .

# Open a script under /scripts, connect to local-sqlserver-macos, and run it

# Stop when done
docker stop sqlserver
```

First-time setup: docs/environment-setup.md
Common issues: docs/troubleshooting.md

## Repository Structure

```
sql-learning-journey/
├── docs/
│   ├── environment-setup.md
│   └── troubleshooting.md
├── datasets/
├── notes/
├── scripts/
│   ├── 01_introduction/
│   ├── 02_select_query/
│   ├── 03_ddl/
│   ├── 04_dml/
│   ├── 05_filtering_data/
│   ├── 06_joins/
│   ├── 07_set_operators/
│   ├── 08_string_functions/
│   ├── 09_date_time_functions/
│   ├── 10_null_functions/
│   ├── 11_case_expressions/
│   ├── 12_aggregate_functions/
│   ├── 13_window_functions/
│   ├── 14_subqueries/
│   ├── 15_ctes/
│   ├── 16_views/
│   ├── 17_temp_tables/
│   ├── 18_stored_procedures/
│   ├── 19_triggers/
│   ├── 20_indexes_performance/
│   ├── 21_sql_and_ai/
│   └── projects/
│       ├── sql_data_warehouse/
│       ├── sql_eda/
│       └── sql_advanced_analytics/
├── .gitignore
└── README.md
```

## Progress

| # | Section | Status |
|---|---|---|
| 01 | Introduction and Environment Setup | Done |
| 02 | SELECT Query | Done |
| 03 | Data Definition (DDL) | Done |
| 04 | Data Manipulation (DML) | Done |
| 05 | Filtering Data | Not started |
| 06 | SQL Joins | Not started |
| 07 | SQL Set Operators | Not started |
| 08 | String and Number Functions | Not started |
| 09 | Date and Time Functions | Not started |
| 10 | NULL Functions | Not started |
| 11 | CASE Expressions | Not started |
| 12 | Aggregate Functions | Not started |
| 13 | Window Functions | Not started |
| 14 | Subqueries | Not started |
| 15 | CTEs | Not started |
| 16 | Views | Not started |
| 17 | Temp Tables | Not started |
| 18 | Stored Procedures | Not started |
| 19 | Triggers | Not started |
| 20 | Indexes and Performance | Not started |
| 21 | SQL and AI | Not started |
| - | Project: SQL Data Warehouse | Not started |
| - | Project: SQL EDA | Not started |
| - | Project: Advanced SQL Analytics | Not started |

## Environment

| Item | Value |
|---|---|
| OS | macOS (Apple Silicon) |
| Database | SQL Server 2022 via Docker, run with --platform linux/amd64 |
| Client | VS Code with MSSQL extension |
| Container name | sqlserver |
| Port | 1433 |

## Notes

- Scripts in this repository are personal practice notes written while following the course, not a redistribution of official course files.
- Datasets are excluded from version control. See datasets/README.md for how to get them.
- Passwords and connection secrets are never committed.

## Credit

Course content and teaching by Data With Baraa.

## License

MIT License for the notes and scripts in this repository. Course materials remain the property of Data With Baraa.
