--�r�nlerin �r�n ad�, �r�n kodunu ve KDV dahil sat�� fiyat�n� listeleyiniz.
select urunAd, urunKod, listefiyat + (listeFiyat * KDVoran) as KDVdahilFiyat from tblUrun