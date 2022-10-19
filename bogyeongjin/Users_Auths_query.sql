-- users 테이블 값 입력
INSERT INTO users (UNIQUE_ID, NAME, EMAIL, JOB)
VALUES ('U1', 'Paul', 'paul01@gmail.com', 'IT Billing')
;
INSERT INTO users (UNIQUE_ID, NAME, EMAIL, JOB)
VALUES ('U2', 'Allen', 'texas@imfblog.org', 'Engineering')
;
INSERT INTO users (UNIQUE_ID, NAME, EMAIL, JOB)
VALUES ('U3', 'Teddy', 'norway@iotm.com', 'IT Billing')
;
INSERT INTO users (UNIQUE_ID, NAME, EMAIL, JOB)
VALUES ('U4', 'Paul', 'paul_p@naver.com', 'Developer')
;
-- users 테이블 값 확인
SELECT *
FROM users
;
-- auth_names 테이블 값 입력
INSERT INTO auth_names (AUTH_NAME, UNIQUE_ID)
VALUES ('GUEST', 'B1')
;
INSERT INTO auth_names (AUTH_NAME, UNIQUE_ID)
VALUES ('ADMIN', 'B2')
;
INSERT INTO auth_names (AUTH_NAME, UNIQUE_ID)
VALUES ('MANAGER', 'B3')
;
-- auth_names 값 확인
SELECT *
FROM auth_names;

-- auths 테이블 값 입력 (회원가입)

INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U1', 'B1')
;
INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U1', 'B2')
;
INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U2', 'B1')
;
INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U2', 'B2')
;
INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U2', 'B3')
;
INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U3', 'B1')
;
INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U4', 'B2')
;
INSERT INTO auths (UNIQUE_ID_USERS, UNIQUE_ID_AUTH_NAMES)
VALUES ('U4', 'B1')
;
-- auths 값 확인
SELECT *
FROM auths
;

-- 회원 탈퇴

-- u2, u4 delete

DELETE FROM auths 
WHERE UNIQUE_ID_USERS = 'U2'
;
DELETE FROM users 
WHERE UNIQUE_ID= 'U2'
;

DELETE FROM auths 
WHERE UNIQUE_ID_USERS = 'U4'
;
DELETE FROM users 
WHERE UNIQUE_ID= 'U4'
;