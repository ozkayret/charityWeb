create database sosyal_yardim_site;

use sosyal_yardim_site;


create table vakif(
id int not null auto_increment,
vakif_adi varchar(50),
telefon bigint,
email varchar(25),
primary key (id)
);
create table vakif_adres(
id int,
il varchar(15),
ilce varchar(15),
mahalle varchar(20),
cadde varchar(20),
sokak varchar(20),
numara smallint,
foreign key(id) references vakif(id)
);


 create table sorumlu_kisi(
tc bigint not null auto_increment,
ad varchar(25),
soyad varchar(35),
telefon bigint,
email varchar(25),
primary key (tc),
sifre varchar(32) not null
);


create table vakif_sorumlusu(
vakif_id int,
sorumlu_tc bigint,
foreign key(vakif_id) references vakif(id),
foreign key (sorumlu_tc) references sorumlu_kisi(tc)
) ;

create table aile_reisi(
tc bigint not null,
uyruk varchar(20),
ad varchar(25),
soyad varchar(35),
dogum_tarihi date,
turkiyeye_gelis_tarihi date,
telefon bigint,
meslek varchar(35),
calisiyormu varchar(5),
primary key(tc)
);


create table aile(
tc bigint primary key,
hakkinda varchar(250),
kisi_sayisi tinyint,
okuyan_cocuk_Sayisi tinyint,
okumayan_cocuk_sayisi tinyint,
yasli_sayisi tinyint,
engelli_sayisi tinyint,
engelli_bilgisi varchar(200),
hasta_bilgisi varchar(200),
kaydeden_vakif int,
kaydeden_sorumlu bigint,
kira smallint,
gelir smallint,
foreign key(tc) references aile_reisi(tc),
foreign key(kaydeden_vakif) references vakif(id),
foreign key(kaydeden_sorumlu) references sorumlu_kisi(tc)
);

create table aile_adres(
tc bigint,
il varchar(15),
ilce varchar(15),
mahalle varchar(20),
cadde varchar(20),
sokak varchar(20),
numara smallint,
aciklayici_adres varchar (150),
foreign key(tc) references aile_reisi(tc)
);


create table resim_yolu(
id int not null auto_increment,
yol varchar(150),
primary key(id)
);


create table aile_foto(
aile_id bigint,
foto_id int,
foreign key(aile_id) references aile_reisi(tc),
foreign key(foto_id) references resim_yolu(id)
);

create table ihtiyac(
id int not null auto_increment primary key,
turu varchar(20),
aciklama varchar(100),
durumu tinyint(1)
);

create table aile_ihtiyac(
aile bigint,
ihtiyac int,
foreign key(aile) references aile_reisi(tc),
foreign key(ihtiyac) references ihtiyac(id)
);

create table genel(
id bigint not null auto_increment primary key,
turu varchar(11),
zaman datetime,
yapan bigint,
yapilan mediumtext,
foreign key(yapan) references sorumlu_kisi(tc)
);
create table varsayilan(
tc bigint,
il varchar(15),
ilce varchar(15),
foreign key(tc) references sorumlu_kisi(tc)
);
create table suistimal(
id int not null auto_increment primary key,
davranis varchar(200),
zaman date,
aile bigint,
foreign key(aile) references aile_reisi(tc) 
);