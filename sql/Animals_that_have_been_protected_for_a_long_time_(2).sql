SELECT
    TMP.ID, TMP.NAME
FROM
    (
        SELECT
            A_IN.ANIMAL_ID AS ID, A_OUT.NAME AS NAME, A_OUT.DATETIME - A_IN.DATETIME AS RES
        FROM
            ANIMAL_INS AS A_IN,
            ANIMAL_OUTS AS A_OUT
        WHERE
            A_IN.ANIMAL_ID = A_OUT.ANIMAL_ID
        ORDER BY
            RES DESC
    ) AS TMP
LIMIT 2;

-- SELECT
--     A_IN.ANIMAL_ID, A_IN.NAME
-- FROM
--     ANIMAL_INS AS A_IN,
--     ANIMAL_OUTS AS A_OUT
-- WHERE
--     A_IN.ANIMAL_ID = A_OUT.ANIMAL_ID
-- ORDER BY
--     A_OUT.DATETIME - A_IN.DATETIME DESC
-- LIMIT 2;