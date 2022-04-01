1) List all columns of OrderItem table.

SELECT * FROM order_item;
+----------+-------------------+-------------------+-------------+-------------------------+----------+-------------+--------------------+
| ORDER_ID | ORDER_ITEM_SEQ_ID | SHIP_GROUP_SEQ_ID | PRODUCT_ID  | ITEM_DESCRIPTION        | QUANTITY | UNIT_AMOUNT | orderItemTypeId    |
+----------+-------------------+-------------------+-------------+-------------------------+----------+-------------+--------------------+
| 1051     | 01                | 01                | DEMO_UNIT_1 | Demo Product Unit One   | 1.000000 |    16.99000 | PRODUCT_ORDER_ITEM |
| 1051     | 02                | 02                | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |    18.99000 | PRODUCT_ORDER_ITEM |
| 1051     | 03                | 02                | NULL        | Rental Item             | 3.000000 |     1.33000 | RENTAL_ORDER_ITEM  |
| 1052     | 01                | 01                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 | PRODUCT_ORDER_ITEM |
| 1052     | 02                | 01                | NULL        | Rental Item             | 1.000000 |     1.33000 | RENTAL_ORDER_ITEM  |
| 1061     | 01                | 01                | DEMO_UNIT_2 | Demo Product Unit Two   | 2.000000 |    15.99000 | PRODUCT_ORDER_ITEM |
| 1061     | 02                | 02                | DEMO_UNIT_5 | Demo Product Unit Five  | 1.000000 |    55.09000 | PRODUCT_ORDER_ITEM |
| 1064     | 01                | 01                | DEMO_UNIT_5 | Demo Product Unit Five  | 3.000000 |    12.07000 | PRODUCT_ORDER_ITEM |
| 1064     | 02                | 02                | DEMO_UNIT_2 | Demo Product Unit Two   | 2.000000 |     6.33000 | PRODUCT_ORDER_ITEM |
| 1102     | 01                | 01                | DEMO_UNIT_1 | Demo Product Unit One   | 3.000000 |    16.99000 | PRODUCT_ORDER_ITEM |
| 1102     | 02                | 01                | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |    18.99000 | PRODUCT_ORDER_ITEM |
| 1102     | 03                | 01                | NULL        | Rental Item             | 3.000000 |     2.33000 | RENTAL_ORDER_ITEM  |
| 1102     | 04                | 02                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 | PRODUCT_ORDER_ITEM |
| 1153     | 01                | 01                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 | PRODUCT_ORDER_ITEM |
| 1153     | 02                | 01                | NULL        | Rental Item             | 1.000000 |     1.33000 | RENTAL_ORDER_ITEM  |
| 1153     | 03                | 01                | DEMO_UNIT_4 | Product Unit FourDemo   | 1.000000 |    12.99000 | PRODUCT_ORDER_ITEM |
| 1153     | 04                | 01                | NULL        | Rental Item             | 1.000000 |     2.33000 | RENTAL_ORDER_ITEM  |
| 1255     | 01                | 01                | DEMO_UNIT_4 | Demo Product Unit Four  | 3.000000 |    12.99000 | PRODUCT_ORDER_ITEM |
| 1255     | 02                | 01                | NULL        | Rental Item             | 3.000000 |     1.33000 | RENTAL_ORDER_ITEM  |
| 1255     | 03                | 02                | DEMO_UNIT_5 | Demo Product Unit Five  | 3.000000 |    10.99000 | PRODUCT_ORDER_ITEM |
+----------+-------------------+-------------------+-------------+-------------------------+----------+-------------+--------------------+
===========================================================================================================
2) List the person details for all females.

SELECT * FROM Person WHERE Gender = "F";
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+
| PARTY_ID  | FIRST_NAME | MIDDLE_NAME | LAST_NAME | GENDER | BIRTH_DATE | EMPLOYMENT_STATUS_ENUM_ID | OCCUPATION        |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+
| CustDemo3 | Lily       | J           | Brown     | F      | 1998-06-11 | EMPS_PARTTIME             | Software Engineer |
| CustDemo4 | John       | J           | Norvig    | F      | 1998-06-11 | EMPS_FULLTIME             | Software Engineer |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+

