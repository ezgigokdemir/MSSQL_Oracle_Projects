--Yýlýn 4. aylarýnda en çok hangi amaçla kredi çekilmi?tir? ----Banking
select * from 
(select PURPOSE, count(PURPOSE) as c from loans where MONTH = 4 group by PURPOSE order by c desc)
where ROWNUM = 1;

-- Bankanýn 50 ve ya 51 yaþýnda kadýn müþterilerinden ayný isme sahip olan müþterisi/müþterileri var mý? Varsa isimleri neler?----Banking
select * from
(select FIRST, count(FIRST) as c from clients where (AGE = 50 or AGE = 51) and SEX = 'Female' group by FIRST)
where c > 1;

--Hangi yýllarda kaç hesap açýlmýþtýr?----Banking
select YEAR, count(ACCOUNT_ID) from accounts group by YEAR;

-- Ýþlemlerin tiplerine göre toplam sayýlarýnýn büyükten küçüðe sýralamasý nedir?----Banking
select TYPE, count(TRANS_ID) as c from transactions group by TYPE order by c desc;

-- Ýþlemlerin tiplerine göre toplam tutarlarýnýn büyükten küçüðe sýralamasý nedir?----Banking
select TYPE, sum(AMOUNT) as s from transactions group by TYPE order by s desc;
