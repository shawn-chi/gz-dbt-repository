{{ config(materialized='table') }}

select
    date_date
    ,COUNT(DISTINCT orders_id) AS nb_orders
    ,SUM(turnover) AS turnover
    ,ROUND(SAFE_DIVIDE(SUM(turnover), NULLIF(COUNT(DISTINCT orders_id),0)),2) as avg_basket
    From {{ ref('stg_raw__sales') }}
    GROUP BY date_date
    ORDER BY date_date DESC
