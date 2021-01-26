--Kayýtlý userlarýn ve kitap atamasý yapýlmýþ userlarýn hepsinin ID'leri
SELECT ID FROM USERS_TABLE
UNION
SELECT USERID FROM USER_BOOK_ASSIGNMENT;

--Kitap atamasý yapýlmamýþ kullanýcýlarýn bilgileri
SELECT * FROM USERS_TABLE
MINUS
(SELECT u.* FROM USERS_TABLE u 
JOIN USER_BOOK_ASSIGNMENT asg 
ON u.ID = asg.USERID);

--Sistemde kayýtlý kitabý olmayan yazarlar
(SELECT a.* FROM AUTHOR a
LEFT JOIN BOOK b ON a.ID = b.AUTHORID WHERE b.AUTHORID IS NULL)
INTERSECT
(SELECT a.* FROM AUTHOR a
LEFT JOIN BOOK b ON a.ID = b.AUTHORID);

--Atamasý yapýlmamýþ kitaplarýn yazarlarý
SELECT a.* FROM AUTHOR a
INNER JOIN
(SELECT b.* FROM BOOK b JOIN
AUTHOR a ON b.AUTHORID = a.ID
MINUS
SELECT b.* FROM BOOK b JOIN
USER_BOOK_ASSIGNMENT asg ON b.ID = asg.BOOKID) T1
ON a.ID = T1.AUTHORID;

