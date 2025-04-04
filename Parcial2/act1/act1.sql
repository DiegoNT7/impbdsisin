Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 23916265
Server version: 8.0.40 Source distribution
Copyright (c) 2000, 2022, Oracle and/or its affiliates.
Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.
Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
mysql> use DiegoN$Chopizza;
Database changed
mysql> show tables;
Empty set (0.00 sec)
mysql> CREATE TABLE customers (
    ->     customer_id INT,
    ->     type_phone TEXT,
    ->     number TEXT
    -> );
Query OK, 0 rows affected (0.04 sec)
mysql> 
mysql> INSERT INTO customers ( customer_id, type_phone, number) VALUES
    -> (1001, 'Celular', 3338975421),
    -> (1001, 'Trabajo', 3338976542),
    -> (1001, 'Casa', 3336989874),
    -> (2002, 'Celular', 3339636544),
    -> (2002, 'Trabajo', 3338129856),
    -> (3003, 'Celular', 3339876541);
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0
mysql> 
mysql> SELECT 
    ->     customer_id,
    ->     SUM(CASE WHEN type_phone = 'Celular' THEN number ELSE NULL END) AS Celular,
    ->     SUM(CASE WHEN type_phone = 'Trabajo' THEN number ELSE NULL END) AS Trabajo,
    ->     SUM(CASE WHEN type_phone = 'Casa' THEN number ELSE NULL END) AS Casa
    -> FROM customers
    -> GROUP BY customer_id;
+-------------+------------+------------+------------+
| customer_id | Celular    | Trabajo    | Casa       |
+-------------+------------+------------+------------+
|        1001 | 3338975421 | 3338976542 | 3336989874 |
|        2002 | 3339636544 | 3338129856 |       NULL |
|        3003 | 3339876541 |       NULL |       NULL |
+-------------+------------+------------+------------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE Desarrollo2 (
    -> DESARROLLO VARCHAR(50) NOT NULL,
    -> ETAPA INT,
    -> FINALIZADO INT
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> 
mysql> INSERT INTO Desarrollo2 (DESARROLLO,ETAPA,FINALIZADO) VALUES
    -> ('RestAPI', 1, '01/02/2024'),
    -> ('RestAPI', 2, '30/05/2024'),
    -> ('RestAPI', 3, '29/06/2024'),
    -> ('Web', 1, '28/10/2024'),
    -> ('Web', 2, '20/11/2024'),
    -> ('Web', 3, ''),
    -> ('App', 1, '30/01/2025'),
    -> ('App', 2, '');
Query OK, 8 rows affected, 8 warnings (0.00 sec)
Records: 8  Duplicates: 0  Warnings: 8

usReading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 24673673
Server version: 8.0.40 Source distribution
Copyright (c) 2000, 2022, Oracle and/or its affiliates.
Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.
Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
mysql> use DiegoN$Chopizza;
Database changed
mysql> show tables;
+---------------------------+
| Tables_in_DiegoN$Chopizza |
+---------------------------+
| Desarrollo2               |
| customers                 |
+---------------------------+
2 rows in set (0.00 sec)
mysql> CREATE TABLE candidato (
    ->     id_candidatos INT,
    ->     descripcion VARCHAR (30)
    -> );
Query OK, 0 rows affected (0.03 sec)
mysql> 
mysql> CREATE TABLE Descripciones (
    ->     descripcion VARCHAR (30)
    -> );
Query OK, 0 rows affected (0.03 sec)
mysql> 
mysql> 
mysql> INSERT INTO  candidato ( id_candidatos, descripcion) VALUES
    -> (1001, 'Geólogo'),
    -> (1001, 'Astrónomo'),
    -> (1001, 'Bioquímico'),
    -> (1001, 'Técnico'),
    -> (2002, 'Cirujano'),
    -> (2002, 'Mecánico'),
    -> (2002, 'Geólogo'),
    -> (3003, 'Geólogo'),
    -> (3003, 'Astrónomo'),
    ->             (4004, 'Ingeniero');
Query OK, 10 rows affected (0.00 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> 
mysql> 
mysql> INSERT INTO Descripciones (descripcion) VALUES
    ->              ('Geólogo'),
    -> ('Astrónomo'),
    -> ('Bioquímico'),
    -> ('Técnico');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> 
mysql> 
mysql> 
mysql> 
mysql> 
mysql> SELECT id_candidatos
    -> FROM candidato
    -> WHERE descripcion IN ( SELECT * FROM Descripciones)
    -> GROUP BY id_candidatos
    -> HAVING COUNT(DISTINCT descripcion) = (SELECT COUNT(*) FROM Descripciones);
+---------------+
| id_candidatos |
+---------------+
|          1001 |
+---------------+
1 row in set (0.01 sec)