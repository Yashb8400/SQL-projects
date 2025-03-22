--Data Cleaning

select * from layoffs

--deleting dublicates

select*,
row_number() over (partition by company, location, industry, total_laid_off, percentage_laid_off, 'date', stage, country, funds_raised_millions order by company) 
	as row_num
		from layoffs
		

with dupe_layoff as
(
select*,
row_number() over (partition by company, location, industry, total_laid_off, percentage_laid_off, 'date', stage, country, funds_raised_millions order by company) 
	as row_num
		from layoffs
)


select *
	from dupe_layoff
	where row_num >1 ;

delete
	from dupe_layoff
	where row_num >1 ;


select * from layoffs

--changing similar names

select distinct industry
from layoffs
order by 1


select industry
	from layoffs
	where industry like 'Crypto%'

update layoffs
set industry = 'Crypto'
where industry like 'Crypto%';


-- trimming unnecessory spaces
select company, trim(company)
	from layoffs


	update layoffs
	set company = trim(company)

	select *
	from layoffs
	order by 1

	update layoffs
	set country = 'United States'
	where country = 'United States.'

-- convert string to date format

select date 
	from layoffs
ORDER BY 1

SELECT CONVERT(date, date, 101) AS CONVERTED_DATE
	FROM LAYOFFS

	UPDATE layoffs
	SET date = CONVERT(date, date, 101) 
	FROM LAYOFFS




--removing nulls

select *
	from layoffs
where industry is null or industry = 'NUll' or industry = ' '

select industry, company
from layoffs
where company = 'Airbnb'

update layoffs
set industry = 'Travel'
where company ='Airbnb'


select *
from layoffs
where total_laid_off = 'null'
and percentage_laid_off = 'null';


select distinct industry, company
from layoffs

select * from layoffs