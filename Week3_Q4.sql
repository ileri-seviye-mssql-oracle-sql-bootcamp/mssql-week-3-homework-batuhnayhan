--01.02.2007 - 05.03.2014 tarihleri aras�nda hangi �r�nden ka� adet sipari� edildi�ini bulan SQL kodunu yaz�n�z.
select
urun.urunAd,
sipd.adet
from tblSiparis sip 
	join tblSiparisDetay sipd on sip.faturaKod = sipd.faturaKod
	join tblUrun urun on sipd.urunKod = urun.urunKod
where sip.siparisTarih between '01.02.2007' and '05.03.2014'