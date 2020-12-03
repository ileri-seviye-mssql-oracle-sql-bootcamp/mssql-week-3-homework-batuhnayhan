--Ad� A ile ba�lay�p soyad�nda ak ge�en m��terilerden en fazla sipari� vereni bulunuz.
select top 1
kul.kullaniciKod,
kul.isim,
kul.soyad,
count(*) as siparis_say�s�
from tblKullanici kul 
	inner join tblSiparis sip on kul.kullaniciKod = sip.kullaniciKod
group by kul.kullaniciKod, kul.isim, kul.soyad
having kul.isim like 'A%' and kul.soyad like '%ak%'
order by siparis_say�s� desc