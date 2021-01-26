--Y�l�n 4. aylar�nda en �ok hangi ama�la kredi �ekilmi?tir? ----Banking
select * from 
(select PURPOSE, count(PURPOSE) as c from loans where MONTH = 4 group by PURPOSE order by c desc)
where ROWNUM = 1;

-- Bankan�n 50 ve ya 51 ya��nda kad�n m��terilerinden ayn� isme sahip olan m��terisi/m��terileri var m�? Varsa isimleri neler?----Banking
select * from
(select FIRST, count(FIRST) as c from clients where (AGE = 50 or AGE = 51) and SEX = 'Female' group by FIRST)
where c > 1;

--Hangi y�llarda ka� hesap a��lm��t�r?----Banking
select YEAR, count(ACCOUNT_ID) from accounts group by YEAR;

-- ��lemlerin tiplerine g�re toplam say�lar�n�n b�y�kten k����e s�ralamas� nedir?----Banking
select TYPE, count(TRANS_ID) as c from transactions group by TYPE order by c desc;

-- ��lemlerin tiplerine g�re toplam tutarlar�n�n b�y�kten k����e s�ralamas� nedir?----Banking
select TYPE, sum(AMOUNT) as s from transactions group by TYPE order by s desc;
