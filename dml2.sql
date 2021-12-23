-- TODO: add data to complete tasks
-- for task 4, 6, 10:
insert into PRODUCTS(ID, PRODUCT_TYPE_ID, NAME, CLIENT_REF, OPEN_DATE, CLOSE_DATE) values (333, 2, 'Депозитный договор с Петров С.И.', 3, '2017-08-01', null);

insert into ACCOUNTS(ID, NAME, SALDO, CLIENT_REF, OPEN_DATE, CLOSE_DATE, PRODUCT_REF, ACC_NUM) values (222, 'Депозитный счет для Петрова С.И.', 6000, 3,'2017-08-01', null, 333, '333222333');

insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (111, 1, 5000, 1, '2021-11-28');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (222, 1, 5000, 222, '2021-12-10');

insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (123, 1, 2000, 2, '2021-11-28');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (124, 1, 500, 222, '2021-12-10');

insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (125, 1, 3000, 1, '2021-11-30');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (126, 1, 200, 222, '2021-12-11');

-- for task 8:
insert into PRODUCTS(ID, PRODUCT_TYPE_ID, NAME, CLIENT_REF, OPEN_DATE, CLOSE_DATE) values (223, 1, 'Кредитный договор с Иванов И. П.', 2, '2017-08-01', null);
insert into ACCOUNTS(ID, NAME, SALDO, CLIENT_REF, OPEN_DATE, CLOSE_DATE, PRODUCT_REF, ACC_NUM) values (888, 'Кредитный счет для Иванов И. П.', 0, 2,'2017-08-01', null, 223, '1234123');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (801, 1, 5000, 888, '2021-12-10'); -- первая кредитная операция
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (802, 0, 500, 888, '2021-12-10');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (803, 0, 4500, 888, '2021-12-10');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (804, 1, 200, 888, '2021-12-11'); -- повторное кредитование, пользователь добавляется в выборку
-- for task 8 and 9:
insert into PRODUCTS(ID, PRODUCT_TYPE_ID, NAME, CLIENT_REF, OPEN_DATE, CLOSE_DATE) values (224, 1, 'Кредитный договор с Петров С.И.', 3, '2017-08-01', null);
insert into ACCOUNTS(ID, NAME, SALDO, CLIENT_REF, OPEN_DATE, CLOSE_DATE, PRODUCT_REF, ACC_NUM) values (889, 'Кредитный счет для Петрова С.И.', 0, 3,'2017-08-01', null, 224, '12233222');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (805, 1, 5000, 889, '2021-12-10'); -- первая кредитная операция
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (806, 0, 500, 889, '2021-12-10');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (807, 0, 4500, 889, '2021-12-10'); -- повторное кредитование отсутствует, не добавляется в выборку