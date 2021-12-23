select
    clnt.id client_id
,   clnt.name client_name
from accounts acc
join CLIENTS clnt on acc.client_ref = clnt.id
join PRODUCTS prod on acc.PRODUCT_REF = prod.id
join PRODUCT_TYPE prod_type on prod.PRODUCT_TYPE_ID = prod_type.id
where prod_type.id = 1
AND (SELECT SUM(_rec.dt)
     FROM RECORDS _rec
     WHERE _rec.acc_ref = acc.id) >= 2
--group by clnt.id