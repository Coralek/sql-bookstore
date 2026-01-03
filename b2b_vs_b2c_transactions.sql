# this query shows how many transactions ware made by companies vs consumers.
# could be useful to understand the distribution and possibly make actions (e.g. B2B pricing, tailored offers, promotions)
select
  sum(case when tin is not null then 1 else 0 end) as companies,
  sum(case when tin is null then 1 else 0 end) as consumers
from sales;