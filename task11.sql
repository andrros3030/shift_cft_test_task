ALTER TABLE PRODUCTS
ADD REG_SUM NUMBER(10.2);
UPDATE PRODUCTS
SET REG_SUM = (SELECT max(rec.sum)
                                  from RECORDS rec
                                  JOIN RECORD
                                  JOIN ACCOUNTS acc on rec.acc_ref = acc.id
                                  where acc.product_ref = PRODUCTS.ID);
UPDATE PRODUCTS
SET REG_SUM = (SELECT
               case when prd_type.id = 1
               then (SELECT max(rec.sum)
                 from RECORDS rec
                 WHERE rec.acc_ref = acc.id
                 AND rec.dt = 1
               )
               ELSE (SELECT max(rec.sum)
                 from RECORDS rec
                 WHERE rec.acc_ref = acc.id
                 AND rec.dt = 0
               )
               end res
               FROM PRODUCT_TYPE prd_type
               JOIN ACCOUNTS acc on acc.product_ref = PRODUCTS.ID
               where acc.product_ref = PRODUCTS.ID
               AND PRODUCTS.product_type_id = prd_type.id
              );