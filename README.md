# Çoklu Ulaşımda Bilet Satış Veritabanı Projesi

### Bu veritabanı, bir uygun bilet satış uygulaması için gerekli olan tablo ve ilişkileri içermektedir. Aşağıda, her bir tablo ve ilişki hakkında bilgi verilmiştir.

## Tablolar ve İlişkiler:

### bagajlar:
BagajID (Anahtar): Bagajın benzersiz kimliği.
RezervasyonID: Bagajın ilişkili olduğu rezervasyonun kimliği.
Agirlik: Bagajın ağırlığı.

### guzergahlar:
GuzergahlarID (Anahtar): Güzergahın benzersiz kimliği.
KalkisSehri: Kalkış şehri.
VarisSehri: Varış şehri.
KalkisTarihi: Kalkış tarihi.
VarisTarihi: Varış tarihi.

### koltuklar:
KoltukID (Anahtar): Koltuğun benzersiz kimliği.
BirimID: Koltuğun bağlı olduğu taşıma biriminin kimliği.
KoltukNumarasi: Koltuğun numarası.
RezerveEdildi: Koltuğun rezerve edilip edilmediği.

### musteriler:
MusteriID (Anahtar): Müşterinin benzersiz kimliği.
Ad: Müşterinin adı.
Soyad: Müşterinin soyadı.
Email: Müşterinin e-posta adresi (benzersiz).
Telefon: Müşterinin telefon numarası.
KayitTarihi: Müşterinin kayıt tarihi.
DogumTarihi: Müşterinin doğum tarihi.

### odemeler:
OdemeID (Anahtar): Ödemenin benzersiz kimliği.
RezervasyonID: Ödemenin ilişkili olduğu rezervasyonun kimliği.
ParaBirimiID: Ödemenin para biriminin kimliği.
OdemeTarihi: Ödemenin tarihi.
Tutar: Ödemenin tutarı.
OdemeYontemi: Ödeme yöntemi.

### parabirimi:
ParaBirimiID (Anahtar): Para biriminin benzersiz kimliği.
ParaKodu:
Para biriminin kodu.

ParaIsmi: Para biriminin ismi.

### rezervasyonlar:
RezervasyonID (Anahtar): Rezervasyonun benzersiz kimliği.
MusteriID: Rezervasyonu yapan müşterinin kimliği.
BirimID: Rezervasyonun ilişkili olduğu taşıma biriminin kimliği.
TurID: Rezervasyonun tipinin (otobüs, uçak, tren) kimliği.
rezervasyonTarihi: Rezervasyonun yapıldığı tarih.

### tasimabirimleri:
BirimID (Anahtar): Taşıma biriminin benzersiz kimliği.
GuzergahlarID: Taşıma biriminin geçtiği güzergahın kimliği.
TurID: Taşıma biriminin tipinin (otobüs, uçak, tren) kimliği.
FirmaAdi: Taşıma biriminin adı.
BiletFiyati: Taşıma biriminin bilet fiyatı.

### tur:
TurID (Anahtar): Taşıma türünün benzersiz kimliği.
TurAdi: Taşıma türünün adı.

### ucuskategoriilişkileri:
IliskiID (Anahtar): Uçuş kategorisi ilişkisinin benzersiz kimliği.
BirimID: Uçuş kategorisinin ilişkili olduğu taşıma biriminin kimliği.
KategoriID: Uçuş kategorisinin kimliği.

### ucuskategorileri:
KategoriID (Anahtar): Uçuş kategorisinin benzersiz kimliği.
KategoriAdi: Uçuş kategorisinin adı.

## Notlar:
Veri Tabanının içinde örnek veriler vardır.
Veritabanı, MySQL 8.0.35 sürümü için oluşturulmuştur.
Tablolar arasındaki ilişkiler, foreign key (yabancı anahtar) kullanılarak kurulmuştur.
Veritabanı, müşteri bilgileri, rezervasyonlar, ödemeler ve taşıma birimleri gibi temel bileşenleri içerir.
Veritabanında bazı örnek veriler bulunmaktadır.
