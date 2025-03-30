CREATE DATABASE IMDB_DB;
USE IMDB_DB;
-- database created and table "imdb_top250' imported

-- 1.The Total Number of Movies Scraped
SELECT COUNT(*) AS Total_Movies FROM IMDB_TOP250;

-- 2.The top 5 directors with the most movies in the top charts
SELECT Director, COUNT(*) AS Movie_Count
FROM IMDB_TOP250
GROUP BY Director
ORDER BY Movie_Count DESC
LIMIT 5;

-- 3.The average IMDB rating of movies per genre
SELECT Genre, ROUND(AVG(Rating), 2) AS Avg_Rating
FROM (
    SELECT Genre1 AS Genre, Rating FROM IMDB_TOP250 WHERE Genre1 IS NOT NULL AND Genre1 <> 'N/A'
    UNION ALL
    SELECT Genre2, Rating FROM IMDB_TOP250 WHERE Genre2 IS NOT NULL AND Genre2 <> 'N/A'
    UNION ALL
    SELECT Genre3, Rating FROM IMDB_TOP250 WHERE Genre3 IS NOT NULL AND Genre3 <> 'N/A'
) AS Genre_Ratings
GROUP BY Genre
ORDER BY Avg_Rating DESC;

-- 4.The Highest-Rated Movie for Each Genre
WITH RankedMovies AS (
    SELECT Genre, Title, Rating,
           RANK() OVER (PARTITION BY Genre ORDER BY Rating DESC) AS Rank1
    FROM (
        SELECT Genre1 AS Genre, Title, Rating FROM IMDB_TOP250 WHERE Genre1 IS NOT NULL AND Genre1 <> 'N/A'
        UNION ALL
        SELECT Genre2, Title, Rating FROM IMDB_TOP250 WHERE Genre2 IS NOT NULL AND Genre2 <> 'N/A'
        UNION ALL
        SELECT Genre3, Title, Rating FROM IMDB_TOP250 WHERE Genre3 IS NOT NULL AND Genre3 <> 'N/A'
    ) AS Genre_Movies
)
SELECT Genre, Title, Rating
FROM RankedMovies
WHERE Rank1 = 1;

-- 5.Top 10 Highest-Rated Movies
SELECT Title, Year, Rating
FROM IMDB_TOP250
ORDER BY Rating DESC
LIMIT 10;

-- 6.Most Common Directors in the Top 250
SELECT Director, COUNT(*) AS Movie_Count
FROM IMDB_TOP250
GROUP BY Director
ORDER BY Movie_Count DESC
LIMIT 10;

-- 7.Average Rating by Year
SELECT Year, ROUND(AVG(Rating),2) AS Avg_Rating
FROM IMDB_TOP250
GROUP BY Year
ORDER BY Year DESC;

-- 8.Top 10 Movies with Most Reviews
SELECT Title, Year, Votes
FROM IMDB_TOP250
ORDER BY Votes DESC
LIMIT 10;

-- 9.Most Popular Genre
SELECT Genre, COUNT(*) AS Count
FROM (
    SELECT Genre1 AS Genre FROM IMDB_TOP250 WHERE Genre1 IS NOT NULL AND Genre1 <> 'N/A'
    UNION ALL
    SELECT Genre2 FROM IMDB_TOP250 WHERE Genre2 IS NOT NULL AND Genre2 <> 'N/A'
    UNION ALL
    SELECT Genre3 FROM IMDB_TOP250 WHERE Genre3 IS NOT NULL <> 'N/A'
) AS Genres
GROUP BY Genre
ORDER BY Count DESC
LIMIT 1;

 -- 10.Oldest and Newest Movies in the Top 250
 SELECT Title, Year 
FROM IMDB_TOP250 
ORDER BY Year ASC 
LIMIT 1;

SELECT Title, Year 
FROM IMDB_TOP250 
ORDER BY Year DESC 
LIMIT 1;

-- 11.Average Rating Per Genre
SELECT Genre, AVG(Rating) AS Avg_Rating
FROM (
    SELECT Genre1 AS Genre, Rating FROM IMDB_TOP250 WHERE Genre1 IS NOT NULL AND Genre1 <> 'N/A'
    UNION ALL
    SELECT Genre2, Rating FROM IMDB_TOP250 WHERE Genre2 IS NOT NULL AND Genre2 <> 'N/A'
    UNION ALL
    SELECT Genre3, Rating FROM IMDB_TOP250 WHERE Genre3 IS NOT NULL AND Genre3 <> 'N/A'
) AS Genres
GROUP BY Genre
ORDER BY Avg_Rating DESC;

-- 12.Directors with Multiple Highly Rated Movies
SELECT Director, COUNT(*) AS Movie_Count
FROM IMDB_TOP250
WHERE Rating >= 8.5
GROUP BY Director
HAVING COUNT(*) > 1
ORDER BY Movie_Count DESC;

-- 13.Distribution of Movies Over Decades
SELECT CONCAT(FLOOR(Year / 10) * 10, 's') AS Decade, COUNT(*) AS Movie_Count
FROM IMDB_TOP250
GROUP BY Decade
ORDER BY Decade ASC;

-- 14. Highest-Rated Movie for Each Year
WITH RankedMovies AS (
    SELECT Title, Year, Rating,
           RANK() OVER (PARTITION BY Year ORDER BY Rating DESC) AS Rank1
    FROM IMDB_TOP250
)
SELECT Title, Year, Rating
FROM RankedMovies
WHERE Rank1 = 1;





