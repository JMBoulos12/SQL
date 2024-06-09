-- Write a Oracle SQL query to get the details of all employees and also display the specific information of all employees.

-- SOLUTION:

CREATE TABLE employees (
  EMPLOYEE_ID numeric(6) NOT NULL primary key,
  FIRST_NAME varchar2(20) DEFAULT NULL,
  LAST_NAME varchar2(25) NOT NULL,
  EMAIL varchar2(25) NOT NULL,
  PHONE_NUMBER varchar2(20) DEFAULT NULL,
  HIRE_DATE date NOT NULL,
  JOB_ID varchar2(10) NOT NULL,
  SALARY decimal(8,2) DEFAULT NULL,
  COMMISSION_PCT decimal(2,2) DEFAULT NULL,
  MANAGER_ID numeric(6) DEFAULT NULL,
  DEPARTMENT_ID numeric(4) DEFAULT NULL
);


INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (100,'Steven','King','SKING','515.123.4567','17-JUN-2003','AD_PRES',24000.00,0.00,0,90);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (101,'Neena','Kochhar','NKOCHHAR','515.123.4568','21-SEP-2005','AD_VP',17000.00,0.00,100,90);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (102,'Lex','De Haan','LDEHAAN','515.123.4569','13-JAN-2001','AD_VP',17000.00,0.00,100,90);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (103,'Alexander','Hunold','AHUNOLD','590.423.4567','03-JAN-2006','IT_PROG',9000.00,0.00,102,60);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (104,'Bruce','Ernst','BERNST','590.423.4568','21-MAY-2007','IT_PROG',6000.00,0.00,103,60);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (105,'David','Austin','DAUSTIN','590.423.4569','25-JUN-2005','IT_PROG',4800.00,0.00,103,60);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (106,'Valli','Pataballa','VPATABAL','590.423.4560','05-FEB-2006','IT_PROG',4800.00,0.00,103,60);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (107,'Diana','Lorentz','DLORENTZ','590.423.5567','07-FEB-2007','IT_PROG',4200.00,0.00,103,60);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (108,'Nancy','Greenberg','NGREENBE','515.124.4569','17-AUG-2002','FI_MGR',12000.00,0.00,101,100);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (109,'Daniel','Faviet','DFAVIET','515.124.4169','16-AUG-2002','FI_ACCOUNT',9000.00,0.00,108,100);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (110,'John','Chen','JCHEN','515.124.4269','28-SEP-2005','FI_ACCOUNT',8200.00,0.00,108,100);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (111,'Ismael','Sciarra','ISCIARRA','515.124.4369','30-SEP-2005','FI_ACCOUNT',7700.00,0.00,108,100);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (112,'Jose Manuel','Urman','JMURMAN','515.124.4469','07-MAR-2006','FI_ACCOUNT',7800.00,0.00,108,100);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (113,'Luis','Popp','LPOPP','515.124.4567','07-DEC-2007','FI_ACCOUNT',6900.00,0.00,108,100);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (114,'Den','Raphaely','DRAPHEAL','515.127.4561','07-DEC-2002','PU_MAN',11000.00,0.00,100,30);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (115,'Alexander','Khoo','AKHOO','515.127.4562','18-MAY-2003','PU_CLERK',3100.00,0.00,114,30);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (116,'Shelli','Baida','SBAIDA','515.127.4563','24-DEC-2005','PU_CLERK',2900.00,0.00,114,30);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (117,'Sigal','Tobias','STOBIAS','515.127.4564','24-JUL-2005','PU_CLERK',2800.00,0.00,114,30);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (118,'Guy','Himuro','GHIMURO','515.127.4565','15-NOV-2006','PU_CLERK',2600.00,0.00,114,30);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (119,'Karen','Colmenares','KCOLMENA','515.127.4566','10-AUG-2007','PU_CLERK',2500.00,0.00,114,30);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (120,'Matthew','Weiss','MWEISS','650.123.1234','18-JUL-2004','ST_MAN',8000.00,0.00,100,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (121,'Adam','Fripp','AFRIPP','650.123.2234','10-APR-2005','ST_MAN',8200.00,0.00,100,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (122,'Payam','Kaufling','PKAUFLIN','650.123.3234','01-MAY-2003','ST_MAN',7900.00,0.00,100,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (123,'Shanta','Vollman','SVOLLMAN','650.123.4234','10-OCT-2005','ST_MAN',6500.00,0.00,100,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (124,'Kevin','Mourgos','KMOURGOS','650.123.5234','16-NOV-2007','ST_MAN',5800.00,0.00,100,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (125,'Julia','Nayer','JNAYER','650.124.1214','16-JUL-2005','ST_CLERK',3200.00,0.00,120,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (126,'Irene','Mikkilineni','IMIKKILI','650.124.1224','28-SEP-2006','ST_CLERK',2700.00,0.00,120,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (127,'James','Landry','JLANDRY','650.124.1334','14-JAN-2007','ST_CLERK',2400.00,0.00,120,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (128,'Steven','Markle','SMARKLE','650.124.1434','08-MAR-2008','ST_CLERK',2200.00,0.00,120,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (129,'Laura','Bissot','LBISSOT','650.124.5234','20-AUG-2005','ST_CLERK',3300.00,0.00,121,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (130,'Mozhe','Atkinson','MATKINSO','650.124.6234','30-OCT-2005','ST_CLERK',2800.00,0.00,121,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (131,'James','Marlow','JAMRLOW','650.124.7234','16-FEB-2005','ST_CLERK',2500.00,0.00,121,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (132,'TJ','Olson','TJOLSON','650.124.8234','10-APR-2007','ST_CLERK',2100.00,0.00,121,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (133,'Jason','Mallin','JMALLIN','650.127.1934','14-JUN-2004','ST_CLERK',3300.00,0.00,122,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (134,'Michael','Rogers','MROGERS','650.127.1834','26-AUG-2006','ST_CLERK',2900.00,0.00,122,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (135,'Ki','Gee','KGEE','650.127.1734','12-DEC-2007','ST_CLERK',2400.00,0.00,122,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (136,'Hazel','Philtanker','HPHILTAN','650.127.1634','06-FEB-2008','ST_CLERK',2200.00,0.00,122,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (137,'Renske','Ladwig','RLADWIG','650.121.1234','14-JUL-2003','ST_CLERK',3600.00,0.00,123,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (138,'Stephen','Stiles','SSTILES','650.121.2034','26-OCT-2005','ST_CLERK',3200.00,0.00,123,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (139,'John','Seo','JSEO','650.121.2019','12-FEB-2006','ST_CLERK',2700.00,0.00,123,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (140,'Joshua','Patel','JPATEL','650.121.1834','06-APR-2006','ST_CLERK',2500.00,0.00,123,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (141,'Trenna','Rajs','TRAJS','650.121.8009','17-OCT-2003','ST_CLERK',3500.00,0.00,124,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (142,'Curtis','Davies','CDAVIES','650.121.2994','29-JAN-2005','ST_CLERK',3100.00,0.00,124,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (143,'Randall','Matos','RMATOS','650.121.2874','15-MAR-2006','ST_CLERK',2600.00,0.00,124,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (144,'Peter','Vargas','PVARGAS','650.121.2004','09-JUL-2006','ST_CLERK',2500.00,0.00,124,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (145,'John','Russell','JRUSSEL','011.44.1344.429268','01-JAN-2004','SA_MAN',14000.00,0.40,100,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (146,'Karen','Partners','KPARTNER','011.44.1344.467268','05-JAN-2005','SA_MAN',13500.00,0.30,100,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (147,'Alberto','Errazuriz','AERRAZUR','011.44.1344.429278','10-MAR-2005','SA_MAN',12000.00,0.30,100,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (148,'Gerald','Cambrault','GCAMBRAU','011.44.1344.619268','15-OCT-2007','SA_MAN',11000.00,0.30,100,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (149,'Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018','29-JAN-2008','SA_MAN',10500.00,0.20,100,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (150,'Peter','Tucker','PTUCKER','011.44.1344.129268','30-JAN-2005','SA_REP',10000.00,0.30,145,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (151,'David','Bernstein','DBERNSTE','011.44.1344.345268','24-MAR-2005','SA_REP',9500.00,0.25,145,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (152,'Peter','Hall','PHALL','011.44.1344.478968','20-AUG-2005','SA_REP',9000.00,0.25,145,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (153,'Christopher','Olsen','COLSEN','011.44.1344.498718','30-MAR-2006','SA_REP',8000.00,0.20,145,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (154,'Nanette','Cambrault','NCAMBRAU','011.44.1344.987668','09-DEC-2006','SA_REP',7500.00,0.20,145,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (155,'Oliver','Tuvault','OTUVAULT','011.44.1344.486508','23-NOV-2007','SA_REP',7000.00,0.15,145,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (156,'Janette','King','JKING','011.44.1345.429268','30-JAN-2004','SA_REP',10000.00,0.35,146,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (157,'Patrick','Sully','PSULLY','011.44.1345.929268','04-MAR-2004','SA_REP',9500.00,0.35,146,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (158,'Allan','McEwen','AMCEWEN','011.44.1345.829268','01-AUG-2004','SA_REP',9000.00,0.35,146,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (159,'Lindsey','Smith','LSMITH','011.44.1345.729268','10-MAR-2005','SA_REP',8000.00,0.30,146,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (160,'Louise','Doran','LDORAN','011.44.1345.629268','15-DEC-2005','SA_REP',7500.00,0.30,146,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (161,'Sarath','Sewall','SSEWALL','011.44.1345.529268','03-NOV-2006','SA_REP',7000.00,0.25,146,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (162,'Clara','Vishney','CVISHNEY','011.44.1346.129268','11-NOV-2005','SA_REP',10500.00,0.25,147,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (163,'Danielle','Greene','DGREENE','011.44.1346.229268','19-MAR-2007','SA_REP',9500.00,0.15,147,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (164,'Mattea','Marvins','MMARVINS','011.44.1346.329268','24-JAN-2008','SA_REP',7200.00,0.10,147,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (165,'David','Lee','DLEE','011.44.1346.529268','23-FEB-2008','SA_REP',6800.00,0.10,147,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (166,'Sundar','Ande','SANDE','011.44.1346.629268','24-MAR-2008','SA_REP',6400.00,0.10,147,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (167,'Amit','Banda','ABANDA','011.44.1346.729268','21-APR-2008','SA_REP',6200.00,0.10,147,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (168,'Lisa','Ozer','LOZER','011.44.1343.929268','11-MAR-2005','SA_REP',11500.00,0.25,148,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (169,'Harrison','Bloom','HBLOOM','011.44.1343.829268','23-MAR-2006','SA_REP',10000.00,0.20,148,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (170,'Tayler','Fox','TFOX','011.44.1343.729268','24-JAN-2006','SA_REP',9600.00,0.20,148,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (171,'William','Smith','WSMITH','011.44.1343.629268','23-FEB-2007','SA_REP',7400.00,0.15,148,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (172,'Elizabeth','Bates','EBATES','011.44.1343.529268','24-MAR-2007','SA_REP',7300.00,0.15,148,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (173,'Sundita','Kumar','SKUMAR','011.44.1343.329268','21-APR-2008','SA_REP',6100.00,0.10,148,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (174,'Ellen','Abel','EABEL','011.44.1644.429267','11-MAY-2004','SA_REP',11000.00,0.30,149,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (175,'Alyssa','Hutton','AHUTTON','011.44.1644.429266','19-MAR-2005','SA_REP',8800.00,0.25,149,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (176,'Jonathon','Taylor','JTAYLOR','011.44.1644.429265','24-MAR-2006','SA_REP',8600.00,0.20,149,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (177,'Jack','Livingston','JLIVINGS','011.44.1644.429264','23-APR-2006','SA_REP',8400.00,0.20,149,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (178,'Kimberely','Grant','KGRANT','011.44.1644.429263','24-MAY-2007','SA_REP',7000.00,0.15,149,0);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (179,'Charles','Johnson','CJOHNSON','011.44.1644.429262','04-JAN-2008','SA_REP',6200.00,0.10,149,80);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (180,'Winston','Taylor','WTAYLOR','650.507.9876','24-JAN-2006','SH_CLERK',3200.00,0.00,120,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (181,'Jean','Fleaur','JFLEAUR','650.507.9877','23-FEB-2006','SH_CLERK',3100.00,0.00,120,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (182,'Martha','Sullivan','MSULLIVA','650.507.9878','21-JUN-2007','SH_CLERK',2500.00,0.00,120,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (183,'Girard','Geoni','GGEONI','650.507.9879','03-FEB-2008','SH_CLERK',2800.00,0.00,120,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (184,'Nandita','Sarchand','NSARCHAN','650.509.1876','27-JAN-2004','SH_CLERK',4200.00,0.00,121,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (185,'Alexis','Bull','ABULL','650.509.2876','20-FEB-2005','SH_CLERK',4100.00,0.00,121,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (186,'Julia','Dellinger','JDELLING','650.509.3876','24-JUN-2006','SH_CLERK',3400.00,0.00,121,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (187,'Anthony','Cabrio','ACABRIO','650.509.4876','07-FEB-2007','SH_CLERK',3000.00,0.00,121,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (188,'Kelly','Chung','KCHUNG','650.505.1876','14-JUN-2005','SH_CLERK',3800.00,0.00,122,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (189,'Jennifer','Dilly','JDILLY','650.505.2876','13-AUG-2005','SH_CLERK',3600.00,0.00,122,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (190,'Timothy','Gates','TGATES','650.505.3876','11-JUL-2006','SH_CLERK',2900.00,0.00,122,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (191,'Randall','Perkins','RPERKINS','650.505.4876','19-DEC-2007','SH_CLERK',2500.00,0.00,122,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (192,'Sarah','Bell','SBELL','650.501.1876','04-FEB-2004','SH_CLERK',4000.00,0.00,123,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (193,'Britney','Everett','BEVERETT','650.501.2876','03-MAR-2005','SH_CLERK',3900.00,0.00,123,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (194,'Samuel','McCain','SMCCAIN','650.501.3876','01-JUL-2006','SH_CLERK',3200.00,0.00,123,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (195,'Vance','Jones','VJONES','650.501.4876','17-MAR-2007','SH_CLERK',2800.00,0.00,123,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (196,'Alana','Walsh','AWALSH','650.507.9811','24-APR-2006','SH_CLERK',3100.00,0.00,124,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (197,'Kevin','Feeney','KFEENEY','650.507.9822','23-MAY-2006','SH_CLERK',3000.00,0.00,124,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (198,'Donald','OConnell','DOCONNEL','650.507.9833','21-JUN-2007','SH_CLERK',2600.00,0.00,124,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (199,'Douglas','Grant','DGRANT','650.507.9844','13-JAN-2008','SH_CLERK',2600.00,0.00,124,50);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (200,'Jennifer','Whalen','JWHALEN','515.123.4444','17-SEP-2003','AD_ASST',4400.00,0.00,101,10);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (201,'Michael','Hartstein','MHARTSTE','515.123.5555','17-FEB-2004','MK_MAN',13000.00,0.00,100,20);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (202,'Pat','Fay','PFAY','603.123.6666','17-AUG-2005','MK_REP',6000.00,0.00,201,20);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (203,'Susan','Mavris','SMAVRIS','515.123.7777','07-JUN-2002','HR_REP',6500.00,0.00,101,40);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (204,'Hermann','Baer','HBAER','515.123.8888','07-JUN-2002','PR_REP',10000.00,0.00,101,70);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (205,'Shelley','Higgins','SHIGGINS','515.123.8080','07-JUN-2002','AC_MGR',12000.00,0.00,101,110);
INSERT INTO employees (employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id) VALUES  (206,'William','Gietz','WGIETZ','515.123.8181','07-JUN-2002','AC_ACCOUNT',8300.00,0.00,205,110);
select * from employees;
select first_name,last_name,job_id,salary from employees;
drop table employees;

-- OUTPUT:

/*
  	EMPLOYEE_ID	FIRST_NAME	LAST_NAME	EMAIL	PHONE_NUMBER	HIRE_DATE	JOB_ID	SALARY	COMMISSION_PCT	MANAGER_ID	DEPARTMENT_ID
1	100	Steven	King	SKING	515.123.4567	6/17/2003 12:00:00 AM	AD_PRES	24000	0	0	90
2	101	Neena	Kochhar	NKOCHHAR	515.123.4568	9/21/2005 12:00:00 AM	AD_VP	17000	0	100	90
3	102	Lex	De Haan	LDEHAAN	515.123.4569	1/13/2001 12:00:00 AM	AD_VP	17000	0	100	90
4	103	Alexander	Hunold	AHUNOLD	590.423.4567	1/3/2006 12:00:00 AM	IT_PROG	9000	0	102	60
5	104	Bruce	Ernst	BERNST	590.423.4568	5/21/2007 12:00:00 AM	IT_PROG	6000	0	103	60
6	105	David	Austin	DAUSTIN	590.423.4569	6/25/2005 12:00:00 AM	IT_PROG	4800	0	103	60
7	106	Valli	Pataballa	VPATABAL	590.423.4560	2/5/2006 12:00:00 AM	IT_PROG	4800	0	103	60
8	107	Diana	Lorentz	DLORENTZ	590.423.5567	2/7/2007 12:00:00 AM	IT_PROG	4200	0	103	60
9	108	Nancy	Greenberg	NGREENBE	515.124.4569	8/17/2002 12:00:00 AM	FI_MGR	12000	0	101	100
10	109	Daniel	Faviet	DFAVIET	515.124.4169	8/16/2002 12:00:00 AM	FI_ACCOUNT	9000	0	108	100
11	110	John	Chen	JCHEN	515.124.4269	9/28/2005 12:00:00 AM	FI_ACCOUNT	8200	0	108	100
12	111	Ismael	Sciarra	ISCIARRA	515.124.4369	9/30/2005 12:00:00 AM	FI_ACCOUNT	7700	0	108	100
13	112	Jose Manuel	Urman	JMURMAN	515.124.4469	3/7/2006 12:00:00 AM	FI_ACCOUNT	7800	0	108	100
14	113	Luis	Popp	LPOPP	515.124.4567	12/7/2007 12:00:00 AM	FI_ACCOUNT	6900	0	108	100
15	114	Den	Raphaely	DRAPHEAL	515.127.4561	12/7/2002 12:00:00 AM	PU_MAN	11000	0	100	30
16	115	Alexander	Khoo	AKHOO	515.127.4562	5/18/2003 12:00:00 AM	PU_CLERK	3100	0	114	30
17	116	Shelli	Baida	SBAIDA	515.127.4563	12/24/2005 12:00:00 AM	PU_CLERK	2900	0	114	30
18	117	Sigal	Tobias	STOBIAS	515.127.4564	7/24/2005 12:00:00 AM	PU_CLERK	2800	0	114	30
19	118	Guy	Himuro	GHIMURO	515.127.4565	11/15/2006 12:00:00 AM	PU_CLERK	2600	0	114	30
20	119	Karen	Colmenares	KCOLMENA	515.127.4566	8/10/2007 12:00:00 AM	PU_CLERK	2500	0	114	30
21	120	Matthew	Weiss	MWEISS	650.123.1234	7/18/2004 12:00:00 AM	ST_MAN	8000	0	100	50
22	121	Adam	Fripp	AFRIPP	650.123.2234	4/10/2005 12:00:00 AM	ST_MAN	8200	0	100	50
23	122	Payam	Kaufling	PKAUFLIN	650.123.3234	5/1/2003 12:00:00 AM	ST_MAN	7900	0	100	50
24	123	Shanta	Vollman	SVOLLMAN	650.123.4234	10/10/2005 12:00:00 AM	ST_MAN	6500	0	100	50
25	124	Kevin	Mourgos	KMOURGOS	650.123.5234	11/16/2007 12:00:00 AM	ST_MAN	5800	0	100	50
26	125	Julia	Nayer	JNAYER	650.124.1214	7/16/2005 12:00:00 AM	ST_CLERK	3200	0	120	50
27	126	Irene	Mikkilineni	IMIKKILI	650.124.1224	9/28/2006 12:00:00 AM	ST_CLERK	2700	0	120	50
28	127	James	Landry	JLANDRY	650.124.1334	1/14/2007 12:00:00 AM	ST_CLERK	2400	0	120	50
29	128	Steven	Markle	SMARKLE	650.124.1434	3/8/2008 12:00:00 AM	ST_CLERK	2200	0	120	50
30	129	Laura	Bissot	LBISSOT	650.124.5234	8/20/2005 12:00:00 AM	ST_CLERK	3300	0	121	50
31	130	Mozhe	Atkinson	MATKINSO	650.124.6234	10/30/2005 12:00:00 AM	ST_CLERK	2800	0	121	50
32	131	James	Marlow	JAMRLOW	650.124.7234	2/16/2005 12:00:00 AM	ST_CLERK	2500	0	121	50
33	132	TJ	Olson	TJOLSON	650.124.8234	4/10/2007 12:00:00 AM	ST_CLERK	2100	0	121	50
34	133	Jason	Mallin	JMALLIN	650.127.1934	6/14/2004 12:00:00 AM	ST_CLERK	3300	0	122	50
35	134	Michael	Rogers	MROGERS	650.127.1834	8/26/2006 12:00:00 AM	ST_CLERK	2900	0	122	50
36	135	Ki	Gee	KGEE	650.127.1734	12/12/2007 12:00:00 AM	ST_CLERK	2400	0	122	50
37	136	Hazel	Philtanker	HPHILTAN	650.127.1634	2/6/2008 12:00:00 AM	ST_CLERK	2200	0	122	50
38	137	Renske	Ladwig	RLADWIG	650.121.1234	7/14/2003 12:00:00 AM	ST_CLERK	3600	0	123	50
39	138	Stephen	Stiles	SSTILES	650.121.2034	10/26/2005 12:00:00 AM	ST_CLERK	3200	0	123	50
40	139	John	Seo	JSEO	650.121.2019	2/12/2006 12:00:00 AM	ST_CLERK	2700	0	123	50
41	140	Joshua	Patel	JPATEL	650.121.1834	4/6/2006 12:00:00 AM	ST_CLERK	2500	0	123	50
42	141	Trenna	Rajs	TRAJS	650.121.8009	10/17/2003 12:00:00 AM	ST_CLERK	3500	0	124	50
43	142	Curtis	Davies	CDAVIES	650.121.2994	1/29/2005 12:00:00 AM	ST_CLERK	3100	0	124	50
44	143	Randall	Matos	RMATOS	650.121.2874	3/15/2006 12:00:00 AM	ST_CLERK	2600	0	124	50
45	144	Peter	Vargas	PVARGAS	650.121.2004	7/9/2006 12:00:00 AM	ST_CLERK	2500	0	124	50
46	145	John	Russell	JRUSSEL	011.44.1344.429268	1/1/2004 12:00:00 AM	SA_MAN	14000	0.4	100	80
47	146	Karen	Partners	KPARTNER	011.44.1344.467268	1/5/2005 12:00:00 AM	SA_MAN	13500	0.3	100	80
48	147	Alberto	Errazuriz	AERRAZUR	011.44.1344.429278	3/10/2005 12:00:00 AM	SA_MAN	12000	0.3	100	80
49	148	Gerald	Cambrault	GCAMBRAU	011.44.1344.619268	10/15/2007 12:00:00 AM	SA_MAN	11000	0.3	100	80
50	149	Eleni	Zlotkey	EZLOTKEY	011.44.1344.429018	1/29/2008 12:00:00 AM	SA_MAN	10500	0.2	100	80
51	150	Peter	Tucker	PTUCKER	011.44.1344.129268	1/30/2005 12:00:00 AM	SA_REP	10000	0.3	145	80
52	151	David	Bernstein	DBERNSTE	011.44.1344.345268	3/24/2005 12:00:00 AM	SA_REP	9500	0.25	145	80
53	152	Peter	Hall	PHALL	011.44.1344.478968	8/20/2005 12:00:00 AM	SA_REP	9000	0.25	145	80
54	153	Christopher	Olsen	COLSEN	011.44.1344.498718	3/30/2006 12:00:00 AM	SA_REP	8000	0.2	145	80
55	154	Nanette	Cambrault	NCAMBRAU	011.44.1344.987668	12/9/2006 12:00:00 AM	SA_REP	7500	0.2	145	80
56	155	Oliver	Tuvault	OTUVAULT	011.44.1344.486508	11/23/2007 12:00:00 AM	SA_REP	7000	0.15	145	80
57	156	Janette	King	JKING	011.44.1345.429268	1/30/2004 12:00:00 AM	SA_REP	10000	0.35	146	80
58	157	Patrick	Sully	PSULLY	011.44.1345.929268	3/4/2004 12:00:00 AM	SA_REP	9500	0.35	146	80
59	158	Allan	McEwen	AMCEWEN	011.44.1345.829268	8/1/2004 12:00:00 AM	SA_REP	9000	0.35	146	80
60	159	Lindsey	Smith	LSMITH	011.44.1345.729268	3/10/2005 12:00:00 AM	SA_REP	8000	0.3	146	80
61	160	Louise	Doran	LDORAN	011.44.1345.629268	12/15/2005 12:00:00 AM	SA_REP	7500	0.3	146	80
62	161	Sarath	Sewall	SSEWALL	011.44.1345.529268	11/3/2006 12:00:00 AM	SA_REP	7000	0.25	146	80
63	162	Clara	Vishney	CVISHNEY	011.44.1346.129268	11/11/2005 12:00:00 AM	SA_REP	10500	0.25	147	80
64	163	Danielle	Greene	DGREENE	011.44.1346.229268	3/19/2007 12:00:00 AM	SA_REP	9500	0.15	147	80
65	164	Mattea	Marvins	MMARVINS	011.44.1346.329268	1/24/2008 12:00:00 AM	SA_REP	7200	0.1	147	80
66	165	David	Lee	DLEE	011.44.1346.529268	2/23/2008 12:00:00 AM	SA_REP	6800	0.1	147	80
67	166	Sundar	Ande	SANDE	011.44.1346.629268	3/24/2008 12:00:00 AM	SA_REP	6400	0.1	147	80
68	167	Amit	Banda	ABANDA	011.44.1346.729268	4/21/2008 12:00:00 AM	SA_REP	6200	0.1	147	80
69	168	Lisa	Ozer	LOZER	011.44.1343.929268	3/11/2005 12:00:00 AM	SA_REP	11500	0.25	148	80
70	169	Harrison	Bloom	HBLOOM	011.44.1343.829268	3/23/2006 12:00:00 AM	SA_REP	10000	0.2	148	80
71	170	Tayler	Fox	TFOX	011.44.1343.729268	1/24/2006 12:00:00 AM	SA_REP	9600	0.2	148	80
72	171	William	Smith	WSMITH	011.44.1343.629268	2/23/2007 12:00:00 AM	SA_REP	7400	0.15	148	80
73	172	Elizabeth	Bates	EBATES	011.44.1343.529268	3/24/2007 12:00:00 AM	SA_REP	7300	0.15	148	80
74	173	Sundita	Kumar	SKUMAR	011.44.1343.329268	4/21/2008 12:00:00 AM	SA_REP	6100	0.1	148	80
75	174	Ellen	Abel	EABEL	011.44.1644.429267	5/11/2004 12:00:00 AM	SA_REP	11000	0.3	149	80
76	175	Alyssa	Hutton	AHUTTON	011.44.1644.429266	3/19/2005 12:00:00 AM	SA_REP	8800	0.25	149	80
77	176	Jonathon	Taylor	JTAYLOR	011.44.1644.429265	3/24/2006 12:00:00 AM	SA_REP	8600	0.2	149	80
78	177	Jack	Livingston	JLIVINGS	011.44.1644.429264	4/23/2006 12:00:00 AM	SA_REP	8400	0.2	149	80
79	178	Kimberely	Grant	KGRANT	011.44.1644.429263	5/24/2007 12:00:00 AM	SA_REP	7000	0.15	149	0
80	179	Charles	Johnson	CJOHNSON	011.44.1644.429262	1/4/2008 12:00:00 AM	SA_REP	6200	0.1	149	80
81	180	Winston	Taylor	WTAYLOR	650.507.9876	1/24/2006 12:00:00 AM	SH_CLERK	3200	0	120	50
82	181	Jean	Fleaur	JFLEAUR	650.507.9877	2/23/2006 12:00:00 AM	SH_CLERK	3100	0	120	50
83	182	Martha	Sullivan	MSULLIVA	650.507.9878	6/21/2007 12:00:00 AM	SH_CLERK	2500	0	120	50
84	183	Girard	Geoni	GGEONI	650.507.9879	2/3/2008 12:00:00 AM	SH_CLERK	2800	0	120	50
85	184	Nandita	Sarchand	NSARCHAN	650.509.1876	1/27/2004 12:00:00 AM	SH_CLERK	4200	0	121	50
86	185	Alexis	Bull	ABULL	650.509.2876	2/20/2005 12:00:00 AM	SH_CLERK	4100	0	121	50
87	186	Julia	Dellinger	JDELLING	650.509.3876	6/24/2006 12:00:00 AM	SH_CLERK	3400	0	121	50
88	187	Anthony	Cabrio	ACABRIO	650.509.4876	2/7/2007 12:00:00 AM	SH_CLERK	3000	0	121	50
89	188	Kelly	Chung	KCHUNG	650.505.1876	6/14/2005 12:00:00 AM	SH_CLERK	3800	0	122	50
90	189	Jennifer	Dilly	JDILLY	650.505.2876	8/13/2005 12:00:00 AM	SH_CLERK	3600	0	122	50
91	190	Timothy	Gates	TGATES	650.505.3876	7/11/2006 12:00:00 AM	SH_CLERK	2900	0	122	50
92	191	Randall	Perkins	RPERKINS	650.505.4876	12/19/2007 12:00:00 AM	SH_CLERK	2500	0	122	50
93	192	Sarah	Bell	SBELL	650.501.1876	2/4/2004 12:00:00 AM	SH_CLERK	4000	0	123	50
94	193	Britney	Everett	BEVERETT	650.501.2876	3/3/2005 12:00:00 AM	SH_CLERK	3900	0	123	50
95	194	Samuel	McCain	SMCCAIN	650.501.3876	7/1/2006 12:00:00 AM	SH_CLERK	3200	0	123	50
96	195	Vance	Jones	VJONES	650.501.4876	3/17/2007 12:00:00 AM	SH_CLERK	2800	0	123	50
97	196	Alana	Walsh	AWALSH	650.507.9811	4/24/2006 12:00:00 AM	SH_CLERK	3100	0	124	50
98	197	Kevin	Feeney	KFEENEY	650.507.9822	5/23/2006 12:00:00 AM	SH_CLERK	3000	0	124	50
99	198	Donald	OConnell	DOCONNEL	650.507.9833	6/21/2007 12:00:00 AM	SH_CLERK	2600	0	124	50
100	199	Douglas	Grant	DGRANT	650.507.9844	1/13/2008 12:00:00 AM	SH_CLERK	2600	0	124	50
101	200	Jennifer	Whalen	JWHALEN	515.123.4444	9/17/2003 12:00:00 AM	AD_ASST	4400	0	101	10
102	201	Michael	Hartstein	MHARTSTE	515.123.5555	2/17/2004 12:00:00 AM	MK_MAN	13000	0	100	20
103	202	Pat	Fay	PFAY	603.123.6666	8/17/2005 12:00:00 AM	MK_REP	6000	0	201	20
104	203	Susan	Mavris	SMAVRIS	515.123.7777	6/7/2002 12:00:00 AM	HR_REP	6500	0	101	40
105	204	Hermann	Baer	HBAER	515.123.8888	6/7/2002 12:00:00 AM	PR_REP	10000	0	101	70
106	205	Shelley	Higgins	SHIGGINS	515.123.8080	6/7/2002 12:00:00 AM	AC_MGR	12000	0	101	110
107	206	William	Gietz	WGIETZ	515.123.8181	6/7/2002 12:00:00 AM	AC_ACCOUNT	8300	0	205	110

  	FIRST_NAME	LAST_NAME	JOB_ID	SALARY
1	Steven	King	AD_PRES	24000
2	Neena	Kochhar	AD_VP	17000
3	Lex	De Haan	AD_VP	17000
4	Alexander	Hunold	IT_PROG	9000
5	Bruce	Ernst	IT_PROG	6000
6	David	Austin	IT_PROG	4800
7	Valli	Pataballa	IT_PROG	4800
8	Diana	Lorentz	IT_PROG	4200
9	Nancy	Greenberg	FI_MGR	12000
10	Daniel	Faviet	FI_ACCOUNT	9000
11	John	Chen	FI_ACCOUNT	8200
12	Ismael	Sciarra	FI_ACCOUNT	7700
13	Jose Manuel	Urman	FI_ACCOUNT	7800
14	Luis	Popp	FI_ACCOUNT	6900
15	Den	Raphaely	PU_MAN	11000
16	Alexander	Khoo	PU_CLERK	3100
17	Shelli	Baida	PU_CLERK	2900
18	Sigal	Tobias	PU_CLERK	2800
19	Guy	Himuro	PU_CLERK	2600
20	Karen	Colmenares	PU_CLERK	2500
21	Matthew	Weiss	ST_MAN	8000
22	Adam	Fripp	ST_MAN	8200
23	Payam	Kaufling	ST_MAN	7900
24	Shanta	Vollman	ST_MAN	6500
25	Kevin	Mourgos	ST_MAN	5800
26	Julia	Nayer	ST_CLERK	3200
27	Irene	Mikkilineni	ST_CLERK	2700
28	James	Landry	ST_CLERK	2400
29	Steven	Markle	ST_CLERK	2200
30	Laura	Bissot	ST_CLERK	3300
31	Mozhe	Atkinson	ST_CLERK	2800
32	James	Marlow	ST_CLERK	2500
33	TJ	Olson	ST_CLERK	2100
34	Jason	Mallin	ST_CLERK	3300
35	Michael	Rogers	ST_CLERK	2900
36	Ki	Gee	ST_CLERK	2400
37	Hazel	Philtanker	ST_CLERK	2200
38	Renske	Ladwig	ST_CLERK	3600
39	Stephen	Stiles	ST_CLERK	3200
40	John	Seo	ST_CLERK	2700
41	Joshua	Patel	ST_CLERK	2500
42	Trenna	Rajs	ST_CLERK	3500
43	Curtis	Davies	ST_CLERK	3100
44	Randall	Matos	ST_CLERK	2600
45	Peter	Vargas	ST_CLERK	2500
46	John	Russell	SA_MAN	14000
47	Karen	Partners	SA_MAN	13500
48	Alberto	Errazuriz	SA_MAN	12000
49	Gerald	Cambrault	SA_MAN	11000
50	Eleni	Zlotkey	SA_MAN	10500
51	Peter	Tucker	SA_REP	10000
52	David	Bernstein	SA_REP	9500
53	Peter	Hall	SA_REP	9000
54	Christopher	Olsen	SA_REP	8000
55	Nanette	Cambrault	SA_REP	7500
56	Oliver	Tuvault	SA_REP	7000
57	Janette	King	SA_REP	10000
58	Patrick	Sully	SA_REP	9500
59	Allan	McEwen	SA_REP	9000
60	Lindsey	Smith	SA_REP	8000
61	Louise	Doran	SA_REP	7500
62	Sarath	Sewall	SA_REP	7000
63	Clara	Vishney	SA_REP	10500
64	Danielle	Greene	SA_REP	9500
65	Mattea	Marvins	SA_REP	7200
66	David	Lee	SA_REP	6800
67	Sundar	Ande	SA_REP	6400
68	Amit	Banda	SA_REP	6200
69	Lisa	Ozer	SA_REP	11500
70	Harrison	Bloom	SA_REP	10000
71	Tayler	Fox	SA_REP	9600
72	William	Smith	SA_REP	7400
73	Elizabeth	Bates	SA_REP	7300
74	Sundita	Kumar	SA_REP	6100
75	Ellen	Abel	SA_REP	11000
76	Alyssa	Hutton	SA_REP	8800
77	Jonathon	Taylor	SA_REP	8600
78	Jack	Livingston	SA_REP	8400
79	Kimberely	Grant	SA_REP	7000
80	Charles	Johnson	SA_REP	6200
81	Winston	Taylor	SH_CLERK	3200
82	Jean	Fleaur	SH_CLERK	3100
83	Martha	Sullivan	SH_CLERK	2500
84	Girard	Geoni	SH_CLERK	2800
85	Nandita	Sarchand	SH_CLERK	4200
86	Alexis	Bull	SH_CLERK	4100
87	Julia	Dellinger	SH_CLERK	3400
88	Anthony	Cabrio	SH_CLERK	3000
89	Kelly	Chung	SH_CLERK	3800
90	Jennifer	Dilly	SH_CLERK	3600
91	Timothy	Gates	SH_CLERK	2900
92	Randall	Perkins	SH_CLERK	2500
93	Sarah	Bell	SH_CLERK	4000
94	Britney	Everett	SH_CLERK	3900
95	Samuel	McCain	SH_CLERK	3200
96	Vance	Jones	SH_CLERK	2800
97	Alana	Walsh	SH_CLERK	3100
98	Kevin	Feeney	SH_CLERK	3000
99	Donald	OConnell	SH_CLERK	2600
100	Douglas	Grant	SH_CLERK	2600
101	Jennifer	Whalen	AD_ASST	4400
102	Michael	Hartstein	MK_MAN	13000
103	Pat	Fay	MK_REP	6000
104	Susan	Mavris	HR_REP	6500
105	Hermann	Baer	PR_REP	10000
106	Shelley	Higgins	AC_MGR	12000
107	William	Gietz	AC_ACCOUNT	8300
*/
