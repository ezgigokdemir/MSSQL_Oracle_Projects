--Ürünlerin ürün adý, ürün kodunu ve KDV dahil satýþ fiyatýný listeleyiniz.
select urunKod, urunAd, listeFiyat + (listeFiyat * KDVoran) from tblUrun