===========================================================================================================
3) List the Order Header table contents so that the latest placed order appears in the top.

SELECT * FROM order_header ORDER BY order_date DESC;
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
| ORDER_ID | ORDER_TYPE_ID | ORDER_NAME   | ORDER_DATE              | STATUS_ID       | CURRENCY_UOM_ID | PRODUCT_STORE_ID  | SALES_CHANNEL_ENUM_ID | GRAND_TOTAL |
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
| 1064     | SALES_ORDER   | Test Order 7 | 2022-01-09 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     48.8700 |
| 1153     | SALES_ORDER   | Test Order 4 | 2020-04-19 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     31.6400 |
| 1051     | SALES_ORDER   | Test Order 1 | 2020-04-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     77.9500 |
| 1052     | SALES_ORDER   | Test Order 2 | 2020-04-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     16.3200 |
| 1102     | SALES_ORDER   | Test Order 3 | 2020-04-17 00:00:00.000 | ORDER_COMPLETED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |    129.9200 |
| 1255     | SALES_ORDER   | Test Order 5 | 2020-03-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     75.9300 |
| 1061     | SALES_ORDER   | Test Order 6 | 2019-04-24 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     87.0700 |
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+

===========================================================================================================
4) Output the count of Order Item Ship Group for each Shipment Method Type Id.

SELECT COUNT(shipment_method_type_id) FROM order_item_ship_group;
+--------------------------------+
| count(shipment_method_type_id) |
+--------------------------------+
|                             12 |
+--------------------------------+

===========================================================================================================
5) List the Order Header details with grand total greater than 50.

SELECT * FROM order_header WHERE grand_total > 50;
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
| ORDER_ID | ORDER_TYPE_ID | ORDER_NAME   | ORDER_DATE              | STATUS_ID       | CURRENCY_UOM_ID | PRODUCT_STORE_ID  | SALES_CHANNEL_ENUM_ID | GRAND_TOTAL |
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
| 1051     | SALES_ORDER   | Test Order 1 | 2020-04-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     77.9500 |
| 1061     | SALES_ORDER   | Test Order 6 | 2019-04-24 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     87.0700 |
| 1102     | SALES_ORDER   | Test Order 3 | 2020-04-17 00:00:00.000 | ORDER_COMPLETED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |    129.9200 |
| 1255     | SALES_ORDER   | Test Order 5 | 2020-03-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     75.9300 |
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+

===========================================================================================================
6) List the Person details who have not placed any orders.

SELECT * FROM person
        WHERE party_id
        NOT IN (SELECT customer_party_id FROM order_item_ship_group);

+-----------+------------+-------------+-----------+--------+------------+---------------------------+------------+
| PARTY_ID  | FIRST_NAME | MIDDLE_NAME | LAST_NAME | GENDER | BIRTH_DATE | EMPLOYMENT_STATUS_ENUM_ID | OCCUPATION |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+------------+
| CustDemo2 | Jack       | john        | Smith     | M      | 1999-09-14 | EMPS_FULLTIME             | doctor     |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+------------+

===========================================================================================================
7) List the Person details whose first name starts with ‘J’ and third character is ’h’.

SELECT * FROM person WHERE first_name LIKE "J_h%";
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+
| PARTY_ID  | FIRST_NAME | MIDDLE_NAME | LAST_NAME | GENDER | BIRTH_DATE | EMPLOYMENT_STATUS_ENUM_ID | OCCUPATION        |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+
| CustDemo4 | John       | J           | Norvig    | F      | 1998-06-11 | EMPS_FULLTIME             | Software Engineer |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+

===========================================================================================================
8) List all Order Item details for the order with orderId, 1102 and shipGroupSeqId, 01.

