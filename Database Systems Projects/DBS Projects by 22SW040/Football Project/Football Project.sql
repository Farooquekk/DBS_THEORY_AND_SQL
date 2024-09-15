-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS football_league;

-- Use the database
USE football_league;

-- Create tables
CREATE TABLE IF NOT EXISTS Teams (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(100) NOT NULL,
    city VARCHAR(100),
    coach_name VARCHAR(100),
    captain_name VARCHAR(100),
    founded_year DATE
);
INSERT  INTO Teams (team_id, team_name, city, coach_name, captain_name, founded_year)
VALUES
    (1, 'Manchester United', 'Manchester', 'Ole Gunnar Solskjaer', 'Harry Maguire', '1878-01-01'),
    (2, 'Liverpool FC', 'Liverpool', 'Jurgen Klopp', 'Jordan Henderson', '1892-01-01'),
    (3, 'FC Barcelona', 'Barcelona', 'Xavi Hernandez', 'Lionel Messi', '1899-01-01'),
    (4, 'Real Madrid CF', 'Madrid', 'Carlo Ancelotti', 'Sergio Ramos', '1902-03-06'),
    (5, 'Bayern Munich', 'Munich', 'Julian Nagelsmann', 'Manuel Neuer', '1900-02-27');
  

CREATE TABLE IF NOT EXISTS Players (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(100) NOT NULL,
    nationality VARCHAR(100),
    position VARCHAR(50),
    date_of_birth DATE,
    team_id INT,
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);

 INSERT  INTO Players (player_id, player_name, nationality, position, date_of_birth, team_id)
