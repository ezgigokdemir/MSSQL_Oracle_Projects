--x numaralý ürünü en fazla sipariþ veren þehri bulunuz.
select T1.sehir, sh.Isim, T1.Total from tblSehir sh join
	(select top 1 k.sehir, count(k.sehir) Total from tblSiparis s
		join tblSiparisDetay d on d.faturaKod = s.faturaKod
		join tblKullanici k on s.kullaniciKod = k.kullaniciKod
		where d.urunKod = 3265
		group by k.sehir
		order by Total desc) as T1
	on sh.Id = T1.sehir


--2. Yontem
select T1.sehir, sh.Isim, T1.Total  from
	(select k.sehir, count(k.sehir) Total, 
		ROW_NUMBER() over(order by count(k.sehir) desc) as rn
	from tblSiparis s
		join tblSiparisDetay d on d.faturaKod = s.faturaKod
		join tblKullanici k on s.kullaniciKod = k.kullaniciKod
		where d.urunKod = 3265
		group by k.sehir
		) T1 
	join tblSehir sh on sh.Id = T1.sehir
	where T1.rn = 1


--3. Yontem
select T3.sehir, sh.Isim, T3.Total from tblSehir sh 
    join (select T1.sehir, T1.Total from 
			(select k.sehir, count(k.sehir) Total from tblSiparis s
			join tblSiparisDetay d on d.faturaKod = s.faturaKod
			join tblKullanici k on s.kullaniciKod = k.kullaniciKod
			where d.urunKod = 3265
			group by k.sehir) as T1
			where T1.Total = (select max(T2.Total) from (select k.sehir, count(k.sehir) Total from tblSiparis s
				join tblSiparisDetay d on d.faturaKod = s.faturaKod
				join tblKullanici k on s.kullaniciKod = k.kullaniciKod
				where d.urunKod = 3265
				group by k.sehir) as T2)) as T3
	on sh.Id = T3.sehir;
	 