SELECT * FROM order_item WHERE order_id = 1102 AND ship_group_seq_id = 01;
+----------+-------------------+-------------------+-------------+-----------------------+----------+-------------+--------------------+
| ORDER_ID | ORDER_ITEM_SEQ_ID | SHIP_GROUP_SEQ_ID | PRODUCT_ID  | ITEM_DESCRIPTION      | QUANTITY | UNIT_AMOUNT | orderItemTypeId    |
+----------+-------------------+-------------------+-------------+-----------------------+----------+-------------+--------------------+
| 1102     | 01                | 01                | DEMO_UNIT_1 | Demo Product Unit One | 3.000000 |    16.99000 | PRODUCT_ORDER_ITEM |
| 1102     | 02                | 01                | DEMO_UNIT_2 | Demo Product Unit Two | 3.000000 |    18.99000 | PRODUCT_ORDER_ITEM |
| 1102     | 03                | 01                | NULL        | Rental Item           | 3.000000 |     2.33000 | RENTAL_ORDER_ITEM  |
+----------+-------------------+-------------------+-------------+-----------------------+----------+-------------+--------------------+

===========================================================================================================
9) List the Order Item details for only those products for which chargeShipping is set to "Y".

SELECT O.product_id,O.order_item_seq_id,O.ship_group_seq_id,O.product_id,O.item_description,
        O.quantity,O.UNIT_AMOUNT,P.charge_shipping,P.manufacturer_party_id FROM order_item O,
         product P WHERE O.product_id = P.product_id AND P.charge_shippi
+-------------+-------------------+-------------------+-------------+-------------------------+----------+-------------+-----------------+-----------------------+
| product_id  | order_item_seq_id | ship_group_seq_id | product_id  | item_description        | quantity | UNIT_AMOUNT | charge_shipping | manufacturer_party_id |
+-------------+-------------------+-------------------+-------------+-------------------------+----------+-------------+-----------------+-----------------------+
| DEMO_UNIT_1 | 01                | 01                | DEMO_UNIT_1 | Demo Product Unit One   | 1.000000 |    16.99000 | Y               | ORG_ZIZI_RETAIL       |
| DEMO_UNIT_2 | 02                | 02                | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |    18.99000 | Y               | ORG_ZIZI_RETAIL       |
| DEMO_UNIT_3 | 01                | 01                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 | Y               | ORG_ZIZI_RETAIL       |
| DEMO_UNIT_4 | 03                | 01                | DEMO_UNIT_4 | Product Unit FourDemo   | 1.000000 |    12.99000 | Y               | ORG_ZIZI_RETAIL       |
| DEMO_UNIT_5 | 02                | 02                | DEMO_UNIT_5 | Demo Product Unit Five  | 1.000000 |    55.09000 | Y               | ORG_ZIZI_RETAIL       |
+-------------+-------------------+-------------------+-------------+-------------------------+----------+-------------+-----------------+-----------------------+

===========================================================================================================
10) List the Person details whose employment status is either EMPS_SELF or EMPS_FULLTIME without using the OR operator.

SELECT * FROM person WHERE employment_status_enum_id IN ('EMPS_SELF','EMPS_FULLTIME');
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+
| PARTY_ID  | FIRST_NAME | MIDDLE_NAME | LAST_NAME | GENDER | BIRTH_DATE | EMPLOYMENT_STATUS_ENUM_ID | OCCUPATION        |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+
| CustDemo1 | Joe        | Q           | Public    | M      | 1999-06-15 | EMPS_FULLTIME             | Software Engineer |
| CustDemo2 | Jack       | john        | Smith     | M      | 1999-09-14 | EMPS_FULLTIME             | doctor            |
| CustDemo4 | John       | J           | Norvig    | F      | 1998-06-11 | EMPS_FULLTIME             | Software Engineer |
| CustDemo5 | Charlie    | Jack        | William   | M      | 1992-04-22 | EMPS_SELF                 | Architect         |
| CustDemo6 | James      | W           | Evens     | M      | 1993-05-20 | EMPS_FULLTIME             | Civil Engineer    |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+

