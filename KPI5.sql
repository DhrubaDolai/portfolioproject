-- Home ownership Vs last payment date stats

-- 1
select f_1.home_ownership as "Home_Ownership", f_1.issue_d as "Dates", round(sum(f_2.last_pymnt_amnt)) as "(OWN) Last_Payment_Amount"
	from finance_1 f_1 inner join finance_2 f_2 using (id)
		Where Home_Ownership = "OWN"
			group by Dates Order by Home_Ownership, Dates; 
            
-- 2
select f_1.home_ownership as "Home_Ownership", f_1.issue_d as "Dates", round(sum(f_2.last_pymnt_amnt)) as "(RENT) Last_Payment_Amount"
	from finance_1 f_1 inner join finance_2 f_2 using (id)
		Where Home_Ownership = "RENT"
			group by Dates Order by Home_Ownership, Dates; 
            
-- 3
select f_1.home_ownership as "Home_Ownership", f_1.issue_d as "Dates", round(sum(f_2.last_pymnt_amnt)) as "(MORTGAGE) Last_Payment_Amount"
	from finance_1 f_1 inner join finance_2 f_2 using (id)
		Where Home_Ownership = "MORTGAGE"
			group by Dates Order by Home_Ownership, Dates; 
            
-- 4
select f_1.home_ownership as "Home_Ownership", f_1.issue_d as "Dates", round(sum(f_2.last_pymnt_amnt)) as "Last_Payment_Amount"
	from finance_1 f_1 inner join finance_2 f_2 using (id)
		Where Home_Ownership = "OTHER"
			group by Dates Order by Home_Ownership, Dates;
            
-- 5
select f_1.home_ownership as "Home_Ownership", f_1.issue_d as "Dates", round(sum(f_2.last_pymnt_amnt)) as "Last_Payment_Amount"
	from finance_1 f_1 inner join finance_2 f_2 using (id)
		Where Home_Ownership = "NONE"
			group by Dates Order by Home_Ownership, Dates;
            
            
