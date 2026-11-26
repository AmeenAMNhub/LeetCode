WITH LatestPrice AS (
    SELECT
        product_id,
        MAX(change_date) AS latest_date
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
)

SELECT
    p.product_id,
    CASE
        WHEN l.latest_date IS NULL THEN 10
        ELSE pr.new_price
    END AS price
FROM (SELECT DISTINCT product_id FROM Products) p
LEFT JOIN LatestPrice l
    ON p.product_id = l.product_id
LEFT JOIN Products pr
    ON pr.product_id = l.product_id
    AND pr.change_date = l.latest_date;