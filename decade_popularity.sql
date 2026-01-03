# this query shows which decade people buy books from most often.
# could be useful to reconsider adding more titles from the decade that customers are interested in.
select
  floor(b.publication_year / 10) * 10 as decade,
  sum(sb.quantity) as sales_sum
from books b
join salesbooks sb on sb.book_id = b.id
group by decade
order by decade desc