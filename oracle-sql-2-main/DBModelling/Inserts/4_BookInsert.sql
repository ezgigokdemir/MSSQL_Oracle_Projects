CREATE SEQUENCE BOOK_SEQ
    MINVALUE 1
    MAXVALUE 999999999999999999999999999
    START WITH 1
    INCREMENT BY 1
    CACHE 20;
    

INSERT INTO BOOK
VALUES (BOOK_SEQ.nextval, 'Sinekli Bakkal','1424756595', 
(select Id from author where Name ='Halide Edib' and Surname = 'Adývar'),
(select Id from PUBLISHING_HOUSE where Name ='Can Yayýnlarý'),
'2006-01-12', 'A');

INSERT INTO BOOK
VALUES (BOOK_SEQ.nextval, 'Daða Çýkan Kurt','9924756595', 
(select Id from author where Name ='Halide Edib' and Surname = 'Adývar'),
(select Id from PUBLISHING_HOUSE where Name ='Özgür Yayýnlarý'),
'1922-01-12', 'A');

INSERT INTO BOOK
VALUES (BOOK_SEQ.nextval, 'Mor Salkýmlý Ev','8824756595', 
(select Id from author where Name ='Halide Edib' and Surname = 'Adývar'),
(select Id from PUBLISHING_HOUSE where Name ='Can Yayýnlarý'),
'1963-01-12', 'A');
