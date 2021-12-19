insert into TARIFS(ID, NAME, COST) values (1,'Тариф за выдачу кредита', 10);
insert into TARIFS(ID, NAME, COST) values (2,'Тариф за открытие счета', 10);
insert into TARIFS(ID, NAME, COST) values (3,'Тариф за обслуживание карты', 10);

insert into PRODUCT_TYPE(ID, NAME, BEGIN_DATE, END_DATE, TARIF_REF) values (1, 'КРЕДИТ', '01.01.2018', null, 1);
insert into PRODUCT_TYPE(ID, NAME, BEGIN_DATE, END_DATE, TARIF_REF) values (2, 'ДЕПОЗИТ', '01.01.2018', null, 2);
insert into PRODUCT_TYPE(ID, NAME, BEGIN_DATE, END_DATE, TARIF_REF) values (3, 'КАРТА', '01.01.2018', null, 3);

insert into CLIENTS(ID, NAME, PLACE_OF_BIRTH, DATE_OF_BIRTH, ADDRESS, PASSPORT) values (1, 'Сидоров Иван Петрович', 'Россия, Московская облать, г. Пушкин','01.01.2001', 'Россия, Московская облать, г. Пушкин, ул. Грибоедова, д. 5', '2222 555555, выдан ОВД г. Пушкин, 10.01.2015');
insert into CLIENTS(ID, NAME, PLACE_OF_BIRTH, DATE_OF_BIRTH, ADDRESS, PASSPORT) values (2, 'Иванов Петр Сидорович', 'Россия, Московская облать, г. Клин','01.01.2001', 'Россия, Московская облать, г. Клин, ул. Мясникова, д. 3', '4444 666666, выдан ОВД г. Клин, 10.01.2015');
insert into CLIENTS(ID, NAME, PLACE_OF_BIRTH, DATE_OF_BIRTH, ADDRESS, PASSPORT) values (3, 'Петров Сиодр Иванович', 'Россия, Московская облать, г. Балашиха','01.01.2001', 'Россия, Московская облать, г. Балашиха, ул. Пушкина, д. 7', '4444 666666, выдан ОВД г. Клин, 10.01.2015');

insert into PRODUCTS(ID, PRODUCT_TYPE_ID, NAME, CLIENT_REF, OPEN_DATE, CLOSE_DATE) values (1, 1, 'Кредитный договор с Сидоровым И.П.', 1,'01.06.2015', null);
insert into PRODUCTS(ID, PRODUCT_TYPE_ID, NAME, CLIENT_REF, OPEN_DATE, CLOSE_DATE) values (2, 2, 'Депозитный договор с Сидоровым И.П.', 1, '01.08.2017', null);
insert into PRODUCTS(ID, PRODUCT_TYPE_ID, NAME, CLIENT_REF, OPEN_DATE, CLOSE_DATE) values (3, 3, 'Карточный договор с Сидоровым И.П.', 1, '01.08.2017', null);


insert into ACCOUNTS(ID, NAME, SALDO, CLIENT_REF, OPEN_DATE, CLOSE_DATE, PRODUCT_REF, ACC_NUM) values (1, 'Кредитный счет для Сидорова И.П.', -2000, 1,'01.06.2015', null, 1, '45502810401020000022');
insert into ACCOUNTS(ID, NAME, SALDO, CLIENT_REF, OPEN_DATE, CLOSE_DATE, PRODUCT_REF, ACC_NUM) values (2, 'Депозитный счет для Сидорова И.П.', 6000, 1,'01.08.2017', null, 2, '42301810400000000001');
insert into ACCOUNTS(ID, NAME, SALDO, CLIENT_REF, OPEN_DATE, CLOSE_DATE, PRODUCT_REF, ACC_NUM) values (3, 'Карточный счет для Сидорова И.П.', 8000, 1,'01.08.2017', null, 3, '40817810700000000001');

insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (1, 1, 5000, 1, '01.06.2015');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (2, 0, 1000, 1, '01.07.2015');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (3, 0, 2000, 1, '01.08.2015');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (4, 0, 3000, 1, '01.09.2015');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (5, 1, 5000, 1, '01.10.2015');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (6, 0, 3000, 1, '01.10.2015');

insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (7, 0, 10000, 2, '01.08.2017');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (8, 1, 1000, 2, '05.08.2017');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (9, 1, 2000, 2, '21.09.2017');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (10, 1, 5000, 2, '24.10.2017');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (11, 0, 6000, 2, '26.11.2017');

insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (12, 0, 120000, 3, '08.09.2017');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (13, 1, 1000, 3, '05.10.2017');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (14, 1, 2000, 3, '21.10.2017');
insert into RECORDS(ID, DT, SUM, ACC_REF, OPER_DATE) values (15, 1, 5000, 3, '24.10.2017');