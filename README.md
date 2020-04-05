# OnlineCanteen

mere mysql ka password root hai aur tera nahi hai to accordingly change the code
using database "website1".


mysql> use website1;
Database changed
mysql> desc signup;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| email    | varchar(50) | NO   | PRI | NULL    |       |
| password | varchar(50) | NO   |     | NULL    |       |
| mobile   | bigint(10)  | NO   |     | NULL    |       |
| gender   | varchar(6)  | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+

new table -----> profile

mysql> desc profile;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| email  | varchar(50) | NO   | PRI | NULL    |       |
| name   | varchar(50) | YES  |     | NULL    |       |
| cabin  | int(4)      | YES  |     | NULL    |       |
| mobile | bigint(10)  | NO   |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
