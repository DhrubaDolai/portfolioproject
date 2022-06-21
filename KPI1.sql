-- Year wise loan amount Stats
select year(issue_d) as "Year", sum(loan_amnt) as "Total_Loan" from finance_1 group by Year order by Year asc;