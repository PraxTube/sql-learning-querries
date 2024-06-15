pg_format query.sql --inplace ; duckdb world_cup.db -init query.sql ; rm world_cup.db ; cp world_cup.db.backup world_cup.db
