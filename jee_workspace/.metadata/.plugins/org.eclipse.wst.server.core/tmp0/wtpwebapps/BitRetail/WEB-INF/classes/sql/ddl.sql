SELECT * FROM EMPLOYEES;

DROP TABLE PRODUCTS CASCADE CONSTRAINTS;
DROP TABLE CUSTOMERS CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEES CASCADE CONSTRAINTS;
DROP TABLE ORDERS CASCADE CONSTRAINTS;
DROP TABLE ORDER_DETAILS CASCADE CONSTRAINTS;
DROP TABLE CATEGORIES CASCADE CONSTRAINTS;
DROP TABLE SHIPPERS CASCADE CONSTRAINTS;
DROP TABLE SUPPLIERS CASCADE CONSTRAINTS;



CREATE TABLE CUSTOMERS(
CUSTOMER_ID VARCHAR2(15) PRIMARY KEY, 
CUSTOMER_NAME VARCHAR2(15) NOT NULL,
PASSWORD VARCHAR2(15) NOT NULL,
SSN VARCHAR2(15) NOT NULL,
PHONE VARCHAR2(15) NOT NULL,
POSTAL_CODE VARCHAR2(60) NOT NULL,
CITY VARCHAR2(60) NOT NULL,
ADDRESS VARCHAR2(60) NOT NULL,
PHOTO VARCHAR2(60) DEFAULT 'default_photo'
);
CREATE TABLE EMPLOYEES(
EMPLOYEES_ID VARCHAR2(15) PRIMARY KEY,
LAST_NAME VARCHAR2(15) NOT NULL,
FIRST_NAME VARCHAR2(15) NOT NULL,
BIRTH_DATE VARCHAR2(15) NOT NULL,
PHOTO VARCHAR2(15) DEFAULT '파일명',
NOTES VARCHAR2(15) DEFAULT '메모'
);
CREATE TABLE SHIPPERS(
SHIPPER_ID VARCHAR2(15)  PRIMARY KEY,
SHIPPER_NAME VARCHAR2(15) NOT NULL,
PHONE VARCHAR2(15) NOT NULL
);

CREATE TABLE ORDERS(
ORDER_ID NUMBER PRIMARY KEY,
CUSTOMER_ID VARCHAR2(15),
CONSTRAINT ORDERS_FK_CUSTOMERS FOREIGN KEY(CUSTOMER_ID)
    REFERENCES CUSTOMERS(CUSTOMER_ID),
    
EMPLOYEES_ID VARCHAR2(15),
CONSTRAINT ORDERS_FK_EMPLOYEES FOREIGN KEY(EMPLOYEES_ID)
    REFERENCES EMPLOYEES(EMPLOYEES_ID),
    
ORDERDATE DATE DEFAULT SYSDATE,

SHIPPER_ID VARCHAR2(15),
CONSTRAINT ORDERS_FK_SHIPPERS FOREIGN KEY(SHIPPER_ID)
    REFERENCES SHIPPERS(SHIPPER_ID)
);

CREATE TABLE SUPPLIERS(
SUPPLIER_ID VARCHAR2(15) PRIMARY KEY,
SUPPLIER_NAME VARCHAR2(15) NOT NULL,
ADDRESS VARCHAR2(15) NOT NULL,
CITY VARCHAR2(15) NOT NULL,
POSTALCODE VARCHAR2(15) NOT NULL,
PHONE VARCHAR2(15) NOT NULL
);

CREATE TABLE CATEGORIES(
CATEGORY_ID NUMBER PRIMARY KEY,
CATEGORY_NAME VARCHAR2(15) NOT NULL,
DESCRIPTION VARCHAR2(15)
);

CREATE TABLE PRODUCTS(
PRODUCTS_ID NUMBER PRIMARY KEY,
PRODUCT_NAME VARCHAR2(15) NOT NULL,
SUPPLIER_ID VARCHAR2(15),
CONSTRAINT PRODUCTS_FK_SUPPLIERS FOREIGN KEY(SUPPLIER_ID)
    REFERENCES SUPPLIERS(SUPPLIER_ID),
CATEGORY_ID NUMBER,
CONSTRAINT PRODUCTS_FK_CATEGORIES FOREIGN KEY(CATEGORY_ID)
    REFERENCES CATEGORIES(CATEGORY_ID),
UNIT VARCHAR2(15) NOT NULL,
PRICE NUMBER DEFAULT 0
);


