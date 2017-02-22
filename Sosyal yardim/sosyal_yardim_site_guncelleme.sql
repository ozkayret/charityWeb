/* güncellnemek istenen veride set edilmek istenen deeğilşken ve değeri değiştirilerek kolay bir şekilde accessible
güncelleme yapılabilir genel kayıtları tutması istendiğinden daha sonradan değişşikliğe acık değildir*/

UPDATE aile SET aciklama="girilecek değer"  WHERE CustomerID=1;

UPDATE aile_reisi SET calisiyormu="evet" WHERE tc=15566522254;

UPDATE aile SET  gelir="3000" WHERE tc=15566522254;

UPDATE  aile_adres SET  aile_foto="15" WHERE tc=15566522254;

UPDATE aile_foto SET id="5" WHERE  aile_id=15566522254;

UPDATE aile_ihtiyac SET ihtiyac="5"  WHERE aile=15566522254 ;

UPDATE ihtiyac SET aciklama="havalar ısındı kışlık yerine yazlık olsun" WHERE id="1" ;

UPDATE resim_yolu SET yol="c\\resimler" WHERE id="1";

UPDATE sorumlu_kisi SET email="xmail@mail.net" WHERE tc="12545696588";

UPDATE suistimal SET davranis="yok" WHERE aile="15566522254";

UPDATE vakif SET telefon="01256954874" WHERE id="1000";

UPDATE vakif_adres SET numara="15" WHERE id="1000";

UPDATE vakif_sorumlusu SET vakif_id="1003" WHERE sorumlu_tc="15445887963";

UPDATE varsayilan SET il="samsun",ilce="merkez" WHERE tc="15445887963" ;
