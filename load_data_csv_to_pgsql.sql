-- Load data from CSV file to PostgresSQL
-- Creating table

CREATE TABLE titanic (
    PassengerId NUMERIC,
    Survived NUMERIC,
    Pclass NUMERIC,
    Name VARCHAR(255),
    Sex VARCHAR(255),
    Age NUMERIC,
    SibSp NUMERIC, 
	Parch NUMERIC, 
	Ticket VARCHAR(50), 
	Fare NUMERIC, 
	Cabin VARCHAR(50), 
	Embarked VARCHAR(50)
)

-- Copy data from CSV file to table ttt
COPY titanic(PassengerId, 
		 Survived, 
		 Pclass, 
		 Name, 
		 Sex, 
		 Age, 
		 SibSp, 
		 Parch, 
		 Ticket, 
		 Fare, 
		 Cabin, 
		 Embarked
)
FROM 'E:\datas\titanic.csv'
DELIMITER ','
CSV HEADER;