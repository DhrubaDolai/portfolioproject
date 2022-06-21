create database live_project;
use live_project;
create table Finance_1(
	id int not null primary key,
	member_id int not null,
    loan_amnt int not null,
    funded_amnt int not null,
    funded_amnt_inv varchar(20) not null,
    term varchar(20) not null,
    int_rate decimal(5,4) not null,
    installment decimal(6,2) not null,
    grade char(1) not null,
    sub_grade varchar(2) not null,
    emp_title varchar(255),
    emp_length varchar(20) not null,
    home_ownership char(20) not null,
    annual_inc varchar(20) not null,
    verification_status char(20) not null,
    issue_d date,
    loan_status char(30) not null,
    pymnt_plan char(1) not null,
    desc_ nvarchar(5000) null,
    purpose varchar(20) not null,
    title nvarchar(1000) null,
    zip_code varchar(10) not null,
    addr_state char(2) not null,
    dti varchar(10) not null);
    
drop table finance_1;
truncate table finance_1;
set sql_safe_updates = 0;

create table Finance_2(
	id int not null primary key,
    delinq_2yrs integer not null,
    earliest_cr_line date not null,
    inq_last_6mths integer not null,
    mths_since_last_delinq integer null,
    mths_since_last_record integer null,
    open_acc int not null,
    pub_rec int not null,
    revol_bal int not null,
    revol_util decimal(5,4) null,
    total_acc int not null,
    initial_list_status char(1) not null,
    out_prncp varchar(20) not null,
    out_prncp_inv varchar(20) not null,
    total_pymnt varchar(20) not null,
    total_pymnt_inv varchar(20) not null,
    total_rec_prncp varchar(20) not null,
    total_rec_int varchar(20) not null,
    total_rec_late_fee varchar(20) not null,
    recoveries varchar(20) not null,
    collection_recovery_fee varchar(20) not null,
    last_pymnt_d date null,
    last_pymnt_amnt varchar(20) not null,
    next_pymnt_d date null,
    last_credit_pull_d date null);

drop table finance_2;

