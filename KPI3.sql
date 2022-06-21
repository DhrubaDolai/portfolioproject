-- Total Payment for Verified Status Vs Total Payment for Non Verified Status

select f_1.verification_status as "Verification_Status", round(sum(f_2.total_pymnt)) as "Total_Payment" 
	from finance_1 f_1 inner join finance_2 f_2 
		using (id)
			where Verification_Status = "Verified" or Verification_Status = "Not Verified"
				group by verification_status;