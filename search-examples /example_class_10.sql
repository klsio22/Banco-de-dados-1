/*  ====== GROUP BY ======= */
SELECT id_departament,
  COUNT(*) AS 'Numero de Funcionarios'
FROM employee
GROUP BY (id_departament)
  /* ============== */
SELECT category.description,
  SUM(product.price_sell * product.amount),
  SUM(amount)
FROM product
  JOIN category USING(id_category)
GROUP BY (product.id_category)
ORDER BY category.description
  /*==============  */
SELECT category.description,
  SUM(product.price_sell * product.amount),
  SUM(amount)
FROM product
  JOIN category USING(id_category)
GROUP BY (product.id_category)
ORDER BY category.description
  /* ================= */
SELECT departament.description,
  COUNT(*)
FROM employee
  JOIN departament USING(id_departament)
GROUP BY (employee.id_departament)
HAVING COUNT(*) >= 2
  /* =============== */
SELECT category.description,
  SUM(
    product.price_sell * product.amount
  ) AS 'valor de Estoque'
FROM product
  JOIN category USING(id_category)
GROUP BY (product.id_category)
HAVING (
    SUM(
      product.price_sell * product.amount
    ) >= 5000
  )
ORDER BY category.description