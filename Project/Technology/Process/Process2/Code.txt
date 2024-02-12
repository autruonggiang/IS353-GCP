2. 
* Thống kê về người dùng;
- Lọc các giá trị null theo location:
select location, count(1) as Cnt from `bigquery-public-data.stackoverflow.users`
group by location
order by Cnt desc

- Trích xuất thông tin người dùng Stack Overflow:
select extract (year from last_access_date) as LastAccessedYear, 
extract (YEAR FROM CURRENT DATE())- EXTRACT(YEAR FROM last_access_date) as DornminantYears, 
COUNT(1) As UserCnt 
FROM `bigquery-public-data.stackoverflow.users`
group by 1, 2 order by 1 desc



select count(1), max(reputation), min(reputation), avg(reputation) 
from `bigquery-public-data.stackoverflow.users`

select count(1) from 	bigquery-public-data.stackoverflow.users`
where reputation <123

- Lọc ra reputation-group của users:
select bucket,

format("%1-1, IFNULL(RANGES[SAFE_OFFSET(bucket-1)]+1,0) ranges SAFE DEESET (bucket) AS reputation_group)
COUNT(*) AS COUNT
FROM `bigquery-public-data.stackoverflow.users`, 
UNNEST([STRUCT([123, 200000, 400000, 500000, 600000, 700000, 800000, 900000, 1000000, 1100000, 1200000 as ranges)]),
UNNEST([RANGE_BUCKET(reputation, ranges)])bucket
group by 1,2
order by bucket




* Thống kê về các câu hỏi:
- Xử lý theo County và TotalUser:
select 
case
when location like '%United States%' or location LIKE 'USA' THEN 'USA'
when location like '%London%' or location LIKE 'United Kingdom' THEN 'UK'
when location like '%France%' THEN 'France'
else location end as Country
	count(1) as TotalUser FROM `bigquery-public-data.stackoverflow.users` 
where location is not null and reputation >200000 and reputation <400000
group by Country
order by count(1) desc



- Thống kê ở posts_questions:
select category, count(*) as TagsTotal 
from 	bigquery-public-data.stackoverflow.posts_questions` 
cross Join UNNEST (SPLIT(tags,'|')) as category
group by category
order by TagsTotal Desc


