-- DB情報
CREATE TABLE company(
    id INT(16) AUTO_INCREMENT NOT NULL,
    name VARCHAR(256) NOT NULL, 
    branch_name VARCHAR(256) NOT NULL comment '支店名',
    url VARCHAR(256) NOT NULL comment 'webURL',
    addr1 VARCHAR(10) NOT NULL comment '郵便番号', 
    addr2 VARCHAR(256) NOT NULL,
    tel VARCHAR(16) NOT NULL,
    fax VARCHAR(16) NOT NULL,
    business_type INT(11) NOT NULL,
    capital INT(11) NOT NULL,
    employee INT(11) NOT NULL,
    sales INT(11) NOT NULL comment '売り上げ',
    market INT(11) NULL DEFAULT NULL comment '上場市場',
    code INT(11) NULL DEFAULT NULL comment '証券コード',
    establish VARCHAR(256) NOT NULL,
    search_url VARCHAR(256) NOT NULL comment '与信調査URL', 
    email VARCHAR(256), 
    created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
    deleted_at DATETIME(6) NULL DEFAULT NULL,
    INDEX(business_type),
    INDEX(capital),
    INDEX(sales),
    INDEX(employee),
    INDEX(market),
);
CREATE TABLE business_type(
    id INT(16) AUTO_INCREMENT NOT NULL,
    order INT(16) NULL DEFAULT NULL,
    name VARCHAR(256) NOT NULL,
    created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
    deleted_at DATETIME(6) NULL DEFAULT NULL,
);
CREATE TABLE capital(
    id INT(16) AUTO_INCREMENT NOT NULL,
    order INT(16) NULL DEFAULT NULL,
    name VARCHAR(256) NOT NULL,
    created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
    deleted_at DATETIME(6) NULL DEFAULT NULL,
);
CREATE TABLE sales(
    id INT(16) AUTO_INCREMENT NOT NULL,
    order INT(16) NULL DEFAULT NULL,
    name VARCHAR(256) NOT NULL,
    created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
    deleted_at DATETIME(6) NULL DEFAULT NULL,
);
CREATE TABLE employee(
    id INT(16) AUTO_INCREMENT NOT NULL,
    order INT(16) NULL DEFAULT NULL,
    name VARCHAR(256) NOT NULL,
    created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
    deleted_at DATETIME(6) NULL DEFAULT NULL,
);
CREATE TABLE market(
    id INT(16) AUTO_INCREMENT NOT NULL,
    order INT(16) NULL DEFAULT NULL,
    name VARCHAR(256) NOT NULL,
    created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
    deleted_at DATETIME(6) NULL DEFAULT NULL,
);