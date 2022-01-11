create database stringfunctions

 select Nchar(80) as [character],nchar(195) as [character];
 select Unicode('ae') as[extended ascii],nchar(30) as [character]
 select ascii('a') as a,ascii('A') as A,ascii(1) as [1]
 select char(65) as [65],char(50) as [50]
 select NCHAR(9835)
 union all
 select NCHAR(127925)
 select charindex('is','this is a string',4);
 select concat ('happy ','birthday ', 11,'/','25') as Result;
 select concat('chandana',' ','charitha') as adding
 select CONCAT_WS(',','1Microsoft Way',Null,Null,'Redmond','WA',98052) as address;
 select left('chandana',3)
 select len('chandana charitha')
 select lower('CAPGEMINI')
 select LTRIM(' chandana')
  select Nchar(9835) as number 
  select position = patindex('%data%', 'interesting data')
  select quotename('abc[]def') 
  select quotename('abc def');
  select replace('bangalore','b','M') as repay
 select replicate('preetam',2) as rep
 select Reverse('mangalore') as rev
 select right('string',3)
 select rtrim('chandana  ')
 select soundex('Hyderabad')
 select space (45)
 select str (12345.5,5,1)
 select string_escape(chandana,string)
 select value from STRING_SPLIT('chandana is a good girl.',' ',1)
 select stuff('chandana',2,3,'in')
 select substring('bangalore',5,2)
 select translate('abcdef','abc','bcd') as translated
 select unicode('9876')
 select upper('vinay')

 create table salestable(salesId int,TuID int ,salesdate datetime)
 insert into salestable values(1,1,'2022-01-10 10:12:12:087')
 select salesdate, cast(salesdate as varchar(12)),convert(varchar(15),salesdate,101) from salestable
 select salesdate, cast(salesdate as varchar(12)),convert(varchar(15),salesdate,102) from salestable 
 select salesdate, cast(salesdate as varchar(12)),convert(varchar(15),salesdate,103) from salestable 
 select salesdate, cast(salesdate as varchar(12)),convert(varchar(15),salesdate,104) from salestable 
 select salesdate, cast(salesdate as varchar(12)),convert(varchar(15),salesdate,105) from salestable 
 select Getdate()
 select cast (Getdate() as date) 
 select curdate()
 select curtime()
 select now(date)
 select date('2019-08-06 08:10:12');
 select dateadd('2019-06-05',interval 5 day)
 select makedate(2019,154)

 select convert (int,'10')
 select cast('10' as int)
  select datename(yyyy,salesdate),datename(mm,salesdate),datename(dd,salesdate) from salestable
  select * from salestable
  select datepart(yyyy,salesdate),datepart(mm,salesdate),datepart(dd,salesdate) from salestable
  select dateadd(mm,2,salesdate),dateadd(yyyy,2,salesdate),dateadd(dd,2,salesdate),
  dateadd(hh,2,salesdate) from salestable
  select datediff(yyyy,salesdate,'1997-5-13 12:20;22;232') from salestable