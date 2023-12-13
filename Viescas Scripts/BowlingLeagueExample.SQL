DROP DATABASE IF EXISTS BowlingLeagueExample;
CREATE DATABASE BowlingLeagueExample;

use BowlingLeagueExample;

CREATE TABLE Bowler_Scores (

	MatchID int NOT NULL DEFAULT 0 ,

	GameNumber smallint NOT NULL DEFAULT 0 ,

	BowlerID int NOT NULL DEFAULT 0 ,

	RawScore smallint NULL DEFAULT 0 ,

	HandiCapScore smallint NULL DEFAULT 0 ,

	WonGame bit NOT NULL DEFAULT 0 
) ;



CREATE TABLE Bowlers (

	BowlerID int NOT NULL DEFAULT 0 ,

	BowlerLastName nvarchar (50) NULL ,

	BowlerFirstName nvarchar (50) NULL ,

	BowlerMiddleInit nvarchar (1) NULL ,

	BowlerAddress nvarchar (50) NULL ,

	BowlerCity nvarchar (50) NULL ,

	BowlerState nvarchar (2) NULL ,

	BowlerZip nvarchar (10) NULL ,

	BowlerPhoneNumber nvarchar (14) NULL ,

	TeamID int NULL 
) ;



CREATE TABLE Match_Games (

	MatchID int NOT NULL DEFAULT 0 ,

	GameNumber smallint NOT NULL DEFAULT 0 ,

	WinningTeamID int NULL DEFAULT 0 
) ;



CREATE TABLE Teams (

	TeamID int NOT NULL DEFAULT 0 ,

	TeamName nvarchar (50) NOT NULL ,

	CaptainID int NULL 
) ;



CREATE TABLE Tournaments (

	TourneyID int NOT NULL DEFAULT 0 ,

	TourneyDate date NULL ,

	TourneyLocation nvarchar (50) NULL 
) ;



CREATE TABLE Tourney_Matches (

	MatchID int NOT NULL DEFAULT 0 ,

	TourneyID int NULL DEFAULT 0 ,

	Lanes nvarchar (5) NULL ,

	OddLaneTeamID int NULL DEFAULT 0 ,

	EvenLaneTeamID int NULL DEFAULT 0 
) ;


CREATE TABLE ztblBowlerRatings (
        BowlerRating nvarchar (15) NOT NULL , 
        BowlerLowAvg smallint NULL ,
        BowlerHighAvg smallint NULL ) ;

CREATE TABLE ztblSkipLabels ( 
        LabelCount int NOT NULL ) ;

CREATE TABLE ztblWeeks (
        WeekStart date NOT NULL ,
        WeekEnd date NULL ) ;


ALTER TABLE Bowler_Scores ADD
 
	CONSTRAINT Bowler_Scores_PK PRIMARY KEY
   
	(

		MatchID,

		GameNumber,

		BowlerID

	) ;



CREATE  INDEX BowlerID ON Bowler_Scores(BowlerID) ;



CREATE  INDEX MatchGamesBowlerScores ON Bowler_Scores(MatchID, GameNumber) ;



ALTER TABLE Bowlers ADD
 
	CONSTRAINT Bowlers_PK PRIMARY KEY
   
	(

		BowlerID

	) ;



