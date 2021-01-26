CREATE TABLE USERS_TABLE
(
    Id integer NOT NULL,
    Name varchar2(255) NOT NULL,
    Surname varchar2(255) NOT NULL,
    Email varchar2(255) NOT NULL,
    MobileNumber varchar2(255) NOT NULL,
    StudentNumber varchar2(255) NOT NULL,
    TrIdentityNumber varchar2(11) NOT NULL,
    RecordStatus char(1) NOT NULL,
    
        CONSTRAINT pk_userid PRIMARY KEY(Id),
        CONSTRAINT uq_studentnumber UNIQUE(StudentNumber),
        CONSTRAINT uq_tridentitynumber UNIQUE(TrIdentityNumber),
        CONSTRAINT check_recordstatus CHECK (RecordStatus = 'A' or RecordStatus = 'D' )
)