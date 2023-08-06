-- Which artists had the most Top 100 songs?
SELECT 
  artists, 
  COUNT(artists) AS noOfappearance
FROM 
  `sportify_2018_top100.top2018` 
GROUP BY artists
ORDER BY 
  2 DESC 


-- Are there more artists in the Top 100 with 'Lil' in their name, or with 'DJ' in their name?
SELECT
  'Lil' AS type,
  COUNT(DISTINCT artists) AS noOfArtists   
FROM
  `sportify_2018_top100.top2018`
WHERE 
  UPPER(artists) LIKE '%LIL%'
GROUP BY 1

UNION ALL

SELECT
  'Dj' AS type,
  COUNT(DISTINCT artists) AS noOfArtists   
FROM
  `sportify_2018_top100.top2018`
WHERE 
  UPPER(artists) LIKE '%DJ%'
GROUP BY 1
