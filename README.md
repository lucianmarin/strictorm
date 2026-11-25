# StrictORM

**StrictORM** is a Django-inspired ORM written in [Stricta](https://github.com/lucianmarin/stricta), backed directly by embedded [StrictQL](https://github.com/lucianmarin/strictql) with zero wire-protocol or driver overhead.

## Features
- **Models & Fields**: `AutoField`, `IntegerField`, `TextField`, `BooleanField`, `FloatField`, `DateTimeField`, `ForeignKey`, with `primary_key`, `unique`, `nullable`, and `default_sql`.
- **Chainable `QuerySet`**: `filter`, `filter_int`, `filter_bool`, `filter_null`, `filter_in`, `filter_in_ints`, `exclude`, `exclude_int`, `order_by` (`-col` for `DESC`), `limit`, `offset`, `distinct`.
- **Django-style lookups**: `exact`, `ne`, `iexact`, `contains`, `icontains`, `startswith`, `endswith`, `gt`, `gte`, `lt`, `lte`.
- **Execution & CRUD**: `all()`, `first()`, `count()`, `exists()`, `create()`, `update()`, `delete()`, plus `begin()`/`commit()`/`rollback()`/`checkpoint()`.
- **JSON-ready `Row`**: `get_str`, `get_int`, `get_bool`, `is_null`, `to_json()`.

## Run Tests
```bash
make test
```
