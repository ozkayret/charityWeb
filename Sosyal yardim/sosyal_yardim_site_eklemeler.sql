insert into vakif(id,vakif_adi,telefon,email) 
 values 
("1000","mahmut vakfı","03242622526","info@mahmutfakfi.com"),
("1001","ahmet vakfı","02522562565","info@ahmetvakfi.net"),
("1002","x vakfı","02545698421","info@xvakif.info");


insert into sorumlu_kisi(tc,ad,soyad,telefon,email,sifre) 
values
("12545696588","veli","melik","02545698254","veli@ahmetvakfi.net","6bc5da631cfe1278d15bcc60acec3eb3"),
("15445887963","kemal","akın","01236589456","kemal@xvakfi.info","6bc5da631cfe1278d15bcc60acec3eb3"),
("15155445500","hasan","yağız","02154698523","hasan@mahmutvakfi.com","6bc5da631cfe1278d15bcc60acec3eb3"),
("10001544445","ali","veli","02652565458","ali@mahmutvakfi.com","6bc5da631cfe1278d15bcc60acec3eb3");

insert into vakif_sorumlusu(vakif_id,sorumlu_tc)
 values
("1002","15445887963"),
("1001","12545696588"),
("1000","10001544445"),
("1000","15155445500");
 
/* date format  YYYY-MM-DD */
insert into aile_reisi(tc,uyruk,ad,soyad,dogum_tarihi,turkiyeye_gelis_tarihi,telefon,meslek,calisiyormu) 
values 
("15566522254","tc","eda","seda","19601211","19601211","025648936654","ev hanımı","hayır"),
("14555698521","tc","ayşe","öksüz","19450819","19450819","01548963875","aşçı","evet"),
("15455221124","cr","fatma","kara","19910715","20160201","01255879645","çocuk bakıcısı","evet"),
("41855211545","cr","kerim","atlı","19880616","20160926","02554563145","bahçıvan","hayır"),
("45569585441","tr","toygun","düzgünoğlu","19860501","19860501","02545699874","işçi","hayır"),
("45896541232","tr","burçin","özlem","19890102","19890102","01256948745","serbest çalışan","hayır");

insert into aile (tc,hakkinda,kisi_sayisi,okuyan_cocuk_Sayisi,okumayan_cocuk_sayisi,yasli_sayisi,engelli_bilgisi,hasta_bilgisi,kaydeden_vakif,kaydeden_sorumlu,kira,gelir) 
values
("15566522254","hakkinda","5","2","1","0","0","engelli bilgisi yok","hasta bilgisi yok","1000","10001544445","450","1300"),
("14555698521","hakkinda","4","1","1","0","0","engelli bilgisi yok","hasta bilgisi yok","1000","10001544445","450","1300"),
("15455221124","hakkinda","3","1","0","0","0","engelli bilgisi yok","hasta bilgisi yok","1000","15155445500","500","1300"),
("41855211545","hakkinda","9","3","2","2","0","engelli bilgisi yok","hasta bilgisi yok","1001","12545696588","750","2000"),
("45569585441","hakkinda","15","5","2","3","0","engelli bilgisi yok","hasta bilgisi yok","1002","15445887963","1000","2000"),
("45896541232","hakkinda","11","1","4","4","0","engelli bilgisi yok","hasta bilgisi yok","1002","15445887963","250","2500");

insert into aile_adres(tc,il,ilce,mahalle,cadde,sokak,numara,aciklayici_adres) 
values
("15566522254","elazığ","merkez","yeni mahalle","x caddesi","turizm sokak","102","Açıklayıcı adres bilgisi bulunmuyor"),
("14555698521","malatya","battlagazi","aşağı mahalle","y caddesi","yeni sokak","1003","Açıklayıcı adres bilgisi bulunmuyor"),
("15455221124","ankara","keçiören","yukarı mahlle","m caddesi","aşağı sokak","11","Açıklayıcı adres bilgisi bulunmuyor"),
("41855211545","istanbul","bakırköy","gençlik mahllesi","m caddesi","olgun sokak","5","Açıklayıcı adres bilgisi bulunmuyor"),
("45569585441","kocaeli","merkez","sanayi mahallesi","n caddesi","ağaç sokak","5","Açıklayıcı adres bilgisi bulunmuyor"),
("45896541232","afyon","merkez","merkez mahhallesi","n caddesi","sucuk sokak","1","Açıklayıcı adres bilgisi bulunmuyor");

/* ihtiyaç durumu = 0 giderimyen, 1 giderilen*/
insert into ihtiyac(id,turu,aciklama,durumu) 
values
("0","gıda","temel besin maddeleri","1"),
("1","giyim","kışlık giyecek","0"),
("2","giyim","kışlık giyecek","1"),
("3","barınma","kira yardımı","1"),
("4","gıda","temel besin maddeleri","0"),
("5","gıda","temel besin maddeleri","0");

insert into aile_ihtiyac(aile,ihtiyac)
value
("15566522254","7"),
("14555698521","1"),
("15455221124","2"),
("41855211545","3"),
("45569585441","4"),
("45896541232","5");

insert into resim_yolu(id,yol) 
values
("1","bir.jpg"),
("2","iki.jpg"),
("3","uc.jpg"),
("4","dort.jpg"),
("5","bes.jpg"),
("6","alti.jpg");


insert into aile_foto(aile_id,foto_id) 
values
("14555698521","1"),
("15455221124","2"),
("41855211545","3"),
("45569585441","4"),
("45896541232","5"),
("15566522254","6");

insert into vakif_adres(id,il,ilce,mahalle,cadde,sokak,numara)
 values
 ("1000","istanbul","merkez","merkez","merkez","merkez","4"),
 ("1001","izmir","merkez","merkez","merkez","merkez","3"),
 ("1002","ankara","merkez","merkez","merkez","merkez","7");

insert into varsayilan(tc,il,ilce)
values
("12545696588","adıyaman","merkez"),
("15445887963","manisa","merkez"),
("15155445500","elazığ","merkez"),
("10001544445","ankara","merkez");


insert into suistimal(id,davranis,zaman,aile) 
values
("3","yok","2016-11-13","45569585441"),
("4","yok","2016-11-13","15566522254");


insert into genel(id,turu,zaman,yapan,yapilan)
values
("1","ekleme","2016-11-13-21-15-00","12545696588","değiştirilen bilgiler buraya eklenecek site yazılınca "),
("2","güncelleme","2016-10-08-15-12-00","15445887963","değiştirilen bilgiler buraya eklenecek site yazılınca");