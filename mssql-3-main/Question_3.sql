--Hiç sipariþ vermeyen müþterilerin mesleklerini listeleyiniz.
select T1.kullaniciKod, T1.isim, T1.soyad, m.* from
(select k.* from tblKullanici k left join tblSiparis s
on k.kullaniciKod = s.kullaniciKod
EXCEPT
select k.* from tblKullanici k join tblSiparis s
on k.kullaniciKod = s.kullaniciKod) as T1
join tblMeslek m on T1.meslekKod = m.meslekKod;