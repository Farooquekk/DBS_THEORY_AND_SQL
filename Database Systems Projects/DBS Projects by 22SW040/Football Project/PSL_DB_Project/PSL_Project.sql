 use pakistan_super_league;
-- Teams table
CREATE TABLE Teaplayers_statsms (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL,
    city VARCHAR(100),
    coach_name VARCHAR(100),
    captain_name VARCHAR(100),
    title_won INT,
    founded_year DATE
);

-- Players table
CREATE TABLE Players (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(100) NOT NULL,
    nationality VARCHAR(100),
    position VARCHAR(50),
    date_of_birth DATE,
    team_id INT,
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);


-- Matches table
-- Stadiums table


-- Stadiums table
CREATE TABLE Stadiums (
    stadium_id INT PRIMARY KEY,
    stadium_name VARCHAR(100) NOT NULL,
    city VARCHAR(100),
    capacity INT
);

-- Seasons table
CREATE TABLE Seasons (
    season_id INT PRIMARY KEY,
    start_year INT,
    end_year INT
);
CREATE TABLE Matches (
    match_id INT PRIMARY KEY,
    date DATE,
    venue VARCHAR(100),
    result VARCHAR(100),
    winning_team_id INT,
    losing_team_id INT,
    stadium_id INT,
    season_id INT,
    FOREIGN KEY (winning_team_id) REFERENCES Teams(team_id),
    FOREIGN KEY (losing_team_id) REFERENCES Teams(team_id),
    FOREIGN KEY (stadium_id) REFERENCES Stadiums(stadium_id),
    FOREIGN KEY (season_id) REFERENCES Seasons(season_id)
);
-- Officials table
CREATE TABLE Officials (
    official_id INT PRIMARY KEY,
    official_name VARCHAR(100) NOT NULL,
    role VARCHAR(100),
    match_id INT,
    FOREIGN KEY (match_id) REFERENCES Matches(match_id)
);

-- Teams_Stats table
CREATE TABLE Teams_Stats (
    team_stats_id INT PRIMARY KEY,
    team_id INT,
    season_id INT,
    wins INT,
    losses INT,
    points INT,
    FOREIGN KEY (team_id) REFERENCES Teams(team_id),
    FOREIGN KEY (season_id) REFERENCES Seasons(season_id)
);

-- Players_Stats table
CREATE TABLE Players_Stats (
    player_stats_id INT PRIMARY KEY,
    player_id INT,
    season_id INT,
    runs INT,
    wickets INT,
    catches INT,
    runouts INT,
    FOREIGN KEY (player_id) REFERENCES Players(player_id),
    FOREIGN KEY (season_id) REFERENCES Seasons(season_id)
);

-- Matches table
CREATE TABLE Matches (
    match_id INT PRIMARY KEY,
    date DATE,
    venue VARCHAR(100),
    result VARCHAR(100),
    winning_team_id INT,
    losing_team_id INT,
    stadium_id INT,
    season_id INT,
    FOREIGN KEY (winning_team_id) REFERENCES Teams(team_id),
    FOREIGN KEY (losing_team_id) REFERENCES Teams(team_id),
    FOREIGN KEY (stadium_id) REFERENCES Stadiums(stadium_id),
    FOREIGN KEY (season_id) REFERENCES Seasons(season_id)
);
-- Altering the Table
ALTER TABLE Officials ADD COLUMN nationality VARCHAR(100);

INSERT INTO Teams (team_id, team_name, city, coach_name, captain_name, title_won, founded_year) 
VALUES
-- Islamabad United
(1, 'Islamabad United', 'Islamabad', 'Trevor Bayliss', 'Shadab Khan', 2, '2015-01-01'),

-- Karachi Kings
(2, 'Karachi Kings', 'Karachi', 'Wasim Akram', 'Imad Wasim', 1, '2015-01-01'),

-- Lahore Qalandars
(3, 'Lahore Qalandars', 'Lahore', 'Aaqib Javed', 'Sohail Akhtar', 0, '2015-01-01'),

