--Hiç sipariþ vermeyen müþterilerin mesleklerini listeleyiniz.
select
kul.isim,
kul.soyad,
mes.meslek
from tblKullanici kul 
	join tblSiparis sip on kul.kullaniciKod = sip.kullaniciKod 
	join tblMeslek mes on kul.meslekKod = mes.meslekKod
where sip.toplam = 0