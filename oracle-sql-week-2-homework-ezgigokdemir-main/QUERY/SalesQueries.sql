-- Birim fiyatý 150'den büyük olan order_itemlarý bulunuz. ----Sales
select * from sales.order_items where UNIT_PRICE > 150;

-- Ýþe alým tarihi Mayýs 2016 olan çalýþanlarý bulunuz. ----Sales
select * from sales.employees where HIRE_DATE between '2016-05-01' and '2016-05-31';

-- Adý Charlie ya da Charlsie olan contactlarý bulunuz. ----Sales
select * from SALES.CONTACTS where FIRST_NAME = 'Charlie' or FIRST_NAME = 'Charlsie';

-- Adet sayýsý 10dan büyük 50den küçük envanterleri bulunuz. ----Sales
select * from (select count(WAREHOUSE_ID) as NumberOfPieces from sales.inventories group by PRODUCT_ID)
where NumberOfPieces > 10 and NumberOfPieces < 50;

-- Bir sipariþte toplam 100.0000'den fazla ücret ödeyen emirler nedir? ----Sales
select * from (SELECT
    s.order_id,
    SUM(i.UNIT_PRICE) as Total
FROM  sales.orders s
INNER JOIN sales.order_items i ON s.order_id = i.order_id
GROUP BY s.order_id ) where Total > 100.0000;

-- Manager'ý olmayan çalýþanlar hangileridir? ----Sales
select * from sales.employees where MANAGER_ID is null;

-- State bilgisi boþ olan lokasyonlarý bulunuz.----Sales
select * from sales.locations where STATE is null;

-- Durumu iptal olan ve satýcýlarý olmayan emirler hangileridir? ----Sales
select * from sales.orders where STATUS = 'Canceled' and SALESMAN_ID is null;

-- Ocak 2016 ile Haziran 2016 arasýnda verilen sipariþler hangileridir? ----Sales
select * from sales.orders where ORDER_DATE between '2016-01-01' and '2016-06-30';

-- Unvaný 'S' ile baþlamayan çalýþanlarý bulunuz. ----Sales
select * from sales.employees where JOB_TITLE not like 'S%';

-- Herhangi bir çeþit Intel Xeon ürünler hangileridir? ----Sales
select * from sales.products where PRODUCT_NAME like '%Intel Xeon%';

-- Ýsmi 'C' ile baþlayan kontaklar hangileridir? Soyadýna göre alfabetik sýra ile sýralayalým. ----Sales
select * from sales.contacts where FIRST_NAME like 'C%' order by LAST_NAME;

-- Ürün adý 'Asus' ile baþlayan ve liste fiyatý standart ücretinden küçük olan ürünleri bulunuz. ----Sales
select * from sales.products where PRODUCT_NAME like 'Asus%' and STANDARD_COST > LIST_PRICE;

-- 1,2,4,5 id'li kategorilerin bilgilerini bulunuz. ----Sales
select * from sales.product_categories where CATEGORY_ID in (1,2,4,5);

-- Sipariþ durumu 'Shipped'den farklý olan müþterilerin bilgilerini bulunuz. ----Sales
select c.CUSTOMER_ID, c.NAME, c.ADDRESS, c.WEBSITE, c.CREDIT_LIMIT from sales.customers c
join sales.orders o on c.CUSTOMER_ID = o.CUSTOMER_ID
where o.STATUS != 'Shipped';

-- Adet sayýsý 100e eþit olan envanterlerin product bilgisini bulunuz. ----Sales
select p.PRODUCT_ID, p.PRODUCT_NAME, p.DESCRIPTION, p.STANDARD_COST ,p.LIST_PRICE, p.CATEGORY_ID from 
(select PRODUCT_ID, count(WAREHOUSE_ID) as NumberOfPieces from sales.inventories group by PRODUCT_ID) T
join sales.products p on T.PRODUCT_ID = p.PRODUCT_ID
where T.NumberOfPieces = 100;

-- Beijing (8 numaralý warehouse)'da kaç farklý envanter vardýr? ----Sales
select count(i.WAREHOUSE_ID) from sales.inventories i
join sales.warehouses w on i.WAREHOUSE_ID = w.WAREHOUSE_ID
where w.WAREHOUSE_ID = 8 group by w.WAREHOUSE_ID;

-- Liste fiyati 1000 ile 3000 arasinda olan kaç product var?----Sales
select count(*) from (select * from sales.products where LIST_PRICE between 1000 and 3000);




























