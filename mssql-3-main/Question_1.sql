--�r�nlerin �r�n ad�, �r�n kodunu ve KDV dahil sat�� fiyat�n� listeleyiniz.
select urunKod, urunAd, listeFiyat + (listeFiyat * KDVoran) from tblUrun