VALUES
    (1, 'Cristiano Ronaldo', 'Portuguese', 'Forward', '1985-02-05', 4),
    (2, 'Lionel Messi', 'Argentine', 'Forward', '1987-06-24', 3),
    (3, 'Robert Lewandowski', 'Polish', 'Forward', '1988-08-21', 5),
    (4, 'Kevin De Bruyne', 'Belgian', 'Midfielder', '1991-06-28', 2),
    (5, 'Neymar Jr.', 'Brazilian', 'Forward', '1992-02-05', 3),
    (6, 'Kylian Mbappé', 'French', 'Forward', '1998-12-20', 3),
    (7, 'Mohamed Salah', 'Egyptian', 'Forward', '1992-06-15', 2),
    (8, 'Sadio Mané', 'Senegalese', 'Forward', '1992-04-10', 2),
    (9, 'Sergio Ramos', 'Spanish', 'Defender', '1986-03-30', 4),
    (10, 'Virgil van Dijk', 'Dutch', 'Defender', '1991-07-08', 2),
    (11, 'Manuel Neuer', 'German', 'Goalkeeper', '1986-03-27', 5),
    (12, 'Alisson Becker', 'Brazilian', 'Goalkeeper', '1992-10-02', 2),
    (13, 'Eden Hazard', 'Belgian', 'Forward', '1991-01-07', 4),
    (14, 'Bruno Fernandes', 'Portuguese', 'Midfielder', '1994-09-08', 1),
    (15, 'Paul Pogba', 'French', 'Midfielder', '1993-03-15', 1),
    (16, 'Marcus Rashford', 'English', 'Forward', '1997-10-31', 1),
    (17, 'Trent Alexander-Arnold', 'English', 'Defender', '1998-10-07', 2),
    (18, 'Virgil van Dijk', 'Dutch', 'Defender', '1991-07-08', 2),
    (19, 'Fabinho', 'Brazilian', 'Midfielder', '1993-10-23', 2),
    (20, 'Sergio Agüero', 'Argentine', 'Forward', '1988-06-02', 2),
    (21, 'Raheem Sterling', 'English', 'Forward', '1994-12-08', 2),
    (22, 'Ederson', 'Brazilian', 'Goalkeeper', '1993-08-17', 2),
    (23, 'Riyad Mahrez', 'Algerian', 'Forward', '1991-02-21', 2),
    (24, 'Bernardo Silva', 'Portuguese', 'Midfielder', '1994-08-10', 2),
    (25, 'Rodri', 'Spanish', 'Midfielder', '1996-06-22', 2),
    (26, 'Aymeric Laporte', 'French', 'Defender', '1994-05-27', 2),
    (27, 'Ruben Dias', 'Portuguese', 'Defender', '1997-05-14', 2),
    (28, 'Phil Foden', 'English', 'Midfielder', '2000-05-28', 2),
    (29, 'Ferran Torres', 'Spanish', 'Forward', '2000-02-29', 2),
    (30, 'João Cancelo', 'Portuguese', 'Defender', '1994-05-27', 2),
    (31, 'Kyle Walker', 'English', 'Defender', '1990-05-28', 2),
    (32, 'Jack Grealish', 'English', 'Midfielder', '1995-09-10', 2),
    (33, 'Gabriel Jesus', 'Brazilian', 'Forward', '1997-04-03', 2),
    (34, 'Benjamin Mendy', 'French', 'Defender', '1994-07-17', 2),
    (35, 'Ilkay Gündogan', 'German', 'Midfielder', '1990-10-24', 2),
    (36, 'John Stones', 'English', 'Defender', '1994-05-28', 2),
    (37, 'Fernandinho', 'Brazilian', 'Midfielder', '1985-05-04', 2),
    (38, 'Bernardo Silva', 'Portuguese', 'Midfielder', '1994-08-10', 2),
    (39, 'Nathan Aké', 'Dutch', 'Defender', '1995-02-18', 2),
    (40, 'Zlatan Ibrahimović', 'Swedish', 'Forward', '1981-10-03', 1),
    (41, 'Gianluigi Donnarumma', 'Italian', 'Goalkeeper', '1999-02-25', 1),
    (42, 'Thiago Silva', 'Brazilian', 'Defender', '1984-09-22', 1),
    (43, 'Ángel Di María', 'Argentine', 'Forward', '1988-02-14', 1),
    (44, 'Marquinhos', 'Brazilian', 'Defender', '1994-05-14', 1),
    (45, 'Alessandro Florenzi', 'Italian', 'Defender', '1991-03-11', 1),
    (46, 'Georginio Wijnaldum', 'Dutch', 'Midfielder', '1990-11-11', 1),
    (47, 'Marco Verratti', 'Italian', 'Midfielder', '1992-11-05', 1),
    (48, 'Mauro Icardi', 'Argentine', 'Forward', '1993-02-19', 1),
    (49, 'Presnel Kimpembe', 'French', 'Defender', '1995-08-13', 1),
    (50, 'Julian Draxler', 'German', 'Midfielder', '1993-09-20', 1);
     

CREATE TABLE IF NOT EXISTS Stadiums (
    stadium_id INT PRIMARY KEY,
    stadium_name VARCHAR(100) NOT NULL,
    city VARCHAR(100),
    capacity INT
);
INSERT INTO Stadiums (stadium_id, stadium_name, city, capacity)
VALUES
    (1, 'Stamford Bridge', 'London', 40834),
    (2, 'Emirates Stadium', 'London', 60704),
    (3, 'Anfield', 'Liverpool', 53394),
    (4, 'Old Trafford', 'Manchester', 74691),
    (5, 'Etihad Stadium', 'Manchester', 55017);
select * from stadiums;


CREATE TABLE IF NOT EXISTS Seasons (
    season_id INT PRIMARY KEY,
    start_year INT,
    end_year INT
);
INSERT IGNORE INTO Seasons (season_id, start_year, end_year)
VALUES
    (1, 2024, 2025);
    
   
    