===========================================================================================================
11) List all columns of facility table.

 SELECT * FROM facility;
+--------------------+---------------------+
| FACILITY_ID        | FACILITY_NAME       |
+--------------------+---------------------+
| RegionalWarehouse1 | Regional Warehouse1 |
| RegionalWarehouse2 | Regional Warehouse2 |
| WebStoreWarehouse  | Web Store Warehouse |
+--------------------+---------------------+

===========================================================================================================
12) Output the sum of the grandTotal from Order Header table for each order date.

SELECT order_id,order_type_id,order_name,order_date,status_id,
        currency_uom_id,product_store_id,sales_channel_enum_id,
        SUM(grand_total)
        FROM order_header
        GROUP BY order_date;
+----------+---------------+--------------+-------------------------+----------------+-----------------+-------------------+-----------------------+------------------+
| order_id | order_type_id | order_name   | order_date              | status_id      | currency_uom_id | product_store_id  | sales_channel_enum_id | SUM(grand_total) |
+----------+---------------+--------------+-------------------------+----------------+-----------------+-------------------+-----------------------+------------------+
| 1061     | SALES_ORDER   | Test Order 6 | 2019-04-24 00:00:00.000 | ORDER_APPROVED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |          87.0700 |
| 1255     | SALES_ORDER   | Test Order 5 | 2020-03-17 00:00:00.000 | ORDER_APPROVED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |          75.9300 |
| 1051     | SALES_ORDER   | Test Order 1 | 2020-04-17 00:00:00.000 | ORDER_APPROVED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |         224.1900 |
| 1153     | SALES_ORDER   | Test Order 4 | 2020-04-19 00:00:00.000 | ORDER_APPROVED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |          31.6400 |
| 1064     | SALES_ORDER   | Test Order 7 | 2022-01-09 00:00:00.000 | ORDER_APPROVED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |          48.8700 |
+----------+---------------+--------------+-------------------------+----------------+-----------------+-------------------+-----------------------+------------------+

===========================================================================================================
13) List the Order Header records where grand total is greater than highest grand total of the order date on 2020-04-17.

SELECT * FROM order_header
        GROUP BY grand_total
        HAVING SUM(grand_total) > (SELECT SUM(grand_total)
                                    FROM order_header
                                    WHERE order_date = '2020-04-17');

Empty set (0.00 sec)


===========================================================================================================
14) Output the sum of the grandTotal from Order Header table for each order date where total sum is greater than 60.

SELECT order_id,order_type_id,order_name,order_date,status_id,currency_uom_id,
        product_store_id,sales_channel_enum_id,SUM(grand_total) AS Sum_of_grand
        FROM order_header GROUP BY order_date HAVING SUM(grand_total)>60;

+----------+---------------+--------------+-------------------------+----------------+-----------------+-------------------+-----------------------+--------------+
| order_id | order_type_id | order_name   | order_date              | status_id      | currency_uom_id | product_store_id  | sales_channel_enum_id | Sum_of_grand |
+----------+---------------+--------------+-------------------------+----------------+-----------------+-------------------+-----------------------+--------------+
| 1061     | SALES_ORDER   | Test Order 6 | 2019-04-24 00:00:00.000 | ORDER_APPROVED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |      87.0700 |
| 1255     | SALES_ORDER   | Test Order 5 | 2020-03-17 00:00:00.000 | ORDER_APPROVED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |      75.9300 |
| 1051     | SALES_ORDER   | Test Order 1 | 2020-04-17 00:00:00.000 | ORDER_APPROVED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     224.1900 |
+----------+---------------+--------------+-------------------------+----------------+-----------------+-------------------+-----------------------+--------------+

===========================================================================================================
15) Output the Person's party Id, first name, last name and orderId for all customers who have order date 2020-04-17.

