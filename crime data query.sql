-- Total crimes per state
select state,
sum(Total_crimes) as Total_10YR_Crimes
from crime_data
group by state
order by Total_10YR_Crimes desc
limit 5;

-- fitering safe states
select * from crime_data;
select state,
round(avg(crime_rate_per_100k),2) as avg_annual_crime_rate
from crime_data
group by state
order by avg_annual_crime_rate asc;

-- cybercrime growth over time
select year,
sum(cybercrime) as National_cybercrime_cases,
sum(fraud) as National_fraud_cases
from crime_data
group by year
order by year asc;

-- combining crime and literacry data
select 
	c.state,
    s.literacy_rate_pct,
    s.unemployment_rate_pct,
    round(avg(c.crime_rate_per_100k), 2) as avg_crime_rate
from crime_data c
join socioeconomic_data s on c.state= s.state
group by c.state, s.Literacy_Rate_Pct, s.Unemployment_Rate_Pct
order by s.Literacy_Rate_Pct desc;

-- violent crime vs property crime
select
	region,
    sum(violent_crimes) as Total_violent_crimes,
    sum(Property_crimes) as Total_property_crimes,
    round(
		sum(violent_crimes) * 100.0 / nullif(sum(Total_crimes), 0),
        2
	) as Violent_crimes_pct
from crime_data
group by region
order by Total_violent_crimes desc;

-- states with high unemployment and above average crime
select
	s.state,
    s.unemployment_rate_pct,
    round(avg(c.crime_rate_per_100k), 2) as Avg_crime_rate
from socioeconomic_data s
join crime_data c on s.state = c.state
where s.Unemployment_Rate_Pct > 8.0
group by s.state, s.Unemployment_Rate_Pct
having avg(c.Crime_Rate_per_100k)> 4.0
order by s.Unemployment_Rate_Pct desc;

-- top cybercrime hotspots in 2024
select
	state,
    region,
    cybercrime,
    fraud,
    (cybercrime + fraud) as Total_digital_cases
from crime_data
where year = 2024
order by Total_digital_cases desc
limit 10;

-- regional literacy and crime overview
select
	s.region, 
    round(avg(s.literacy_rate_pct), 2) as avg_regional_literacy,
    round(avg(s.urbanization_pct), 2) as avg_regional_urbanization,
    round(avg(c.crime_rate_per_100k), 2) as avg_regional_crime_rate
from socioeconomic_data s 
join crime_data c on s.State= c.State
group by s.Region
order by avg_regional_crime_rate desc;