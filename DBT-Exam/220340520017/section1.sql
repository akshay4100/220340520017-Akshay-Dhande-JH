use exam;

/*
1. Create table DEPT with the following structure:-
*/
create table DEPT
(
DEPTNO int(2),
DNAME varchar(15),
LOC varchar(10)
);

insert into DEPT values
(10 ,'ACCOUNTING', 'NEW YORK'),
(20,'RESEARCH', 'DALLAS'),
(30,'SALES', 'CHICAGO'),
(40, 'OPERATIONS','BOSTON');

/*
2. Create table EMP with the following structure:-
*/
create table EMP
(
EMPNO int(4),
ENAME varchar(10),
JOB varchar(9),
HIREDATE date,
SAL float(7,2),
COMM float(7,2),
DEPTNO int(2)
);

insert into EMP values
(7839, 'KING', 'MANAGER','1991-11-17',5000, NULL, 10),
(7698, 'BLAKE', 'CLERK', '1981-05-01', 2850, NULL, 30),
(7782, 'CLARK', 'MANAGER', '1981-06-09', 2450, NULL, 10),
(7566, 'JONES', 'CLERK','1981-04-02', 2975, NULL, 20),
(7654, 'MARTIN', 'SALESMAN', '1981-09-28', 1250, 1400, 30),
(7499, 'ALLEN', 'SALESMAN', '1981-02-20', 1600, 300, 30);

select * from dept;

select * from emp;

/*
3. Display all the employees where SAL between 2500 and 5000 (inclusive of both).
*/

select * from emp
where sal between 2500 and 5000;

/*
4. Display all the ENAMEs in descending order of ENAME.
*/

select ename from emp
order by ename desc;


/*
5. Display all the JOBs in lowercase.
*/

select lower(job) from emp;

/*
6. Display the ENAMEs and the lengths of the ENAMEs.
*/

select ENAME,length(ename) "LENGTH" from emp;


/*
7. Display the DEPTNO and the count of employees who belong to that DEPTNO .
*/

select deptno,count(*) from emp
group by deptno;


/*
8. Display the DNAMEs and the ENAMEs who belong to that DNAME.
*/

select DNAME,ENAME from emp,dept
where emp.deptno = dept.deptno;




/*
9. Display the position at which the string ‘AR’ occurs in the ename
*/

select ENAME,instr(ename,'AR') "POSITION of AR" from emp;


/*
10. Display the HRA for each employee given that HRA is 20% of SAL
*/

select ENAME,sal*12*0.2 "HRA" from emp;





