SELECT P.party_id, P.first_name, P.last_name, O.order_id
        FROM Person P, order_header O,order_item_ship_group oisg
        WHERE P.party_id = oisg.customer_party_id
        AND O.order_id = oisg.order_id
        AND O.order_date = '2020-04-17'
        GROUP BY oisg.customer_party_id;

+-----------+------------+-----------+----------+
| party_id  | first_name | last_name | order_id |
+-----------+------------+-----------+----------+
| CustDemo1 | Joe        | Public    | 1051     |
| CustDemo3 | Lily       | Brown     | 1102     |
+-----------+------------+-----------+----------+
===========================================================================================================
16) List the Order Header details for highest grandTotal for each order date.

SELECT order_id, order_type_id, order_name, order_date, status_id,
        currency_uom_id, product_store_id, sales_channel_enum_id,
        MAX(grand_total) AS highest_grandTotal
        FROM order_header
        GROUP BY order_date;

+----------+---------------+--------------+-------------------------+----------------+-----------------+-------------------+-----------------------+--------------------+
| order_id | order_type_id | order_name   | order_date              | status_id      | currency_uom_id | product_store_id  | sales_channel_enum_id | highest_grandTotal |
+----------+---------------+--------------+-------------------------+----------------+-----------------+-------------------+-----------------------+--------------------+
| 1061     | SALES_ORDER   | Test Order 6 | 2019-04-24 00:00:00.000 | ORDER_APPROVED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |            87.0700 |
| 1255     | SALES_ORDER   | Test Order 5 | 2020-03-17 00:00:00.000 | ORDER_APPROVED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |            75.9300 |
| 1051     | SALES_ORDER   | Test Order 1 | 2020-04-17 00:00:00.000 | ORDER_APPROVED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |           129.9200 |
| 1153     | SALES_ORDER   | Test Order 4 | 2020-04-19 00:00:00.000 | ORDER_APPROVED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |            31.6400 |
| 1064     | SALES_ORDER   | Test Order 7 | 2022-01-09 00:00:00.000 | ORDER_APPROVED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |            48.8700 |
+----------+---------------+--------------+-------------------------+----------------+-----------------+-------------------+-----------------------+--------------------+
===========================================================================================================
17) Find the count of order item ship group for each Person. Output the below details for this query:
    partyId
    firstName
    lastName
    count

SELECT P.party_id, P.first_name, P.last_name, COUNT(order_id)
        FROM  person P, order_item_ship_group OISG
        WHERE p.party_id = OISG.customer_party_id
        GROUP BY OISG.customer_party_id;

+-----------+------------+-----------+-----------------+
| party_id  | first_name | last_name | COUNT(order_id) |
+-----------+------------+-----------+-----------------+
| CustDemo1 | Joe        | Public    |               3 |
| CustDemo3 | Lily       | Brown     |               2 |
| CustDemo4 | John       | Norvig    |               1 |
| CustDemo5 | Charlie    | William   |               2 |
| CustDemo6 | James      | Evens     |               4 |
+-----------+------------+-----------+-----------------+
===========================================================================================================
18) Output the customerPartyId and highest order grandTotal for each customer.

SELECT OISG.customer_party_id, MAX(O.grand_total)
        FROM order_item_ship_group OISG, order_header O
        WHERE OISG.order_id = O.order_id
        GROUP BY OISG.customer_party_id;

+-------------------+--------------------+
| customer_party_id | MAX(O.grand_total) |
+-------------------+--------------------+
| CustDemo1         |            77.9500 |
| CustDemo3         |           129.9200 |
| CustDemo4         |            31.6400 |
| CustDemo5         |            75.9300 |
| CustDemo6         |            87.0700 |
+-------------------+--------------------+
===========================================================================================================
19) List the unique order Ids for the Order Headers with more than one orderItem ShipGroup.