-- Peshawar Zalmi
(4, 'Peshawar Zalmi', 'Peshawar', 'Darren Sammy', 'Shoaib Malik', 1, '2015-01-01'),

-- Quetta Gladiators
(5, 'Quetta Gladiators', 'Quetta', 'Moin Khan', 'Sarfaraz Ahmed', 1, '2015-01-01'),

-- Multan Sultans
(6, 'Multan Sultans', 'Multan', 'Andy Flower', 'Mohammad Rizwan', 0, '2017-01-01');


-- Islamabad United Players
INSERT INTO Players (player_id, player_name, nationality, position, date_of_birth, team_id) 
VALUES
(1, 'Shadab Khan', 'Pakistan', 'All-rounder', '1998-10-04', 1),
(2, 'Colin Munro', 'New Zealand', 'Batsman', '1987-03-11', 1),
(3, 'Asif Ali', 'Pakistan', 'All-rounder', '1991-10-01', 1),
(4, 'Hussain Talat', 'Pakistan', 'All-rounder', '1996-02-12', 1),
(5, 'Faheem Ashraf', 'Pakistan', 'All-rounder', '1994-01-16', 1),
(6, 'Luke Ronchi', 'New Zealand', 'Wicketkeeper-Batsman', '1981-04-23', 1),
(7, 'Mohammad Wasim Jr.', 'Pakistan', 'Bowler', '1998-12-08', 1),
(8, 'Hasan Ali', 'Pakistan', 'Bowler', '1994-02-07', 1),
(9, 'Fawad Ahmed', 'Australia', 'Bowler', '1981-02-05', 1),
(10, 'Akif Javed', 'Pakistan', 'Bowler', '2001-12-04', 1),
(11, 'Ali Khan', 'USA', 'Bowler', '1990-12-13', 1),

-- Karachi Kings Players

(12, 'Babar Azam', 'Pakistan', 'Batsman', '1994-10-15', 2),
(13, 'Sharjeel Khan', 'Pakistan', 'Batsman', '1989-08-14', 2),
(14, 'Martin Guptill', 'New Zealand', 'Batsman', '1986-09-30', 2),
(15, 'Chadwick Walton', 'West Indies', 'Wicketkeeper-Batsman', '1985-07-03', 2),
(16, 'Imad Wasim', 'Pakistan', 'All-rounder', '1988-12-18', 2),
(17, 'Danish Aziz', 'Pakistan', 'All-rounder', '1996-12-25', 2),
(18, 'Qasim Akram', 'Pakistan', 'All-rounder', '2002-08-12', 2),
(19, 'Thisara Perera', 'Sri Lanka', 'All-rounder', '1989-04-03', 2),
(20, 'Arshad Iqbal', 'Pakistan', 'Bowler', '2002-11-01', 2),
(21, 'Mohammad Amir', 'Pakistan', 'Bowler', '1992-04-13', 2),
(22, 'Waqas Maqsood', 'Pakistan', 'Bowler', '1987-05-30', 2),

-- Lahore Qalandars Players

(23, 'Sohail Akhtar', 'Pakistan', 'Batsman', '1986-02-10', 3),
(24, 'Fakhar Zaman', 'Pakistan', 'Batsman', '1990-04-10', 3),
(25, 'Mohammad Hafeez', 'Pakistan', 'All-rounder', '1980-10-17', 3),
(26, 'Zeeshan Ashraf', 'Pakistan', 'Wicketkeeper-Batsman', '1992-06-23', 3),
(27, 'Tim David', 'Singapore', 'All-rounder', '1996-11-14', 3),
(28, 'Rashid Khan', 'Afghanistan', 'All-rounder', '1998-09-20', 3),
(29, 'Shahid Afridi', 'Pakistan', 'All-rounder', '1980-03-01', 3),
(30, 'James Faulkner', 'Australia', 'All-rounder', '1990-04-29', 3),
(31, 'Shaheen Afridi', 'Pakistan', 'Bowler', '2000-04-06', 3),
(32, 'Haris Rauf', 'Pakistan', 'Bowler', '1993-11-07', 3),
(33, 'Ahmed Daniyal', 'Pakistan', 'Bowler', '1999-01-10', 3),

