INSERT INTO [dbo].[DEMAND] VALUES('Uygulamadan atma sorunu', 'Font ayarý yaparken uygulamadan atýyor ve ayarlarýmý kaydetmiyor.', 3, 1, 3, 
'Gerekli kontroller yapýlmýþ ve font ayarlamasýndaki hata düzeltilmiþtir.', GETDATE(), 95, 1,5,5,48,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)

INSERT INTO [dbo].[DEMAND] VALUES('Takýlma sorunu', 'Uygulamayý simge durumuna küçültmeye çalýþtýðýmda küçülmüyor ve donuyor.', 3, 1, 3, 
'Gerekli kontroller yapýlmýþ ve hata düzeltilmiþtir.', DATEADD(YEAR, -1, GETDATE()), 100, 5,5,4,48,DATEADD(day, -5, DATEADD(YEAR, -1, GETDATE())),DATEADD(YEAR, -1, GETDATE()), 1)

INSERT INTO [dbo].[DEMAND] VALUES('.NET baðlantýsý', 'SAP .NET Baðlayýcýsý ile çalýþmam istendi. Þu anda .NET 4.0 ve VS2010 kullanýyorum. Eski sürüme geçmem gereken bir þey var mý?', 3, 2, 3, 
'Solution Explorer projesinde ve Referanslar-> Referans Ekle ... dizinine göz atýn ve þu dll dosyasýný arayýn: C: \ Program Files \ SAP \ SAP_DotNetConnector3. Bundan sonra sýnýflarý ve NCO 3.0 ý 
kullanabilir ve projemizde RFC, BAPI ler ve bu baðlayýcý tarafýndan sunulan diðer özelliklere çaðrý yapmak için kullanabilirsiniz.', GETDATE(), 2, 6,5,4,50,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)

INSERT INTO [dbo].[DEMAND] VALUES('RESTful web uygulamamý müþterilerin SAP kurulumlarýyla entegre etme', 'Bir SAP kurulumu çalýþtýrmayan bir üçüncü taraf olarak, sitemizin verilerine bir 
web hizmeti veya baþka bir API aracýlýðýyla eriþim sunmanýn bir yolu var mý? Bu sadece belirli bir WSDL nin saðlanmasý veya uygulanmasý meselesi mi (ve bu ne olurdu)? Bu, 
SAP ile derinlemesine deneyimi olmayan biri için uygun mu? Yoksa bu tamamen bir baþlangýç deðil mi?', 3, 2, 3, 
'BT departmanýnda gerekli teknik ve süreç bilgisine sahip biri olan ve bir geliþtirme projesi yürütmekle ilgilenen bir danýþmanla çalýþmanýzý öneririz. Bu þekilde, gerçek bir sisteme  
ve size sistemin temellerini açýklayabilecek birine eriþebilirsiniz.', DATEADD(YEAR, -2, GETDATE()), 3, 11,3,10,30,DATEADD(day, -4, DATEADD(YEAR, -2, GETDATE())),DATEADD(YEAR, -2, GETDATE()), 1)

INSERT INTO [dbo].[DEMAND] VALUES('SOAP ERROR: WSDL ayrýþtýrma', 'PHP SoapClient içinde SAP PI çaðrýlýrken bilinmeyen gerekli WSDL uzantýsý ', 3, 3, 3, 
'Change the tag: <wsp:UsingPolicy wsdl:required=""true""/> to this:<wsp:UsingPolicy wsdl:required=""false""/>', GETDATE(), 1, 12,2,11,11,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)

INSERT INTO [dbo].[DEMAND] VALUES('C # .NET uygulamasýndan SAP Web Service e baðlanma', 'SAP web hizmetine hala baðlanamýyor. Aldýðým hata, "HTTP isteði, istemci kimlik doðrulama þemasý Anlaþma
ile yetkilendirilmemiþ".', 3, 2, 3, 'Size saðladýðýmýz WSDL dosyalarýnýn yanlýþ olduðu ve sertifikasyonun yanlýþ yapýldýðý ortaya çýktý. Kodunuzu yeni WSDL dosyalarýyla yeniden oluþturup 
çalýþtýrabilirsiniz.', GETDATE(), 1, 11,1,3,9,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)

INSERT INTO [dbo].[DEMAND] VALUES('Komut satýrýný kullanarak SAP üzerinden nasýl oturum açabilirim?', 'Komut satýrýný kullanarak SAP üzerinden nasýl oturum açabilirim?', 1, 2, 3, 
'sapshcut.exe -system=SID -client=100 -user=YOURUNAME -pw=Y0urP4$$ komutuyla oturum açabilirsiniz.',
DATEADD(YEAR, -1, GETDATE()), 5, 1,3,1,25,DATEADD(day, -5, DATEADD(YEAR, -1, GETDATE())),DATEADD(YEAR, -1, GETDATE()), 1)

INSERT INTO [dbo].[DEMAND] VALUES('SAP de bir tablo alaný için benzersiz kýsýtlama ayarlama', 'Yalnýzca SAP de benzersiz deðerler içermesi gereken bir tablodaki bir alan için kýsýtlama nasýl 
eklenir?', 1, 3, 3, 'SE11 > Goto > Indexes Create an INDEX on this field & make it unique SY-SUBRC to be made non-zero + Use MANDT', 
DATEADD(YEAR, -1, GETDATE()), 6, 2,4,2,36,DATEADD(day, -5, DATEADD(YEAR, -1, GETDATE())),DATEADD(YEAR, -1, GETDATE()), 1)

INSERT INTO [dbo].[DEMAND] VALUES('Sapnwrfc kitaplýðýný kullanarak SAP ye nasýl baðlanabilirim?', 'Yazýlýmýmýz C # ile yazýlmýþtýr ve SAP ye baðlanmasý gerekir. Müþterilerimizden bazýlarý 
SAP nin eski sürümlerini kullandýðýndan ve diðerlerinde SAP PI olmadýðýndan, web hizmetleri üzerinden baðlanamýyoruz.', 3, 1, 3, 'Lütfen icudt34.dll, icuin34.dll, icuuc34.dll, libicudecnumber.dll 
ve libsapucum.dll dosyasýný projenizin bin dizinine kopyalamayý deneyin.', GETDATE(), 15, 2,8,5,91,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)

INSERT INTO [dbo].[DEMAND] VALUES('Ýþlem Kimliði kullanýlýrken SAP JCo RETURN Tablosu boþ', 'SAP standart BAPI ye eriþmek için JCo Kitaplýðýný kullanýyorum. TID yi (TransactionID) 
kullandýðým zaman RETURN Tablosunun her zaman boþ olmasý dýþýnda her þey de çalýþýyor.', 3, 4, 3, 'Çözüm sadece ikisini birden yapmak, TID siz bir commit yapmak, RETURN tablosunu 
almak ve sonra TID ile tekrar bir commit yapmaktýr.', GETDATE(), 15, 2,7,2,82,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)

INSERT INTO [dbo].[DEMAND] VALUES('SAP JCO iþ parçacýðý güvenli midir?', 'Bununla ilgili uygun belgeleri bulmayý gerçekten baþaramadým. JCO com.sap.conn.jco.JCoDestination 
ve com.sap.conn.jco.JCoDestinationManager da sýnýflar vardýr. Thread ler güvenli mi? deðilse, yaratmalarý pahalý mý?', 3, 3, 3, 
'DÝKKAT Çok iþ parçacýklý bir ortamda, nesnelerin (örneðin, JCoTable nesneleri) farklý iþ parçacýklarý arasýnda daðýtýmý dikkatli bir þekilde uygulanmalýdýr. 
Ayný doðrudan baðlantý için birden çok eþzamanlý SAP çaðrýsý yapmanýn mümkün olmadýðýný unutmayýn.', GETDATE(), 111, 1,7,1,82,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)

INSERT INTO [dbo].[DEMAND] VALUES('JAVA dan bir SAP uygulamasýyla nasýl iletiþim kurulur', 'Satýþ modülünden verileri depolamak ve almak için JAVA dan SAP ile 
sürekli olarak nasýl etkileþim kurabiliriz?', 3, 4, 3, 'Birden çok seçeneðiniz var: SAP Business Connector, SAP JCO, Java dan SAP RFC Ýþlevlerini çaðýrmak, SAP de 
SOAP Web Hizmetleri oluþturmak ve bunlarý java dan kullanmak', GETDATE(), 100, 20,8,1,92,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)

INSERT INTO [dbo].[DEMAND] VALUES('Talend: java.lang.UnsatisfiedLinkError: java.library.path içinde sapjco3 yok', 'Talend kitaplýk dizininde jar ve dll var. Yol ve sýnýf yolu ayarlandý. 
Ayrýca VC ++ 2005 yeniden daðýtým sp 1 yamasýný ve SAP tarafýndan saðlanan eksik dll leri indirip yükledim. Bu ETL iþini bir Windows 2003 makinesinde ve ayný sonuca sahip bir 
XP makinesinde çalýþtýrmayý denedim. Biri bana yardým edebilir mi?', 3, 2, 3, 'Öncelikle .jar dosyasýnýn \ lib \ java \ dizininde bulunduðundan emin olun. Windows kullanýyorsanýz, 
dll ve sapjco3.jar dosyasýný PATH konumuna yerleþtirmelisiniz. sapjco3.jar dosyasýný talend lib / java klasörüne kopyalayýn ve sapjco3.dll dosyasýnýn% PATH% konumunda olduðundan 
emin olun (hýzlý ve kirli olarak windows \ system32 \ içine yerleþtirin). sapjco3.jar a çift týklayarak test edin, kavanozun konumu ve dll nin konumu hakkýnda bilgi göstermelidir', 
GETDATE(), 5, 34,4,1,43,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)

INSERT INTO [dbo].[DEMAND] VALUES('Alan mevcut olmasýna raðmen SAP JCo neden ""Alan… üyesi deðil ..."" hatasýný veriyor?', 'Aþaðýdaki hatayý alýyorum com.sap.mw.jco.JCO $ Ýstisna: <127> 
JCO_ERROR_FIELD_NOT_FOUND: USERID alaný, INPUT üyesi deðil Ama kontrol ettim, SAP de sütun var.', 2, 1, 1, '', GETDATE(), 44, 25,3,2,34,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)

INSERT INTO [dbo].[DEMAND] VALUES('Python 3 ve SAP arasýndaki entegrasyon', 'Python da çok yeniyim, verileri SAP sisteminden python a çekme görevim var. 
Baðlantýlar için aþaðýdaki baðlantýyý takip ediyorum, ancak manzaramda çalýþmýyor. Ayrýca sorum, python 3.6 istemcilerini SAP Sistemlerine baðlayabilir miyim?', 2, 2, 2, '', 
GETDATE(), 44, 25,1,2,10,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)
