select
  rec.oper_date date
, sum(rec.sum) operations_sum
, clnt.name client_name
from records rec
join accounts acc on rec.acc_ref = acc.id
join CLIENTS clnt on acc.client_ref = clnt.ID
where rec.oper_date between datetime('now', '-1 month') and datetime('now')
GROUP by rec.oper_date