-- Peshawar Zalmi Players

(34, 'Shoaib Malik', 'Pakistan', 'All-rounder', '1982-02-01', 4),
(35, 'Kamran Akmal', 'Pakistan', 'Wicketkeeper-Batsman', '1982-01-13', 4),
(36, 'Sherfane Rutherford', 'West Indies', 'All-rounder', '1998-08-15', 4),
(37, 'David Miller', 'South Africa', 'Batsman', '1989-06-10', 4),
(38, 'Wahab Riaz', 'Pakistan', 'Bowler', '1985-06-28', 4),
(39, 'Umaid Asif', 'Pakistan', 'Bowler', '1984-04-12', 4),
(40, 'Saqib Mahmood', 'England', 'Bowler', '1997-02-25', 4),
(41, 'Mohammad Irfan', 'Pakistan', 'Bowler', '1982-06-06', 4),
(42, 'Mohammad Imran', 'Pakistan', 'Bowler', '1997-05-20', 4),
(43, 'Mohammad Irfan Khan', 'Pakistan', 'Bowler', '1997-04-12', 4),
(44, 'Mohammad Haris', 'Pakistan', 'Bowler', '2001-11-30', 4),
-- Quetta Gladiators players
(45, 'Sarfaraz Ahmed', 'Pakistan', 'Wicketkeeper-Batsman', '1987-05-22', 5),
(46, 'Faf du Plessis', 'South Africa', 'Batsman', '1984-07-13', 5),
(47, 'Cameron Delport', 'South Africa', 'All-rounder', '1989-05-12', 5),
(48, 'Andre Russell', 'West Indies', 'All-rounder', '1988-04-29', 5),
(49, 'Mohammad Nawaz', 'Pakistan', 'All-rounder', '1994-03-21', 5),
(50, 'Anwar Ali', 'Pakistan', 'All-rounder', '1987-11-25', 5),
(51, 'Azam Khan', 'Pakistan', 'Wicketkeeper-Batsman', '1998-08-10', 5),
(52, 'Zahid Mahmood', 'Pakistan', 'Bowler', '1988-06-20', 5),
(53, 'Mohammad Hasnain', 'Pakistan', 'Bowler', '2000-04-05', 5),
(54, 'Usman Shinwari', 'Pakistan', 'Bowler', '1994-12-01', 5),
(55, 'Khurram Shehzad', 'Pakistan', 'Bowler', '1996-07-15', 5),
(56, 'Mudassar', 'Pakistan', 'Bowler', '1998-11-25', 5);

-- Multan Sultans Players
INSERT INTO Players (player_id, player_name, nationality, position, date_of_birth, team_id) 
VALUES
(57, 'Mohammad Rizwan', 'Pakistan', 'Wicketkeeper-Batsman', '1992-06-01', 6),
(58, 'Shan Masood', 'Pakistan', 'Batsman', '1989-10-14', 6),
(59, 'Johnson Charles', 'West Indies', 'Wicketkeeper-Batsman', '1989-01-14', 6),
(60, 'Tim David', 'Singapore', 'All-rounder', '1996-11-14', 6),
(61, 'Carlos Brathwaite', 'West Indies', 'All-rounder', '1988-07-18', 6),
(62, 'Shahid Afridi', 'Pakistan', 'All-rounder', '1980-03-01', 6),
(63, 'Sohail Tanvir', 'Pakistan', 'All-rounder', '1984-12-12', 6),
(64, 'Usman Qadir', 'Pakistan', 'Bowler', '1993-08-05', 6),
(65, 'Imran Tahir', 'South Africa', 'Bowler', '1979-03-27', 6),
(66, 'Imran Khan', 'Pakistan', 'Bowler', '1984-06-15', 6),
(67, 'Shahnawaz Dhani', 'Pakistan', 'Bowler', '1998-05-01', 6);

INSERT INTO Seasons (season_id, start_year, end_year) 
VALUES
(8, 2023, 2023);

