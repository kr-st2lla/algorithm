SELECT I.FOOD_TYPE, I.REST_ID, I.REST_NAME, RESULT.FAVORITES
FROM REST_INFO AS I INNER JOIN (
    SELECT FOOD_TYPE, MAX(FAVORITES) AS FAVORITES
    FROM REST_INFO
    GROUP BY FOOD_TYPE
) AS RESULT ON I.FOOD_TYPE = RESULT.FOOD_TYPE
    AND I.FAVORITES = RESULT.FAVORITES
ORDER BY BINARY I.FOOD_TYPE DESC;