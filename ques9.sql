SELECT w.id, wp.age, w.coins_needed, w.power
FROM Wands w, Wands_Property wp
WHERE w.code = wp.code
  AND wp.is_evil = 0
  AND w.coins_needed = (
      SELECT MIN(w2.coins_needed)
      FROM Wands w2, Wands_Property wp2
      WHERE w2.code = wp2.code
        AND wp2.is_evil = 0
        AND w2.power = w.power
        AND wp2.age = wp.age
  )
ORDER BY w.power DESC, wp.age DESC;
