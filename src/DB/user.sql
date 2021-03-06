USE movies;

CREATE TABLE user (
	UID INT PRIMARY KEY AUTO_INCREMENT,
	email VARCHAR(50) NOT NULL UNIQUE,
	password VARCHAR(50) NOT NULL,
	username VARCHAR(50) 
);
GRANT select, insert
	ON movies.user TO 'guest_demo'@'%';

CREATE TABLE movie(
	mID INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255) NOT NULL,
	year INT,
	poster_url VARCHAR(2000)
);
GRANT select, insert
	ON movies.user TO 'guest_demo'@'%';
# 사실 guest_demo 로 하면 안 됨. 다른 유저를 생성해야ㅜㅜ
# 유저 이름도 guest_demo 말고 다른 걸로 바꿔야ㅜㅜ

CREATE TABLE genre(
	mID INT NOT NULL,
	genre VARCHAR(255) NOT NULL,
	FOREIGN KEY (mID) REFERENCES movie (mID) ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY (mID, genre)
);
GRANT select, insert
	ON movies.genre TO 'guest_demo'@'%';


CREATE TABLE crew(
	cID INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	profile_url VARCHAR(2000) NOT NULL DEFAULT 'http://ia.media-imdb.com/images/G/01/imdb/images/nopicture/32x44/name-2138558783._CB379389446_.png'
);
# node.js 에서 넣을 때 profile_url의 경우 null 이면 default 를 넣도록 바꿔줘야..?
# 아니다. js에서 null이면 default 에 해당하는 이미지를 뿌려야..?
GRANT select, insert
	ON movies.crew TO 'guest_demo'@'%';

CREATE TABLE p_type(
	typeID INT PRIMARY KEY,
	type_name VARCHAR(255) NOT NULL
);
GRANT select
	ON movies.p_type TO 'guest_demo'@'%';
INSERT INTO p_type VALUES(1, 'direction');
INSERT INTO p_type VALUES(2, 'scenario');
INSERT INTO p_type VALUES(3, 'acting');
INSERT INTO p_type VALUES(4, 'music');
INSERT INTO p_type VALUES(5, 'cinematography');

CREATE TABLE participation(
	pID INT PRIMARY KEY AUTO_INCREMENT,
	mID INT NOT NULL,
	cID INT NOT NULL,
	typeID INT NOT NULL,
	rank INT NOT NULL,
	role VARCHAR(255),
	FOREIGN KEY (mID) REFERENCES movie(mID) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (cID) REFERENCES crew(cID) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (typeID) REFERENCES p_type(typeID) ON UPDATE CASCADE ON DELETE CASCADE
);
GRANT select, insert
	ON movies.participation TO 'guest_demo'@'%';