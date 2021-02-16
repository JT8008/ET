
SELECT
  p.PRODUCT_CODE,
  p.PRODUCT_NAME,
  c.COMPANY_NAME,
  c.COMPANY_CODE

FROM
  products p
  LEFT JOIN bridge b ON b.product_code = p.product_code
  JOIN company c ON c.company_code = b.company_code
  
 WHERE
   p.END_DATE is NULL
   
 GROUP BY
  p.PRODUCT_CODE,
  p.PRODUCT_NAME,
  c.COMPANY_NAME,
  c.COMPANY_CODE
