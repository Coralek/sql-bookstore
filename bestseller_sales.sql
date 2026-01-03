# this query shows how many copies of specific books were sold and how much revenue they generated.
# useful for making decisions to buy more quantities of bestsellers or to drop prices of books that are selling less.
select
  b.title,
  b.author,
  g.genre,
  #case when sb.quantity is null then 0 else sb.quantity end
  sum(ifnull(sb.quantity, 0)) as sold,
  sum(ifnull(sb.quantity, 0) * b.selling_price) - sum(ifnull(sb.quantity, 0) * b.purchase_price) as profit
from books b 
left join salesbooks sb on b.id = sb.book_id
left join genres g on g.id = b.genre_id
group by b.id
order by sold desc