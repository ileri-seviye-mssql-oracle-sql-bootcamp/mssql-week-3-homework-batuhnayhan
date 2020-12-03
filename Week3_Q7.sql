-- x numaralý ürünü en fazla sipariþ veren þehri bulunuz.
select top 1
seh.Isim,
urun.urunkod,
count(*) as siparis_sayýsý
from tblKullanici kul  
	join tblSiparis sip on sip.kullaniciKod = kul.kullaniciKod
	join tblSiparisDetay sipd on sip.faturaKod = sipd.faturaKod
	join tblUrun urun on sipd.urunKod = urun.urunKod
	join tblSehir seh on kul.sehir = seh.Id
group by seh.Isim, urun.urunkod
having urun.urunKod = 3501
order by siparis_sayýsý desc