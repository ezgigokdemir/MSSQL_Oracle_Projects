-- Kotas� limitsiz olan �r�nler hangileridir? ----Telco
select * from TELCO.PRODUCT where QUOTA = 'LIMITLESS';

-- Stat�s� 'Initial' olan m��terileri bulunuz. ----Telco
select * from TELCO.CUSTOMER where STATUS = 'INITIAL';

-- �ehir bilgisi 'ISTANBUL' olan adresleri bulunuz. ----Telco
select * from TELCO.ADDRESS where CITY = 'Istanbul';

-- Birincil ileti�im bilgisi olmayan telefon numaralar�n� bulunuz. ----Telco
select * from TELCO.CONTACT where IS_PRIMARY = 0 and CNT_TYPE = 'PHONE';

-- Hesap �deme �ekli nakit olmayan hesaplar hangileridir? ----Telco
select * from TELCO.ACCOUNT where PAYMENT_TYPE != 'CASH';

-- Stat�s� deaktif olan m��terilerin ba�lant� kesim tarihleri nedir? ----Telco
select DISCONNECTION_DATE from TELCO.CUSTOMER where STATUS = 'DEACTIVE';

-- Hesap kapan�� tarihi dolu olan hesaplar� bulunuz. ----Telco
select * from TELCO.ACCOUNT where ACCOUNT_CLOSING_DATE is not NULL;

-- Elektronik fatura mail adresi (E_bill_email) olan hesaplar hangileridir? ----Telco
select * from TELCO.ACCOUNT where E_BILL_EMAIL is not NULL;

-- S�zle�me biti� tarihi 1 Ocak 2000'den b�y�k , 1 Ocak 2005'ten k���k olan s�zle�meleri bulunuz. ----Telco
select * from TELCO.AGREEMENT where COMMITMENT_END_DATE > '2000-01-01' and COMMITMENT_END_DATE < '2005-01-01';

-- 2005 y�l�ndan �nce yap�lan ve hala aktif olan subscriptionlar hangileridir? ----Telco
select * from TELCO.SUBSCRIPTION where CREATE_DATE < '2005-01-01' and STATUS = 'ACTIVE';

-- S�zle�me ba�lang�� tarihi Ocak 2010'dan b�y�k olan s�zle�meleri bulunuz. ----Telco
select * from TELCO.AGREEMENT where COMMITMENT_START_DATE > '2010-01-31';

-- �smi E ile ba�layan m��terileri bulunuz. ----Telco
select * from TELCO.CUSTOMER where NAME like 'E%';

-- Product tipi 'DSL' ile biten �r�nleri bulunuz. ----Telco
select * from TELCO.PRODUCT where PRODUCT_TYPE like '%DSL';

-- �sminde ya da soyisminde '�' harfi ge�en m��teriler hangileridir? ----Telco
select * from TELCO.CUSTOMER where NAME like '%�%' or SURNAME like '%�%';

-- �lke kodu UK ve AU olan adresleri bulunuz.----Telco
select * from TELCO.ADDRESS where COUNTRY_CD = 'UK' or COUNTRY_CD = 'AU';

-- Taahh�t s�resi 240 ve 120 ay olan b�t�n s�zle�meleri bulmak istiyoruz.----Telco
select * from TELCO.AGREEMENT where COMMITMENT_DURATION in ('240 MONTHS', '120 MONTHS');

-- S�zle�me alt tipi MAIN olan ka� tane s�zle�me vard�r?----Telco
select Count(ID) from TELCO.AGREEMENT where SUBTYPE = 'MAIN';

-- Deaktif m��terilerin say�s�n� bulunuz.----Telco
select Count(ID) from TELCO.CUSTOMER where STATUS = 'DEACTIVE';

-- �leti�im tipi olarak email ve statusu kullan�mda olan ka� m��teri var?----Telco
select count(distinct customer.ID) from TELCO.CUSTOMER customer join TELCO.CONTACT contact on customer.ID = contact.CUSTOMER_ID
where contact.CNT_TYPE = 'PHONE' and contact.STATUS = 'USED';




