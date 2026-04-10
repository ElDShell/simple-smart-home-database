create table users(
    id number primary key,
    name varchar2(100),
    email varchar2(200) unique,
    password varchar2(200),
    phone varchar2(50),
    created_at timestamp default SYSTIMESTAMP
);
/*
constraint to make sure email has @ and .
*/
alter table users add constraint chk_email 
check (email like '%@%.%');

/*
^       start
\+      it means '+'
?       means optional, if it's written or not that's ok
[0-9]   only allow numbers between 0-9 (not other string allowed)
{9,15}  it has a length between 9 - 15 number not less not more
$       end of text
*/
alter table users add constraint chk_phone
check (regexp_like(phone, '^\+?[0-9]{9,15}$'));

create table homes(
    id number primary key,
    user_id number unique,
    type varchar2(20),
    address varchar2(50),
    area number(10),
    constraint fk_home_user foreign key (user_id) references users(id),
    constraint chk_homes_type check(type in ('PERSONAL','RENT', 'APARTMENT'))
);

create table rooms(
    id number primary key,
    home_id number,
    name varchar2(50),
    type varchar2(20),
    floor number default 1,
    area number,
    
    constraint chk_rooms_type check (type in ('KITCHEN', 'BEDROOM', 'LIVING_ROOM', 'BATHROOM', 'GARAGE', 'DINING_ROOM', 'OFFICE')),
    constraint fk_room_home foreign key (home_id) references homes(id)
);

create table devices(
    id number primary key,
    room_id number,
    name varchar2(50),
    type varchar2(20) ,
    status varchar2(10),
    manufacturer varchar2(30),
    power_rating number(6,3),
    installed_at timestamp default SYSTIMESTAMP,
    
    constraint chk_devices_type check(type in('LIGHT', 'AIR_CONDITIONER', 'TV', 'SMART_PLUG', 'FAN', 'HEATER', 'DOOR_LOCK', 'CAMERA')),
    constraint chk_devices_status check(status in('ON', 'OFF', 'STANDBY')),
    constraint chk_devices_manufacturer check (manufacturer in('LG', 'Samsung', 'Sony', 'Philips', 'Bosch', 'Other')),
    constraint fk_device_room foreign key (room_id) references rooms(id)
);

create table sensors(
    id number primary key,
    room_id number,
    name varchar2(50),
    type varchar2(20),
    unit varchar2(10),
    status varchar2(20),
    installed_at timestamp default SYSTIMESTAMP,

    constraint chk_sensors_type check(type in ('TEMPERATURE', 'MOTION', 'HUMIDITY', 'SMOKE', 'LIGHT', 'DOOR', 'GAS')),
    constraint chk_sensors_unit check (unit in ('C', 'Y/N', '%', 'PPM', 'LUX')),
    constraint chk_sensors_status check (status in ('ACTIVE', 'INACTIVE', 'MAINTENANCE')),
    constraint fk_sensor_room foreign key (room_id) references rooms(id)
);

create table sensor_readings(
    id number primary key,
    sensor_id number,
    reading_value number(8,2),
    reading_time timestamp default SYSTIMESTAMP,
    status varchar2(20),
    
    constraint chk_sensor_readings_status check(status in ('NORMAL', 'DANGER', 'WARNING')),
    constraint fk_sensor_reading_sensor foreign key (sensor_id) references sensors(id)
);

create table automations(
    id number primary key,
    sensor_id number, 
    device_id number,
    condition_operator varchar2(5),
    condition_value number(8,2),
    action varchar2(20) ,
    is_active char(1),
    
    constraint chk_automations_condition_operator check(condition_operator in ('<', '>', '=', '<=', '>=')),
    constraint chk_automations_actions check(action in ('TURNOFF', 'TURNON', 'TOGGLE', 'ALERT')),
    constraint chk_automations_is_active  check(is_active in ('Y','N')),
    constraint fk_automation_sensor FOREIGN key(sensor_id) references sensors(id),
    constraint fk_automation_device FOREIGN key(device_id) references devices(id)
);

create table energy_logs(
    id number primary key,
    device_id number,
    consumption_kwh number(6,2),
    recorded_at timestamp default SYSTIMESTAMP,
    
    constraint fk_energy_log_device FOREIGN key(device_id) references devices(id)
);

create table user_logs(
    id number primary key,
    user_id number,
    device_id number,
    action varchar2(20),
    action_time timestamp default SYSTIMESTAMP,
    detail varchar2(50),
    
    constraint chk_user_logs_action check(action in ('TURNOFF', 'TURNON', 'TOGGLE', 'ALERT')),
    constraint fk_user_log_user foreign key (user_id) references users(id),
    constraint fk_user_log_device FOREIGN key(device_id) references devices(id)
);

create sequence seq_user_id start with 1 increment by 1 nocycle;
create sequence seq_home_id start with 1 increment by 1 nocycle;
create sequence seq_room_id start with 1 increment by 1 nocycle;
create sequence seq_device_id start with 1 increment by 1 nocycle;
create sequence seq_sensor_id start with 1 increment by 1 nocycle;
create sequence seq_sensor_reading_id start with 1 increment by 1 nocycle;
create sequence seq_automation_id start with 1 increment by 1 nocycle;
create sequence seq_energy_log_id start with 1 increment by 1 nocycle;
create sequence seq_user_log_id start with 1 increment by 1 nocycle;

alter table users modify id default seq_user_id.nextval;
alter table homes modify id default seq_home_id.nextval;
alter table rooms modify id default seq_room_id.nextval;
alter table devices modify id default seq_device_id.nextval;
alter table sensors modify id default seq_sensor_id.nextval;
alter table sensor_readings modify id default seq_sensor_reading_id.nextval;
alter table automations modify id default seq_automation_id.nextval;
alter table energy_logs modify id default seq_energy_log_id.nextval;
alter table user_logs modify id default seq_user_log_id.nextval;