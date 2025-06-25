# basededados-code


## Subir banco postgres

Para subir o banco postgres vamos utilizar o docker compose. Basta rodar o seguinte comando : 

```bash
    docker compose up -d
```

## Comandos para executar os script SQL

### Cria tabelas

```bash
    docker exec -e PGPASSWORD="postgres" postgres psql --user postgres -d postgres -f /app/create_tables_updated.sql 
```


### Insert de Registros nas Tabelas

```bash
    docker exec -e PGPASSWORD="postgres" postgres psql --user postgres -d postgres -f /app/INSERT_exercicio6.sql
```

### Queries do Exercicio 6

```bash
    docker exec -e PGPASSWORD="postgres" postgres psql --user postgres -d postgres -f /app/queries_exercicio6.sql
```

### Indices do Exercicio 7

#### Antes de Criar os indices

```bash
    docker exec -e PGPASSWORD="postgres" postgres psql --user postgres -d postgres -f /app/queries_before_indexes.sql
```

#### Criar indices

```bash
    docker exec -e PGPASSWORD="postgres" postgres psql --user postgres -d postgres -f /app/create_indexes.sql
```

#### Depois de criar indices

```bash
    docker exec -e PGPASSWORD="postgres" postgres psql --user postgres -d postgres -f /app/queries_after_indexes.sql
```

#### Criação de Views

```bash
    docker exec -e PGPASSWORD="postgres" postgres psql --user postgres -d postgres -f /app/exercicio8_completo.sql
```