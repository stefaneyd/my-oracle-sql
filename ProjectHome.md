here is a legal direct download link to EF Codd's legendary paper: http://goo.gl/fiAOI

The latest revision to the ANSI/ISO SQL standard is called SQL:2008: http://goo.gl/HI1DR

  * DDL (Data Definition Language) = create, alter, drop
  * DML (Data Manipulation Language) = select, insert, update, delete
  * DCL (Data Control Language) = grant, revoke
  * TxCL (Trance Action Control Statements) = commit, rollback, savepoint

Wildcard Searches: (used with LIKE and BETWEEN)
  * '%' = >= 0 characters
  * under\_score_= 1 character_

```
              WHERE hire_date LIKE '%98'
	      last_name LIKE 'S%'
	      first_name LIKE '_ith%'
```

For more info, please read the Oracle documentation article "Overview of Regular Expressions": http://goo.gl/C6fkv

Precedence Rules:
> Paren = override = explicit
    1. . Arithmetic
    1. . Concat
    1. . Comparisons
    1. . IS (NOT) Null, LIKE, (NOT) IN
    1. . (NOT) BETWEEN
    1. . Notequal
    1. . NOT
    1. . AND
    1. . OR

For more info, see the Oracle documentation article "Storage of Null Values": http://goo.gl/XILW5

```
SELECT first_name, last_name, job_id, salary FROM employees
WHERE job_id = 'IT_PROG'
OR job_id = 'SA_MAN'
AND salary > 10000;
```

Therefore, Oracle evaluated job\_id='SA\_MAN' AND salary>1000 first, and then performed the OR with job\_id='IT\_PROG'

```
SELECT first_name, last_name, job_id, salary FROM employees
WHERE (job_id = 'IT_PROG'
OR job_id = 'SA_MAN')
AND salary > 10000;
```

Because we used parentheses in this example, the OR clause will be evaluated before the AND clause


Single-Row Functions
  * Expression: http://goo.gl/ekuaN
  * Function: http://goo.gl/9rih