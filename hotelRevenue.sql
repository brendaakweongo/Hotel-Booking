use projects;

#ANALYSIS OF HOTEL REVENUE BY YEAR
#Shows the hotel revenue growing by year
select arrival_date_year, round(sum((stays_in_week_nights + stays_in_weekend_nights)*adr)) as revenue from
(select * from tbl2018
union
select * from tbl2019
union
select * from tbl2020) hotel
group by arrival_date_year;

#ANALYSIS OF HOTEL REVENUE BY YEAR AND HOTEL TYPE
#Shows revenue segmented by hotel types
select arrival_date_year,hotel, round(sum((stays_in_week_nights + stays_in_weekend_nights)*adr)) as revenue from
(select * from tbl2018
union
select * from tbl2019
union
select * from tbl2020) hotels
group by arrival_date_year,hotel;

#HOTEL PARKING LOT SIZE ANALYSIS