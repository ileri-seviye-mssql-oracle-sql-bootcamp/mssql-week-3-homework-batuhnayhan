--Ürünlerin ürün adý, ürün kodunu ve KDV dahil satýþ fiyatýný listeleyiniz.
select urunAd, urunKod, listefiyat + (listeFiyat * KDVoran) as KDVdahilFiyat from tblUrun