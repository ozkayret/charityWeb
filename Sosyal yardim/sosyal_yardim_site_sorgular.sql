/* Tüm bilgileri çekme */

/* VAkıf biligleri*/
SELECT * FROM vakif;
SELECT * FROM sorumlu_kisi;
SELECT * FROM vakif_sorumlusu;
SELECT * FROM vakif_adres;
SELECT * FROM  varsayilan;


/*aile bilgiler*/
SELECT * FROM aile_reisi;
SELECT * FROM aile ;
SELECT * FROM aile_ihtiyac;
SELECT * FROM aile_foto;
SELECT * FROM aile_adres;
SELECT * FROM ihtiyac;
SELECT * FROM resim_yolu;
SELECT * FROM  suistimal;

/* Site için gerekli ona biligleri çekme */

/*  Aile Reisi Bilgileri  */
SELECT * FROM aile_reisi WHERE tc=14555698521;

/* Aile Bireyleri Bilgileri */	
SELECT * FROM aile WHERE tc=14555698521;

/*  Adres Bilgileri	*/
SELECT * FROM aile_adres WHERE tc=14555698521;

/* Gelir Bilgileri	*/
SELECT gelir,kira FROM aile WHERE tc=14555698521;
/* çalışabilecek kişi sayısı yaşlılar engelliler ve çocuklar çıkartılarak bulunabilir*/

/* İhtiyaç Bilgileri */	
SELECT turu,aciklama FROM aile_ihtiyac,ihtiyac WHERE aile_ihtiyac.ihtiyac=ihtiyac.id and durumu="0";

/* Sorumlu Vakıf Bilgileri	*/
SELECT kaydeden_vakif,kaydeden_sorumlu FROM aile,vakif,sorumlu_kisi WHERE tc=14555698521;

/* genel sorgusu */
SELECT * FROM genel;
SELECT * FROM genel WHERE yapan="12545696588";
/* varsayılan sorgusu*/
SELECT * FROM varsayilan;
SELECT * FROM varsayilan WHERE tc="12545696588";

/*suistimal sorgusu*/
SELECT * FROM suistimal;
SELECT * FROM suistimal WHERE aile="45569585441";
