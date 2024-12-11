-- 1
SELECT Nom, Prenom, Role, Date_adhesion 
FROM membres;

-- 2
SELECT * 
FROM evenements
WHERE Date_adhesion > '2024-01-01';

-- 3
SELECT * 
FROM evenements
WHERE Budget > 5000;

-- 4
SELECT p.Nom, p.Prenom, p.Email, p.Status 
FROM Participants p
JOIN EventParticipant ep ON p.ParticipantID = ep.ParticipantID
WHERE ep.EventID = 1;

-- 5
SELECT DISTINCT s.*
FROM Sponsors s
JOIN EventSponsor es ON s.SponsorID = es.SponsorID
JOIN evenements e ON es.EventID = e.EventID
WHERE e.Budget > 3500;

-- 6
SELECT COUNT(*) AS TotalEvenements 
FROM evenements;

-- 7
SELECT AVG(Budget) AS BudgetMoyen 
FROM evenements;

-- 8
SELECT e.NomEvent, e.Date_adhesion
FROM evenements e
JOIN EventSponsor es ON e.EventID = es.EventID
JOIN Sponsors s ON es.SponsorID = s.SponsorID
WHERE s.Nom_Entreprise = 'TechCorp';

-- 9
SELECT * 
FROM evenements
WHERE Lieu = 'Casablanca';

-- 10
SELECT * 
FROM evenements
ORDER BY EventID DESC 
LIMIT 5;

-- 11
SELECT * 
FROM membres
WHERE Date_adhesion < '2023-01-01';

-- 12
SELECT COUNT(*) AS TotalParticipants
FROM EventParticipant
WHERE EventID = 1;

-- 13
SELECT s.Nom_Entreprise
FROM Sponsors s
JOIN EventSponsor es ON s.SponsorID = es.SponsorID
GROUP BY s.SponsorID
HAVING COUNT(es.EventID) > 1;

