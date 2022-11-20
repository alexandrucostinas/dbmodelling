--create tip_parc table
create table if not exists tip_parc(
    id serial PRIMARY KEY NOT null,
	type varchar(20) not null,
	description varchar(400)
);


--insert data into table after create

INSERT INTO tip_parc (type, description) values
                      ('Parc national','Arie protejata infiintata conform regulament Romsilva'),
					  ('Parc natural','Arie naturala protejata conform OUG Life Natura 2000'),
					  ('Stiintifica','Rezervatie apartinand UVT , departament Geografie'),
					  ('Sit natura 2000','Sit cartat si fundamentat conform Life Natura 2000 Project');

--update data if required

update  tip_parc SET
            type='Rez stiintifica',
            description = 'Rezervatie apartinand UVT, Departamentul Geografie & MF' 
where type = 'Stiintifica';
select * from tip_parc