-- Active: 1714673221676@@127.0.0.1@3306@testing_system_db
DROP DATABASE IF EXISTS Testing_System_Db;
CREATE DATABASE Testing_System_Db;
USE Testing_System_Db;
CREATE TABLE Department(
    DepartmentID        INT PRIMARY KEY AUTO_INCREMENT,    
    DepartmentName      VARCHAR(50)
);
DROP TABLE IF EXISTS UserPosition;
CREATE TABLE `Position`(
    PositionID          INT PRIMARY KEY AUTO_INCREMENT,
    PositionName        VARCHAR(50)
);
DROP TABLE IF EXISTS UserAccount;
CREATE TABLE `Account`(
    AccountID           INT PRIMARY KEY AUTO_INCREMENT,
    Email               VARCHAR(50),
    Username            VARCHAR(50),
    FullName            VARCHAR(50),
    DepartmentID        INT,
    PositionID          INT,
    CreateDate          DATE      
);
DROP TABLE IF EXISTS UserGroup;
CREATE TABLE `Group`(
    GroupID             INT PRIMARY KEY AUTO_INCREMENT,
    GroupName           VARCHAR(50),
    CreatorID           INT,
    CreateDate          DATE
);
CREATE TABLE GroupAccount(
    GroupID             INT PRIMARY KEY,
    AccountID           VARCHAR(50), 
    JoinDate            DATE
);
CREATE TABLE TypeQuestion(
    TypeID              INT PRIMARY KEY AUTO_INCREMENT,
    TypeName            VARCHAR(30)
);
CREATE TABLE CategoryQuestion(
    CategoryID          INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName        VARCHAR(20)        
);
CREATE TABLE Question(
    QuestionID          INT PRIMARY KEY AUTO_INCREMENT,
    QuestionContent     VARCHAR(50),
    CategoryID          INT,
    TypeID              INT,
    CreatorID           INT,
    CreateDate          DATE
);
CREATE TABLE Answer(
    AnswerID            INT PRIMARY KEY AUTO_INCREMENT,
    AnswerContent       VARCHAR(50),
    QuestionID          INT,
    isCorrect           VARCHAR(20)
);
CREATE TABLE Exam(
    ExamID              INT PRIMARY KEY AUTO_INCREMENT,
    ExamCode            VARCHAR(20),
    Title               VARCHAR(20),
    CategoryID          INT,
    Duration            INT,
    CreatorID           INT,
    CreateDate          DATE
);
CREATE TABLE ExamQuestion(
    ExamID              INT,
    QuestionID          INT
);