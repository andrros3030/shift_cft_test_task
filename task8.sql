select
    clnt.id client_id
,   clnt.name client_name
,   sum(rec.sum)
from accounts acc
join CLIENTS clnt on acc.client_ref = clnt.id
join PRODUCTS prod on acc.PRODUCT_REF = prod.id
join PRODUCT_TYPE prod_type on prod.PRODUCT_TYPE_ID = prod_type.id
join RECORDS rec on rec.acc_ref = acc.id
where prod_type.id = 1
--group by clnt.id