
-- -------- < Create DB > -------- --
-- CREATE SCHEMA `study_sqls` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;

-- -------- < Create Table > -------- --
-- CREATE TABLE Auths
-- (
--   Auth_ID   VARCHAR(200) NOT NULL COMMENT '권한 대표값',
--   Auth_Name VARCHAR(200) NULL     COMMENT '접근 권한명',
--   PRIMARY KEY (Auth_ID)
-- ) COMMENT '권한';

-- CREATE TABLE Users
-- (
--   User_ID  VARCHAR(200) NOT NULL COMMENT '사용자 대표값',
--   Name     VARCHAR(200) NULL     COMMENT '사용자명',
--   Email    VARCHAR(200) NULL     COMMENT '이메일 주소',
--   Position VARCHAR(200) NULL     COMMENT '직책',
--   PRIMARY KEY (User_ID)
-- ) COMMENT '사용자';

-- CREATE TABLE Users_Auths
-- (
--   User_ID VARCHAR(200) NOT NULL COMMENT '사용자 대표값',
--   Auth_ID VARCHAR(200) NOT NULL COMMENT '권한 대표값'
-- ) COMMENT '사용자별 권한';

-- ALTER TABLE Users_Auths
--   ADD CONSTRAINT FK_Users_TO_Users_Auths
--     FOREIGN KEY (User_ID)
--     REFERENCES Users (User_ID);

-- ALTER TABLE Users_Auths
--   ADD CONSTRAINT FK_Auths_TO_Users_Auths
--     FOREIGN KEY (Auth_ID)
--     REFERENCES Auths (Auth_ID);

-- -------- < 회원가입 - 모두 > -------- --
INSERT INTO users ( User_ID, Name, Email, Position )
VALUES ( 'U1', 'Paul', 'paul01@gmail.com', 'IT Billing' ),
( 'U2', 'Allen', 'texas@imfblog.org', 'Engineering' ),
( 'U3', 'Teddy', 'norway@iotm.com', 'Engineering' ),
( 'U4', 'Paul', 'paul_p@naver.com', 'Developer' )
;

-- -------- < 권한 생성 > -------- --
INSERT INTO auths ( Auth_ID, Auth_Name )
VALUES ( 'B1', 'GUEST' ),
( 'B2', 'ADMIN' ),
( 'B3', 'MANAGER' )
;

-- -------- < 권한 부여 > -------- --
INSERT INTO users_auths ( User_ID, Auth_ID )
VALUES ( 'U1', 'B1' ),
( 'U1', 'B2' ),
( 'U2', 'B1' ),
( 'U2', 'B2' ),
( 'U2', 'B3' ),
( 'U3', 'B1' ),
( 'U4', 'B2' ),
( 'U4', 'B1' )
;

-- -- -------- < U2, U4 회원 탈퇴 > -------- --
DELETE FROM users_auths
WHERE User_ID IN ( 'U2', 'U4' )
;

DELETE FROM users
WHERE User_ID IN ( 'U2', 'U4' )
;

-- -- -------- < 결과 확인 > -------- --
SELECT * FROM users; 
SELECT * FROM auths;
SELECT * FROM users_auths;