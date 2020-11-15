# Pewlett-Hackard-Analysis

## Overview of Project
Pewlett Hackard has a lot of employees getting ready to age out of the program. This is going to create a considerable amount of openings and a great need for quickly filling up all those open positions. Determining the number of retiring employees per title, and identifying employees who are eligible to participate in a mentorship program and have a staggered approach to retiring was determined as the most effective way of handling this situation. 

### Purpose
As part of the analysis we have been tasked to future-proof the company by determining how many people will be retiring and, of those employees, who is eligible for a retirement package.
We will need to dive into the data and perform queries to learn when employees were hired as well as their age. It has been determined that anyone born between 1952 and 1955 will begin to retire so using SQL we created separate list of employees for each department.

## Results: 

### Part 1 of the Analysis-
In the first part we created a Retirement Titles table that held all the titles of current employees who were born between January 1, 1952 and December 31, 1955. When we further looked into this huge list of 133,776 records we realized that there were duplicate enteries, probably becuase this list contained every record of change in job/title for the retiring population.

<p align="left">
  <img src="/Images/retirement_titles.png">
  </p>

In order to remove duplicates and return only unique titles we further drilled down the above list and did a distinct on the employee number.

<p align="left">
  <img src="/Images/unique_titles.png">
  </p>
