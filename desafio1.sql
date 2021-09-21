select countries.country_name as `País`,
case
	when regions.region_name = 'Europe' then 'incluído'
    else 'não incluído'
end as `Status Inclusão`
from hr.countries as countries
inner join regions as regions
on countries.region_id = regions.region_id
order by country_name;
