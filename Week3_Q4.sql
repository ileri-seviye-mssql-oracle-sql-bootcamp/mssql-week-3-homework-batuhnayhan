--01.02.2007 - 05.03.2014 tarihleri arasýnda hangi üründen kaç adet sipariþ edildiðini bulan SQL kodunu yazýnýz.
select
urun.urunAd,
sipd.adet
from tblSiparis sip 
	join tblSiparisDetay sipd on sip.faturaKod = sipd.faturaKod
	join tblUrun urun on sipd.urunKod = urun.urunKod
where sip.siparisTarih between '01.02.2007' and '05.03.2014'