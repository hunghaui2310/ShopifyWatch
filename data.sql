-- auto-generated definition
create table tbl_category
(
    id   int auto_increment
        primary key,
    name varchar(255) null
);

-- auto-generated definition
create table tbl_cart
(
    id       int auto_increment
        primary key,
    user_id  bigint   not null,
    buy_date datetime null,
    constraint tbl_cart_user_id_uindex
        unique (user_id),
    constraint tbl_cart_tbl_user_id_fk
        foreign key (user_id) references tbl_user (id)
);

-- auto-generated definition
create table tbl_user
(
    id       bigint auto_increment
        primary key,
    password varchar(255) null,
    username varchar(255) null
);



create table tbl_product
(
    id          int auto_increment
        primary key,
    name        varchar(255) null,
    price       mediumtext   null,
    image       varchar(255) null,
    des         varchar(500) null,
    category_id int          not null
);
-- auto-generated definition
create table tbl_cart_item
(
    id         int auto_increment
        primary key,
    unit_price int null,
    quantity   int null,
    user_id    int null,
    product_id int null
);



-- auto-generated definition
create table tbl_persistent_login
(
    username  varchar(50)  null,
    series    varchar(100) not null
        primary key,
    token     varchar(255) null,
    last_used timestamp    null
);

-- auto-generated definition
create table tbl_role
(
    id   bigint auto_increment
        primary key,
    name varchar(255) null
);


-- auto-generated definition
create table tbl_user_roles
(
    users_id bigint not null,
    roles_id bigint not null,
    primary key (users_id, roles_id),
    constraint FK7ecyobaa59vxkxckg6t355l86
        foreign key (users_id) references tbl_user (id),
    constraint FKj9553ass9uctjrmh0gkqsmv0d
        foreign key (roles_id) references tbl_role (id)
);

