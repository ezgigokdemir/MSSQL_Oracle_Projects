INSERT INTO BOOK
VALUES (BOOK_SEQ.nextval, 'Tutunamayanlar','3334756595', 
(select Id from author where Name ='Oðuz' and Surname = 'Atay'),
(select Id from PUBLISHING_HOUSE where Name ='Ýletisim Yayýnlarý'),
'1971-01-12', 'A');

INSERT INTO BOOK
VALUES (BOOK_SEQ.nextval, 'Sarý Sýcak','1124756595', 
(select Id from author where Name ='Yaþar' and Surname = 'Kemal'),
(select Id from PUBLISHING_HOUSE where Name ='YKY'),
'1955-01-12', 'A');

INSERT INTO BOOK
VALUES (BOOK_SEQ.nextval, 'Kürk Mantolu Madonna','9914756595', 
(select Id from author where Name ='Sabahattin' and Surname = 'Ali'),
(select Id from PUBLISHING_HOUSE where Name ='Remzi Kitap Evi'),
'1943-01-12', 'A');

INSERT INTO BOOK
VALUES (BOOK_SEQ.nextval, 'Kuyucaklý Yusuf','3319856595', 
(select Id from author where Name ='Sabahattin' and Surname = 'Ali'),
(select Id from PUBLISHING_HOUSE where Name ='Yeni Kitapçý'),
'1943-01-12', 'A');