CREATE TABLE ORDER_DETAILS(
ORDERDETAIL_ID NUMBER PRIMARY KEY,
ORDER_ID NUMBER,
CONSTRAINT ORDERDETAILS_FK_ORDERS FOREIGN KEY(ORDER_ID)
    REFERENCES ORDERS(ORDER_ID),
PRODUCTS_ID NUMBER,
CONSTRAINT ORDERDETAILS_FK_PRODUCTS FOREIGN KEY(PRODUCTS_ID)
    REFERENCES PRODUCTS(PRODUCTS_ID),
QUANTITY NUMBER DEFAULT 0
);


 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('whdguq3080','이종협','123456','940107-1233717','010-1234-5678','경기도 파주시 문산읍','방촌로1648','10820','DEFAULT_PHOTO');
 
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('dudtn01','김영수','456123','950607-1242717','010-1234-5555','경기도 파주시 시청로 66','아동동 216','10932','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('dudgh123','최영호','456112','890607-1232717','010-8885-5555','경기도 파주시 금정로 45 ','금촌동 947-28','10928','DEFAULT_PHOTO');
 
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('dudtlrdlek123','이영식','856112','990607-1282717','010-2234-5555','경기도 파주시 후곡로 13 ','금촌동 953-1','10924','DEFAULT_PHOTO');
 
INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('dudcjf13','박영철','856112','990607-1282717','010-9518-5255','경기도 파주시 파주읍 파발로26번길 7','파주리 816','10835','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('wjdtnek3','윤정수','812548','790607-1282717','010-8518-5253','경기도 파주시 파주로 478-10','목동동 415-67','10871','DEFAULT_PHOTO');
 
  INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('tnswk333','김순자','812548','890203-2247227','010-2115-7853','부산광역시 동래구 사직로 77 ','사직동 749-6','47873','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('dldudwk12','이영자','018752','890203-2257277','010-5010-6853','부산광역시 연제구 토곡로 74','연산동 3-5','47584','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('chlwlgns0','최지훈','816512','690503-1227277','010-4080-6813','부산광역시 북구 만덕대로155번길 99-1','덕천동 22','46550','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('rlawl1','김지영','000411','930506-1228277','010-4582-6853','부산광역시 부산진구 화지로 12','양정동 455-1','47119','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('qkrwl55','박지혜','154815','960706-2228271','010-7525-1853','광주광역시 남구 대남대로 289','월산동 1050-3','61615','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('tnqlsdlek','최수빈','852915','970506-2224561','010-4425-2253','광주광역시 서구 화정로 149','화정동 898','61986','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('wlsdbtj','서유진','753184','920106-2224466','010-7135-1982','광주광역시 남구 봉선중앙로 106','봉선동 1016','61670','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('alstjakstp11','나민서','125481','910608-2212341','010-9518-3715','경상북도 칠곡군 북삼읍 인강5길 51 ','인평리 675-2','39810','DEFAULT_PHOTO');
 
  INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('rudtntntn','경수진','548231','911208-2352343','010-9113-0044','전라남도 여수시 문수북5길 7-16','문수동 4-1','59714','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('tjdmsdlekd','서은주','678123','811111-2312341','010-8121-4646','전라남도 고흥군 고흥읍 서문여산길 68-1','서문리 219-80','59540','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('dlaldud55','이미영','462130','980815-2312341','010-4561-4200','충청북도 보은군 보은읍 죽전제방길 22-18','죽전리 81','28954','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('wlalscjstk13','한지민','622003','820618-2311141','010-0808-6512','경기도 안양시 만안구 안양로532번길 13-12','석수동 266-18','13962','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('rudgmlxzx','최경희','084012','580123-2314561','010-0811-4215','경기도 가평군 상면 태봉골길 165-13 ','태봉리 9-1','12442','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('wkdalwkdal','장미숙','134844','780612-2322131','010-4113-1480','경기도 안성시 죽산면 관음당길 39-10','장원리 1379-2','17520','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('qkrduddl12','박영숙','662331','911123-2148711','010-3125-1000','경기도 수원시 장안구 송정로76번길 45','정자동 13','16311','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('dudgml66','김영희','184493','780622-2352333','010-0102-1240','경기도 안성시 금산1길 13','금산동 50-1','17587','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('qkrtjqkrtj','박서연','311084','930112-2312411','010-2261-4230','인천광역시 남동구 남촌로93번길 44','남촌동 571-1','21627','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('wndnjs123','하주원','003510','780225-2314142','010-3030-1100','인천광역시 남동구 남동대로370번길 122','논현동 563-2','21637','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('tlaalrud123','심미경','211080','930224-2310001','010-3111-1231','대구광역시 남구 대봉로 146','이천동 281-1','42436','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('dnwls2212','김우진','002160','930622-2308081','010-1877-3300','대구광역시 서구 서대구로3길 76','내당동 358-2','41854','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('whtjdals111','조성민','616161','921122-1234511','010-9981-3220','대전광역시 서구 배재로54번길 17','도마동 317-44','35339','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('gusdn1231','이현우','002418','900117-1238911','010-6631-0240','대전광역시 서구 용화6길 20','도마동 63-6','35333','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('tjdwls1241','김성진','006494','930521-1234551','010-0448-2341','대전광역시 서구 신갈마로86번길 14','갈마동 410-1','35282','DEFAULT_PHOTO');
 
 INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('qkrwjd1232','박정훈','336151','930622-1280811','010-5849-1006','대전광역시 동구 동서대로 1579 ','홍도동 14-1','34557','DEFAULT_PHOTO');
 
  INSERT INTO CUSTOMERS(CUSTOMER_ID,CUSTOMER_NAME,PASSWORD,SSN,PHONE,POSTAL_CODE,CITY,ADDRESS,PHOTO)
 VALUES('tjdgns0000','성훈','000331','900721-1233718','010-6469-1556','대전광역시 서구 도솔3길 59','도마동 119-6','35338','DEFAULT_PHOTO');

SELECT * FROM CUSTOMERS;