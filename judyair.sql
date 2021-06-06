CREATE DATABASE judyair;

USE judyair;

CREATE TABLE guest_r
(
    g_id    VARCHAR(20) NOT NULL,
    g_pwd   VARCHAR(20) DEFAULT NULL,
    g_name  VARCHAR(20) DEFAULT NULL,
    g_birth VARCHAR(20) DEFAULT NULL,
    g_addr  VARCHAR(60) DEFAULT NULL,
    g_tel   varchar(20) DEFAULT NULL,
    g_mail  VARCHAR(60) DEFAULT NULL,
    PRIMARY KEY (g_id)
);

CREATE TABLE gong
(
    num     INT(5)      NOT NULL PRIMARY KEY,
    title   VARCHAR(20) NOT NULL,
    con     TEXT        DEFAULT NULL,
    readcnt INT(5)      DEFAULT NULL,
    writer  VARCHAR(20) NOT NULL,
    bdate   VARCHAR(20) DEFAULT NULL
);

ALTER TABLE gong CONVERT TO CHARACTER SET UTF8;

CREATE TABLE car
(
    r_no    INT(15)      NOT NULL PRIMARY KEY AUTO_INCREMENT,
    c_name  VARCHAR(10)  NOT NULL,
    c_jong  VARCHAR(10)  NOT null,
    c_bun   VARCHAR(10)  NOT null,
    c_color VARCHAR(10),
    c_price INT(20)      NOT NULL,
    c_image VARCHAR(100) NOT NULL,
    c_place VARCHAR(20)  NOT NULL
);

CREATE TABLE car_book
(
    r_no    VARCHAR(20),
    c_daeil VARCHAR(20),
    c_banil VARCHAR(20),
    g_id    VARCHAR(20)
);

CREATE TABLE a_line
(
    l_code  VARCHAR(20) NOT NULL PRIMARY KEY,
    l_end   VARCHAR(20),
    l_start VARCHAR(20)
);

CREATE table a_info_o
(
    l_code   VARCHAR(20) NOT NULL,
    air_name VARCHAR(20) NOT NULL,
    o_sdate  VARCHAR(20) NOT NULL,
    o_price  INT(20)     NOT NULL,
    o_soyo   VARCHAR(20) NOT NULL,
    o_stime  VARCHAR(20) NOT NULL
);

CREATE TABLE a_book
(
    t_no     VARCHAR(30) NOT NULL PRIMARY KEY,
    g_id     VARCHAR(20) NOT NULL,
    air_name VARCHAR(20) NOT NULL,
    ab_date  DATE,
    pay      VARCHAR(20) NOT NULL,
    s_no     VARCHAR(10)
);

SHOW TABLES;

COMMIT;