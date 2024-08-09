-- SQLite
drop TABLE AuthorDetails;
drop table Authors
drop table Books
drop TABLE Publisher



INSERT INTO Book
VALUES
(
null,
'MunaMadan',
'500',
'9HT87RC65210',
'upanyas',
'2002/03/02',
1,
1

);

INSERT INTO Book
VALUES
(
null,
'Science,
'550',
'9HT87RC65210',
'BOOKs',
'2002/03/02',
2,
2

);

INSERT INTO Publisher
VALUES
(
null,
'Asmita Publication',
'Kathmandu',
'9876543210',
'2002/02/02'

);

INSERT INTO Author
VALUES
(
null,
'Reewaz',
'Kathmandu',
'hero@gmail.com',
'Masters'

);


SELECT*FROM Author
SELECT * FROM Publisher
SELECT * FROM Book

SELECT 
    Book.Title AS 'Book Title',
    Author.Name AS 'Author Name',
    Publisher.Name AS 'Publisher Name',
    Book.Published AS 'Published Date'
FROM 
    Book
JOIN 
    Author ON Book.AuthorID = Author.ID
JOIN 
    Publisher ON Book.PublisherID = Publisher.ID;
