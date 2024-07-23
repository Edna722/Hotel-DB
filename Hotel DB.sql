CREATE TABLE hotel_table AS
SELECT * FROM table_2018
UNION
SELECT * FROM table_2019
UNION
SELECT * FROM table_2020;

select arrival_date_year, hotel, 
sum((stays_in_week_nights + stays_in_weekend_nights)* adr)
as revenue from hotel_table group by arrival_date_year, hotel

select * from hotel_table 
left join market_segments
on hotel_table.market_segment = market_segments.market_segment	 
left join meal_costs
on meal_costs.meal = hotel_table.meal
	
--Meal_cost 
CREATE TABLE meal_costs(
	Cost FLOAT,
	meal VARCHAR(40)
);

CREATE TABLE market_segments (
    Discount decimal (7,2),
    market_segment VARCHAR(255)
);

select * from meal_costs

drop table hotel_table
select * from hotel_table


drop table meal_costs


drop table market_segments