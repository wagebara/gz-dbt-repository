select
    orders_id,
    date_date,
    round(sum(revenue),2) as revenue,
    round(sum(quantity),2) as quantity,
    round(sum(purchase_cost),2) as purchase_cost,
    round(sum(margin),2) as margin
from {{ ref('int_sales_margin') }}  
group by orders_id
order by orders_id DESC