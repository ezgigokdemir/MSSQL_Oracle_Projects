-- Birim fiyat� 150'den b�y�k olan order_itemlar� bulunuz. ----Sales
select * from sales.order_items where UNIT_PRICE > 150;

-- ��e al�m tarihi May�s 2016 olan �al��anlar� bulunuz. ----Sales
select * from sales.employees where HIRE_DATE between '2016-05-01' and '2016-05-31';

-- Ad� Charlie ya da Charlsie olan contactlar� bulunuz. ----Sales
select * from SALES.CONTACTS where FIRST_NAME = 'Charlie' or FIRST_NAME = 'Charlsie';

-- Adet say�s� 10dan b�y�k 50den k���k envanterleri bulunuz. ----Sales
select * from (select count(WAREHOUSE_ID) as NumberOfPieces from sales.inventories group by PRODUCT_ID)
where NumberOfPieces > 10 and NumberOfPieces < 50;

-- Bir sipari�te toplam 100.0000'den fazla �cret �deyen emirler nedir? ----Sales
select * from (SELECT
    s.order_id,
    SUM(i.UNIT_PRICE) as Total
FROM  sales.orders s
INNER JOIN sales.order_items i ON s.order_id = i.order_id
GROUP BY s.order_id ) where Total > 100.0000;

-- Manager'� olmayan �al��anlar hangileridir? ----Sales
select * from sales.employees where MANAGER_ID is null;

-- State bilgisi bo� olan lokasyonlar� bulunuz.----Sales
select * from sales.locations where STATE is null;

-- Durumu iptal olan ve sat�c�lar� olmayan emirler hangileridir? ----Sales
select * from sales.orders where STATUS = 'Canceled' and SALESMAN_ID is null;

-- Ocak 2016 ile Haziran 2016 aras�nda verilen sipari�ler hangileridir? ----Sales
select * from sales.orders where ORDER_DATE between '2016-01-01' and '2016-06-30';

-- Unvan� 'S' ile ba�lamayan �al��anlar� bulunuz. ----Sales
select * from sales.employees where JOB_TITLE not like 'S%';

-- Herhangi bir �e�it Intel Xeon �r�nler hangileridir? ----Sales
select * from sales.products where PRODUCT_NAME like '%Intel Xeon%';

-- �smi 'C' ile ba�layan kontaklar hangileridir? Soyad�na g�re alfabetik s�ra ile s�ralayal�m. ----Sales
select * from sales.contacts where FIRST_NAME like 'C%' order by LAST_NAME;

-- �r�n ad� 'Asus' ile ba�layan ve liste fiyat� standart �cretinden k���k olan �r�nleri bulunuz. ----Sales
select * from sales.products where PRODUCT_NAME like 'Asus%' and STANDARD_COST > LIST_PRICE;

-- 1,2,4,5 id'li kategorilerin bilgilerini bulunuz. ----Sales
select * from sales.product_categories where CATEGORY_ID in (1,2,4,5);

-- Sipari� durumu 'Shipped'den farkl� olan m��terilerin bilgilerini bulunuz. ----Sales
select c.CUSTOMER_ID, c.NAME, c.ADDRESS, c.WEBSITE, c.CREDIT_LIMIT from sales.customers c
join sales.orders o on c.CUSTOMER_ID = o.CUSTOMER_ID
where o.STATUS != 'Shipped';

-- Adet say�s� 100e e�it olan envanterlerin product bilgisini bulunuz. ----Sales
select p.PRODUCT_ID, p.PRODUCT_NAME, p.DESCRIPTION, p.STANDARD_COST ,p.LIST_PRICE, p.CATEGORY_ID from 
(select PRODUCT_ID, count(WAREHOUSE_ID) as NumberOfPieces from sales.inventories group by PRODUCT_ID) T
join sales.products p on T.PRODUCT_ID = p.PRODUCT_ID
where T.NumberOfPieces = 100;

-- Beijing (8 numaral� warehouse)'da ka� farkl� envanter vard�r? ----Sales
select count(i.WAREHOUSE_ID) from sales.inventories i
join sales.warehouses w on i.WAREHOUSE_ID = w.WAREHOUSE_ID
where w.WAREHOUSE_ID = 8 group by w.WAREHOUSE_ID;

-- Liste fiyati 1000 ile 3000 arasinda olan ka� product var?----Sales
select count(*) from (select * from sales.products where LIST_PRICE between 1000 and 3000);




























