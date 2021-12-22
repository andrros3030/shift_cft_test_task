select
  rec.oper_date date
, sum(rec.sum) operations_sum -- сумма операций за дату операций
, clnt.name client_name -- клиент
from records rec
join accounts acc on rec.acc_ref = acc.id
join CLIENTS clnt on acc.client_ref = clnt.ID
where rec.oper_date between datetime('now', '-1 month') and datetime('now') -- все операции за последний месяц
GROUP by rec.oper_date -- в разрезе даты