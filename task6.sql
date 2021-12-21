SELECT
  clnt.ID id
, clnt.NAME name
, (SELECT
   SUM(_rec.sum)
   from ACCOUNTS _acc
   join RECORDS _rec on _acc.id = _rec.acc_ref
   where clnt.id = _acc.client_ref
   and _rec.oper_date BETWEEN datetime('now', '-1 month')  and datetime('now')
  ) operations_sum
--, sum(rec.sum)
FROM CLIENTS clnt
where operations_sum not null