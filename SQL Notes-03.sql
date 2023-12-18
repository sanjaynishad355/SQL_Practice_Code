Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.32 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| demo               |
| information_schema |
| itv_sql            |
| mysql              |
| performance_schema |
| pet_store          |
| sakila             |
| sys                |
| world              |
+--------------------+
9 rows in set (0.05 sec)

mysql> USE itv_sql;
Database changed
mysql> CREATE TABLE students(
    -> firstname varchar(100),
    -> lastname varchar(100),
    -> email varchar(100),
    -> course_name varchar(50),
    -> course_fees int,
    -> course-duration int,
    -> admission_date DATE
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-duration int,
admission_date DATE
)' at line 7
mysql> CREATE TABLE students(
    -> firstname varchar(100),
    -> lastname varchar(100),
    -> email varchar(100),
    -> course_name varchar(50),
    -> course_fees int,
    -> course_duration int,
    -> admission_date DATE
    -> );
Query OK, 0 rows affected (0.12 sec)

mysql> SHOW TABLES;
+-------------------+
| Tables_in_itv_sql |
+-------------------+
| students          |
+-------------------+
1 row in set (0.07 sec)

mysql> DESC students;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| firstname       | varchar(100) | YES  |     | NULL    |       |
| lastname        | varchar(100) | YES  |     | NULL    |       |
| email           | varchar(100) | YES  |     | NULL    |       |
| course_name     | varchar(50)  | YES  |     | NULL    |       |
| course_fees     | int          | YES  |     | NULL    |       |
| course_duration | int          | YES  |     | NULL    |       |
| admission_date  | date         | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
7 rows in set (0.07 sec)

mysql>
mysql>
mysql> ALTER TABLE students
    -> ADD dummy_col varchar(100)
    -> ;
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC students;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| firstname       | varchar(100) | YES  |     | NULL    |       |
| lastname        | varchar(100) | YES  |     | NULL    |       |
| email           | varchar(100) | YES  |     | NULL    |       |
| course_name     | varchar(50)  | YES  |     | NULL    |       |
| course_fees     | int          | YES  |     | NULL    |       |
| course_duration | int          | YES  |     | NULL    |       |
| admission_date  | date         | YES  |     | NULL    |       |
| dummy_col       | varchar(100) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> ALTER TABLE students
    -> DROP COLUMN dummy_col
    -> ;
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC students;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| firstname       | varchar(100) | YES  |     | NULL    |       |
| lastname        | varchar(100) | YES  |     | NULL    |       |
| email           | varchar(100) | YES  |     | NULL    |       |
| course_name     | varchar(50)  | YES  |     | NULL    |       |
| course_fees     | int          | YES  |     | NULL    |       |
| course_duration | int          | YES  |     | NULL    |       |
| admission_date  | date         | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql>  CREATE TABLE students(
    ->     -> firstname varchar(100),
    ->     -> lastname varchar(100),
    ->     -> email varchar(100),
    ->     -> course_name varchar(50),
    ->     -> course_fees int,
    ->     -> course_duration int,
    ->     -> admission_date DATE
    ->     -> );^C
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql> DESC students;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| firstname       | varchar(100) | YES  |     | NULL    |       |
| lastname        | varchar(100) | YES  |     | NULL    |       |
| email           | varchar(100) | YES  |     | NULL    |       |
| course_name     | varchar(50)  | YES  |     | NULL    |       |
| course_fees     | int          | YES  |     | NULL    |       |
| course_duration | int          | YES  |     | NULL    |       |
| admission_date  | date         | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> ALTER TABLE students
    -> MODIFY COLUMN firstname char(50)
    -> ;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC students;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| firstname       | char(50)     | YES  |     | NULL    |       |
| lastname        | varchar(100) | YES  |     | NULL    |       |
| email           | varchar(100) | YES  |     | NULL    |       |
| course_name     | varchar(50)  | YES  |     | NULL    |       |
| course_fees     | int          | YES  |     | NULL    |       |
| course_duration | int          | YES  |     | NULL    |       |
| admission_date  | date         | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> ALTER TABLE students
    -> RENAME column email to email_id
    -> ;
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql> DESC students;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| firstname       | char(50)     | YES  |     | NULL    |       |
| lastname        | varchar(100) | YES  |     | NULL    |       |
| email_id        | varchar(100) | YES  |     | NULL    |       |
| course_name     | varchar(50)  | YES  |     | NULL    |       |
| course_fees     | int          | YES  |     | NULL    |       |
| course_duration | int          | YES  |     | NULL    |       |
| admission_date  | date         | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> ALTER TABLE students MODIFY course_name varchar(50) AFTER lastname;
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC students;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| firstname       | char(50)     | YES  |     | NULL    |       |
| lastname        | varchar(100) | YES  |     | NULL    |       |
| course_name     | varchar(50)  | YES  |     | NULL    |       |
| email_id        | varchar(100) | YES  |     | NULL    |       |
| course_fees     | int          | YES  |     | NULL    |       |
| course_duration | int          | YES  |     | NULL    |       |
| admission_date  | date         | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql> INSERT INTO students (
    -> firstname,
    -> lastname,
    -> course_name,
    -> email_id,
    -> course_fees,
    -> course_duration,
    -> admission_date) VALUES ('Demo','User','FSD','demo@gmail.com',5000,6,'2023-04-20');
Query OK, 1 row affected (0.01 sec)

mysql>
mysql>
mysql> SELECT * FROM students;
+-----------+----------+-------------+----------------+-------------+-----------------+----------------+
| firstname | lastname | course_name | email_id       | course_fees | course_duration | admission_date |
+-----------+----------+-------------+----------------+-------------+-----------------+----------------+
| Demo      | User     | FSD         | demo@gmail.com |        5000 |               6 | 2023-04-20     |
+-----------+----------+-------------+----------------+-------------+-----------------+----------------+
1 row in set (0.00 sec)

mysql> INSERT INTO students (firstname,lastname,course_name,email_id,course_fees,course_duration,admission_date)
    -> VALUES
    -> ('Good','Coder','DS','good@gmail.com',10000,12,'2023-04-10'),
    -> ('Steve','Johns','ML','steve@yahoo.com',20000,10,'2023-03-30'),
    -> ('Raj','Singh','WD','raj@hotmail.com',12000,3,'2023-03-25')
    -> ;
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM students;
+-----------+----------+-------------+-----------------+-------------+-----------------+----------------+
| firstname | lastname | course_name | email_id        | course_fees | course_duration | admission_date |
+-----------+----------+-------------+-----------------+-------------+-----------------+----------------+
| Demo      | User     | FSD         | demo@gmail.com  |        5000 |               6 | 2023-04-20     |
| Good      | Coder    | DS          | good@gmail.com  |       10000 |              12 | 2023-04-10     |
| Steve     | Johns    | ML          | steve@yahoo.com |       20000 |              10 | 2023-03-30     |
| Raj       | Singh    | WD          | raj@hotmail.com |       12000 |               3 | 2023-03-25     |
+-----------+----------+-------------+-----------------+-------------+-----------------+----------------+
4 rows in set (0.00 sec)

mysql>