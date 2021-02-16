
SELECT 
  p.PRODUCT_NAME,
  s.PRODUCT_CODE,
  s.COMPANY_CODE,
  s.SALES_DATE,
  SUM (s.VOLUME) AS TOTAL
 
 
FROM
  sales s
  JOIN products p ON p.product_code = s.product_code
  
 
  
 GROUP BY
  p.PRODUCT_NAME,
  p.PRODUCT_CODE,
  s.COMPANY_CODE
  
 HAVIng 
  SUM (s.VOLUME) >0
 
  
ORDER BY
	p.PRODUCT_CODE ASC,
    s.SALES_DATE DESC


