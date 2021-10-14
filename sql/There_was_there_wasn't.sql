SELECT
    ANI.ANIMAL_ID, ANI.NAME
FROM
    ANIMAL_OUTS AS ANI
JOIN
    ANIMAL_INS AS ANI_IN
ON
    ANI.ANIMAL_ID = ANI_IN.ANIMAL_ID AND ANI_IN.DATETIME > ANI.DATETIME
ORDER BY
    ANI_IN.DATETIME;