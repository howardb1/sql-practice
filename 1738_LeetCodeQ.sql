SELECT s.user_id, COALESCE( ROUND( AVG(CASE WHEN  action = 'confirmed' THEN 1 ELSE 0 END ), 2), 0)AS confirmation_rate 
FROM Signups s
LEFT JOIN Confirmations ON s.user_id = Confirmations.user_id
GROUP BY s.user_id;