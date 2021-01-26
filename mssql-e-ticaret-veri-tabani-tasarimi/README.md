# E-Ticaret Veri Tabanı Tasarımı
Bu projedeki amacımız MSSQL Server üzerinde çalışan bir e-ticaret sisteminin veri tabanını tasarmaktır. Bu veri tabanını tasarlarken aşağıdaki kurallar göz önünde bulundurulmalıdır.

* Her tabloda en az bir primary key bulunmalıdır. Bu primary key'e dahil olacak kolonları senaryanuza göre belirleyebilirsiniz.
* Her tabloda sadece bir nesneye ait veriler bulunmalıdır ve ilgili tablolar arası foreign key yapıları ayarlanmalıdır.
* Veri bütünlüğü sağlama kuralları göz önünde bulundurularak gerekli tanımlamalar yapılmalıdır.

GitHub hesabınıza yükleyeceğiniz klasör yapısı aşağıdaki gibi olmalıdır.

* Database Name
  * Tables
      * Tablo1.sql
     * Tablo2.sql
     * Tablo3.sql
     * Tablo4.sql
      * Tablo5.sql
   * Views
      * View1.sql
      * View2.sql
  * Stored Procedures
    * sp1.sql
    * sp2.sql
   
> Şuan için sadece tabloların eklenmesi istenmektedir. İleri ki haftalarda konular işlendikçe diğer kodlar da bu yapıya eklenecektir.

## Projede Olması İstenen Özellikler
* Müşteriler ve Müşteri meslek bilgileri
* Ürün, ürün marka, ürün kategori bilgileri (Bir ürün birden fazla kategoride olabilir)
* Sipariş ve sipariş detay bilgisi
* Sipariş durum (Hazırlanıyor, Kargoda, Teslim Edildi...)
* Müşteri adres bilgileri (Bir müşterinin birden fazla adresi olabilir)
