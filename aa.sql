prompt PL/SQL Developer import file
prompt Created on Sunday, November 15, 2009 by a
set feedback off
set define off
prompt Creating CANCELLATION...
create table CANCELLATION
(
  TCT_NO      NUMBER(10),
  STATUS_CODE VARCHAR2(1),
  STATUS_DESC VARCHAR2(20)
)
;

prompt Creating FLIGHTSCH...
create table FLIGHTSCH
(
  FLIGHT_NO    VARCHAR2(4),
  FLIGHT_NAME  VARCHAR2(20),
  ROUTE_CODE   VARCHAR2(10),
  BUSNS_CAPCT  NUMBER(3),
  ECONMC_CAPCT NUMBER(3)
)
;

prompt Creating LOG_TAB...
create table LOG_TAB
(
  USER_ID   VARCHAR2(20),
  USER_PASS VARCHAR2(20)
)
;

prompt Creating RESERVATION...
create table RESERVATION
(
  TCT_NO       NUMBER(10),
  FLIGHT_NO    VARCHAR2(4),
  SEAT_NO      VARCHAR2(3),
  FLIGHT_DATE  DATE,
  FLIGHT_TIME  VARCHAR2(10),
  SOURCE       VARCHAR2(20),
  DESTINATION  VARCHAR2(20),
  CLASS        VARCHAR2(1),
  RESERVE_DATE DATE,
  TOTAL_FARE   NUMBER(10,2),
  P_NAME       VARCHAR2(50),
  P_ADD        VARCHAR2(200),
  P_CNTCT_NO   NUMBER(10),
  PASSPORT_NO  VARCHAR2(10),
  STATUS       VARCHAR2(3)
)
;

prompt Creating ROUTE_DETAIL...
create table ROUTE_DETAIL
(
  ROUTE_CODE      VARCHAR2(10),
  SOURCE          VARCHAR2(20),
  DESTINATION     VARCHAR2(20),
  FLIGHT_DATE     DATE,
  FLIGHT_DEP_TIME VARCHAR2(10),
  FLIGHT_ARR_TIME VARCHAR2(10),
  ECO_FARE        NUMBER(10),
  BUSS_FARE       NUMBER(10)
)
;

prompt Creating ROUTE_MASTER...
create table ROUTE_MASTER
(
  ROUTE_CODE VARCHAR2(10),
  ROUT_DESC  VARCHAR2(100)
)
;

prompt Creating USER_MASTER...
create table USER_MASTER
(
  USER_ID    VARCHAR2(50),
  U_NAME     VARCHAR2(50),
  GENDER     VARCHAR2(1),
  U_DOB      DATE,
  U_CNTCT_NO NUMBER(10),
  U_EMAIL_ID VARCHAR2(50),
  U_ADD      VARCHAR2(200),
  U_DESIG    VARCHAR2(50),
  U_PASS     VARCHAR2(30)
)
;

