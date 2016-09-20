USE codeup_test;
-- 1. The name of all albums by Pink Floyd.
SELECT * FROM albums
WHERE Artist = 'Pink Floyd';
-- 2. The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT Released FROM albums
WHERE Album = 'Sgt. Pepper''s Lonely Hearts Club Band';
-- 3. The genre for Nevermind
SELECT Genre FROM albums
WHERE Album = 'Nevermind';
-- 4. Which albums were released in the 1990s
SELECT Album FROM albums
WHERE Released
BETWEEN 1990 AND 1999;
-- 5. Which albums had less than 20 million certified sales
SELECT * FROM albums
WHERE Sales_Certification <= '20 Million';
-- 6. All the albums in the rock genre. Is this all the rock albums in the table?
SELECT * FROM albums
WHERE Genre = 'Rock';
