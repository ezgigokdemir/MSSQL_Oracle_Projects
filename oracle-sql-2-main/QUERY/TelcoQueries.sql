-- Kotasý limitsiz olan ürünler hangileridir? ----Telco
select * from TELCO.PRODUCT where QUOTA = 'LIMITLESS';

-- Statüsü 'Initial' olan müþterileri bulunuz. ----Telco
select * from TELCO.CUSTOMER where STATUS = 'INITIAL';

-- Þehir bilgisi 'ISTANBUL' olan adresleri bulunuz. ----Telco
select * from TELCO.ADDRESS where CITY = 'Istanbul';

-- Birincil iletiþim bilgisi olmayan telefon numaralarýný bulunuz. ----Telco
select * from TELCO.CONTACT where IS_PRIMARY = 0 and CNT_TYPE = 'PHONE';

-- Hesap ödeme þekli nakit olmayan hesaplar hangileridir? ----Telco
select * from TELCO.ACCOUNT where PAYMENT_TYPE != 'CASH';

-- Statüsü deaktif olan müþterilerin baðlantý kesim tarihleri nedir? ----Telco
select DISCONNECTION_DATE from TELCO.CUSTOMER where STATUS = 'DEACTIVE';

-- Hesap kapanýþ tarihi dolu olan hesaplarý bulunuz. ----Telco
select * from TELCO.ACCOUNT where ACCOUNT_CLOSING_DATE is not NULL;

-- Elektronik fatura mail adresi (E_bill_email) olan hesaplar hangileridir? ----Telco
select * from TELCO.ACCOUNT where E_BILL_EMAIL is not NULL;

-- Sözleþme bitiþ tarihi 1 Ocak 2000'den büyük , 1 Ocak 2005'ten küçük olan sözleþmeleri bulunuz. ----Telco
select * from TELCO.AGREEMENT where COMMITMENT_END_DATE > '2000-01-01' and COMMITMENT_END_DATE < '2005-01-01';

-- 2005 yýlýndan önce yapýlan ve hala aktif olan subscriptionlar hangileridir? ----Telco
select * from TELCO.SUBSCRIPTION where CREATE_DATE < '2005-01-01' and STATUS = 'ACTIVE';

-- Sözleþme baþlangýç tarihi Ocak 2010'dan büyük olan sözleþmeleri bulunuz. ----Telco
select * from TELCO.AGREEMENT where COMMITMENT_START_DATE > '2010-01-31';

-- Ýsmi E ile baþlayan müþterileri bulunuz. ----Telco
select * from TELCO.CUSTOMER where NAME like 'E%';

-- Product tipi 'DSL' ile biten ürünleri bulunuz. ----Telco
select * from TELCO.PRODUCT where PRODUCT_TYPE like '%DSL';

-- Ýsminde ya da soyisminde 'ü' harfi geçen müþteriler hangileridir? ----Telco
select * from TELCO.CUSTOMER where NAME like '%ü%' or SURNAME like '%ü%';

-- Ülke kodu UK ve AU olan adresleri bulunuz.----Telco
select * from TELCO.ADDRESS where COUNTRY_CD = 'UK' or COUNTRY_CD = 'AU';

-- Taahhüt süresi 240 ve 120 ay olan bütün sözleþmeleri bulmak istiyoruz.----Telco
select * from TELCO.AGREEMENT where COMMITMENT_DURATION in ('240 MONTHS', '120 MONTHS');

-- Sözleþme alt tipi MAIN olan kaç tane sözleþme vardýr?----Telco
select Count(ID) from TELCO.AGREEMENT where SUBTYPE = 'MAIN';

-- Deaktif müþterilerin sayýsýný bulunuz.----Telco
select Count(ID) from TELCO.CUSTOMER where STATUS = 'DEACTIVE';

-- Ýletiþim tipi olarak email ve statusu kullanýmda olan kaç müþteri var?----Telco
select count(distinct customer.ID) from TELCO.CUSTOMER customer join TELCO.CONTACT contact on customer.ID = contact.CUSTOMER_ID
where contact.CNT_TYPE = 'PHONE' and contact.STATUS = 'USED';




