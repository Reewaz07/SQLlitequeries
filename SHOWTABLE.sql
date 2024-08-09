//1Getallbookswhich are published in last 30 years
SELECT *
FROM Book
WHERE Published >= DATE('now', '-30 years');


//2.Get total price of books written by parijat
SELECT SUM(Price) AS TotalPrice
FROM Book
JOIN Author ON Book.AuthorID = Author.ID
WHERE Author.Name = 'Parijat';


3//Get all publisher in descending orderwithnumberofbookspublishedsofar
SELECT Publisher.Name, COUNT(Book.ID) AS NumberOfBooks
FROM Publisher
LEFT JOIN Book ON Publisher.ID = Book.PublisherID
GROUP BY Publisher.Name
ORDER BY NumberOfBooks DESC;
4//
SELECT Author.Name, GROUP_CONCAT(Book.Title, ', ') AS Books
FROM Author
LEFT JOIN Book ON Author.ID = Book.AuthorID
GROUP BY Author.Name;

