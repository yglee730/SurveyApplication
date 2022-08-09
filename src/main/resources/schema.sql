CREATE TABLE users(
    userID INT PRIMARY KEY,
    userName VARCHAR(255),
    userPass VARCHAR(255),
    userEmail VARCHAR(255),
    userTel VARCHAR(255)
);

CREATE TABLE metaSurvey(
    surveyID INT PRIMARY KEY,
    surveyName VARCHAR(255),
    surveyWriter VARCHAR(255),
    writeDate DATETIME 
);

CREATE TABLE contentSurvey(
    surveyID INT,
    questionNum INT,
    questionContent VARCHAR(255),
    questionType VARCHAR(128),

    FOREIGN KEY (surveyID) REFERENCES metaSurvey (surveyID)
);

CREATE TABLE userResponse(
    surveyID INT,
    questionNum INT,
    ResponseContent VARCHAR(512),

    FOREIGN KEY (surveyID) REFERENCES metaSurvey(surveyID)
);