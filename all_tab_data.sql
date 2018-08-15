prompt PL/SQL Developer import file
prompt Created on Thursday, November 05, 2009 by Abhinav
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
values ('Mohit', 'Mohit');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('Neha', 'Neha');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('India', 'India');
insert into LOG_TAB (USER_ID, USER_PASS)
values ('scott', 'tiger');
commit;
prompt 5 records loaded
prompt Loading RESERVATION...
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (1, null, null, null, null, null, null, null, null, null, 'akhhtar', null, null, null, 'yes');
insert into RESERVATION (TCT_NO, FLIGHT_NO, SEAT_NO, FLIGHT_DATE, FLIGHT_TIME, SOURCE, DESTINATION, CLASS, RESERVE_DATE, TOTAL_FARE, P_NAME, P_ADD, P_CNTCT_NO, PASSPORT_NO, STATUS)
values (2, null, null, null, null, null, null, null, null, null, 'Raj', null, null, null, 'yes');
commit;
prompt 2 records loaded
prompt Loading ROUTE_DETAIL...
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('DB01', 'Delhi', 'Banglore', null, null, null, 5500, 5000);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('DB02', 'Delhi', 'Indore', null, null, null, 5000, 4500);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('DB02', 'Indore', 'Banglore', null, null, null, 4500, 4000);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('CM01', 'Chandigarh', 'Delhi', null, null, null, 4800, 4400);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('CM01', 'Delhi', 'Mumbai', null, null, null, 5600, 5100);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('HC02', 'Hydrabad', 'Chennai', null, null, null, 3600, 3000);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('DG01', 'Delhi', 'Mumbai', null, null, null, 5600, 5100);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('DG01', 'Mumbai', 'Goa', null, null, null, 5000, 4500);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('AD01', 'Amritsar', 'Delhi', null, null, null, 4000, 3500);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('MP01', 'Mumbai', 'Pune', null, null, null, 3500, 3000);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('DM01', 'Delhi', 'Jaipur', null, null, null, 5900, 5400);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('DM01', 'Jaipur', 'Mumbai', null, null, null, 5400, 4900);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('DK01', 'Delhi', 'Kolkatta', null, null, null, 7700, 7000);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('HK01', 'Hydrabad', 'Kolkatta', null, null, null, 7100, 6500);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('KP01', 'Kolkatta', 'Pune', null, null, null, 5900, 5500);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('MK01', 'Mumbai', 'Kolkatta', null, null, null, 5500, 4500);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('JK01', 'Jaipur', 'Kolkatta', null, null, null, 7300, 6700);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('DH01', 'Delhi', 'Hydrabad', null, null, null, 7500, 6800);
insert into ROUTE_DETAIL (ROUTE_CODE, SOURCE, DESTINATION, FLIGHT_DATE, FLIGHT_DEP_TIME, FLIGHT_ARR_TIME, ECO_FARE, BUSS_FARE)
values ('DC01', 'Delhi', 'Chennai', null, null, null, 8500, 8000);
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
values ('Akhtar', 'Akhtar Ali', 'M', to_date('04-02-1980', 'dd-mm-yyyy'), 9876547655, 'akhtar786ali1@gmail.com', 'jharkhand', 'admin', 'Akhtar');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('mena', 'ne''ha', null, to_date('24-09-2009', 'dd-mm-yyyy'), 2346466, 'neha.bhatnagar@gmail.com', 'eudiecokc', 'hsdkwjdl', 'hello');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('mohicyber', 'mohit jain', null, to_date('12-03-1987', 'dd-mm-yyyy'), 123456789, 'mohicyber@gmail.com', 'mofko bathinda', 'user', 'mohitjain');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('111', 'mohit', 'M', to_date('12-03-1987', 'dd-mm-yyyy'), 9540297513, 'mohi_cyber@yahoo.com', 'Bathinda', 'user', 'mohit');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('101', 'neha', 'F', to_date('26-09-1984', 'dd-mm-yyyy'), 9555742632, 'neha_bhatnagar@gmail.com', 'Ferozepur', 'user', 'neha');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('mohi_cyber', 'mohit', null, to_date('12-03-1987', 'dd-mm-yyyy'), 9540297513, 'mohitjain7713@gmail.com', 'Bathinda', 'user', 'mohit');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('mohit', 'mohit jain', null, to_date('12-03-1987', 'dd-mm-yyyy'), 456789, 'mohicyber@gmail.com', ' ndkhfvjihmjkji', 'user', 'mohit');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('mo', 'mohit', 'M', to_date('12-03-1987', 'dd-mm-yyyy'), 2833330002, 'mkoef', 'iefirvvc jwf', 'nvd', 'jain');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('mohi', null, null, null, null, null, null, null, 'jain');
insert into USER_MASTER (USER_ID, U_NAME, GENDER, U_DOB, U_CNTCT_NO, U_EMAIL_ID, U_ADD, U_DESIG, U_PASS)
values ('vishi', null, null, null, null, null, null, null, 'vishi');
commit;
prompt 10 records loaded
set feedback on
set define on
prompt Done.