INSERT INTO Stadiums (stadium_id, stadium_name, city, capacity) 
VALUES
(1, 'National Stadium', 'Karachi', 34000),
(2, 'Gaddafi Stadium', 'Lahore', 27000),
(3, 'Rawalpindi Cricket Stadium', 'Rawalpindi', 28000),
(4, 'Multan Cricket Stadium', 'Multan', 35000),
(5, 'Pindi Cricket Stadium', 'Rawalpindi', 18000),
(6, 'Rawalpindi Stadium', 'Rawalpindi', 15000);

INSERT INTO Officials (official_id, official_name, role, match_id) 
VALUES
(1, 'Aleem Dar', 'Umpire', 1),
(2, 'Kumar Dharmasena', 'Umpire', 1),
(3, 'Richard Illingworth', 'Third Umpire', 1),
(4, 'Ranjan Madugalle', 'Match Referee', 1),
(5, 'Michael Gough', 'Umpire', 2),
(6, 'Nitin Menon', 'Umpire', 2),
(7, 'Rod Tucker', 'Third Umpire', 2),
(8, 'David Boon', 'Match Referee', 2);

INSERT INTO Teams_Stats (team_stats_id, team_id, season_id, wins, losses, points) 
VALUES
-- Islamabad United
(1, 1, 8, 6, 3, 12),

-- Karachi Kings
(2, 2, 8, 5, 4, 10),

-- Lahore Qalandars
(3, 3, 8, 4, 5, 8),

-- Peshawar Zalmi
(4, 4, 8, 7, 2, 14),

-- Quetta Gladiators
(5, 5, 8, 3, 6, 6),

-- Multan Sultans
(6, 6, 8, 5, 4, 10);



INSERT INTO Players_Stats (player_stats_id, player_id, season_id, runs, wickets, catches, runouts) 
VALUES
-- Islamabad United Players
(1, 1, 8, 320, 6, 3, 2),
(2, 2, 8, 260, 4, 2, 1),
(3, 3, 8, 180, 5, 3, 1),
(4, 4, 8, 140, 8, 1, 0),
(5, 5, 8, 180, 3, 4, 1),
(6, 6, 8, 90, 11, 8, 0),
(7, 7, 8, 120, 22, 1, 1),
(8, 8, 8, 100, 23, 0, 0),
(9, 9, 8, 80, 1, 22, 0),
(10, 10, 8, 50, 14, 1, 0),
(11, 11, 8, 40, 22, 1, 0),

-- Karachi Kings Players
(12, 12, 8, 280, 2, 1, 1),
(13, 13, 8, 310, 3, 2, 0),
(14, 14, 8, 200, 5, 1, 0),
(15, 15, 8, 150, 6, 2, 1),
(16, 16, 8, 120, 4, 3, 0),
(17, 17, 8, 90, 2, 0, 1),
(18, 18, 8, 80, 11, 1, 3),
(19, 19, 8, 60, 33, 0, 0),
(20, 20, 8, 50, 30, 2, 10),
(21, 21, 8, 40, 22, 1, 0),
(22, 22, 8, 30, 11, 1, 0),

-- Lahore Qalandars Players
(23, 23, 8, 250, 4, 2, 1),
(24, 24, 8, 180, 6, 3, 0),
(25, 25, 8, 200, 7, 1, 0),
(26, 26, 8, 120, 8, 0, 0),
(27, 27, 8, 100, 4, 1, 0),
(28, 28, 8, 80, 11, 1, 1),
(29, 29, 8, 70, 12, 0, 0),
(30, 30, 8, 50, 33, 1, 0),
(31, 31, 8, 40, 20, 2, 0),
(32, 32, 8, 30, 21, 1, 0),
(33, 33, 8, 20, 10, 0, 0),

-- Peshawar Zalmi Players
(34, 34, 8, 320, 8, 1, 0),
(35, 35, 8, 280, 4, 2, 1),
(36, 36, 8, 220, 5, 1, 0),
(37, 37, 8, 180, 7, 1, 0),
(38, 38, 8, 120, 6, 0, 0),
(39, 39, 8, 90, 2, 0, 1),
(40, 40, 8, 80, 11, 1, 0),
(41, 41, 8, 60, 4, 0, 0),
(42, 42, 8, 50, 10, 10, 5),
(43, 43, 8, 40, 22, 14, 4),
(44, 44, 8, 30, 31, 15, 0),

