SELECT
H.hacker_id,
H.name
FROM Submissions S 
INNER JOIN Challenges C
ON C.challenge_id = S.challenge_id
INNER JOIN Difficulty D
ON C.difficulty_level = D.difficulty_level
INNER JOIN Hackers H
ON H.hacker_id = S.hacker_id
AND S.score = D.score
GROUP BY H.hacker_id, name
HAVING COUNT(H.hacker_id) > 1
ORDER BY COUNT(H.hacker_id) DESC, H.hacker_id
