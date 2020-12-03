--Adý A ile baþlayýp soyadýnda ak geçen müþterilerden en fazla sipariþ vereni bulunuz.
select top 1
kul.kullaniciKod,
kul.isim,
kul.soyad,
count(*) as siparis_sayýsý
from tblKullanici kul 
	inner join tblSiparis sip on kul.kullaniciKod = sip.kullaniciKod
group by kul.kullaniciKod, kul.isim, kul.soyad
having kul.isim like 'A%' and kul.soyad like '%ak%'
order by siparis_sayýsý desc