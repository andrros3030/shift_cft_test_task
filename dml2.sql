-- TODO: add data to complete tasks
-- for task 4, 6:
insert into PRODUCTS(ID, PRODUCT_TYPE_ID, NAME, CLIENT_REF, OPEN_DATE, CLOSE_DATE) values (333, 2, 'Депозитный договор с Петров С.И.', 3, '01.08.2017', null);

insert into ACCOUNTS(ID, NAME, SALDO, CLIENT_REF, OPEN_DATE, CLOSE_DATE, PRODUCT_REF, ACC_NUM) values (222, 'Депозитный счет для Петрова С.И.', 6000, 3,'01.08.2017', null, 333, '333222333');

insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (111, 1, 5000, 1, '28.11.2021');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (222, 1, 5000, 222, '10.12.2021');