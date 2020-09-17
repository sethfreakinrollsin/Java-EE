-- Creating Database
create database starschema;

-- USING Database 
use starschema;

-- Creating Tables
-- Table Years
create table Years(idYear int primary key,Year varchar(45));

DESC Year;

insert into Years VALUES(101,"1-07-2020");
insert into Years VALUES(102,"5-07-2020");
insert into Years VALUES(103,"11-07-2020");
insert into Years VALUES(104,"22-07-2020");
insert into Years VALUES(105,"31-07-2020");

-- Table names
create table names(idnames int primary key,names varchar(100));

DESC names;

insert into names values(1,"Scott Mc Call");
insert into names values(2,"Zack Effron");
insert into names values(3,"Tim Cook");
insert into names values(4,"Greg Stelenski");
insert into names values(5,"Harry Styles");

select * from names;

-- Table movie
create table movie(idmovie int primary key,movie varchar(200));

DESC movie;

insert into movie values(1001,"Love Rosie");
insert into movie values(1002,"Zombieland");
insert into movie values(1003,"Blended");
insert into movie values(1004,"Pacific Rim");
insert into movie values(1005,"Fate of the Furious");

select * from movie;

-- Table categories
create table categories(idcategories int primary key,Award_categories varchar(100));

DESC categories;

insert into categories values(10101,"No");
insert into categories values(10102,"Scream Awards");
insert into categories values(10103,"Golden Schmoes");
insert into categories values(10104,"BAFTA Film Award ");
insert into categories values(10105,"MTV Movie & TV Awards");

select * from categories;

-- Table Awards
create table Awards(idAward int primary key,AwardType varchar(45));

DESC Awards;

insert into Awards values(10001,"Non");
insert into Awards values(10002,"Best Horror Actor");
insert into Awards values(10003,"Worst Picture");
insert into Awards values(10004,"visual effects");
insert into Awards values(10005,"Generation Award");

select * from Awards;

-- Table AwardCollectionFact
create table AwardCollectionFact(idAwardCollectionfact int primary key,idyear int,idmovie int,idaward int,idcategory int,names int,
FOREIGN KEY (idyear) REFERENCES Years(idYear),FOREIGN KEY (names) REFERENCES names(idnames),FOREIGN KEY (idmovie) REFERENCES movie(idmovie),FOREIGN KEY (idcategory) REFERENCES categories(idcategories),FOREIGN KEY (idaward) REFERENCES Awards(idAward));
DESC AwardCollectionFact;

insert into AwardCollectionFact Values(1,101,1001,10001,10101,1);
insert into AwardCollectionFact Values(2,103,1002,10002,10102,5);
insert into AwardCollectionFact Values(3,102,1003,10003,10103,4);
insert into AwardCollectionFact Values(4,105,1004,10004,10104,2);
insert into AwardCollectionFact Values(5,104,1005,10005,10105,3);

select * from AwardCollectionFact;