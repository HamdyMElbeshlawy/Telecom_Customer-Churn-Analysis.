create database telecom ;
go
use telecom ;
go 

CREATE TABLE Customers ( 
customerID VARCHAR(20)PRIMARY KEY 
, gender VARCHAR(10), 
SeniorCitizen BIT, 
Partner VARCHAR(3),
Dependents VARCHAR(3),
tenure INT, 
PhoneService VARCHAR(3),
MultipleLines VARCHAR(30), 
InternetService VARCHAR(20),
OnlineSecurity VARCHAR(20),
OnlineBackup VARCHAR(20),
DeviceProtection VARCHAR(20),
TechSupport VARCHAR(20), 
StreamingTV VARCHAR(20), 
StreamingMovies VARCHAR(20), 
[Contract] VARCHAR(30),
PaperlessBilling VARCHAR(3), 
PaymentMethod VARCHAR(50),
MonthlyCharges DECIMAL(10,2) ,
TotalCharges VARCHAR(20), 
Churn VARCHAR(3) );





BULK INSERT Customers
FROM 'C:\Users\EHS\OneDrive\Desktop\Project-D_A\archive\WA_Fn-UseC_-Telco-Customer-Churn.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);




SELECT * FROM Customers 




UPDATE Customers 
SET TotalCharges =0 WHERE tenure=0 

alter table Customers alter column 
TotalCharges DECIMAL(10,2)
-- check Duplicate 
SELECT COUNT(DISTINCT customerID) AS UniqueCustomers,
COUNT(*) AS TotalRows
FROM Customers;
--  قيمه غير منطقيه
SELECT customerID, tenure, MonthlyCharges, TotalCharges
FROM Customers
WHERE tenure < 0 
   OR MonthlyCharges < 0 
   OR TotalCharges < 0;
-- فحص الاتساق بين مدة الاشتراك وإجمالي الفواتير
SELECT customerID, tenure, MonthlyCharges, TotalCharges
FROM Customers
WHERE (tenure > 0 AND TotalCharges = 0)
   OR (tenure = 0 AND TotalCharges > 0);

-- فحص المنطق 
SELECT customerID, InternetService,
OnlineSecurity, TechSupport, StreamingTV
FROM Customers
WHERE InternetService = 'No' 
  AND (OnlineSecurity = 'Yes' OR 
  TechSupport = 'Yes' OR StreamingTV = 'Yes');
  
  -- check 
  SELECT COUNT (*) FROM Customers where gender = 'Male' or gender = 'Female'



  -- هي نسبة التسرب الكلية (Overall Churn Rate) في الشركة؟

  select ROUND( count (*)*100.0/
  (select  count (*)   FROM Customers  ) ,2 )  as  Overall_Churn_Rate
  FROM Customers 
  where Churn =  'Yes'


  --ما هو تأثير نوع العقد (Contract) على معدل التسرب؟
 select [Contract] , count (*)   FROM Customers 
  where Churn =  'Yes'
  group by [ Contract ]
