-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `Departments` (
    `dept_no` varchar  NOT NULL ,
    `dept_name` varchar  NOT NULL ,
    PRIMARY KEY (
        `dept_no`
    )
);

CREATE TABLE `Employees` (
    `emp_no` int  NOT NULL ,
    `birth_date` date  NOT NULL ,
    `first_name` varchar  NOT NULL ,
    `last_name` varchar  NOT NULL ,
    `gender` varchar  NOT NULL ,
    `hire_date` date  NOT NULL ,
    PRIMARY KEY (
        `emp_no`
    )
);

CREATE TABLE `dept_manager` (
    `dept_no` varchar  NOT NULL ,
    `emp_no` int  NOT NULL ,
    `from_date` date  NOT NULL ,
    `to_date` date  NOT NULL ,
    PRIMARY KEY (
        `dept_no`,`emp_no`
    )
);

CREATE TABLE `dept_emp` (
    `emp_no` int  NOT NULL ,
    `dept_no` varchar  NOT NULL ,
    `from_date` date  NOT NULL ,
    `to_date` date  NOT NULL ,
    PRIMARY KEY (
        `emp_no`,`dept_no`
    )
);

CREATE TABLE `Salaries` (
    `emp_no` int  NOT NULL ,
    `salary` int  NOT NULL ,
    `from_date` date  NOT NULL ,
    `to_date` date  NOT NULL ,
    PRIMARY KEY (
        `emp_no`
    )
);

CREATE TABLE `Titles` (
    `emp_no` varchar  NOT NULL ,
    `title` varchar  NOT NULL ,
    `from_date` date  NOT NULL ,
    `to_date` date  NOT NULL ,
    PRIMARY KEY (
        `emp_no`,`title`,`from_date`
    )
);

ALTER TABLE `dept_manager` ADD CONSTRAINT `fk_dept_manager_dept_no` FOREIGN KEY(`dept_no`)
REFERENCES `Departments` (`dept_no`);

ALTER TABLE `dept_manager` ADD CONSTRAINT `fk_dept_manager_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `Employees` (`emp_no`);

ALTER TABLE `dept_emp` ADD CONSTRAINT `fk_dept_emp_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `Employees` (`emp_no`);

ALTER TABLE `dept_emp` ADD CONSTRAINT `fk_dept_emp_dept_no` FOREIGN KEY(`dept_no`)
REFERENCES `Departments` (`dept_no`);

ALTER TABLE `Salaries` ADD CONSTRAINT `fk_Salaries_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `Titles` (`emp_no`);

ALTER TABLE `Titles` ADD CONSTRAINT `fk_Titles_emp_no` FOREIGN KEY(`emp_no`)
REFERENCES `Employees` (`emp_no`);

