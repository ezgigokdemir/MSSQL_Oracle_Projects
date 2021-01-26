CREATE TABLE USER_BOOK_ASSIGNMENT
(
    Id integer NOT NULL,
    UserId integer NOT NULL,
    BookId integer NOT NULL,
    CreateDate date NOT NULL,
    DeliveryDate date NOT NULL,
    RecordStatus char(1) NOT NULL,
    
        CONSTRAINT pk_assignmentid PRIMARY KEY(Id),
        CONSTRAINT fk_user_id FOREIGN KEY (UserId) REFERENCES USERS_TABLE(Id),
        CONSTRAINT fk_book_id FOREIGN KEY (BookId) REFERENCES BOOK(Id),
        CONSTRAINT check_record_status_asg CHECK (RecordStatus = 'A' or RecordStatus = 'D' )
)