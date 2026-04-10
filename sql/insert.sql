--Insert Users
insert into users (name, email, password ,phone)
values ('Ahmad', 'admad@email.com', 'testpass123' ,'+970598745123');

insert into users (name, email, password, phone)
values ('Ali', 'ali@email.com', 'testpass123', '+970563216548');

--Insert Homes
insert into homes(user_id, type, address, area)
values (1, 'PERSONAL', 'Gaza', 200);

insert into homes(user_id, type, address, area)
values (2, 'APARTMENT', 'Rafah', 120);

-- Insert Rooms
-- type: 'KITCHEN', 'BEDROOM', 'LIVING_ROOM', 'BATHROOM', 'GARAGE', 'DINING_ROOM', 'OFFICE'
insert into rooms(home_id, name, type, floor, area)
values(1, 'Living Room', 'LIVING_ROOM',1, 60);

insert into rooms(home_id, name, type, floor, area)
values(1, 'Master Bedroom', 'BEDROOM',2, 45);

insert into rooms(home_id, name, type, floor, area)
values(1, 'Children Bedroom', 'BEDROOM',2, 40);

insert into rooms(home_id, name, type, floor, area)
values(1, 'Bathroom 1', 'BATHROOM',1, 15);

insert into rooms(home_id, name, type, floor, area)
values(1, 'Bathroom 2', 'BATHROOM',2, 15);

insert into rooms(home_id, name, type, floor, area)
values(1, 'Kitchen', 'KITCHEN',1, 25);


insert into rooms(home_id, name, type, floor, area)
values (2, 'Living Room', 'LIVING_ROOM',1,40);

insert into rooms(home_id, name, type, floor, area)
values (2, 'Master Bedroom', 'BEDROOM',1,25);

insert into rooms(home_id, name, type, floor, area)
values (2, 'Children Bedroom', 'BEDROOM',1,20);

insert into rooms(home_id, name, type, floor, area)
values (2, 'Kitchen', 'KITCHEN',1,20);

insert into rooms(home_id, name, type, floor, area)
values (2, 'Bathroom', 'BATHROOM',1,15);

--Insert Devices
-- type: 'LIGHT', 'AIR_CONDITIONER', 'TV', 'SMART_PLUG', 'FAN', 'HEATER', 'DOOR_LOCK', 'CAMERA'
-- status: 'ON', 'OFF', 'STANDBY'
-- manufacturer: 'LG', 'Samsung', 'Sony', 'Philips', 'Bosch', 'Other'
insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (1, 'Main Living Room Light', 'LIGHT', 'ON', 'Other', 0.015);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (1, 'Decoration Living Room Light', 'LIGHT', 'OFF', 'Other', 0.020);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (1, 'Living Room TV', 'TV', 'ON', 'Samsung', 0.100);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (1, 'Living Room Air Conditioner', 'AIR_CONDITIONER', 'ON', 'Sony', 2.5);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (1, 'Living Room Camera', 'CAMERA', 'ON', 'Other', 0.03);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (2, 'Main Master Bedroom Light', 'LIGHT', 'ON', 'Other', 0.015);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (2, 'Master Bedroom Fan', 'FAN', 'OFF', 'Other', 0.3);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (3, 'Main Children Bedroom Light', 'LIGHT', 'OFF', 'Other', 0.015);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (4, 'Main Bathroom 1 Light', 'LIGHT', 'ON', 'Other', 0.015);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (5, 'Main Bathroom 2 Light', 'LIGHT', 'OFF', 'Other', 0.015);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (6, 'Main Kitchen Light', 'LIGHT', 'OFF', 'Other', 0.015);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (6, 'Main Heater', 'HEATER', 'OFF', 'Other', 2);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (6, 'Main Fridge', 'SMART_PLUG', 'ON', 'Samsung', 0.3);

-- Home 2
insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (7, 'Main Living Room Light', 'LIGHT', 'ON', 'Other', 0.015);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (7, 'Decoration Living Room Light', 'LIGHT', 'OFF', 'Other', 0.020);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (7, 'Living Room TV', 'TV', 'ON', 'Sony', 0.100);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (8, 'Main Master Bedroom Light', 'LIGHT', 'ON', 'Other', 0.015);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (8, 'Master Bedroom Fan', 'FAN', 'OFF', 'Other', 0.3);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (9, 'Main Children Bedroom Light', 'LIGHT', 'OFF', 'Other', 0.015);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (10, 'Main Kitchen Light', 'LIGHT', 'OFF', 'Other', 0.015);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (10, 'Main Heater', 'HEATER', 'OFF', 'Other', 2);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (10, 'Main Fridge', 'SMART_PLUG', 'ON', 'Other', 0.4);

insert into devices(room_id, name, type, status, manufacturer, power_rating)
values (11, 'Main Bathroom Light', 'LIGHT', 'ON', 'Other', 0.015);




--Insert Sensors
--type: 'TEMPERATURE', 'MOTION', 'HUMIDITY', 'SMOKE', 'LIGHT', 'DOOR', 'GAS'
-- unit: 'C', 'Y/N', '%', 'PPM', 'LUX'
--status: 'ACTIVE', 'INACTIVE', 'MAINTENANCE'
insert into sensors(room_id ,name, type, unit, status)
values (1, 'Living Room Light Sensor','LIGHT', 'LUX', 'ACTIVE');

