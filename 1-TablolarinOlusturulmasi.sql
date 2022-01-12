CREATE TABLE eczane
(eczane_id INT NOT NULL PRIMARY KEY,
eczane_ad VARCHAR(45) NOT NULL,
eczaci_ad_soyad VARCHAR(45) NOT NULL,
eczaci_diploma_no INT NOT NULL,
adres_id INT
)

CREATE TABLE personel
(per_tckn BIGINT NOT NULL PRIMARY KEY,
per_ad_soyad VARCHAR(45),
isbasi_tarihi DATE,
per_eposta VARCHAR(45),
per_tel_no BIGINT,
eczane_id INT,
adres_id INT
)

CREATE TABLE uretici
(uretici_id INT NOT NULL PRIMARY KEY,
uretici_ad VARCHAR(45),
adres_id INT,
hesap_no BIGINT
)

CREATE TABLE hasta
(hasta_tckn BIGINT NOT NULL PRIMARY KEY,
hasta_ad_soyad VARCHAR(45) NOT NULL,
cinsiyet VARCHAR(1),
dog_tar DATE,
telefon BIGINT,
adres_id INT NOT NULL
)

CREATE TABLE adres
(adres_id INT NOT NULL PRIMARY KEY,
il VARCHAR(45),
ilce VARCHAR(45),
mahalle VARCHAR(45),
cadde_sokak VARCHAR(45),
kapi_no INT,
posta_kodu INT
)

CREATE TABLE ilac
(ilac_id INT NOT NULL PRIMARY KEY,
barkod BIGINT NOT NULL,
ilac_ad VARCHAR(45) NOT NULL,
alis_fiyat INT,
satis_fiyat INT,
stok INT,
eczane_id INT,
uretici_id INT,
anlasma_baslangic DATE,
anlasma_bitis DATE
)

CREATE TABLE recete
(recete_id INT NOT NULL PRIMARY KEY,
recete_tarih DATE,
hasta_tckn BIGINT,
ilac_id INT,
doktor_id INT NOT NULL,
ilac_adet INT,
kullanim_doz VARCHAR(45),
)

CREATE TABLE doktor
(doktor_id INT NOT NULL PRIMARY KEY,
doktor_ad_soyad VARCHAR(45) NOT NULL,
diploma_no BIGINT NOT NULL,
uzmanlik VARCHAR(45) NOT NULL
)