SELECT 
    CASE WHEN g.Grade < 8 THEN 'NULL' ELSE s.Name END,
    g.Grade,
    s.Marks
FROM Students s, Grades g
WHERE s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
ORDER BY 
    g.Grade DESC,
    CASE WHEN g.Grade >= 8 THEN s.Name END ASC,
    CASE WHEN g.Grade < 8 THEN s.Marks END ASC;
