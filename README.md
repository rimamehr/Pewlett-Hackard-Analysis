# Pewlett-Hackard-Analysis

## Overview of Project
Pewlett Hackard has a lot of employees getting ready to age out of the program. This is going to create a considerable amount of openings and a great need for quickly filling up all those open positions. Determining the number of retiring employees per title, and identifying employees who are eligible to participate in a mentorship program and have a staggered approach to retiring was determined as the most effective way of handling this situation. 

### Purpose
As part of the analysis we have been tasked to future-proof the company by determining how many people will be retiring and, of those employees, who is eligible for a retirement package.
We will need to dive into the data and perform queries to learn when employees were hired as well as their age. It has been determined that anyone born between 1952 and 1955 will begin to retire so using SQL we created separate list of employees for each department.

## Results: 

### Part 1 of the Analysis-
- In the first part we created a Retirement Titles table that held all the titles of current employees who were born between January 1, 1952 and December 31, 1955. When we further looked into this huge list of 133,776 records we realized that there were duplicate entries, probably because this list contained every record of change in job/title for the retiring population.

<p align="left">
  <img src="/Images/retirement_titles.png">
  </p>

- In order to remove duplicates and return only unique titles we further drilled down the above list and did a distinct on the employee number and found out that truly 90,398 employees are retiring.

<p align="left">
  <img src="/Images/unique_titles.png">
  </p>

- We also did a count by title to see where the biggest void and need is going to be and realized that a large number of retirees are Engineers/Senior Engineers and Staff/Sr Staff. This helps the company better equip itself in knowing which department/roles will need the most hiring to be done in. 

<p align="left">
  <img src="/Images/retiring_titles.png" width="400">
  </p>

### Part 2 of the Analysis-

- In the second part of the analysis we identified current employees who were born between January 1, 1965 and December 31, 1965 who are eligible to participate in a mentorship program. Here experienced and successful employees would be stepping back into a part-time role instead of retiring completely and their new role in the company would be as a mentor to the newly hired folks

<p align="left">
  <img src="/Images/mentorship_eligibilty.png">
  </p>

## Summary
- Our conclusion from the above analysis is that there is a large number of employees (90,398) retiring soon with only 1549 employees that are eligible for a mentorship program. There are not enough mentors to train the newly hired folks filling in the large number of vacancies that will be created soon. 
- We could possibly expand our criteria on the mentorship eligibility table to include current employees with birth date BETWEEN '1963-01-01' AND '1965-12-31'. This would increase our mentorship eligible list of employees from 1549 to 38,401. This would increase the ratio of mentors to new hires from 1: ~58 to 1: ~2  which is much more attainable. 

<p align="left">
  <img src="/Images/mentorship_eligibilty_2.png" width="400">
  </p> <p align="right">
  <img src="/Images/mentorship_eligibilty_unique_title.png" width="400">
  </p>

