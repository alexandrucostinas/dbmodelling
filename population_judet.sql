
--create population_judet

create table if not exists population_judet (
id serial primary key not null,
year date unique not null,
value integer not null,
judet_fid integer not null
);
--add data to table

insert into population_judet (year,value,judet_fid) values
                              ('2000-11-20',500000,1),
							  ('2001-11-20',600000,1),
							  ('2002-11-20',700000,1);

select * from population_judet