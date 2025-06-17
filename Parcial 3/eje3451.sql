SELECT 
    ip, 
    COUNT(*) AS invalid_count
FROM logs
WHERE
    -- Condición 1: IP no tiene exactamente 4 octetos (3 puntos)
    LENGTH(ip) - LENGTH(REPLACE(ip, '.', '')) != 3
    OR
    -- Condición 2: Ceros a la izquierda
    ip REGEXP '\\.0[0-9]'
    OR
    -- Condición 3: Al menos un octeto > 255
    CAST(SUBSTRING_INDEX(ip, '.', 1) AS UNSIGNED) > 255
    OR CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(ip, '.', 2), '.', -1) AS UNSIGNED) > 255
    OR CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(ip, '.', 3), '.', -1) AS UNSIGNED) > 255
    OR CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(ip, '.', 4), '.', -1) AS UNSIGNED) > 255
GROUP BY ip
ORDER BY invalid_count DESC, ip DESC;