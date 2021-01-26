--01.02.2007 - 05.03.2014 tarihleri arasýnda hangi üründen kaç adet sipariþ edildiðini bulan SQL kodunu yazýnýz.
select T1.urunKod, u.urunAd, T1.Toplam from tblUrun u 
		join (select d.urunKod, sum(d.adet) Toplam from tblSiparis s
		join tblSiparisDetay d on s.faturaKod = d.faturaKod
		where s.siparisTarih between '2007-02-01' and '2014-03-05'
		group by d.urunKod) as T1
	on u.urunKod = T1.urunKod