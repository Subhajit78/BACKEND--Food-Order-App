create table user(
    id int primary key AUTO_INCREMENT,
    name varchar(30),
    contactNumber varchar(20),
    email varchar(50),
    password varchar(20),
    status varchar(20),
    role varchar(20),
    UNIQUE (email)
);

insert into user (name, contactNumber,email,password,status,role)
values('Admin','1231220', 'admin@gmail.com','admin','true','admin');

insert into user (name, contactNumber,email,password,status,role)
values('xyz','1231220', 'xyz@gmail.com','xyz','true','user');

create table category(
    id int NOT NULL AUTO_INCREMENT,
    name varchar(50) NOT NULL,
    primary key(id)
);

create table product(
    id int NOT NULL AUTO_INCREMENT,
    name varchar(30) NOT NULL,
    categoryId integer NOT NULL,
    description varchar(50),
    price integer,
    status varchar(20),
    primary key(id)
);

create table bill(
    id int NOT NULL AUTO_INCREMENT,
    uuid varchar(50) NOT NULL,
    name varchar(30) NOT NULL,
    email  varchar(30) NOT NULL,
    contactNumber varchar(20) NOT NULL,
    paymentMethod varchar(50) NOT NULL,
    total int NOT NULL,
    productDetails JSON DEFAULT NULL,
    createdBy varchar(50) NOT NULL,
    primary key(id)
);