SELECT OISG.order_id
        FROM order_header O, order_item_ship_group OISG
        WHERE O.order_id = OISG.order_id
        GROUP BY OISG.order_id
        HAVING COUNT(OISG.order_id)>1;

+----------+
| order_id |
+----------+
| 1051     |
| 1061     |
| 1064     |
| 1102     |
| 1255     |
+----------+
===========================================================================================================
20) List all Order Header details whose grandTotal is greater than the average grandTotal for all orders date 2020-04-17.

 SELECT * FROM order_header
        WHERE grand_total > (SELECT AVG(grand_total)
                                FROM order_header
                                WHERE order_date = '2020-04-17');

+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
| ORDER_ID | ORDER_TYPE_ID | ORDER_NAME   | ORDER_DATE              | STATUS_ID       | CURRENCY_UOM_ID | PRODUCT_STORE_ID  | SALES_CHANNEL_ENUM_ID | GRAND_TOTAL |
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
| 1051     | SALES_ORDER   | Test Order 1 | 2020-04-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     77.9500 |
| 1061     | SALES_ORDER   | Test Order 6 | 2019-04-24 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     87.0700 |
| 1102     | SALES_ORDER   | Test Order 3 | 2020-04-17 00:00:00.000 | ORDER_COMPLETED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |    129.9200 |
| 1255     | SALES_ORDER   | Test Order 5 | 2020-03-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     75.9300 |
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
===========================================================================================================
21) List the RENTAL_ORDER_ITEM Order Item Details for each order.

SELECT * FROM order_item
        WHERE orderitemtypeid = 'rental_order_item'
        GROUP BY order_id;

