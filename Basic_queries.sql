show tables;

desc geo;

select * from sales;

select SPID, Amount from sales;

select SaleDate, amount from sales where Amount > 10000;

select SaleDate, amount from sales where Amount < 10000 order by amount;

select SaleDate, amount from sales where year(SaleDate) = '2022';

select SaleDate, amount from sales where year(SaleDate) = '2022' and amount between 1000 And 5000;

select SaleDate, amount, weekday(SaleDate) from sales where year(SaleDate) = '2022';

select * from people;

select * from people where Salesperson like 'B%';
	
select SaleDate, Amount,
		case 	when amount < 1000 then 'under 1k'
				when amount < 5000 then 'under 5k'
				when amount < 10000 then 'under 10k'
                else 'over 10k'
                end As amount_category
from sales