CREATE SEQUENCE PUBLISHINGHOUSE_SEQ
    MINVALUE 1
    MAXVALUE 999999999999999999999999999
    START WITH 1
    INCREMENT BY 1
    CACHE 20;
    

INSERT INTO PUBLISHING_HOUSE
VALUES (PUBLISHINGHOUSE_SEQ.nextval, 'Can Yay�nlar�');

INSERT INTO PUBLISHING_HOUSE
VALUES (PUBLISHINGHOUSE_SEQ.nextval, '�zg�r Yay�nlar�');

INSERT INTO PUBLISHING_HOUSE
VALUES (PUBLISHINGHOUSE_SEQ.nextval, 'YKY');

INSERT INTO PUBLISHING_HOUSE
VALUES (PUBLISHINGHOUSE_SEQ.nextval, 'Derg�h Yay�nlar�');