+----------+-------------------+-------------------+------------+------------------+----------+-------------+-------------------+
| ORDER_ID | ORDER_ITEM_SEQ_ID | SHIP_GROUP_SEQ_ID | PRODUCT_ID | ITEM_DESCRIPTION | QUANTITY | UNIT_AMOUNT | orderItemTypeId   |
+----------+-------------------+-------------------+------------+------------------+----------+-------------+-------------------+
| 1051     | 03                | 02                | NULL       | Rental Item      | 3.000000 |     1.33000 | RENTAL_ORDER_ITEM |
| 1052     | 02                | 01                | NULL       | Rental Item      | 1.000000 |     1.33000 | RENTAL_ORDER_ITEM |
| 1102     | 03                | 01                | NULL       | Rental Item      | 3.000000 |     2.33000 | RENTAL_ORDER_ITEM |
| 1153     | 02                | 01                | NULL       | Rental Item      | 1.000000 |     1.33000 | RENTAL_ORDER_ITEM |
| 1255     | 02                | 01                | NULL       | Rental Item      | 3.000000 |     1.33000 | RENTAL_ORDER_ITEM |
+----------+-------------------+-------------------+------------+------------------+----------+-------------+-------------------+
===========================================================================================================
22) Find the Order details assigned to the facility with the “WebStoreWarehouse” value. Output the below fields for this query:
    orderId
    shipGroupSeqId
    facilityId
    customerPartyId
    productId
    itemDescription
    quantity

    SELECT OISG.order_id, OISG.ship_group_seq_id, OISG.facility_id,
           OISG.customer_party_id, O.product_id, O.quantity, O.item_description
           FROM order_item_ship_group OISG, order_item O
           WHERE OISG.order_id = O.order_id
           AND OISG.facility_id = 'WebStoreWarehouse';

    +----------+-------------------+-------------------+-------------------+-------------+----------+-------------------------+
    | order_id | ship_group_seq_id | facility_id       | customer_party_id | product_id  | quantity | item_description        |
    +----------+-------------------+-------------------+-------------------+-------------+----------+-------------------------+
    | 1051     | 01                | WebStoreWarehouse | CustDemo1         | DEMO_UNIT_1 | 1.000000 | Demo Product Unit One   |
    | 1051     | 01                | WebStoreWarehouse | CustDemo1         | DEMO_UNIT_2 | 3.000000 | Demo Product Unit Two   |
    | 1051     | 01                | WebStoreWarehouse | CustDemo1         | NULL        | 3.000000 | Rental Item             |
    | 1052     | 01                | WebStoreWarehouse | CustDemo1         | DEMO_UNIT_3 | 1.000000 | Demo Product Unit Three |
    | 1052     | 01                | WebStoreWarehouse | CustDemo1         | NULL        | 1.000000 | Rental Item             |
    | 1061     | 01                | WebStoreWarehouse | CustDemo6         | DEMO_UNIT_2 | 2.000000 | Demo Product Unit Two   |
    | 1061     | 01                | WebStoreWarehouse | CustDemo6         | DEMO_UNIT_5 | 1.000000 | Demo Product Unit Five  |
    | 1064     | 02                | WebStoreWarehouse | CustDemo6         | DEMO_UNIT_5 | 3.000000 | Demo Product Unit Five  |
    | 1064     | 02                | WebStoreWarehouse | CustDemo6         | DEMO_UNIT_2 | 2.000000 | Demo Product Unit Two   |
    | 1102     | 01                | WebStoreWarehouse | CustDemo3         | DEMO_UNIT_1 | 3.000000 | Demo Product Unit One   |
    | 1102     | 01                | WebStoreWarehouse | CustDemo3         | DEMO_UNIT_2 | 3.000000 | Demo Product Unit Two   |
    | 1102     | 01                | WebStoreWarehouse | CustDemo3         | NULL        | 3.000000 | Rental Item             |
    | 1102     | 01                | WebStoreWarehouse | CustDemo3         | DEMO_UNIT_3 | 1.000000 | Demo Product Unit Three |
    | 1153     | 01                | WebStoreWarehouse | CustDemo4         | DEMO_UNIT_3 | 1.000000 | Demo Product Unit Three |
    | 1153     | 01                | WebStoreWarehouse | CustDemo4         | NULL        | 1.000000 | Rental Item             |
    | 1153     | 01                | WebStoreWarehouse | CustDemo4         | DEMO_UNIT_4 | 1.000000 | Product Unit FourDemo   |
    | 1153     | 01                | WebStoreWarehouse | CustDemo4         | NULL        | 1.000000 | Rental Item             |
    | 1255     | 01                | WebStoreWarehouse | CustDemo5         | DEMO_UNIT_4 | 3.000000 | Demo Product Unit Four  |
    | 1255     | 01                | WebStoreWarehouse | CustDemo5         | NULL        | 3.000000 | Rental Item             |
    | 1255     | 01                | WebStoreWarehouse | CustDemo5         | DEMO_UNIT_5 | 3.000000 | Demo Product Unit Five  |
    +----------+-------------------+-------------------+-------------------+-------------+----------+-------------------------+