-- Quetta Gladiators Players
(45, 45, 8, 280, 5, 2, 0),
(46, 46, 8, 260, 4, 3, 1),
(47, 47, 8, 200, 7, 1, 0),
(48, 48, 8, 180, 8, 0, 0),
(49, 49, 8, 120, 4, 1, 0),
(50, 50, 8, 80, 1, 1, 1),
(51, 51, 8, 70, 2, 10, 0),
(52, 52, 8, 50, 3, 11, 0),
(53, 53, 8, 40, 0, 23, 10),
(54, 54, 8, 30, 1, 15, 9),
(55, 55, 8, 20, 0, 10, 0),

-- Multan Sultans Players
(56, 56, 8, 270, 3, 1, 1),
(57, 57, 8, 230, 7, 2, 0),
(58, 58, 8, 200, 5, 1, 1),
(59, 59, 8, 150, 10, 0, 0),
(60, 60, 8, 180, 3, 1, 0),
(61, 61, 8, 120, 2, 0, 1),
(62, 62, 8, 100, 1, 1, 0),
(63, 63, 8, 80, 3, 0, 0),
(64, 64, 8, 60, 0, 22, 0),
(65, 65, 8, 50, 2, 13, 5),
(66, 66, 8, 40, 1, 14, 7),
(67, 67, 8, 30, 0, 19, 3);

