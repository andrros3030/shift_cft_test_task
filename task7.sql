UPDATE ACCOUNTS
set saldo = coalesce((
    SELECT SUM(power(-1, _rec.dt) * _rec.SUM) -- получаем сумму операций по данному счёту с проверкой дебета/кредита
    FROM RECORDS _rec
    WHERE _rec.acc_ref = ACCOUNTS.ID
), 0) -- если операций не происходило (NULL) искомое значение - 0
WHERE
coalesce((
    SELECT SUM(power(-1, _rec.dt) * _rec.SUM) -- получаем сумму операций по данному счёту с проверкой дебета/кредита
    FROM RECORDS _rec
    WHERE _rec.acc_ref = ACCOUNTS.ID
), 0) != ACCOUNTS.saldo; -- делаем замену только в случае несоответствия данных уже имеющимся