===========================================================================================================
23) List the below Order Information for the orderId, 1153.
    orderId
    shipGroupSeqId
    customerPartyId
    firstName
    lastName
    orderDate
    orderItemSeqId
    productId
    itemDescription
    unitAmount
    quantity
    grandTotal

    SELECT OH.order_id, OI.ship_group_seq_id,OISG.customer_party_id,
            P.first_name, P.last_name, OH.order_date, OI.order_item_seq_id,ORDER_ITEM_SEQ_ID,
            PR.product_id, OI.item_description, OI.quantity, OI.unit_amount, OH.grand_total
            FROM order_item_ship_group OISG, person P, product PR, order_header OH, order_item OI
            WHERE OH.order_id = '1153'
            GROUP BY OISG.customer_party_id;

    +----------+-------------------+-------------------+------------+-----------+-------------------------+-------------------+-------------------+-------------+-----------------------+----------+-------------+-------------+
    | order_id | ship_group_seq_id | customer_party_id | first_name | last_name | order_date              | order_item_seq_id | ORDER_ITEM_SEQ_ID | product_id  | item_description      | quantity | unit_amount | grand_total |
    +----------+-------------------+-------------------+------------+-----------+-------------------------+-------------------+-------------------+-------------+-----------------------+----------+-------------+-------------+
    | 1153     | 01                | CustDemo1         | Joe        | Public    | 2020-04-19 00:00:00.000 | 01                | 01                | DEMO_UNIT_1 | Demo Product Unit One | 1.000000 |    16.99000 |     31.6400 |
    | 1153     | 01                | CustDemo3         | Joe        | Public    | 2020-04-19 00:00:00.000 | 01                | 01                | DEMO_UNIT_1 | Demo Product Unit One | 1.000000 |    16.99000 |     31.6400 |
    | 1153     | 01                | CustDemo4         | Joe        | Public    | 2020-04-19 00:00:00.000 | 01                | 01                | DEMO_UNIT_1 | Demo Product Unit One | 1.000000 |    16.99000 |     31.6400 |
    | 1153     | 01                | CustDemo5         | Joe        | Public    | 2020-04-19 00:00:00.000 | 01                | 01                | DEMO_UNIT_1 | Demo Product Unit One | 1.000000 |    16.99000 |     31.6400 |
    | 1153     | 01                | CustDemo6         | Joe        | Public    | 2020-04-19 00:00:00.000 | 01                | 01                | DEMO_UNIT_1 | Demo Product Unit One | 1.000000 |    16.99000 |     31.6400 |
    +----------+-------------------+-------------------+------------+-----------+-------------------------+-------------------+-------------------+-------------+-----------------------+----------+-------------+-------------+

===========================================================================================================
24) List the below Order details for the customer partyId, CustDemo1.
    orderId
    shipGroupSeqId
    orderName
    customerPartyId
    orderItemSeqId
    productId
    itemDescription
    quantity
    unitAmount

SELECT OH.order_id, OSIG.ship_group_seq_id, OH.order_name, OSIG.customer_party_id, OI.order_item_seq_id,
        P.product_id, OI.item_description, OI.quantity, OI.unit_amount
         FROM order_header OH, order_item_ship_group OSIG, order_item OI, product P
         WHERE OSIG.customer_party_id = 'CustDemo1'
         GROUP BY OH.order_name;

+----------+-------------------+--------------+-------------------+-------------------+-------------+-----------------------+----------+-------------+
| order_id | ship_group_seq_id | order_name   | customer_party_id | order_item_seq_id | product_id  | item_description      | quantity | unit_amount |
+----------+-------------------+--------------+-------------------+-------------------+-------------+-----------------------+----------+-------------+
| 1051     | 01                | Test Order 1 | CustDemo1         | 01                | DEMO_UNIT_1 | Demo Product Unit One | 1.000000 |    16.99000 |
| 1052     | 01                | Test Order 2 | CustDemo1         | 01                | DEMO_UNIT_1 | Demo Product Unit One | 1.000000 |    16.99000 |
| 1102     | 01                | Test Order 3 | CustDemo1         | 01                | DEMO_UNIT_1 | Demo Product Unit One | 1.000000 |    16.99000 |
| 1153     | 01                | Test Order 4 | CustDemo1         | 01                | DEMO_UNIT_1 | Demo Product Unit One | 1.000000 |    16.99000 |
| 1255     | 01                | Test Order 5 | CustDemo1         | 01                | DEMO_UNIT_1 | Demo Product Unit One | 1.000000 |    16.99000 |
| 1061     | 01                | Test Order 6 | CustDemo1         | 01                | DEMO_UNIT_1 | Demo Product Unit One | 1.000000 |    16.99000 |
| 1064     | 01                | Test Order 7 | CustDemo1         | 01                | DEMO_UNIT_1 | Demo Product Unit One | 1.000000 |    16.99000 |
+----------+-------------------+--------------+-------------------+-------------------+-------------+-----------------------+----------+-------------+

===========================================================================================================
25) List facilityId and total where total = sum of (orderItem.quantity X orderItem.unitAmount).

===========================================================================================================
