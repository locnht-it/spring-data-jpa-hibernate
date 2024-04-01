create table if not exists address
(
    id  integer not null    primary key,
    house_number varchar(255),
    street_name varchar(255),
    zip_code varchar(255)
);

create table if not exists department
(
    id integer not null primary key,
    name varchar(255)
);

create table if not exists employee
(
    id integer  not null    primary key,
    birthdate date not null,
    email varchar(255) not null
    constraint uk_unique_email unique,
    firstname varchar(255) not null,
    identifier varchar(255) not null
    constraint uk_unique_identifier unique,
    lastname varchar(255) not null,
    role varchar(255) not null,
    address_id integer
    constraint fk_address_employee references address,
    department_id integer
    constraint fk_department_employee references department
);

create table if not exists mission
(
    id integer not null primary key,
    duration integer not null,
    name varchar(255)
);

create table if not exists employee_mission
(
    employee_id integer not null
    constraint fk_employee_employeeMission references employee,
    mission_id integer not null
    constraint fk_mission_employeeMission references mission
);