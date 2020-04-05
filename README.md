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


New Files Addes:-

signup
login
forget
forget1
recovery

