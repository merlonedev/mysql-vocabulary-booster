select countries.country_name as `País`, if(regions.region_name = 'Europe', 'incluído', 'não incluído') as `Status Inclusão`
from hr.countries as countries
inner join regions as regions
on countries.region_id = regions.region_id
order by country_name;