insert into sensors(room_id ,name, type, unit, status)
values (1, 'Living Room Motion Sensor','MOTION', 'Y/N', 'ACTIVE');

insert into sensors(room_id ,name, type, unit, status)
values (1, 'Living Room Temperature Sensor','TEMPERATURE', 'C', 'INACTIVE');

insert into sensors(room_id,name, type, unit, status)
values (6, 'Kitchen Gas Sensor', 'GAS', 'PPM', 'ACTIVE');

insert into sensors(room_id ,name, type, unit, status)
values (7, 'Living Room Light Sensor','LIGHT', 'LUX', 'ACTIVE');

insert into sensors(room_id ,name, type, unit, status)
values (7, 'Living Room Motion Sensor','MOTION', 'Y/N', 'MAINTENANCE');

insert into sensors(room_id ,name, type, unit, status)
values (7, 'Living Room Temperature Sensor','TEMPERATURE', 'C', 'INACTIVE');

--Insert Sensor Readings
--status: 'NORMAL', 'DANGER', 'WARNING'

insert into sensor_readings(sensor_id, reading_value, status)
values (1, 600, 'NORMAL');  

insert into sensor_readings(sensor_id, reading_value, status)
values (2, 1, 'WARNING');  

insert into sensor_readings(sensor_id, reading_value, status)
values (3, 28, 'NORMAL');  

insert into sensor_readings(sensor_id, reading_value, status)
values (4, 50, 'NORMAL');  

insert into sensor_readings(sensor_id, reading_value, status)
values (5, 750, 'NORMAL'); 

insert into sensor_readings(sensor_id, reading_value, status)
values (6, 0, 'NORMAL'); 

insert into sensor_readings(sensor_id, reading_value, status)
values (7, 32, 'DANGER');

--Insert Automations
-- operators: '<', '>', '=', '<=', '>='
-- acion: 'TURNOFF', 'TURNON', 'TOGGLE', 'ALERT'
-- is_active: 'Y', 'N'

--Turn on the living room light if motion
insert into automations(sensor_id, device_id, condition_operator, condition_value, action, is_active)
values (2, 1, '=', 1, 'TURNON', 'Y');

--Turn off the living room air coniditioner if temperature is less than 20
insert into automations(sensor_id, device_id, condition_operator, condition_value, action, is_active)
values(3, 4, '<', 20, 'TURNOFF', 'Y');

--alert when ppm > 70 acroding to https://www.brkelectronics.com/
insert into automations(sensor_id, device_id, condition_operator, condition_value, action, is_active)
values(4, 12, '>', 70, 'TURNOFF', 'Y');

--Turn on Bedroom Fan if temp more than 25C
insert into automations(sensor_id, device_id, condition_operator, condition_value, action, is_active)
values(7, 18, '>', 25, 'TURNON', 'Y');

--Insert User Logs
--action: TURNOFF', 'TURNON', 'TOGGLE', 'ALERT'

insert into user_logs(user_id, device_id, action, action_time, detail)
values(1, 1, 'TURNON', SYSTIMESTAMP - interval '30' day, 'Main Living Room Light');

insert into user_logs(user_id, device_id, action, detail)
values(1, 3, 'TURNOFF', 'Living Room TV');

insert into user_logs(user_id, device_id, action, action_time, detail)
values(2, 16, 'TURNON', SYSTIMESTAMP - interval '30' day, 'Bedroom Fan');

insert into user_logs(user_id, device_id, action, detail)
values(2, 18, 'TURNOFF', 'KITCHEN Light');


--Insert Energy Logs
insert into energy_logs(device_id, consumption_kwh)
values (1, 0.45);

insert into energy_logs(device_id, consumption_kwh, recorded_at)
values (3, 1.20, SYSTIMESTAMP - interval '2' DAY);

insert into energy_logs(device_id, consumption_kwh, recorded_at)
values (4, 5.75, SYSTIMESTAMP - interval '3' DAY);

insert into energy_logs(device_id, consumption_kwh, recorded_at)
values (6, 0.30, SYSTIMESTAMP - interval '5' DAY);

insert into energy_logs(device_id, consumption_kwh, recorded_at)
values (7, 0.90, SYSTIMESTAMP - interval '7' DAY);

insert into energy_logs(device_id, consumption_kwh, recorded_at)
values (12, 3.40, SYSTIMESTAMP - interval '10' DAY);

insert into energy_logs(device_id, consumption_kwh, recorded_at)
values (13, 2.10, SYSTIMESTAMP - interval '12' DAY);

insert into energy_logs(device_id, consumption_kwh, recorded_at)
values (15, 0.60, SYSTIMESTAMP - interval '15' DAY);

insert into energy_logs(device_id, consumption_kwh, recorded_at)
values (18, 1.50, SYSTIMESTAMP - interval '20' DAY);

insert into energy_logs(device_id, consumption_kwh, recorded_at)
values (21, 0.25, SYSTIMESTAMP - interval '24' DAY);
