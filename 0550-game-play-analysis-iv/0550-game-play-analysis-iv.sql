WITH FirstLogin AS (
    SELECT
        player_id,
        MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
)

SELECT
    ROUND(
        COUNT(a.player_id)::numeric / COUNT(f.player_id),
        2
    ) AS fraction
FROM FirstLogin f
LEFT JOIN Activity a
    ON a.player_id = f.player_id
    AND a.event_date = f.first_login + 1;