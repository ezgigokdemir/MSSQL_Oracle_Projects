CREATE TABLE AUTHOR
(
    Id integer NOT NULL,
    Name varchar2(255) NOT NULL,
    Surname varchar2(255) NOT NULL,
    
        CONSTRAINT pk_authorid PRIMARY KEY(Id)
)