SELECT
prod_type.NAME name,
(SELECT
    (SELECT
        SUM(SUM)/COUNT(sum) --TODO: добавить обработку отрицательных сумм
        FROM RECORDS _rec
        WHERE _rec.ACC_REF = _acc.ID -- фильтрация по счёту
        and _rec.oper_date = '01.10.2015' -- произвольная дата
    )
    FROM PRODUCTS _prod
    JOIN ACCOUNTS _acc on _prod.ID = _acc.PRODUCT_REF -- связка продукта и счёта
    WHERE _prod.PRODUCT_TYPE_ID = prod_type.ID -- фильтрация по типу продукта
) average
FROM PRODUCT_TYPE prod_type
/*  Выполнение данного запроса можно свести к O(n), убрав вложенность и сделав JOIN сразу по всем необходимым таблицам,
    однака из-за отсутствия поддержки RIGHT/OUTER JOIN в СУБД, на которой я собирал запросы,
    было принято решение оставить такую конструкцию с отработкой в худшем случае за O(n^3)
*/