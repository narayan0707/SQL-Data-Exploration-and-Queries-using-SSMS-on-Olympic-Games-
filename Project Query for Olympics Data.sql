Select * from athlete_events
--Q1.How many Olymics Game Have been Held
--Select Distinct Games From athlete_events where Season = 'Summer' Order by Games
-- Till now 29 Summer Olympics has happened till 2016 
--Select Distinct Games From athlete_events where Season = 'Winter' Order by Games
--Till now 22 winter olymics has happened including from year 1924 to 2014.


--Q2.Find All the Atheletes whp have won gold till now ?
--SELECT COUNT(DISTINCT Name) AS TotalGoldMedalists
--FROM athlete_events
--WHERE Medal = 'Gold';


--Q3 . Find all the atheletes who have won silver medal ?
--SELECT COUNT(DISTINCT Name) AS TotalSilverMedalists
--FROM athlete_events
--WHERE Medal = 'Silver';


--Q4 . Find all the atheletes who have won Bronze Medal ?
--SELECT COUNT(DISTINCT Name) AS TotalBronzeMedalists
--FROM athlete_events
--WHERE Medal = 'Bronze';

--Q5 . Find the number of female winning any of the medals ?
--Select Count(*) As Femalewinners from athlete_events
--where Sex = 'M' and Medal = 'Gold' or Medal = 'Silver' or Medal = 'Bronze'
--Thus no of females winning the medals = 30158 
--Thus the no. of males winning the medal = 36036


--Q6 . Find the top 5 countries who have won most number of the medals ?
--SELECT
--    NOC AS Country,
--    COUNT(*) AS TotalMedals
--FROM
--    athlete_events
--WHERE
--    Medal IS NOT NULL
--GROUP BY
--    NOC
--ORDER BY
--   TotalMedals Desc
 -- top 5 countries are USA , France ,GBR ,ITA,GER


 --Q7 . Find the athelete who has won the most number of gold medals ? or the most successful athelete
-- Select Name as Mostsuccessfulathelete , Count(*) As GoldMedals
-- from athlete_events
-- where Medal = 'Gold'
-- group by Name 
-- Order By GoldMedals
-- desc

-- Michael Fred Phelps ,II with 23 golds is the most successful athelete of all time 
 

--Q8. Find the year in which most of the events took place ??
 --Select Year , Count(*) totalevents from athlete_events
 --group by Year
 --order by totalevents desc
 -- The Year 1992 had the most number of events as 16413


--Q9. Find the number of female athelets who won gold medals ??
--SELECT COUNT(*) AS FemaleGoldMedalists
--FROM athlete_events
--WHERE Sex = 'F' AND Medal = 'Gold';


--Q10. List all the countries that have hosted the olympics ?
      --Select distinct City from athlete_events


-- Q.11 Find the age of youngest gold medalist ??
 -- Select Min(Age) as youngestmedalist from athlete_events
 -- where Medal = 'Bronze'
   -- N/A
   

--Q.12 Athletes with Multiple Gold Medals: List the names of athletes who have won more than one gold medal?
--SELECT Name
--FROM athlete_events
--WHERE Medal = 'Gold'
--GROUP BY Name
--HAVING COUNT(*) > 1;


--Q13.  Calculate the number of gold, silver, and bronze medals won by male and female athletes separately??
--SELECT
--    Sex,
--    Medal,
--    COUNT(*) AS MedalCount
--FROM
--    athlete_events
--WHERE
--    Medal IN ('Gold', 'Silver', 'Bronze')
--GROUP BY
--    Sex,
--    Medal
--ORDER BY
--    Sex,
--    CASE
--        WHEN Medal = 'Gold' THEN 1
--        WHEN Medal = 'Silver' THEN 2
--        WHEN Medal = 'Bronze' THEN 3
--    END;


--Thus this the analysis of data using SQL on Olympic games whose data set is taken from Kaggle.