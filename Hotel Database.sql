CREATE TABLE IF NOT EXISTS hotel_table (
    hotel VARCHAR(50),
    is_canceled INTEGER,
    lead_time INTEGER,
    arrival_date_year INTEGER,
    arrival_date_month VARCHAR(20),
    arrival_date_week_number INTEGER,
    arrival_date_day_of_month INTEGER,
    stays_in_weekend_nights INTEGER,
    stays_in_week_nights INTEGER,
    adults INTEGER,
    children INTEGER,
    babies INTEGER,
    meal VARCHAR(20),
    country VARCHAR(3),
    market_segment VARCHAR(20),
    distribution_channel VARCHAR(20),
    is_repeated_guest INTEGER,
    previous_cancellations INTEGER,
    previous_bookings_not_canceled INTEGER,
    reserved_room_type CHAR(1),
    assigned_room_type CHAR(1),
    booking_changes INTEGER,
    deposit_type VARCHAR(20),
    agent INTEGER,
    company INTEGER,
    days_in_waiting_list INTEGER,
    customer_type VARCHAR(20),
    adr FLOAT,
    required_car_parking_spaces INTEGER,
    total_of_special_requests INTEGER,
    reservation_status VARCHAR(20),
    reservation_status_date DATE
);

drop table hotel_table 

--Meal_cost 
CREATE TABLE IF NOT EXISTS meal_costs(
	Cost FLOAT,
	meal VARCHAR(40)
);
drop table meal_costs
--Market_Segment
CREATE TABLE IF NOT EXISTS market_segments (
    Discount decimal (7,2),
    market_segment VARCHAR(255)
);
 drop table market_segments

	 --QUERIES--
select * from hotel_table 

select * from meal_costs

select * from market_segments


select * from hotel_table 
left join market_segments
on hotel_table.market_segment = market_segments.market_segment


select * from hotel_table 
left join market_segments
on hotel_table.market_segment = market_segments.market_segment	 
left join meal_costs
on meal_costs.meal = hotel_table.meal
	 
select arrival_date_year, hotel, 
sum((stays_in_week_nights + stays_in_weekend_nights)* adr)
as revenue from hotel_table group by arrival_date_year, hotel


