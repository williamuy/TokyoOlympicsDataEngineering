-- Count number of atheletes from each country'
SELECT Country, COUNT(*) AS TotalAthletes
From athletes
GROUP BY Country
ORDER BY TotalAthletes DESC;

-- Calculate the total medals won by each country

SELECT Team_Country,
SUM(Gold) Total_Gold,
SUM(Silver) Total_Silver,
SUM(Bronze) Total_Bronze
FROM medals
GROUP BY Team_Country
ORDER BY Total_Gold DESC;

-- Calculate the average number of entries by gender for each discipline:
SELECT Discipline,
AVG(Female) AVG_Female,
AVG(Male) AVG_Male
FROM entriesgender
GROUP BY Discipline;

-- Get ranks
SELECT 
    Team_Country, 
    Rank, 
    Rank_By_Total
FROM 
    medals
ORDER BY 
    Rank;
