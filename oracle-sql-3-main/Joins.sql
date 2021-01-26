--T�m kullan�c�lar ve varsa onlara yap�lan kitap atamalar�?
SELECT * FROM USERS_TABLE u
LEFT JOIN USER_BOOK_ASSIGNMENT asg
ON u.ID = asg.USERID;

--Sistemde kay�tl� kitaplar ve yazarlar�?
SELECT b.NAME Book, CONCAT(CONCAT(a.NAME, ' '), a.SURNAME) AS AUTHOR  FROM BOOK b
JOIN AUTHOR a
ON b.AUTHORID = a.ID;

--Her bir yazar�n ka�ar kitab� vard�r?
SELECT a.*, (CASE 
          WHEN Result IS NULL THEN 0
          ELSE Result end) Total 
          FROM AUTHOR a
LEFT JOIN (SELECT AUTHORID, COUNT(AUTHORID) Result FROM BOOK 
GROUP BY AUTHORID) T1
ON a.ID = T1.AUTHORID;


--Herhangi bir ��renciye atanmam�� olan kitaplar�n ve herhangi bir kitap atanmam�� yay�nevlerinin bilgileri?
SELECT b.*, ph.* FROM USER_BOOK_ASSIGNMENT asg
RIGHT JOIN BOOK b ON asg.BOOKID = b.ID
FULL OUTER JOIN  PUBLISHING_HOUSE ph ON ph.ID = PUBLISHINGHOUSEID
WHERE asg.ID IS NULL;








