-- Create leaf table
drop table if exists leaf;
create table leaf (
	leaf_id serial primary key,
	color varchar(20),
	shape varchar(20),
	margin varchar(20)
);

-- Create plant_name table
drop table if exists plant_name;
create table plant_name (
	plant_name_id serial primary key,
	common varchar(100),
	scientific varchar(100)
);

alter table care_instruction
add COLUMN soil_type varchar(20)

-- Create care_instruction table
drop table if exists care_instruction;
create table care_instruction (
	care_instruction_id serial primary key,
	light_exposure varchar(10),
	soil_ph varchar(10),
	temperature varchar(10),
	water varchar(10),
	humidity varchar(10)
);

-- Create flower table
drop table if exists flower;
create table flower (
	flower_id serial primary key,
	flower_time varchar(15),
	flower_color varchar(15),
	flower_size  varchar(5)
);

-- Create plant_detail table
drop table if exists plant_detail;
create table plant_detail (
	plant_detail_id serial primary key,
	family varchar(30),
	duration varchar(30),
	category varchar(30),
	inside_out boolean,
	leaf_id int references leaf(leaf_id),
	flower_id int references flower(flower_id),
	care_instruction_id int references care_instruction(care_instruction_id),
	name_id int references plant_name(plant_name_id)
);

-- Create propagation table
drop table if exists propagation;
create table propagation (
	propagation_id serial primary key,
	propagation_type varchar(30),
	instructions varchar(255)
);

-- Create plant_detail_propagation table
drop table if exists plant_detail_propagation;
create table plant_detail_propagation(
	plant_detail_propagation_id serial primary key,
	plant_detail_id int references plant_detail(plant_detail_id),
	propagation_id int references propagation(propagation_id)
);

-- Create origin table
drop table if exists origin;
create table origin (
	origin_id serial primary key,
	origin_name varchar(30),
	climate_type varchar(20),
	climate_zone varchar(20)
);

-- Create plant_detail_origin table
drop table if exists plant_detail_origin;
create table plant_detail_origin(
	plant_detail_origin_id serial primary key,
	plant_detail_id int references plant_detail(plant_detail_id),
	origin_id int references origin(origin_id)
);
	
-- Insert values into plant_name table
insert into plant_name (common, scientific)
values 
	('Butterfly Palm Tree', 'Dypsis Lutescens'),
	('African Violets', 'Saintpaulia Ionantha'),
	('Black Gold Snake Plant', 'Dracaena trifasciata'),
	('Sugarvine', 'Cissus Striata'),
	('Marble Queen Pothos', 'Epipremnum Aureum'),
	('Heartleaf Philodendron', 'Philodendron Cordatum'),
	('Boston Fern', 'Nephrolepis Exaltata'),
	('Leopard Plant', 'Farfugium Japonicum'),
	('House Leeks', 'Sempervivum Jovibarba'),
	('Hen-and-chickens', 'Jovibarba Heuffelii'),
	('Mother of Pearl', 'Nacre'),
	('Mexican Fire Cracker', 'Echeveria Setosa'),
	('Little Gem', 'Cremnosedum'),
	('Flapjacks', 'Kalanchoe Thrysiflora'),
	('Powderpuff', 'Pachyveria Exotica'),
	('Zebra Plant', 'Aphelandra Squarrosa'),
	('Echeveria Agavoides', 'Honey Pink Echeveria'),
	('Hens and Chicks Green Wheel', 'Sempervivum Green Wheel'),
	('Star Window', 'Haworthia Cuspidata'),
	('Crinoline Ruffles', 'Echeveria Ruffles'),
	('Nerve Plant', 'Fittonia Gigantea')

Insert into care_instruction (light_exposure, soil_type, temperature, water, humidity)
values 
	('Full Sun to Partial Shade', 'Well draining aerated potting soil mix', '65°F– 75°F ', 'Maintain moist soil. Water when top 1-2 inches of soil is dry.' , '40 -60%'),
	('Moderate to bright, indirect, indoor light.', 'High Organic Matter', '65°F– 75°F', 'Just enough water to keep the soil moist, but never soggy', '50%' ),
	('Partial or Dappled Shade', 'Shallow Rocky with good drainage', '65°F– 75°F', '')
select * from plant_name

Insert into propagation (propagation_type, instructions)
values 
	('Propagation is best done through cuttings on this plant. Simply cut a section of the plant off of the parent and submerge the cut ends in water for two weeks. When roots form, transfer the plant to a container for growing.')

Insert into flower (flower_time, flower_color, flower_size)
values 
	()

insert into leaf (color, shape, margin)
values
	()

insert into origin (origin_name, climate_type, climate_zone)
values
	()

insert into plant_detail (family, duration, category, inside_out, leaf_id, care_instruction_id, name_id, flower_id)
values
	()
