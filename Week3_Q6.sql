--En fazla sipari� veren meslek grubunu bulunuz.
select top 1
mes.meslek,
count(*) as siparis_say�s�
from tblKullanici kul 
	join tblMeslek mes on kul.meslekKod = mes.meslekKod
	join tblSiparis sip on sip.kullaniciKod = kul.kullaniciKod
group by mes.meslek
order by count(*) desc