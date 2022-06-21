-- State wise and month wise loan status
-- 1
select addr_state , monthname(issue_d) as "Months_Alp",Count(loan_status) as "Fully_Paid_Loan_Status" 
from finance_1
	Where Loan_Status = "Fully Paid"
		group by Months_Alp, addr_state
			order by addr_state, month(issue_d);
            
            
-- 2
select addr_state , monthname(issue_d) as "Months_Alp",Count(loan_status) as "Charged_Off_Loan_Status" 
from finance_1
	Where Loan_Status = "Charged Off"
		group by Months_Alp, addr_state
			order by addr_state, month(issue_d);
            


-- 3
select addr_state , monthname(issue_d) as "Months_Alp",Count(loan_status) as "Current_Loan_Status" 
from finance_1
	Where Loan_Status = "Current"
		group by Months_Alp, addr_state
			order by addr_state, month(issue_d);
            
