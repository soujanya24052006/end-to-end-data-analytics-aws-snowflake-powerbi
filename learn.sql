 CREATE OR REPLACE STORAGE INTEGRATION PBI_Integration
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = 'S3'
  ENABLED = TRUE
  STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::117837573583:role/powerbi.role'
  STORAGE_ALLOWED_LOCATIONS = ('s3://powerbi.projectsoujanya/')
  COMMENT = 'Optional Comment'


  //description Integration Object
  desc integration PBI_Integration;

//drop integration PBI_Integration

//drop database PowerBI

CREATE database PowerBI;

create schema PBI_Data;

create table PBI_Dataset (
Year int,	Location string,	Area	int,
Rainfall	float, Temperature	float, Soil_type string,
Irrigation	string, yeilds	int,Humidity	float,
Crops	string,price	int,Season string



);

select * from PBI_Dataset;

//drop database test;

create stage PowerBI.PBI_Data.pbi_stage
url = 's3://powerbi.projectsoujanya'
storage_integration = PBI_Integration

//desc stage s1

//drop stage s1;


copy into PBI_Dataset 
from @pbi_stage
file_format = (type=csv field_delimiter=',' skip_header=1 )
on_error = 'continue'

list @pbi_stage


create table agriculture as
select * from pbi_dataset;

select * from agriculture;

update agriculture
set rainfall = 1.1*rainfall;

update agriculture
set area = 0.9*area;

//year 2004 and 2009 is y1
//2010 and 2015 is y2
//2016 and 2019 is y3

ALTER TABLE Agriculture
add Year_Group String;

update agriculture
set year_group = 'y1'
where year >=2004 and year<=2009

update agriculture
set year_group = 'y2'
where year >=2010 and year<=2015

update agriculture
set year_group = 'y3'
where year >=2016 and year<=2019

alter table agriculture
add rainfall_group string;

update agriculture
set rainfall_group = 'low'
where rainfall>=255 and rainfall<1200

update agriculture
set rainfall_group = 'high'
where rainfall>=1200 and rainfall<2800

update agriculture
set rainfall_group = 'medium'
where rainfall>=1200

alter table agriculture
drop column rainfall_froup;

select * from agriculture;