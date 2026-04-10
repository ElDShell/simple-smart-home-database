------ Views ---------
-- View to select all devices and their locations

create view devices_location_view as select 
d.id as "Device Number", d.name as "Device Name", d.type as "Type", d.status as Status, d.power_rating as "Power KWH",
r.name as "Room Name",
h.address as "Home Address"
from devices d join rooms r on d.room_id = r.id 
join homes h on r.home_id = h.id;

select * from devices_location_view;

create view devices_consumption_view as select
d.id as "Device Number", d.name as "Device Name", d.type as "Type", d.power_rating  as "Power KWH",
e.consumption_kwh as "Consumption", e.recorded_at "Recorded At"
from devices d join energy_logs e on d.id = e.device_id;

select * from devices_consumption_view;

create view sensors_location_view as select
s.id as "Sensor Number", s.name as "Sensor Name", s.type as "Type", s.unit as "Measure Unit", s.status as "Status",
r.name as "Room Name",
h.address as "Home Address"
from sensors s join rooms r on s.room_id = r.id
join homes h on r.home_id = h.id;

select * from sensors_location_view;

create view automation_device_sensor_view as select
a.id as "Automation Number", s.type as "Type",a.condition_operator as "Operator",
a.condition_value as "Automation Value", a.action as "Action Performed", a.is_active as "Is Active",
d.name as "Device Name",
s.name as "Sensor Name"
from automations a join devices d on a.device_id = d.id 
join sensors s on a.sensor_id = s.id;

select * from automation_device_sensor_view;



------ Some other select statments ----------
--For every user get his home total energy consumption
select u.name as "Home Owner", h.address as "Home Address",
to_char (sum(e.consumption_kwh)|| 'KWh') as "Total Home Conuumption"
from homes h join users u on h.user_id = u.id
join rooms r on r.home_id = h.id
join devices d on d.room_id = r.id
join energy_logs e on e.device_id = d.id
group by u.name, h.address;