# this query shows the top three books by sales for each month.
# it is useful to analyze which books appear in the top three
# and consider adding new positions based on this information.
# note:  used a CTE to partition the data by month and assign row numbers that i could then filter on.
with all_sales as (
  select
    b.title,
    b.author,
    g.genre,
    month(s.order_date) as month,
    sum(sb.quantity) as sold
  from salesbooks sb
  join sales s on s.id = sb.sales_id
  join books b on b.id = sb.book_id
  join genres g on g.id = b.genre_id
  group by b.id, month
  order by month, sold desc
),
ranked_sales as (
  select
    *,
    row_number() over (
    partition by month
    order by sold desc
    ) as rn
  from all_sales
)
select
  title,
  author,
  genre,
  `month`,
  sold
from ranked_sales
where rn <=3;