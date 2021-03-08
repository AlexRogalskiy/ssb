SELECT 
    toYear(LO_ORDERDATE) AS year, 
    C_NATION, 
    SUM(LO_REVENUE - LO_SUPPLYCOST) AS profit
FROM lineorder_wide
WHERE (C_REGION = 'AMERICA') AND (S_REGION = 'AMERICA') AND ((P_MFGR = 'MFGR#1') OR (P_MFGR = 'MFGR#2'))
GROUP BY 
    year, 
    C_NATION
ORDER BY 
    year ASC, 
    C_NATION ASC