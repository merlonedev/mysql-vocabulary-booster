select countries.country_name as `País`,
case
	when regions.REGION_NAME = 'Europe' then 'incluído'
    when countries.REGION_ID <> 'Europe' then 'não incluído'
end as `Status Inclusão`
from hr.countries as countries
inner join regions as regions
on countries.region_id = regions.region_id
order by COUNTRY_NAME;