prompt Loading CANCELLATION...
prompt Table is empty
prompt Loading FLIGHTSCH...
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('KF01', 'Kingfisher', 'DB01', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('KF02', 'Kingfisher', 'DB02', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('KF03', 'Kingfisher', 'DB02', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('KF04', 'Kingfisher', 'CM01', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('SJ01', 'Spicejet', 'CM01', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('SJ02', 'Spicejet', 'HC02', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('SJ03', 'Spicejet', 'DG01', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('SJ04', 'Spicejet', 'DG01', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('JL01', 'Jetlight', 'AD01', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('JL02', 'Jetlight', 'MP01', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('JL03', 'Jetlight', 'DM01', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('JL04', 'Jetlight', 'DM01', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('ID01', 'Indigo', 'DK01', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('ID02', 'Indigo', 'HK01', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('ID03', 'Indigo', 'KP01', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('ID04', 'Indigo', 'MK01', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('AI01', 'AirIndia', 'JK01', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('AI02', 'AirIndia', 'DH01', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('AI03', 'AirIndia', 'DC01', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('AI04', 'AirIndia', 'SD01', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('SH01', 'Sahara', 'BD01', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('SH02', 'Sahara', 'CD01', 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('SH03', 'Sahara', null, 12, 38);
insert into FLIGHTSCH (FLIGHT_NO, FLIGHT_NAME, ROUTE_CODE, BUSNS_CAPCT, ECONMC_CAPCT)
values ('SH04', 'Sahara', null, 12, 38);
commit;
prompt 24 records loaded
prompt Loading LOG_TAB...
insert into LOG_TAB (USER_ID, USER_PASS)
values ('Akhtar', 'Akhtar');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('mohit', 'Mohit');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('neha', 'Neha');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('Steven_King', 'Steven_King');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('Neena_Kochhar', 'Neena_Kochhar');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('Lex_De Haan', 'Lex_De Haan');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('Alexander_Hunold', 'Alexander_Hunold');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('Bruce_Ernst', 'Bruce_Ernst');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('David_Austin', 'David_Austin');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('Valli_Pataballa', 'Valli_Pataballa');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('Diana_Lorentz', 'Diana_Lorentz');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('Nancy_Greenberg', 'Nancy_Greenberg');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('Daniel_Faviet', 'Daniel_Faviet');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('John_Chen', 'John_Chen');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('Ismael_Sciarra', 'Ismael_Sciarra');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('Jose Manuel_Urman', 'Jose Manuel_Urman');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('Luis_Popp', 'Luis_Popp');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('Den_Raphaely', 'Den_Raphaely');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('Alexander_Khoo', 'Alexander_Khoo');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('Shelli_Baida', 'Shelli_Baida');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('Sigal_Tobias', 'Sigal_Tobias');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('Guy_Himuro', 'Guy_Himuro');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('Karen_Colmenares', 'Karen_Colmenares');
commit;
prompt 23 records loaded
prompt Loading RESERVATION...
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (1, 'KF01', null, to_date('10-10-2009', 'dd-mm-yyyy'), '1200', 'Delhi', 'Indore', null, to_date('07-10-2009', 'dd-mm-yyyy'), 4500, 'SMITH', 'Roma               ', null, null, 'yes');
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (2, 'KF01', null, to_date('11-10-2009', 'dd-mm-yyyy'), '1500', 'Indore', 'Banglore', null, to_date('07-10-2009', 'dd-mm-yyyy'), 4000, 'ALLEN', 'Venice             ', 2346466234, null, 'yes');
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (3, 'KF02', null, to_date('12-10-2009', 'dd-mm-yyyy'), '1100', 'Chandigarh', 'Delhi', null, to_date('08-10-2009', 'dd-mm-yyyy'), 4400, 'WARD', 'Tokyo              ', 1234567893, null, 'yes');
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (4, 'KF03', null, to_date('13-10-2009', 'dd-mm-yyyy'), '1800', 'Delhi', 'Mumbai', null, to_date('09-10-2009', 'dd-mm-yyyy'), 5100, 'JONES', 'Hiroshima          ', 9540297513, null, 'yes');
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (5, 'KF04', null, to_date('14-10-2009', 'dd-mm-yyyy'), '1600', 'Hydrabad', 'Chennai', null, to_date('10-10-2009', 'dd-mm-yyyy'), 3000, 'MARTIN', 'Southlake          ', 9555742632, null, 'yes');
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (6, 'SJ01', null, to_date('15-10-2009', 'dd-mm-yyyy'), '1300', 'Delhi', 'Mumbai', null, to_date('11-10-2009', 'dd-mm-yyyy'), 5100, 'BLAKE', 'South San Francisco', 9540297513, null, 'yes');
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (7, 'SJ02', null, to_date('16-10-2009', 'dd-mm-yyyy'), '2300', 'Mumbai', 'Goa', null, to_date('12-10-2009', 'dd-mm-yyyy'), 4500, 'CLARK', 'South Brunswick    ', 4567892345, null, 'yes');
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (8, 'SJ03', null, to_date('17-10-2009', 'dd-mm-yyyy'), '2120', 'Amritsar', 'Delhi', null, to_date('13-10-2009', 'dd-mm-yyyy'), 3500, 'SCOTT', 'Seattle            ', 2833330002, null, 'yes');
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (9, 'SJ04', null, to_date('18-10-2009', 'dd-mm-yyyy'), '0600', 'Mumbai', 'Pune', null, to_date('13-10-2009', 'dd-mm-yyyy'), 3000, 'KING', 'Toronto            ', 2345673445, null, 'yes');
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (10, 'JL01', null, to_date('19-10-2009', 'dd-mm-yyyy'), '1100', 'Delhi', 'Jaipur', null, to_date('13-10-2009', 'dd-mm-yyyy'), 5400, 'TURNER', 'Whitehorse         ', 7685443643, null, 'yes');
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (11, 'JL02', null, to_date('20-10-2009', 'dd-mm-yyyy'), '1130', 'Jaipur', 'Mumbai', null, to_date('15-10-2009', 'dd-mm-yyyy'), 4900, 'ADAMS', 'Beijing            ', 7645678765, null, 'yes');
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (12, 'JL03', null, to_date('21-10-2009', 'dd-mm-yyyy'), '1400', 'Delhi', 'Kolkatta', null, to_date('16-10-2009', 'dd-mm-yyyy'), 7000, 'NEHA', 'Bombay             ', 3456787653, null, 'yes');
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (13, 'JL04', null, to_date('22-10-2009', 'dd-mm-yyyy'), '1600', 'Hydrabad', 'Kolkatta', null, to_date('17-10-2009', 'dd-mm-yyyy'), 6500, 'SMITH', 'Sydney             ', 2345678765, null, 'yes');
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (14, 'ID01', null, to_date('23-10-2009', 'dd-mm-yyyy'), '1500', 'Kolkatta', 'Pune', null, to_date('18-10-2009', 'dd-mm-yyyy'), 5500, 'ALLEN', 'Singapore          ', 4567876543, null, 'yes');
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (15, 'ID02', null, to_date('24-10-2009', 'dd-mm-yyyy'), '1900', 'Mumbai', 'Kolkatta', null, to_date('19-10-2009', 'dd-mm-yyyy'), 4500, 'WARD', 'London             ', 3456765434, null, 'yes');
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (16, 'ID03', null, to_date('25-10-2009', 'dd-mm-yyyy'), '2200', 'Jaipur', 'Kolkatta', null, to_date('20-10-2009', 'dd-mm-yyyy'), 6700, 'JONES', 'Oxford             ', 3456723456, null, 'yes');
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (17, 'ID04', null, to_date('26-10-2009', 'dd-mm-yyyy'), '1920', 'Delhi', 'Hydrabad', null, to_date('21-10-2009', 'dd-mm-yyyy'), 6800, 'MARTIN', 'Stretford          ', 3456723456, null, 'yes');
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (18, 'AI01', null, to_date('27-10-2009', 'dd-mm-yyyy'), '1930', 'Delhi', 'Chennai', null, to_date('22-10-2009', 'dd-mm-yyyy'), 8000, 'BLAKE', 'Munich             ', 3487654345, null, 'yes');
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (19, 'AI02', null, to_date('27-10-2009', 'dd-mm-yyyy'), '1510', 'Shimla', 'Delhi', null, to_date('22-10-2009', 'dd-mm-yyyy'), 6800, 'CLARK', 'Sao Paulo          ', 3456780987, null, 'yes');
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (20, null, null, null, null, null, 'Delhi', null, null, 5000, null, null, null, null, null);
commit;
prompt 20 records loaded
prompt Loading ROUTE_DETAIL...
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('DB01', 'Delhi', 'Banglore', null, '1100', '1320', 5500, 5000);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('DB02', 'Delhi', 'Indore', null, '1200', '1400', 5000, 4500);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('DB02', 'Indore', 'Banglore', null, '1500', '1750', 4500, 4000);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('CM01', 'Chandigarh', 'Delhi', null, '1100', '1300', 4800, 4400);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('CM01', 'Delhi', 'Mumbai', null, '1800', '1920', 5600, 5100);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('HC02', 'Hydrabad', 'Chennai', null, '1600', '1850', 3600, 3000);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('DG01', 'Delhi', 'Mumbai', null, '1300', '1430', 5600, 5100);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('DG01', 'Mumbai', 'Goa', null, '2300', '0030', 5000, 4500);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('AD01', 'Amritsar', 'Delhi', null, '2120', '2300', 4000, 3500);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('MP01', 'Mumbai', 'Pune', null, '0600', '0830', 3500, 3000);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('DM01', 'Delhi', 'Jaipur', null, '1100', '1230', 5900, 5400);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('DM01', 'Jaipur', 'Mumbai', null, '1130', '1250', 5400, 4900);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('DK01', 'Delhi', 'Kolkatta', null, '1400', '1710', 7700, 7000);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('HK01', 'Hydrabad', 'Kolkatta', null, '1600', '1900', 7100, 6500);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('KP01', 'Kolkatta', 'Pune', null, '1500', '1620', 5900, 5500);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('MK01', 'Mumbai', 'Kolkatta', null, '1900', '2100', 5500, 4500);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('JK01', 'Jaipur', 'Kolkatta', null, '2200', '2130', 7300, 6700);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('DH01', 'Delhi', 'Hydrabad', null, '1920', '2210', 7500, 6800);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('DC01', 'Delhi', 'Chennai', null, '1930', '2100', 8500, 8000);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('SD01', 'Shimla', 'Delhi', null, null, null, 7300, 6800);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('BD01', 'Banglore', 'Delhi', null, null, null, 5600, 5000);
commit;
prompt 21 records loaded
prompt Loading ROUTE_MASTER...
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('DB01', 'Delhi - Banglore');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('DB02', 'Delhi - Indore -Banglore');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('GM01', 'Goa - Mumbai');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('CM01', 'Chandigarh - Delhi - Mumbai');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('DA01', 'Delhi - Amritsar');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('HC02', 'Hydrabad - Chennai');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('DG01', 'Delhi - Goa');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('MH01', 'Mumbai - Hydrabad');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('AD01', 'Amritsar - Delhi');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('MP01', 'Mumbai - Pune');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('DM01', 'Delhi - Jaipur - Mumbai');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('PK01', 'Pune - Kolkatta');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('DK01', 'Delhi - Kolkatta');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('HK01', 'Hydrabad - Kolkatta');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('KP01', 'Kolkatta - Pune');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('MK01', 'Mumbai - Kolkatta');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('JK01', 'Jaipur - Kolkatta');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('DH01', 'Delhi - Hydrabad');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('DC01', 'Delhi - Chennai');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('SD01', 'Shimla - Delhi');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('BD01', 'Banglore-Delhi');
insert into ROUTE_MASTER (ROUTE_CODE, ROUT_DESC)
values ('CD01', 'Chennai - Delhi');
commit;
prompt 22 records loaded
prompt Loading USER_MASTER...
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('Steven_King', 'Steven', 'M', to_date('22-09-1984', 'dd-mm-yyyy'), 2346466234, 'Steven_King@gmail.com', 'Roma               ', 'admin', 'Steven_King');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('Neena_Kochhar', 'Neena', 'F', to_date('23-06-1984', 'dd-mm-yyyy'), 1234567893, 'Neena_Kochhar@gmail.com', 'Venice             ', 'user', 'Neena_Kochhar');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('Lex_De Haan', 'Lex', 'M', to_date('24-09-1984', 'dd-mm-yyyy'), 9540297513, 'Lex_DeHaan@gmail.com', 'Tokyo              ', 'user', 'Lex_De Haan');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('Alexander_Hunold', 'Alexander', 'M', to_date('25-07-1984', 'dd-mm-yyyy'), 9555742632, 'Alexander_Hunold@gmail.com', 'Hiroshima          ', 'user', 'Alexander_Hunold');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('Bruce_Ernst', 'Bruce', 'M', to_date('26-05-1984', 'dd-mm-yyyy'), 9540297513, 'Bruce_Ernst@gmail.com', 'Southlake          ', 'user', 'Bruce_Ernst');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('David_Austin', 'David', 'M', to_date('27-09-1984', 'dd-mm-yyyy'), 4567892345, 'David_Austin@gmail.com', 'South San Francisco', 'user', 'David_Austin');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('Valli_Pataballa', 'Valli', 'F', to_date('28-09-1984', 'dd-mm-yyyy'), 2833330002, 'Valli_Pataballa@gmail.com', 'South Brunswick    ', 'user', 'Valli_Pataballa');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('Diana_Lorentz', 'Diana', 'F', to_date('29-09-1984', 'dd-mm-yyyy'), 2345673445, 'Diana_Lorentz@gmail.com', 'Seattle            ', 'user', 'Diana_Lorentz');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('Nancy_Greenberg', 'Nancy', 'F', to_date('30-08-1984', 'dd-mm-yyyy'), 7685443643, 'Nancy_Greenberg@gmail.com', 'Toronto            ', 'user', 'Nancy_Greenberg');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('Daniel_Faviet', 'Daniel', 'M', to_date('01-10-1984', 'dd-mm-yyyy'), 7645678765, 'Daniel_Faviet@gmail.com', 'Whitehorse         ', 'user', 'Daniel_Faviet');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('John_Chen', 'John', 'M', to_date('02-01-1984', 'dd-mm-yyyy'), 3456787653, 'John_Chen@gmail.com', 'Beijing            ', 'user', 'John_Chen');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('Ismael_Sciarra', 'Ismael', 'M', to_date('03-12-1984', 'dd-mm-yyyy'), 2345678765, 'Ismael_Sciarra@gmail.com', 'Bombay             ', 'user', 'Ismael_Sciarra');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('Jose Manuel_Urman', 'Jose Manuel', 'F', to_date('04-05-1984', 'dd-mm-yyyy'), 4567876543, 'JoseManuel_Urman@gmail.com', 'Sydney             ', 'user', 'Jose Manuel_Urman');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('Luis_Popp', 'Luis', 'F', to_date('05-01-1984', 'dd-mm-yyyy'), 3456765434, 'Luis_Popp@gmail.com', 'Singapore          ', 'user', 'Luis_Popp');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('Den_Raphaely', 'Den', 'M', to_date('06-11-1984', 'dd-mm-yyyy'), 3456723456, 'Den_Raphaely@gmail.com', 'London             ', 'user', 'Den_Raphaely');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('Alexander_Khoo', 'Alexander', 'M', to_date('07-10-1984', 'dd-mm-yyyy'), 3456723456, 'Alexander_Khoo@gmail.com', 'Oxford             ', 'user', 'Alexander_Khoo');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('Shelli_Baida', 'Shelli', 'F', to_date('08-02-1984', 'dd-mm-yyyy'), 3487654345, 'Shelli_Baida@gmail.com', 'Stretford          ', 'user', 'Shelli_Baida');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('Sigal_Tobias', 'Sigal', 'M', to_date('09-06-1984', 'dd-mm-yyyy'), 4567876543, 'Sigal_Tobias@gmail.com', 'Munich             ', 'user', 'Sigal_Tobias');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('Guy_Himuro', 'Guy', 'M', to_date('10-10-1984', 'dd-mm-yyyy'), 3456788765, 'Guy_Himuro@gmail.com', 'Sao Paulo          ', 'user', 'Guy_Himuro');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('Karen_Colmenares', 'Karen', 'M', to_date('12-12-1985', 'dd-mm-yyyy'), 3456788765, 'Karen_Colmenares@gmail.com', 'Geneva             ', 'user', 'Karen_Colmenares');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('mohit', 'mohit jain', 'M', to_date('12-03-1987', 'dd-mm-yyyy'), 9540297513, 'mohi_cyber@yahoo.com', 'Bathinda', 'admin', 'jain');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('neha', 'neha bhatnagar', 'F', to_date('26-09-1984', 'dd-mm-yyyy'), 9555742632, 'Neena_Kochhar@gmail.com', 'ferozepur', 'admin', 'neha');
commit;
prompt 22 records loaded
set feedback on
set define on
prompt Done.
