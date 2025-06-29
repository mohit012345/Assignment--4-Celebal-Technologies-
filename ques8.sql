SELECT s.hacker_id, h.name
FROM Submissions s, Challenges c, Difficulty d, Hackers h
WHERE s.challenge_id = c.challenge_id
  AND c.difficulty_level = d.difficulty_level
  AND s.score = d.score
  AND s.hacker_id = h.hacker_id
GROUP BY s.hacker_id, h.name
HAVING COUNT(DISTINCT s.challenge_id) > 1
ORDER BY COUNT(DISTINCT s.challenge_id) DESC, s.hacker_id;
