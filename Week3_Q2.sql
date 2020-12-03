--En y�ksek toplam fiyata sahip faturaya dahil �r�nleri ve faturay� sipari� veren m��terinin ad�n� soyad�n� listeyen SQL kodunu yaz�n�z.
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
where kul.kullaniciAd = 'mpinar42' -- where kosuluna kullan�c� isminide ekledim. ��nk� bu kullan�c� i�in toplam 330.299 sat�r vard�r.
order by sip.toplam desc