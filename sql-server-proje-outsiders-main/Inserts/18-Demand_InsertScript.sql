INSERT INTO [dbo].[DEMAND] VALUES('Uygulamadan atma sorunu', 'Font ayar� yaparken uygulamadan at�yor ve ayarlar�m� kaydetmiyor.', 3, 1, 3, 
'Gerekli kontroller yap�lm�� ve font ayarlamas�ndaki hata d�zeltilmi�tir.', GETDATE(), 95, 1,5,5,48,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)

INSERT INTO [dbo].[DEMAND] VALUES('Tak�lma sorunu', 'Uygulamay� simge durumuna k���ltmeye �al��t���mda k���lm�yor ve donuyor.', 3, 1, 3, 
'Gerekli kontroller yap�lm�� ve hata d�zeltilmi�tir.', DATEADD(YEAR, -1, GETDATE()), 100, 5,5,4,48,DATEADD(day, -5, DATEADD(YEAR, -1, GETDATE())),DATEADD(YEAR, -1, GETDATE()), 1)

INSERT INTO [dbo].[DEMAND] VALUES('.NET ba�lant�s�', 'SAP .NET Ba�lay�c�s� ile �al��mam istendi. �u anda .NET 4.0 ve VS2010 kullan�yorum. Eski s�r�me ge�mem gereken bir �ey var m�?', 3, 2, 3, 
'Solution Explorer projesinde ve Referanslar-> Referans Ekle ... dizinine g�z at�n ve �u dll dosyas�n� aray�n: C: \ Program Files \ SAP \ SAP_DotNetConnector3. Bundan sonra s�n�flar� ve NCO 3.0 � 
kullanabilir ve projemizde RFC, BAPI ler ve bu ba�lay�c� taraf�ndan sunulan di�er �zelliklere �a�r� yapmak i�in kullanabilirsiniz.', GETDATE(), 2, 6,5,4,50,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)

INSERT INTO [dbo].[DEMAND] VALUES('RESTful web uygulamam� m��terilerin SAP kurulumlar�yla entegre etme', 'Bir SAP kurulumu �al��t�rmayan bir ���nc� taraf olarak, sitemizin verilerine bir 
web hizmeti veya ba�ka bir API arac�l���yla eri�im sunman�n bir yolu var m�? Bu sadece belirli bir WSDL nin sa�lanmas� veya uygulanmas� meselesi mi (ve bu ne olurdu)? Bu, 
SAP ile derinlemesine deneyimi olmayan biri i�in uygun mu? Yoksa bu tamamen bir ba�lang�� de�il mi?', 3, 2, 3, 
'BT departman�nda gerekli teknik ve s�re� bilgisine sahip biri olan ve bir geli�tirme projesi y�r�tmekle ilgilenen bir dan��manla �al��man�z� �neririz. Bu �ekilde, ger�ek bir sisteme  
ve size sistemin temellerini a��klayabilecek birine eri�ebilirsiniz.', DATEADD(YEAR, -2, GETDATE()), 3, 11,3,10,30,DATEADD(day, -4, DATEADD(YEAR, -2, GETDATE())),DATEADD(YEAR, -2, GETDATE()), 1)

INSERT INTO [dbo].[DEMAND] VALUES('SOAP ERROR: WSDL ayr��t�rma', 'PHP SoapClient i�inde SAP PI �a�r�l�rken bilinmeyen gerekli WSDL uzant�s� ', 3, 3, 3, 
'Change the tag: <wsp:UsingPolicy wsdl:required=""true""/> to this:<wsp:UsingPolicy wsdl:required=""false""/>', GETDATE(), 1, 12,2,11,11,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)

INSERT INTO [dbo].[DEMAND] VALUES('C # .NET uygulamas�ndan SAP Web Service e ba�lanma', 'SAP web hizmetine hala ba�lanam�yor. Ald���m hata, "HTTP iste�i, istemci kimlik do�rulama �emas� Anla�ma
ile yetkilendirilmemi�".', 3, 2, 3, 'Size sa�lad���m�z WSDL dosyalar�n�n yanl�� oldu�u ve sertifikasyonun yanl�� yap�ld��� ortaya ��kt�. Kodunuzu yeni WSDL dosyalar�yla yeniden olu�turup 
�al��t�rabilirsiniz.', GETDATE(), 1, 11,1,3,9,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)

INSERT INTO [dbo].[DEMAND] VALUES('Komut sat�r�n� kullanarak SAP �zerinden nas�l oturum a�abilirim?', 'Komut sat�r�n� kullanarak SAP �zerinden nas�l oturum a�abilirim?', 1, 2, 3, 
'sapshcut.exe -system=SID -client=100 -user=YOURUNAME -pw=Y0urP4$$ komutuyla oturum a�abilirsiniz.',
DATEADD(YEAR, -1, GETDATE()), 5, 1,3,1,25,DATEADD(day, -5, DATEADD(YEAR, -1, GETDATE())),DATEADD(YEAR, -1, GETDATE()), 1)

INSERT INTO [dbo].[DEMAND] VALUES('SAP de bir tablo alan� i�in benzersiz k�s�tlama ayarlama', 'Yaln�zca SAP de benzersiz de�erler i�ermesi gereken bir tablodaki bir alan i�in k�s�tlama nas�l 
eklenir?', 1, 3, 3, 'SE11 > Goto > Indexes Create an INDEX on this field & make it unique SY-SUBRC to be made non-zero + Use MANDT', 
DATEADD(YEAR, -1, GETDATE()), 6, 2,4,2,36,DATEADD(day, -5, DATEADD(YEAR, -1, GETDATE())),DATEADD(YEAR, -1, GETDATE()), 1)

INSERT INTO [dbo].[DEMAND] VALUES('Sapnwrfc kitapl���n� kullanarak SAP ye nas�l ba�lanabilirim?', 'Yaz�l�m�m�z C # ile yaz�lm��t�r ve SAP ye ba�lanmas� gerekir. M��terilerimizden baz�lar� 
SAP nin eski s�r�mlerini kulland���ndan ve di�erlerinde SAP PI olmad���ndan, web hizmetleri �zerinden ba�lanam�yoruz.', 3, 1, 3, 'L�tfen icudt34.dll, icuin34.dll, icuuc34.dll, libicudecnumber.dll 
ve libsapucum.dll dosyas�n� projenizin bin dizinine kopyalamay� deneyin.', GETDATE(), 15, 2,8,5,91,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)

INSERT INTO [dbo].[DEMAND] VALUES('��lem Kimli�i kullan�l�rken SAP JCo RETURN Tablosu bo�', 'SAP standart BAPI ye eri�mek i�in JCo Kitapl���n� kullan�yorum. TID yi (TransactionID) 
kulland���m zaman RETURN Tablosunun her zaman bo� olmas� d���nda her �ey de �al���yor.', 3, 4, 3, '��z�m sadece ikisini birden yapmak, TID siz bir commit yapmak, RETURN tablosunu 
almak ve sonra TID ile tekrar bir commit yapmakt�r.', GETDATE(), 15, 2,7,2,82,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)

INSERT INTO [dbo].[DEMAND] VALUES('SAP JCO i� par�ac��� g�venli midir?', 'Bununla ilgili uygun belgeleri bulmay� ger�ekten ba�aramad�m. JCO com.sap.conn.jco.JCoDestination 
ve com.sap.conn.jco.JCoDestinationManager da s�n�flar vard�r. Thread ler g�venli mi? de�ilse, yaratmalar� pahal� m�?', 3, 3, 3, 
'D�KKAT �ok i� par�ac�kl� bir ortamda, nesnelerin (�rne�in, JCoTable nesneleri) farkl� i� par�ac�klar� aras�nda da��t�m� dikkatli bir �ekilde uygulanmal�d�r. 
Ayn� do�rudan ba�lant� i�in birden �ok e�zamanl� SAP �a�r�s� yapman�n m�mk�n olmad���n� unutmay�n.', GETDATE(), 111, 1,7,1,82,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)

INSERT INTO [dbo].[DEMAND] VALUES('JAVA dan bir SAP uygulamas�yla nas�l ileti�im kurulur', 'Sat�� mod�l�nden verileri depolamak ve almak i�in JAVA dan SAP ile 
s�rekli olarak nas�l etkile�im kurabiliriz?', 3, 4, 3, 'Birden �ok se�ene�iniz var: SAP Business Connector, SAP JCO, Java dan SAP RFC ��levlerini �a��rmak, SAP de 
SOAP Web Hizmetleri olu�turmak ve bunlar� java dan kullanmak', GETDATE(), 100, 20,8,1,92,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)

INSERT INTO [dbo].[DEMAND] VALUES('Talend: java.lang.UnsatisfiedLinkError: java.library.path i�inde sapjco3 yok', 'Talend kitapl�k dizininde jar ve dll var. Yol ve s�n�f yolu ayarland�. 
Ayr�ca VC ++ 2005 yeniden da��t�m sp 1 yamas�n� ve SAP taraf�ndan sa�lanan eksik dll leri indirip y�kledim. Bu ETL i�ini bir Windows 2003 makinesinde ve ayn� sonuca sahip bir 
XP makinesinde �al��t�rmay� denedim. Biri bana yard�m edebilir mi?', 3, 2, 3, '�ncelikle .jar dosyas�n�n \ lib \ java \ dizininde bulundu�undan emin olun. Windows kullan�yorsan�z, 
dll ve sapjco3.jar dosyas�n� PATH konumuna yerle�tirmelisiniz. sapjco3.jar dosyas�n� talend lib / java klas�r�ne kopyalay�n ve sapjco3.dll dosyas�n�n% PATH% konumunda oldu�undan 
emin olun (h�zl� ve kirli olarak windows \ system32 \ i�ine yerle�tirin). sapjco3.jar a �ift t�klayarak test edin, kavanozun konumu ve dll nin konumu hakk�nda bilgi g�stermelidir', 
GETDATE(), 5, 34,4,1,43,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)

INSERT INTO [dbo].[DEMAND] VALUES('Alan mevcut olmas�na ra�men SAP JCo neden ""Alan� �yesi de�il ..."" hatas�n� veriyor?', 'A�a��daki hatay� al�yorum com.sap.mw.jco.JCO $ �stisna: <127> 
JCO_ERROR_FIELD_NOT_FOUND: USERID alan�, INPUT �yesi de�il Ama kontrol ettim, SAP de s�tun var.', 2, 1, 1, '', GETDATE(), 44, 25,3,2,34,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)

INSERT INTO [dbo].[DEMAND] VALUES('Python 3 ve SAP aras�ndaki entegrasyon', 'Python da �ok yeniyim, verileri SAP sisteminden python a �ekme g�revim var. 
Ba�lant�lar i�in a�a��daki ba�lant�y� takip ediyorum, ancak manzaramda �al��m�yor. Ayr�ca sorum, python 3.6 istemcilerini SAP Sistemlerine ba�layabilir miyim?', 2, 2, 2, '', 
GETDATE(), 44, 25,1,2,10,DATEADD(DAY, -5, GETDATE()),GETDATE(), 1)
