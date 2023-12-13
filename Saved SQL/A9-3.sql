USE entertainmentagencyexample;
SELECT concat(Agents.AgtLastName , ', ' , Agents.AgtFirstName) AS Name, 'Agent' AS Type
FROM Agents
UNION
SELECT Entertainers.EntStageName, 'Entertainer' AS Type
FROM Entertainers