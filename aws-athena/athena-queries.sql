SELECT *
FROM "{table}"
LIMIT 10;

SELECT "nome", "sobrenome"
FROM "{table}"
WHERE "salario" > 5000;

SELECT "nome","sobrenome"
FROM "{table}"
WHERE "salario" > 3000
ORDER BY("salario") DESC;

SELECT "nome", "estado"
FROM "{table}"
WHERE "estado" = 'Rio Grande do Sul'
AND "salario" >= 5500;

SELECT count(*), "cargo"
FROM "{table}"
GROUP BY("cargo");

SELECT count(*), "estado"
FROM "{table}"
GROUP BY("estado");

/* Consultas AWS Athena Integracao de DataSources */
select *
from "Datasource1"."database"."table" as t1
join "Datasource2"."database"."table" as t2 ON cast(t2.{CommonColumnName} as integer)=t1.{CommonColumnName}
where {conditions}
