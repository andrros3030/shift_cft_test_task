SELECT
  acc.ID account_id
, acc.name name
, acc.saldo saldo
, ACC_NUM account_number
FROM ACCOUNTS acc
JOIN CLIENTS clnt on acc.CLIENT_REF = clnt.ID
JOIN PRODUCTS prod on acc.PRODUCT_REF = prod.ID
JOIN PRODUCT_TYPE prod_type on prod.PRODUCT_TYPE_ID = prod_type.ID
WHERE prod_type.NAME = "ДЕПОЗИТ" -- выбираем продукты с типом "депозит"
AND (SELECT count(_acc.ID) FROM -- считаем количество открытых кредитных продуктов
ACCOUNTS _acc
JOIN PRODUCTS _prod on _acc.PRODUCT_REF = _prod.ID
JOIN PRODUCT_TYPE _prod_type on _prod.PRODUCT_TYPE_ID = _prod_type.ID
JOIN CLIENTS _clnt ON _acc.CLIENT_REF = _clnt.ID
WHERE _prod_type.NAME = "КРЕДИТ" -- выбираем продукты с типом "кредит"
and _clnt.ID = clnt.ID -- берём данные по клиенту из текущей выборки
and (_prod.CLOSE_DATE is NULL or _prod.CLOSE_DATE < date('now')) -- проверяем, вдруг кредитный продукт закрыт
) = 0; -- если количество = 0 добавляем в отчёт, иначе счёт не подходит по условию