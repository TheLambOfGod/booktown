//Order
SELECT subject FROM subjects ORDER BY subject;
SELECT subject, location FROM subjects ORDER BY location;

//Where
SELECT title FROM books WHERE title = 'Little Women';
SELECT title FROM books WHERE title LIKE = '%ython%';
SELECT location, subject FROM subjects WHERE location LIKE '%ain St%' ORDER BY subject;

//Joins
SELECT b.title FROM books b INNER JOIN subjects s ON s.id=b.subject_id WHERE s.subject = 'Computers';
SELECT b.title, a.first_name, a.last_name, s.subject FROM books b INNER JOIN subjects s ON b.subject_id=s.id INNER JOIN authors a ON b.author_id=a.id;
SELECT b.title, s.retail FROM stock s INNER JOIN editions e ON s.isbn=e.isbn INNER JOIN books b ON e.book_id=b.id ORDER BY s.retail DESC;
SELECT b.title, e.isbn, p.name, s.retail FROM books b INNER JOIN editions e ON b.id=e.book_id INNER JOIN stock s ON s.isbn=e.isbn INNER JOIN publishers p ON e.publisher_id=p.id WHERE b.title = 'Dune';
SELECT c.first_name, c.last_name, s.ship_date, b.title FROM shipments s INNER JOIN customers c ON s.customer_id=c.id INNER JOIN editions e ON e.isbn=s.isbn INNER JOIN books b ON b.id=e.book_id ORDER BY s.ship_date;

//Grouping and Counting

SELECT COUNT(*) FROM books;
SELECT COUNT(location) FROM subjects;
SELECT location, COUNT(location) FROM subjects GROUP BY location;
SELECT e.book_id, b.title, COUNT(e.edition) FROM books b INNER JOIN editions e ON b.id=e.book_id GROUP BY e.book_id, b.title;
