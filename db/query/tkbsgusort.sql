-- Active: 1707670286785@@127.0.0.1@3306@tkbsgusort


-- tạo data base


CREATE TABLE IF NOT EXISTS user_login_info (
    username VARCHAR(20) PRIMARY KEY,
    pass CHAR(40) NOT NULL,
    email VARCHAR(320) UNIQUE,
    id VARCHAR(36) NOT NULL UNIQUE,
    created DATETIME NOT NULL,
    token VARCHAR(36),
    type_signup VARCHAR(10) DEFAULT('DEFAULT')
);

CREATE TABLE IF NOT EXISTS user_info (
    id VARCHAR(36) PRIMARY KEY,
    display_name VARCHAR(40) CHARSET utf8,
    ma_sv VARCHAR(11),
    khoa VARCHAR(4),
    lop VARCHAR(7),
    username VARCHAR(20),
    FOREIGN KEY(khoa) REFERENCES ds_khoa(id),
    FOREIGN KEY(lop) REFERENCES ds_lop(id),
    FOREIGN KEY(username) REFERENCES user_login_info(username) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS tkb_save(
    id VARCHAR(36) PRIMARY KEY,
    id_user VARCHAR(36),
    tkb_name VARCHAR(20),
    description TEXT,
    json_data JSON,
    thumbnails MEDIUMBLOB,
    date_save DATETIME,
    FOREIGN KEY (id_user) REFERENCES user_info(id) ON DELETE CASCADE
);


ALTER TABLE user_login_info ADD 
FOREIGN KEY(id)
REFERENCES user_info(id)
ON DELETE CASCADE;

-- -------------------------------------------------

SELECT NOW()

SELECT tkb_name,
json_data,
thumbnails,
date_save FROM tkb_save
WHERE id = '21a430bb-2d6a-4d3d-bf98-881567cb45c6'


INSERT INTO tkb_save VALUES
("aiasdf",'2f1b5102-08f7-4b0c-b83d-ef2a15a101ef', 'test' ,'[1,2,3,4]', '', NOW())

DROP TABLE tkb_save;

DROP TABLE user_info;
DROP TABLE user_login_info;

ALTER TABLE user_info
DROP COLUMN username ;

ALTER TABLE user_info
DROP FOREIGN KEY user_info_ibfk_3 ;


SELECT * FROM user_info;
SELECT * FROM user_login_info;
SELECT * FROM tkb_save;

-- DROP TABLE user_info;
-- DROP TABLE user_login_info;

UPDATE user_login_info SET
token = UUID()
WHERE id = '5d7fd5d6-c901-11ee-a20c-6018953ce34e';

SELECT * FROM user_login_info
WHERE token = 'ffd4ec85-c904-11ee-a20c-6018953ce34e';

-- update

UPDATE user_info SET
display_name = 'hello',
ma_sv = '12345',
khoa = NULL,
lop = NULL
WHERE id = '5d7fd5d6-c901-11ee-a20c-6018953ce34e';

SELECT COUNT(*) FROM user_login_info
WHERE username = "test2";


SELECT * FROM user_info
WHERE id = '';

UPDATE user_login_info 
SET token = NULL
WHERE token = '';

SELECT * FROM ds_lop LIMIT 100;
SELECT * FROM ds_khoa LIMIT 100;


INSERT INTO user_login_info
VALUES (
    ''
)

INSERT INTO user_info(id, display_name, ma_sv, khoa, lop)
VALUES (
    '3ea8ed4c-cbfb-11ee-bf29-6018953ce34e',
    'hello',
    '010001',
    NULL,
    NULL
);

SELECT COUNT(*) FROM user_login_info
WHERE email = "nguyenkhachieu117@gmail.com";

INSERT INTO tkb_save VALUES 
    ( '-6456252966221625023' , '00dc8fed-f13f-4c88-903a-a300eff0b928', 'test1'),
    ( '-5953224805198452669' , '00dc8fed-f13f-4c88-903a-a300eff0b928', 'test1')
