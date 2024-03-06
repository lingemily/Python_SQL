DROP TABLE student;

CREATE TABLE student(
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(20),
	major VARCHAR(20),
	score INT
);

INSERT INTO student VALUES(1, '小白','英語',50);
INSERT INTO student VALUES(2, '小黃','生物',90);
INSERT INTO student VALUES(3, '小綠','歷史',70);
INSERT INTO student VALUES(4, '小藍','英語',80);
INSERT INTO student VALUES(5, '小黑','化學',20);

SELECT *
FROM student

SELECT name
FROM student

SELECT name,major
FROM student

/*欄位改名,指令AS*/
SELECT name AS 姓名,major AS 主修
FROM student

/*以小到大排序,指令ORDER BY ASC*/
SELECT *
FROM student
ORDER BY score ASC;

/*以大到小排序,指令ORDER BY DESC*/
SELECT *
FROM student
ORDER BY score DESC;

/*前3名,指令LIMIT*/
SELECT *
FROM student
ORDER BY score DESC
LIMIT 3;

/*倒數2名,指令LIMIT*/
SELECT *
FROM student
ORDER BY score ASC
LIMIT 2;

SELECT *
FROM student
WHERE major = '英語'
ORDER BY score DESC
LIMIT 1;

SELECT *
FROM student
WHERE major = '英語' AND score < 60;

SELECT *
FROM student
WHERE major = '英語' OR score > 60

SELECT *
FROM student
WHERE major = '英語' OR major ='生物' OR major ='歷史'

SELECT *
FROM student
WHERE major IN('英語','生物' ,'歷史')

SELECT *
FROM student
WHERE score >= 80 AND score <= 100;

SELECT *
FROM student
WHERE score BETWEEN 80 AND 100

/*查找名字的第一字是小*/
SELECT *
FROM student
WHERE name='小黃'

/*查找 WHERE 比較算子查找 搭配NOT 查找name欄位等於
查找名字的第一字不是小*/
SELECT *
FROM student
WHERE NOT name='小黃'


/*查找 WHERE 查找name這個欄位 搭配LIKE 單引號模糊搜索用% */
SELECT *
FROM student
WHERE name LIKE '小%'


