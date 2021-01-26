--Ýptal edilen sipariþlerde bulunan ürünleri listeyiniz.
select u.* from tblUrun u
	join (select distinct u.urunKod from tblSiparis s
		join tblSiparisDetay d on s.faturaKod = d.faturaKod
		join tblUrun u on u.urunKod = d.urunKod
		where s.siparisDurumKod = 10) T1
	on u.urunKod = T1.urunKod