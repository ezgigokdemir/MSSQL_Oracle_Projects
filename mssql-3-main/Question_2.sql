/*En yüksek toplam fiyata sahip faturaya dahil ürünleri ve 
faturayý sipariþ veren müþterinin adýný soyadýný listeyen SQL kodunu yazýnýz.*/
SELECT 
	T2.kullaniciKod , T2.isim, T2.soyad,
	string_agg(T2.urunAd,' - ') WITHIN GROUP( ORDER BY T2.urunAd ) AS Products 
FROM (select distinct u.urunKod, u.urunAd, k.* from tblSiparisDetay d 
	    join (select top 1 d.faturaKod, SUM(d.fiyat) Total from tblSiparis s join tblSiparisDetay d
		on s.faturaKod = d.faturaKod group by d.faturaKod order by SUM(d.fiyat) desc) as T1
		on d.faturaKod = T1.faturaKod
		join tblSiparis s on s.faturaKod = d.faturaKod
		join tblUrun u on u.urunKod = d.urunKod
		join tblKullanici k on k.kullaniciKod = s.kullaniciKod) as T2
			GROUP BY T2.kullaniciKod , T2.isim, T2.soyad
			ORDER BY T2.kullaniciKod;



--2. Yontem
select distinct u.urunKod, u.urunAd, k.* from tblSiparis s 
	join tblSiparisDetay d on s.faturaKod = d.faturaKod
	join tblUrun u on u.urunKod = d.urunKod
	join tblKullanici k on s.kullaniciKod = k.kullaniciKod
	where s.toplam = (select max(toplam) from tblSiparis)
