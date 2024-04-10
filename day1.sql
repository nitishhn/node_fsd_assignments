A foreign key in SQL is a constraint that ensures the integrity of relational database systems by enforcing a relationship
 between two tables. That is between parent table and child table.


SYNTAX to create foriegn key in child table refering to parent table:-

CREATE TABLE child_table (
    column1 datatype1,
    column2 datatype2,
    ...
    foreign_key_column datatype,
    FOREIGN KEY (foreign_key_column) REFERENCES parent_table(parent_column)
);

EXAMPLE:-

CREATE DATABASE Apr2024;

USE Apr2024;


CREATE TABLE Dept(
	deptno  INT PRIMARY KEY,
    dname   VARCHAR(100) NOT NULL,
    loc    VARCHAR(100)
);

CREATE TABLE Emps(
    empno INT PRIMARY KEY,
    ename VARCHAR(100),
    job VARCHAR(100),
    salary INT,
    deptno INT,
    FOREIGN KEY (deptno) REFERENCES Dept(deptno)
);
