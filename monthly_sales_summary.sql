# this query summarizes monthly sales by year and month, showing total quantity sold, total sales, total cost,
# and profit (based on book prices).
# this can be valuable insights because we can see monthly trends.
select
  year(s.order_date) as year,
  month(s.order_date) as month,
  sum(sb.quantity) as quantity,
  sum(sb.quantity * b.selling_price) as sale,
  sum(sb.quantity * b.purchase_price) as cost,
  sum(sb.quantity * b.selling_price) - sum(sb.quantity * b.purchase_price) as profit
from salesbooks sb
join books b on b.id = sb.book_id
join sales s on s.id = sb.sales_id
group by year(s.order_date), month(s.order_date);