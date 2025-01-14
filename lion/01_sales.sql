--liquibase formatted sql

--changeset amalik:1
create table ${db.name}.sales (
      id int primary key,
      name varchar(50) not null,
      address1 varchars(50)
      );
--rollback drop table ${db.name}.sales;

