--En fazla sipariþ veren meslek grubunu bulunuz.
select m.*, T1.Total from tblMeslek m
	join (select top 1 k.meslekKod, count(k.meslekKod) Total from tblSiparis s
			join tblKullanici k on s.kullaniciKod = k.kullaniciKod
			join tblMeslek m on m.meslekKod = k.meslekKod
			group by k.meslekKod
			order by count(k.meslekKod) desc) as T1
	on m.meslekKod = T1.meslekKod


--2.Yontem
select m.*, T1.Total from tblMeslek m
	join (select k.meslekKod, count(k.meslekKod) Total from tblSiparis s
			join tblKullanici k on s.kullaniciKod = k.kullaniciKod
			join tblMeslek m on m.meslekKod = k.meslekKod
			group by k.meslekKod) as T1
	on m.meslekKod = T1.meslekKod
	where T1.Total = (select max(T2.Total) from (select k.meslekKod, count(k.meslekKod) Total from tblSiparis s
			join tblKullanici k on s.kullaniciKod = k.kullaniciKod
			join tblMeslek m on m.meslekKod = k.meslekKod
			group by k.meslekKod) as T2)