SELECT COUNT(name) FROM students WHERE is_playing=1;
--compare player table count to the # characters we should have as listed in character table
--from character table, delete unnecessary rows from bottom
SELECT * FROM students Where is_playing=1 ORDER BY RAND();
--assign each row in player table to corresponding row in character table
--use twilio api to text people their character and brief description
--INTO OUTFILE '/tmp/game.txt'