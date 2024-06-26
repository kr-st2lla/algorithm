SELECT RESULT.ANIMAL_ID, RESULT.NAME
FROM (
    SELECT I.ANIMAL_ID, I.NAME, DATEDIFF(O.DATETIME, I.DATETIME) AS DIFF
    FROM ANIMAL_INS AS I LEFT JOIN ANIMAL_OUTS AS O ON I.ANIMAL_ID = O.ANIMAL_ID
    WHERE O.DATETIME IS NOT NULL
        AND O.DATETIME >= I.DATETIME
) AS RESULT
ORDER BY RESULT.DIFF DESC
LIMIT 2;