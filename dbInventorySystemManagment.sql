 create database dbInventoryManagmentSystem
use dbInventoryManagmentSystem

create table tblPurchase(
p_id int primary key not null,
p_name varchar(50) not null,
p_price varchar(50) not null,
p_cprice varchar(50) not null
)

alter table tblPurchase drop column p_cprice

create table tblEmployee(
e_id int primary key not null,
e_name varchar(50) not null,
e_contact varchar(50) not null,
e_address varchar(50) not null
)

alter table tblEmployee add p_quantity int
alter table tblEmployee drop column p_quantity 
alter table tblPurchase add p_quantity int

select * from tblEmployee
select * from tblPurchase


create table tbllogin (
Username varchar(50),
Pasword varchar(50)
)

drop table login


create table tblStock(
s_id int primary key not null,
s_pid int not null,
s_pquantity varchar(50) not null 
)

create table tblsale(
p_id int primary key not null references tblPurchase (p_id),
p_quantity varchar(50) not null,
t_price varchar(50) not null,
e_id int not null  references tblEmployee (e_id)
)


alter table tblsale alter column e_id int

select * from tblStock
select * from tblEmployee
select * from tblPurchase
select * from tblsale

drop table tblEmployee
drop table tblPurchase
drop table tblsale
drop table tblStock


update tblstock set s_pquantity='5' where s_id=1

insert into tblStock values (1,1,5)
insert into tblEmployee values(1,'sherwin','0213456432','karachi')
insert into tblPurchase values(1,'tea','12','15')
insert into tblsale values (1,'1','15',1)

alter table tblStock add name varchar(50)
alter table tblStock add price varchar (50)


create proc deduce
@p_id int,
@s_pquantity varchar(50)
as
update tblstock set s_pquantity=s_pquantity-@s_pquantity
update tblsale set p_quantity=p_quantity+@s_pquantity
where @p_id=@p_id
exec deduce 1,3


insert into tblStock

alter table tblsale alter column p_quantity  int
alter table tblStock alter column s_pquantity  int


insert into tbllogin values ('admin','admin123')

insert into tblStock values (1,1,5)
insert into tblStock values (2,2,3,'oil',2)