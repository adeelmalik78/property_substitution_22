--liquibase formatted sql

--changeset amalik:1
create table ${db.env}.employee (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
);
--rollback drop table ${db.name}.employee;