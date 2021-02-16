
SELECT 
s.CURRENCY, COUNT(*) pocet,
SUM (COUNT(*)) OVER () celkem,
COUNT(*) * 100 / SUM (COUNT(*)) OVER () procento

FROM
sales s 

GROUP BY 
s.CURRENCY

