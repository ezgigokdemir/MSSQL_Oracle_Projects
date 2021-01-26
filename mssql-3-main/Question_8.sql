--Adý A ile baþlayýp soyadýnda ak geçen müþterilerden en fazla sipariþ vereni bulunuz.
select top 1 s.kullaniciKod, count(s.kullaniciKod) from tblSiparis s
	join tblKullanici k on s.kullaniciKod = k.kullaniciKod
	where k.isim like 'A%' and k.soyad like '%ak%'
	group by s.kullaniciKod
	order by count(s.kullaniciKod) desc


--2. Yontem
select * from
(select s.kullaniciKod, count(s.kullaniciKod) Total from tblSiparis s
	join tblKullanici k on s.kullaniciKod = k.kullaniciKod
	where k.isim like 'A%' and k.soyad like '%ak%'
	group by s.kullaniciKod) as T1
	where T1.Total = (select max(T2.Total) from (select s.kullaniciKod, count(s.kullaniciKod) Total from tblSiparis s
		join tblKullanici k on s.kullaniciKod = k.kullaniciKod
		where k.isim like 'A%' and k.soyad like '%ak%'
		group by s.kullaniciKod) as T2)