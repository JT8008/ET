
SELECT 
  s.COMPANY_CODE,
  c.COMPANY_NAME,
  s.PRODUCT_CODE,


CASE
      WHEN volume = 0 THEN 'No sells'
      WHEN volume <= 4000 THEN 'Low sells'
      WHEN volume BETWEEN 4001 and 200000 THEN 'Medium sells'
      WHEN volume > 200001 THEN 'High sells'
      
      END AS Sells
      
 
FROM
  sales s
  JOIN company c ON c.company_code= s.COMPANY_CODE
  

 
