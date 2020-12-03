--Ýptal edilen sipariþlerde bulunan ürünleri listeyiniz.
select
distinct urun.urunAD,
sipdurum.aciklama
from tblSiparis sip 
	join tblSiparisDetay sipd on sip.faturaKod = sipd.faturaKod
	join tblUrun urun on sipd.urunKod = urun.urunKod 
	join tblSiparisDurum sipdurum on sip.siparisDurumKod = sipdurum.siparisDurumKod
where sipdurum.aciklama like '%ptal Edildi%'