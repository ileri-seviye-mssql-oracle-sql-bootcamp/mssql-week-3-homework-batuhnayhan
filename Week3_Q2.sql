--En yüksek toplam fiyata sahip faturaya dahil ürünleri ve faturayý sipariþ veren müþterinin adýný soyadýný listeyen SQL kodunu yazýnýz.
select
kul.isim,
kul.soyad,
kul.kullaniciAd,
sip.toplam,
urun.urunAd
from tblKullanici kul 
	inner join tblSiparis sip on kul.kullaniciKod = sip.kullaniciKod
	inner join tblSiparisDetay sipd on sip.faturaKod = sipd.faturaKod 
	inner join tblUrun urun on urun.urunKod = sipd.urunKod
where kul.kullaniciAd = 'mpinar42' -- where kosuluna kullanýcý isminide ekledim. çünkü bu kullanýcý için toplam 330.299 satýr vardýr.
order by sip.toplam desc