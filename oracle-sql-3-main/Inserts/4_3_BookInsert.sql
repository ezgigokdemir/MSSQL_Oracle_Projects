INSERT INTO BOOK
VALUES (BOOK_SEQ.nextval, 'Tutunamayanlar','3334756595', 
(select Id from author where Name ='O�uz' and Surname = 'Atay'),
(select Id from PUBLISHING_HOUSE where Name ='�letisim Yay�nlar�'),
'1971-01-12', 'A');

INSERT INTO BOOK
VALUES (BOOK_SEQ.nextval, 'Sar� S�cak','1124756595', 
(select Id from author where Name ='Ya�ar' and Surname = 'Kemal'),
(select Id from PUBLISHING_HOUSE where Name ='YKY'),
'1955-01-12', 'A');

INSERT INTO BOOK
VALUES (BOOK_SEQ.nextval, 'K�rk Mantolu Madonna','9914756595', 
(select Id from author where Name ='Sabahattin' and Surname = 'Ali'),
(select Id from PUBLISHING_HOUSE where Name ='Remzi Kitap Evi'),
'1943-01-12', 'A');

INSERT INTO BOOK
VALUES (BOOK_SEQ.nextval, 'Kuyucakl� Yusuf','3319856595', 
(select Id from author where Name ='Sabahattin' and Surname = 'Ali'),
(select Id from PUBLISHING_HOUSE where Name ='Yeni Kitap��'),
'1943-01-12', 'A');