INSERT INTO Matches (match_id, date, venue, result, winning_team_id, losing_team_id, stadium_id, season_id) 
VALUES
-- Match 1
(1, '2024-02-14', 'Gaddafi Stadium, Lahore', 'Islamabad United won by 20 runs', 1, 3, 1, 8),
-- Match 2
(2, '2024-02-15', 'National Stadium, Karachi', 'Karachi Kings won by 6 wickets', 2, 5, 2, 8),
-- Match 3
(3, '2024-02-16', 'Multan Cricket Stadium', 'Peshawar Zalmi won by 8 runs', 4, 6, 3, 8),
-- Match 4
(4, '2024-02-17', 'Rawalpindi Cricket Stadium', 'Lahore Qalandars won by 5 wickets', 3, 1, 4, 8),
-- Match 5
(5, '2024-02-18', 'Gaddafi Stadium, Lahore', 'Multan Sultans won by 7 wickets', 6, 2, 1, 8),
-- Match 6
(6, '2024-02-19', 'National Stadium, Karachi', 'Quetta Gladiators won by 4 runs', 5, 4, 2, 8),
-- Match 7
(7, '2024-02-20', 'Multan Cricket Stadium', 'Peshawar Zalmi won by 3 wickets', 4, 6, 3, 8),
-- Match 8
(8, '2024-02-21', 'Rawalpindi Cricket Stadium', 'Karachi Kings won by 8 wickets', 2, 1, 4, 8),
-- Match 9
(9, '2024-02-22', 'Gaddafi Stadium, Lahore', 'Islamabad United won by 5 wickets', 1, 6, 1, 8),
-- Match 10
(10, '2024-02-23', 'National Stadium, Karachi', 'Quetta Gladiators won by 20 runs', 5, 3, 2, 8),
-- Match 11
(11, '2024-02-24', 'Multan Cricket Stadium', 'Lahore Qalandars won by 4 wickets', 3, 4, 3, 8),
-- Match 12
(12, '2024-02-25', 'Rawalpindi Cricket Stadium', 'Karachi Kings won by 6 wickets', 2, 5, 4, 8),
-- Match 13
(13, '2024-02-26', 'Gaddafi Stadium, Lahore', 'Islamabad United won by 10 runs', 1, 2, 1, 8),
-- Match 14
(14, '2024-02-27', 'National Stadium, Karachi', 'Peshawar Zalmi won by 7 wickets', 4, 3, 2, 8),
-- Match 15
(15, '2024-02-28', 'Multan Cricket Stadium', 'Lahore Qalandars won by 5 wickets', 3, 6, 3, 8),
-- Match 16
(16, '2024-02-29', 'Rawalpindi Cricket Stadium', 'Multan Sultans won by 8 runs', 6, 5, 4, 8),
-- Match 17
(17, '2024-03-01', 'Gaddafi Stadium, Lahore', 'Quetta Gladiators won by 3 wickets', 5, 1, 1, 8),
-- Match 18
(18, '2024-03-02', 'National Stadium, Karachi', 'Karachi Kings won by 5 wickets', 2, 4, 2, 8),
-- Match 19
(19, '2024-03-03', 'Multan Cricket Stadium', 'Islamabad United won by 4 wickets', 1, 3, 3, 8),
-- Match 20
(20, '2024-03-04', 'Rawalpindi Cricket Stadium', 'Peshawar Zalmi won by 6 wickets', 4, 6, 4, 8),
-- Match 21
(21, '2024-03-05', 'Gaddafi Stadium, Lahore', 'Lahore Qalandars won by 5 wickets', 3, 2, 1, 8),
-- Match 22
(22, '2024-03-06', 'National Stadium, Karachi', 'Quetta Gladiators won by 7 wickets', 5, 6, 2, 8),
-- Match 23
(23, '2024-03-07', 'Multan Cricket Stadium', 'Karachi Kings won by 20 runs', 2, 1, 3, 8),
-- Match 24
(24, '2024-03-08', 'Rawalpindi Cricket Stadium', 'Islamabad United won by 6 wickets', 1, 5, 4, 8),
-- Match 25
(25, '2024-03-09', 'Gaddafi Stadium, Lahore', 'Multan Sultans won by 4 wickets', 6, 3, 1, 8),
-- Match 26
(26, '2024-03-10', 'National Stadium, Karachi', 'Peshawar Zalmi won by 5 wickets', 4, 2, 2, 8),
-- Match 27
(27, '2024-03-11', 'Multan Cricket Stadium', 'Quetta Gladiators won by 10 runs', 5, 1, 3, 8),
-- Match 28
(28, '2024-03-12', 'Rawalpindi Cricket Stadium', 'Lahore Qalandars won by 8 wickets', 3, 4, 4, 8),
-- Match 29
(29, '2024-03-13', 'Gaddafi Stadium, Lahore', 'Karachi Kings won by 4 wickets', 2, 6, 1, 8),
-- Match 30
(30, '2024-03-14', 'National Stadium, Karachi', 'Islamabad United won by 6 wickets', 1, 4, 2, 8),
-- Match 31
(31, '2024-03-15', 'Multan Cricket Stadium', 'Peshawar Zalmi won by 20 runs', 4, 3, 3, 8),
-- Match 32
(32, '2024-03-16', 'Rawalpindi Cricket Stadium', 'Quetta Gladiators won by 7 wickets', 5, 2, 4, 8),
-- Match 33
(33, '2024-03-17', 'Gaddafi Stadium, Lahore', 'Lahore Qalandars won by 8 wickets', 3, 1, 1, 8);


--         Queries
use pakistan_super_league;
 select * from matches;
 select * from teams ;
 select * from officials ;
 select * from players ;
 select * from players_stats ;
 select * from seasons ;
 select * from stadiums ;
 select * from teams_stats ;
 select * from teams where  team_name like '%ted';
 select city , team_name from teams where title_won >=2;  
 
UPDATE Officials 
SET nationality = CASE official_id
                     WHEN 1 THEN 'Pakistan' 
                     WHEN 2 THEN 'Sri Lanka' 
                     WHEN 3 THEN 'England' 
                     WHEN 4 THEN 'Sri Lanka' 
                     WHEN 5 THEN 'England' 
                     WHEN 6 THEN 'India' 
                     WHEN 7 THEN 'Australia' 
                     WHEN 8 THEN 'Australia' 
                     ELSE 'Unknown' 
                 END;


