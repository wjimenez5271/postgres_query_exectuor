# Postgres Query Executor
A container for executing queries against Postgres. Designed to be used with orchestration workflows where the Postgres server may be coming online at the same time as this container and we need to wait for Postgres to be ready to accept a query.

### Options
Set the following values as environment variables

- `PGHOST` - Hostname of the Postgres server
- `PGUSER` - Username of Postgres server
- `PGQUERY` - Query to execute including trailing semicolon
- `SLEEP_BEFORE_EXEC` - (optional) sleep before executing query after Postgres port is detected to be open
