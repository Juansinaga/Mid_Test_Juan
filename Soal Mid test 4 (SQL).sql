INSERT INTO item_bought (buyer, item) VALUES
('A', 'Asus'),
('B', 'Lenovo'),
('C', 'Lenovo'),
('D', 'Acer'),
('E', 'Acer'),
('F', 'Acer');

select * From public."item_bought"

SELECT DISTINCT item
FROM (SELECT item
  FROM item_quantities
  WHERE quantity < (
    SELECT MAX(quantity)
    FROM item_quantities
  )

  UNION ALL

  SELECT item
  FROM item_quantities
  WHERE quantity > (
    SELECT MIN(quantity)
    FROM item_quantities
  )
) AS combined_results;