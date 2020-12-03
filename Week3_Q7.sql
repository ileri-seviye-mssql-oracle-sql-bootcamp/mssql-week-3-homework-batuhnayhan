-- x numaral� �r�n� en fazla sipari� veren �ehri bulunuz.
select top 1
seh.Isim,
urun.urunkod,
count(*) as siparis_say�s�
from tblKullanici kul  
	join tblSiparis sip on sip.kullaniciKod = kul.kullaniciKod
	join tblSiparisDetay sipd on sip.faturaKod = sipd.faturaKod
	join tblUrun urun on sipd.urunKod = urun.urunKod
	join tblSehir seh on kul.sehir = seh.Id
group by seh.Isim, urun.urunkod
having urun.urunKod = 3501
order by siparis_say�s� desc