CREATE TABLE IF NOT EXISTS Matches (
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

INSERT INTO Matches (match_id, date, venue, result, winning_team_id, losing_team_id, stadium_id, season_id)
VALUES
    (1, '2024-03-01', 'Old Trafford', '2-1', 1, 3, 1, 1),
    (2, '2024-03-15', 'Anfield', '3-0', 2, 1, 2, 1),
    (3, '2024-04-05', 'Camp Nou', '1-1', NULL, NULL, 3, 1),
    (4, '2024-04-10', 'Santiago Bernabéu', '2-0', 4, 3, 4, 1),
    (5, '2024-04-20', 'Allianz Arena', '1-1', NULL, NULL, 5, 1),
    (6, '2024-05-05', 'Old Trafford', '3-2', 1, 5, 1, 1),
    (7, '2024-03-12', 'Etihad Stadium', '2-0', 5, 2, 5, 1),
    (8, '2024-04-02', 'Stamford Bridge', '1-0', 1, 4, 1, 1),
    (9, '2024-04-25', 'Emirates Stadium', '3-1', 2, 5, 2, 1),
    (10, '2024-05-08', 'Anfield', '2-2', NULL, NULL, 3, 1);
  
 

CREATE TABLE IF NOT EXISTS Officials (
    official_id INT PRIMARY KEY,
    official_name VARCHAR(100) NOT NULL,
    roles VARCHAR(100),
    nationality VARCHAR(100),
    match_id INT,
    FOREIGN KEY (match_id) REFERENCES Matches(match_id)
);

  INSERT INTO Officials (official_id, official_name, roles, nationality, match_id)
VALUES
    (1, 'John Doe', 'Referee', 'British', 1),
    (2, 'Jane Smith', 'Assistant Referee', 'American', 1),
    (3, 'Mark Johnson', 'Fourth Official', 'Spanish', 1),
    (4, 'Emily Brown', 'VAR Official', 'French', 1),
    (5, 'Michael Lee', 'Referee', 'German', 2),
    (6, 'Emma Wilson', 'Assistant Referee', 'Italian', 2),
    (7, 'David Martinez', 'Fourth Official', 'Brazilian', 2),
    (8, 'Sophia Rodriguez', 'VAR Official', 'Argentinian', 2),
    (9, 'Daniel Garcia', 'Referee', 'Dutch', 3),
    (10, 'Olivia Taylor', 'Assistant Referee', 'Portuguese', 3);
    
    
    
    
    
    
CREATE TABLE IF NOT EXISTS Teams_Stats (
    team_stats_id INT PRIMARY KEY,
    team_id INT,
    season_id INT,
    wins INT,
    losses INT,
    draws INT,
    goals_for INT,
    goals_against INT,
    FOREIGN KEY (team_id) REFERENCES Teams(team_id),
    FOREIGN KEY (season_id) REFERENCES Seasons(season_id)
);

INSERT INTO Teams_Stats (team_stats_id, team_id, season_id, wins, losses, draws, goals_for, goals_against)
VALUES
    (1, 1, 1, 20, 5, 3, 60, 20),
    (2, 2, 1, 18, 7, 3, 55, 25),
    (3, 3, 1, 22, 3, 3, 70, 15),
    (4, 4, 1, 16, 9, 3, 50, 30),
    (5, 5, 1, 21, 4, 3, 65, 18);




CREATE TABLE IF NOT EXISTS Players_Stats (
    player_stats_id INT PRIMARY KEY,
    player_id INT,
    season_id INT,
    appearances INT,
    goals_scored INT,
    assists INT,
    yellow_cards INT,
    red_cards INT,
    FOREIGN KEY (player_id) REFERENCES Players(player_id),
    FOREIGN KEY (season_id) REFERENCES Seasons(season_id)
);

INSERT INTO Players_Stats (player_stats_id, player_id, season_id, appearances, goals_scored, assists, yellow_cards, red_cards)
VALUES
    (1, 1, 1, 20, 5, 3, 2, 0),
    (2, 2, 1, 19, 3, 7, 1, 0),
    (3, 3, 1, 18, 8, 2, 4, 0),
    (4, 4, 1, 20, 10, 5, 2, 0),
    (5, 5, 1, 20, 15, 10, 3, 0);
    
    
    select * from players_stats;
    select * from teams_stats;
    select * from teams;
    select * from officials;
    select * from stadiums;
    select * from seasons;
    select * from matches;
    select * from players;


