--------------------------------------------------------
--  File created - Monday-September-29-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TABLE1
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."TABLE1" 
   (	"ID" NUMBER(*,0), 
	"NOM" VARCHAR2(100 BYTE), 
	"DT" DATE, 
	"NUM" NUMBER(*,0) DEFAULT 1, 
	"ID_TABLE2" NUMBER(*,0), 
	"ID_TABLE3" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TABLE2
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."TABLE2" 
   (	"ID" NUMBER(*,0), 
	"NOM" VARCHAR2(100 BYTE), 
	"ID_TABLE3" NUMBER(*,0), 
	"NOM_TABLE3" VARCHAR2(100 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TABLE3
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."TABLE3" 
   (	"ID" NUMBER(*,0), 
	"NOM" VARCHAR2(100 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMPANY
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."COMPANY" 
   (	"ID" NUMBER(*,0), 
	"DUNS" VARCHAR2(9 BYTE), 
	"NAME" VARCHAR2(255 BYTE), 
	"ADDRESS" VARCHAR2(255 BYTE), 
	"ZIP_CODE" VARCHAR2(5 BYTE), 
	"COMPANY_CREATION" DATE, 
	"WEBSITE" VARCHAR2(255 BYTE), 
	"PHONE_NUMBER" VARCHAR2(255 BYTE), 
	"CITY" VARCHAR2(255 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CONTACT
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CONTACT" 
   (	"ID" VARCHAR2(255 BYTE), 
	"EMAIL" VARCHAR2(255 BYTE), 
	"AGE" NUMBER(*,0), 
	"NAME" VARCHAR2(255 BYTE), 
	"FIRSTNAME" VARCHAR2(255 BYTE), 
	"COMPANY_ID" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.TABLE1
SET DEFINE OFF;
REM INSERTING into SYSTEM.TABLE2
SET DEFINE OFF;
REM INSERTING into SYSTEM.TABLE3
SET DEFINE OFF;
REM INSERTING into SYSTEM.COMPANY
SET DEFINE OFF;
REM INSERTING into SYSTEM.CONTACT
SET DEFINE OFF;
--------------------------------------------------------
--  Constraints for Table TABLE1
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TABLE1" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."TABLE1" MODIFY ("DT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."TABLE1" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TABLE2
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TABLE2" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."TABLE2" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TABLE3
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TABLE3" ADD CONSTRAINT "U_TABLE3" UNIQUE ("ID", "NOM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."TABLE3" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."TABLE3" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMPANY
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."COMPANY" ADD UNIQUE ("DUNS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."COMPANY" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."COMPANY" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CONTACT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CONTACT" ADD UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."CONTACT" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."CONTACT" MODIFY ("EMAIL" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table TABLE1
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TABLE1" ADD CONSTRAINT "SYS_C007004" FOREIGN KEY ("ID_TABLE2")
	  REFERENCES "SYSTEM"."TABLE2" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SYSTEM"."TABLE1" ADD FOREIGN KEY ("ID_TABLE3")
	  REFERENCES "SYSTEM"."TABLE3" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TABLE2
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TABLE2" ADD CONSTRAINT "FK_TABLE2_TABLE3" FOREIGN KEY ("ID_TABLE3", "NOM_TABLE3")
	  REFERENCES "SYSTEM"."TABLE3" ("ID", "NOM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CONTACT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CONTACT" ADD FOREIGN KEY ("COMPANY_ID")
	  REFERENCES "SYSTEM"."COMPANY" ("ID") ENABLE;
