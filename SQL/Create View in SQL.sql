Use Customer_churn;
go
CREATE VIEW new_churndata as
select * from new_Churn where Customer_Status In ('Churned', 'Stayed')
Go
CREATE VIEW new_Joineddata as
select * from new_Churn where Customer_Status = 'Joined'
Go


