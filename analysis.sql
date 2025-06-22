-- WHO IS THE SENIOR MOST EMPLOYEE BASED ON JOB TITLE?
SELECT * FROM EMPLOYEE;

select * from employee 
ORDER BY
levels DESC 
LIMIT 1;

-- WHICH COUNTRIES HAVE THE MOST INVOICES;

SELECT COUNT(*) as C, billing_country 
FROM 
invoice 
GROUP BY 
billing_country 
ORDER BY C DESC;

-- WHAT ARE THE TOP 3 VALUES OF TOTAL IN VOICES?
SELECT total from invoice ORDER BY total desc LIMIT 3;

SELECT * FROM invoice;


-- Which city has the best customers ? We would like to throw a promotional music festival in the city
-- we made the most money. Write a query that returns on city that has the highest sum of invoice totals.
-- Returns both the city name and sum of all invoice totals 
SELECT * FROM INVOICE;

SELECT SUM(total) as total, billing_city 
FROM 
invoice 
GROUP BY 
billing_city 
ORDER BY 
total DESC
LIMIT 1;

-- Who is the best customer ? The customer who has spent the most money will be declared 
-- the best best customer. Write a query that returns the person who has spent the most money 
SELECT C.customer_id ,C.first_name, C.last_name, SUM(I.TOTAL) as total_spend 
FROM CUSTOMER as C 
JOIN invoice AS I
ON C.customer_id = I.customer_id 
GROUP BY C.customer_id, C.first_name 
ORDER BY total_spend DESC 
LIMIT 1;



-- Write a query to return the email the first_name, last_name, Genre of all Rock Music listners.
-- Return your list ordered Alphabetically by Email starting with a.


SELECT DISTINCT
    C.email,
    C.first_name,
    C.last_name,
    G.name AS genre
FROM customer AS C
JOIN invoice AS I
  ON C.customer_id = I.customer_id
JOIN invoice_line AS IL
  ON I.invoice_id = IL.invoice_id
JOIN track AS T
  ON IL.track_id = T.track_id
JOIN genre AS G
  ON T.genre_id = G.genre_id
WHERE G.name = 'Rock'
  AND C.email LIKE 'a%'         
ORDER BY C.email;

-- Let's Invite The Artists who have written the most rock music in our dataset.
-- Write a query that returns The Artist Name and total track count of the top 10 Rock Bands

SELECT ART.artist_id, COUNT(ART.artist_id) as total_track, ART.name 
FROM artist as ART
JOIN album as AL ON ART.artist_id = AL.artist_id 
JOIN track as TRK ON AL.album_id = TRK.album_id
JOIN genre as GN ON GN.genre_id = TRK.genre_id 
WHERE GN.name like 'Rock' 
GROUP BY ART.artist_id 
ORDER BY total_track 
DESC LIMIT 10;

-- RETURN ALL THE TRACK NAMES THAT HAVE A SONG LENGTH LONGER THAN THE AVERAGE SONG LENGTH.
-- RETURN THE NAME AND MILLISECONDS FOR EACH TRACK. ORDER BY SONG LENGTH WITH THE LONGEST SONGS LISTED FIRST


SELECT name, milliseconds AS SONG_LENGTH FROM track
WHERE milliseconds >(SELECT AVG(milliseconds) FROM track) 
ORDER BY SONG_LENGTH DESC;

-- FIND HOW MUCH AMOUNT SPENT BY EACH CUSTOMER ON ARTISTS ? WRITE A QUERY TO RETURN 
-- CUSTOMER NAME ARTIST NAME AND TOTAL SPENT.

WITH best_selling_artist AS(
SELECT ART.artist_id as artist_id, art.name as artist_name, SUM(IL.unit_price*IL.quantity) from invoice_line as IL
JOIN track as T on IL.track_id=T.track_id
JOIN album AS AL on AL.album_id =T.album_id
JOIN artist as ART on AL.artist_id = art.artist_id
GROUP BY 1
ORDER BY 3 DESC 
LIMIT 1
)
SELECT C.customer_id, C.first_name, C.last_name, bsa.artist_name, SUM(IL.unit_price*il.quantity) AS amount_spent_by_customer 
FROM invoice as i 
JOIN customer as C on C.customer_id=I.customer_id
JOIN invoice_line IL ON IL.invoice_id = i.invoice_id
join track t ON t.track_id= IL.track_id
JOIN album AS AL on AL.album_id =T.album_id
JOIN best_selling_artist as bsa ON bsa.artist_id = AL.artist_id
GROUP BY 1,2,3,4
ORDER BY 5 DESC;

-- We want to find out the most popular music genre for each country we determine the most popular genre as the genre 
-- with the highest amount of purchases. Write a query that returns each country along with th the top genre 
-- For countries where the maximum number of purchases is shared return all genres

WITH popular_genre AS
(
	SELECT COUNT(invoice_line.quantity) AS purchases, customer.country, genre.name, genre.genre_id,
	ROW_NUMBER() OVER (PARTITION BY customer.country ORDER BY COUNT(invoice_line.quantity) DESC) AS RowNo
	FROM invoice_line
	JOIN invoice ON invoice.invoice_id = invoice_line.invoice_id
	JOIN customer ON customer.customer_id= invoice.customer_id
	JOIN track ON track.track_id = invoice_line.track_id
	JOIN genre ON genre.genre_id = track.genre_id
	GROUP BY 2,3,4
	ORDER BY 2 ASC, 1 DESC

)

SELECT * FROM popular_genre WHERE RowNo<=1
 

-- Write a query that determines the customer that has spent the most on music for each country. 
-- Write a query that returns the country along with the top customer and how much they spent. For countries
-- where the top amount spent is shared, provide all customers who spent this amount
WITH Customer_with_country AS(
SELECT customer.customer_id, first_name, last_name, billing_country, SUM(total) AS total_spending,
ROW_NUMBER() OVER(PARTITION BY billing_country ORDER BY SUM(total) DESC)AS RowNo
FROM invoice
JOIN customer ON customer.customer_id = invoice.customer_id
GROUP BY 1,2,3,4
ORDER BY 4 ASC,5 DESC)
SELECT * FROM Customer_with_country WHERE RowNo=1;
















