universe_database


#my Sql funtions:
https://www.w3schools.com/mysql/mysql_ref_functions.asp
# SQL COMMANDS 

get to ProstgresSQL database:

image.png

psql --username=freecodecamp dbname=postgres

--> now we are in the postgres=> comands

COMANDS:
\l
= list database

\c
= connect to a database by entering \c database_name

image-2.png

\d
= display tables in database

COMANDS SQL (all comands in capital letters here (not necessary in SQL):
DATABASE COMANDS:
CREATE DATABASE
= CREATE DATABASE ;
ex. CREATE DATABASE NUMBER; 

RENAME DATABASE
= ALTER DATABASE database_name RENAME TO new_database_name;

DROP DATABASE
= DROP DATABASE ;

TABLE COMANDS:
CREATE TABLE
= CREATE TABLE ();

CREATE TABLE WITH COLUMNS:
= CREATE TABLE table_name(column_name DATATYPE CONSTRAINTS); with primary Key: = CREATE TABLE table_name(column_name DATATYPE CONSTRAINTS PRIMARY KEY);

DROP TABLE from DATABASE
= DROP TABLE table_name;

SET FULL JOIN TO JOIN TABLES (2) ON SPECIFIC COLUMN
= SELECT columns FROM table_1 FULL JOIN table_2 ON table_1.primary_key_column = table_2.foreign_key_column; ex: SELECT * FROM characters FULL JOIN more_info ON characters.character_id = more_info.character_id; ex:added that as a foreign key, that means you can get all the data from both tables with a JOIN command - Enter a join command to see all the info from both tables

SET FULL JOIN TO JOIN TABLES (more than 2) ON SPECIFIC COLUMN
=SELECT columns FROM junction_table FULL JOIN table_1 ON junction_table.foreign_key_column = table_1.primary_key_column FULL JOIN table_2 ON junction_table.foreign_key_column = table_2.primary_key_column; image-7.png ex: SELECT * FROM character_actions FULL JOIN characters ON character_actions.character_id = characters.character_id FULL JOIN actions ON character_actions.action_id = actions.action_id;

COLUMN COMANDS:
ADD COLUMN to TABLE
= ALTER TABLE table_name ADD COLUMN column_name DATATYPE; ex: ALTER TABLE second_table ADD COLUMN first_column INT; specified info: ex: ALTER TABLE second_table ADD COLUMN first_column VARCHAR(40) NOT NULL UNIQUE;

DROP COLUMN from TABLE
= ALTER TABLE table_name DROP COLUMN column_name; ex: ALTER TABLE second_table DROP COLUMN age;

RENAME COLUMN in TABLE
= ALTER TABLE table_name RENAME COLUMN column_name TO new_name;

ORDER COLUMNS BY COLUMN NAME
= SELECT columns FROM table_name ORDER BY column_name;

SET PRIMARY KEY
= ALTER TABLE table_name ADD PRIMARY KEY(column_name);

SET COMPOSITE PRIMARY KEY
= ALTER TABLE table_name ADD PRIMARY KEY(column1, column2); ex: This table will have multiple rows with the same character_id, and multiple rows the same action_id. So neither of them are unique. But you will never have the same character_id and action_id in a single row. So the two columns together can be used to uniquely identify each row.

DROP PRIMARY KEY
= ALTER TABLE table_name DROP CONSTRAINT constraint_name; ex: ALTER TABLE characters DROP CONSTRAINT characters_pkey;

SET FOREIGN KEY ONE TO ONE
= ALTER TABLE table_name ADD COLUMN column_name DATATYPE REFERENCES referenced_table_name(referenced_column_name); https://www.w3schools.com/sql/sql_foreignkey.asp --> "one-to-one" relationship. One row in the characters table will be related to exactly one row in more_info and vice versa. ex: ALTER TABLE more_info ADD COLUMN character_id INT REFERENCES characters(character_id) --> here: create new column in table(2) WITH SAME name as the column in table(1) to connect the two tables with this foreign key. image-5.png

SET FOREIGN KEY AT EXISTING COLUMN
= ALTER TABLE table_name ADD FOREIGN KEY(column_name) REFERENCES referenced_table(referenced_column); ex: ALTER TABLE character_actions ADD FOREIGN KEY (character_id) REFERENCES characters(character_id);

SET FOREIGN KEY ONE TO MANY
= ALTER TABLE table_name ADD COLUMN column_name DATATYPE REFERENCES referenced_table_name(referenced_column_name); OR: with CONSTRAINT = ALTER TABLE table_name ADD COLUMN column_name DATATYPE CONSTRAINT REFERENCES referenced_table_name(referenced_column_name); --> "one-to-many" relationship ex: because one character will have many sounds, but no sound will have more than one character. image-3.png image-6.png

FOREIGN KEY MANY TO MANY
image-4.png --> "Many-to-many" relationships usually use a junction table to link two tables together, forming two "one-to-many" relationships. ex: Your characters and actions table will be linked using a junction table. Create a new table called character_actions. It will describe what actions each character can perform. --> Your junction table will use the primary keys from the characters and actions tables as foreign keys to create the relationship. Add a column named character_id to your junction table. Give it the type of INT and constraint of NOT NULL image-8.png

SET FOREIGN KEY to UNIQUE
= ALTER TABLE table_name ADD UNIQUE(column_name);

SET FOREIGN KEY to NOT NULL
= ALTER TABLE table_name ALTER COLUMN column_name SET NOT NULL;

ROW COMANDS:
ADD ROWS in TABLE
= INSERT INTO table_name(column_1, column_2) VALUES(value1, value2);

ADD MULTIPLE ROWS in TABLE
= INSERT INTO table_name(column_1, column_2) VALUES(value1, value2), (value1, value2), (value1, value2); ex: Add two more rows for Peach sounds. The filenames are yay.wav and woo-hoo.wav. Don't forget her character_id. Try to do it with one command. ex = INSERT INTO sounds(filename, character_id) VALUES('yay.wav', 3), ('woo-hoo.wav', 3);

UPDATE ROWS in TABLE
= UPDATE table_name SET column_name=new_value WHERE condition; ex: UPDATE characters SET favorite_color = 'Orange' WHERE name = 'Daisy';

SELECT / VIEW ROWS in TABLE
=SELECT columns FROM table_name; ex: SELECT FROM second_table; --> = stand for show all rows ex2: SELECT column_1, column_2 FROM table_name

SELECT SPECIFIC ROWS in TABLE with WHERE
SELECT columns FROM table_name WHERE condition;

DELETE ROWS in TABLE
DELETE FROM table_name WHERE condition; ex: delete from second_table where username = 'Luigi';

datatypes:
INT = integer (number)

VARCHAR = STRING --> max lenght with (XX) ex: VARCHAR(30)

SERIAL = SERIAL type will make your column an INT with a NOT NULL constraint, and automatically increment the integer when a new row is added.

NUMERIC = NUMERIC --> ADD ON: NUMERIC(4, 1). That data type is for decimals. NUMERIC(4, 1) has up to four digits and one of them has to be right of the decimal.

DATE = format: 'YYYY-MM-DD'

image.png https://www.linkedin.com/posts/data-science-dojo_sql-cheatsheet-datascience-activity-6919056711253139456-olQh/?utm_source=linkedin_share&utm_medium=android_app https://www.sqltutorial.org/sql-cheat-sheet/?utm_content=204059250&utm_medium=social&utm_source=linkedin&hss_channel=lcp-3740012

 
