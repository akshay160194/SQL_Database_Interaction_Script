/* Creating a Patient Data table in the database */
create table patient_data(
	aadhar bigint not null, --adding not null constraint
    patient_name varchar(30) not null,
    age int,
	gender varchar(6),
	phone varchar(10),
    primary key (aadhar), --adding primary constraint to aadhar
	check(gender in ('Male', 'Female', 'others')) --adding check constraint to gender
  );
  

/*Inserting mock values into the table created*/
insert into patient_data values --using insert into command
		(456212442388,'Harsh',28,'Male','7843221590'),
		(325618922377,'Utkarsh',34,'Male','7843442448'),
		(562789379299,'Sunita',24,'Female','9843923792'),
		(453409238034,'Rakesh',46,'Male','7673498409'),
		(764874364786,'Sushma',50,'Female','7848767576'),
		(837203489343,'Kiran',31,'Female','7545687799')

/*verifying the data entry*/
select * from patient_data

/* Extracting patient records who are above age of 30 and are females */
select 
	*
from
	patient_data
where
	age > 30 and gender='Female'

/*Updating patient name and phone number using update function */
update patient_data
set patient_name ='Sushmaa',
	phone ='7848767756'
where 
	aadhar=764874364786
	
/*Looking at the updated table and varifying*/
select * from patient_data


/*Deleting a patient record from the table*/
DELETE FROM patient_data 
WHERE patient_name='Kiran';

/*varifying the deleted record in the table*/
select * from patient_data
