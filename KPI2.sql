-- Grade and sub grade wise revol_bal

select f_1.grade, f_1.sub_grade, sum(f_2.revol_bal) as "Revol_bal"
	from finance_1 f_1 inner join finance_2 f_2
		using(id) group by sub_grade order by grade, sub_grade;