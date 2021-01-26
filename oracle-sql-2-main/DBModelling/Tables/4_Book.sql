CREATE TABLE BOOK
(
    Id integer NOT NULL,
    Name varchar2(255) NOT NULL,
    ISBN varchar2(20) NOT NULL,
    AuthorId integer NOT NULL,
    PublishingHouseId integer NOT NULL,
    DateOfIssue date NOT NULL,
    RecordStatus char(1) NOT NULL,
    
        CONSTRAINT pk_bookid PRIMARY KEY(Id),
        CONSTRAINT fk_author_id FOREIGN KEY (AuthorId) REFERENCES AUTHOR(Id),
        CONSTRAINT fk_publishinghouse_id FOREIGN KEY (PublishingHouseId) REFERENCES PUBLISHING_HOUSE(Id),
        CONSTRAINT uq_isbn_no UNIQUE(ISBN),
        CONSTRAINT check_recordstatus_book CHECK (RecordStatus = 'A' or RecordStatus = 'D' )
)