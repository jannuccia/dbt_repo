with weekday_avg as
select
    -- base_currency,
    -- avg(gbp) as avg_gbp
    -- avg(usd) as avg_usd
    -- avg(inr) as avg_inr
from {{ref('prep_temp')}}
-- group by base_currency
)

select *
from weekday_avg