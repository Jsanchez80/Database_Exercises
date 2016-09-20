USE codeup_test;
-- Write SELECT statements to output each of the following with a caption:
-- All albums in your table.
SELECT 'All albums in your table' AS 'Info';
SELECT * FROM albums;

-- All albums released before 1980
SELECT 'All albums released before 1980' AS 'Info'; 
SELECT Album FROM albums
WHERE Released < 1980;

-- All albums by Michael Jackson
SELECT 'Albums recorded by Michael Jackson' AS 'Info';
SELECT Album From albums
WHERE Artist = 'Michael Jackson';


-- Make all the albums 10 times more popular (sales * 10)
-- SET sales = sales * 10;

-- Move all the albums before 1980 back to the 1800s.
UPDATE albums
SET Released = 1800
WHERE Released
BETWEEN 1950 AND 1980;

SELECT Released FROM albums
WHERE Released = 1800;

-- Change "Michael Jackson" to "Peter Jackson"
UPDATE albums
SET Artist = 'Peter Jackson'
WHERE Artist = 'Michael Jackson';

SELECT * FROM albums
WHERE Artist = 'Peter Jackson';
	
-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.


