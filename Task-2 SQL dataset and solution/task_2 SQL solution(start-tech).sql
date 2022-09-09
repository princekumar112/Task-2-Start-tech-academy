create database task_1;
use task_1;
# 1. Create a table named ‘matches’ with appropriate data types for columns

CREATE TABLE matches (
    id INT,
    city VARCHAR(255),
    _date DATE,
    player_of_match VARCHAR(255),
    venue VARCHAR(255),
    neutral_venue INT,
    team1 VARCHAR(255),
    team2 VARCHAR(255),
    toss_winner VARCHAR(255),
    toss_decision VARCHAR(255),
    winner VARCHAR(255),
    result VARCHAR(255),
    result_margin INT,
    eliminator VARCHAR(255),
    method VARCHAR(255),
    umpire1 VARCHAR(255),
    umpire2 VARCHAR(255)
);


# 2. Create a table named ‘deliveries’ with appropriate data types for columns



CREATE TABLE deliveries (
     id int,
    inning INT,
	_over INT,
    ball INT,
    batsman VARCHAR(255),
    non_striker VARCHAR(255),
    bowler VARCHAR(255),
    batsman_runs INT,
    extra_runs INT,
    total_runs INT,
    is_wicket INT,
    dismissal_kind VARCHAR(255),
    player_dismissed VARCHAR(255),
    fielder VARCHAR(255),
    extras_type VARCHAR(255),
    batting_team VARCHAR(255),
    bowling_team VARCHAR(255)
);

# 3. Import data from CSV file ’IPL_matches.csv’ attached in resources to ‘matches’
# 4. Import data from CSV file ’IPL_Ball.csv’ attached in resources to ‘deliveries’

# 5. Select the top 20 rows of the deliveries table.

SELECT 
    *
FROM
    deliveries
WHERE
    total_runs = 0 AND ball = 6
        AND is_wicket > 0
LIMIT 20;


# 6. Select the top 20 rows of the matches table.

SELECT 
    *
FROM
    matches
ORDER BY result_margin DESC
LIMIT 20;
 

# 7. Fetch data of all the matches played on 2nd May 2013

SELECT 
    *
FROM
    matches
WHERE
    _date = '2013-05-02';



# 8. Fetch data of all the matches where the margin of victory is more than 100 runs.


SELECT 
    *
FROM
    matches
WHERE
    result_margin > 100
ORDER BY result_margin DESC;



# 9. Fetch data of all the matches where the final scores of both teams tied and order it in descending order of the date


SELECT 
    *
FROM
    matches
WHERE
    result = 'tie'
ORDER BY _date DESC;


# 10. Get the count of cities that have hosted an IPL match.

SELECT 
    city, COUNT(city) as no_of_host
FROM
    matches
GROUP BY city;




























