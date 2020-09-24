CREATE TABLE `Entertainment` (
	`Ent_Num`	CHAR(20)	NOT NULL,
	`Ent_Name`	VARCHAR(30)	NULL,
	`Reg_Name`	VARCHAR(30)	NOT NULL,
	`Reg_Date`	DATE	NOT NULL
);

CREATE TABLE `User_Manage` (
	`User_Id`	VARCHAR(30)	NOT NULL,
	`User_Pw`	VARCHAR(100)	NOT NULL,
	`User_Name`	VARCHAR(30)	NOT NULL,
	`User_Email`	VARCHAR(100)	NOT NULL,
	`User_Contact`	VARCHAR(30)	NOT NULL,
	`User_Rank`	VARCHAR(30)	NOT NULL,
	`Reg_Id`	VARCHAR(30)	NOT NULL,
	`Reg_Date`	DATETIME	NOT NULL,
	`Changer_Id`	VARCHAR(30)	NOT NULL,
	`Change_Date`	DATETIME	NOT NULL,
	`Del_Check`	CHAR(1)	NOT NULL	DEFAULT 'N'	COMMENT ''Y' or 'N''
);

CREATE TABLE `Album` (
	`Album_Code`	CHAR(10)	NOT NULL,
	`Artist_Id`	CHAR(20)	NOT NULL,
	`UPC2`	CHAR(20)	NOT NULL,
	`Reg_Id`	VARCHAR(30)	NOT NULL,
	`Album_Pic`	VARCHAR(255)	NOT NULL	COMMENT '이미지경로',
	`Album_Title`	VARCHAR(50)	NOT NULL,
	`Album_Artist`	VARCHAR(500)	NOT NULL	COMMENT '다중값, {]로 구별',
	`Birth_Date`	DATETIME	NOT NULL,
	`Selling_Date`	DATETIME	NOT NULL,
	`Distributor`	VARCHAR(30)	NOT NULL,
	`Agency`	VARCHAR(30)	NOT NULL	COMMENT '엔터테인먼트 참조',
	`Reg_Time`	DATETIME	NOT NULL,
	`Featuring_Artist`	VARCHAR(500)	NULL	COMMENT '다중값,{]로 구별',
	`Album_Sell_Check`	CHAR(1)	NOT NULL	DEFAULT 'Y'	COMMENT ''Y' or 'N'',
	`Album_Inf`	TEXT	NULL,
	`Exception_Country`	VARCHAR(30)	NULL	COMMENT '다중값',
	`Remark`	TEXT	NULL,
	`Exception_Channel`	VARCHAR(30)	NULL	COMMENT '다중값',
	`Main_Language`	VARCHAR(30)	NOT NULL	DEFAULT "KOREAN",
	`Release_Country`	VARCHAR(30)	NOT NULL	DEFAULT "KOREA",
	`Album_Importance`	TINYINT(1)	NOT NULL	DEFAULT 3	COMMENT '1,2,3,4,5'
);

CREATE TABLE `Song` (
	`Track_Code`	CHAR(14)	NOT NULL,
	`Album_Code`	CHAR(10)	NOT NULL,
	`ISRC2`	CHAR(20)	NOT NULL,
	`UCI-Code`	CHAR(40)	NOT NULL,
	`Track_Num`	INT	NOT NULL,
	`Song_Wav`	VARCHAR(255)	NOT NULL	COMMENT '파일서버의 링크',
	`Song_Lyrics`	TEXT	NULL,
	`Track_Janre`	VARCHAR(30)	NOT NULL,
	`CD_Num`	INT	NOT NULL,
	`Audio_Language`	VARCHAR(30)	NOT NULL	DEFAULT "KOREAN",
	`Track_Agency`	VARCHAR(30)	NOT NULL,
	`Upload_Type`	VARCHAR(50)	NOT NULL	DEFAULT "아트트랙+사운드리코딩",
	`Adult or Not`	CHAR(1)	NOT NULL	DEFAULT 'N'	COMMENT ''Y' or 'N'',
	`Service or Not`	CHAR(1)	NOT NULL	DEFAULT 'Y'	COMMENT ''Y' or 'N'',
	`Main_Artist`	VARCHAR(500)	NOT NULL	COMMENT '다중값 , {] 로 구별',
	`Featuring_Artist`	VARCHAR(500)	NULL	COMMENT '다중값,{] 로 구별',
	`SongWriter`	VARCHAR(500)	NULL	COMMENT '다중값,{]로 구별',
	`Composer`	VARCHAR(500)	NULL	COMMENT '다중값,{]로 구별',
	`Arranger`	VARCHAR(500)	NULL	COMMENT '다중값,{]로 구별'
);

CREATE TABLE `Artist` (
	`Artist_Id`	CHAR(20)	NOT NULL,
	`Apple_id`	VARCHAR(30)	NOT NULL,
	`Artist_Pic`	VARCHAR(255)	NULL	COMMENT '이미지경로',
	`Remark`	TEXT	NULL
);

CREATE TABLE `Platform` (
	`Platform_Id`	VARCHAR(50)	NOT NULL,
	`Platform_Name`	VARCHAR(50)	NOT NULL,
	`Reg_Name`	VARCHAR(50)	NOT NULL,
	`Reg_Date`	DATE	NOT NULL
);

CREATE TABLE `UPC_Manage` (
	`UPC`	CHAR(20)	NOT NULL,
	`Available_Check`	CHAR(1)	NOT NULL	COMMENT ''Y' or 'N'',
	`Issue_Date`	DATE	NULL	COMMENT '이용가능이 안될시 발급날짜 기재 필수'
);

CREATE TABLE `ISCR_Manage` (
	`ISRC`	CHAR(20)	NOT NULL,
	`Available_Check`	CHAR(1)	NOT NULL	COMMENT ''Y' or 'N'',
	`Issue_Date`	DATE	NULL	COMMENT '이용가능이 안될시 발급날짜 기재 필수'
);

CREATE TABLE `Banned_Word_Mange` (
	`Banned`	VARCHAR(30)	NOT NULL
);

CREATE TABLE `Sales_Management` (
	`Ent_Num`	CHAR(20)	NOT NULL,
	`Ent_Name`	VARCHAR(30)	NOT NULL,
	`Rate`	INT	NOT NULL,
	`Count`	INT	NOT NULL,
	`FlatForm_Sales`	INT	NOT NULL,
	`IOK_Sales_Before`	INT	NOT NULL,
	`Withholding_Tax`	INT	NOT NULL,
	`IOK_Sales_After`	INT	NOT NULL,
	`Copyright`	INT	NOT NULL,
	`Performance_Right`	INT	NOT NULL,
	`Company_Settlement`	INT	NOT NULL,
	`IOK_Fees`	INT	NOT NULL,
	`Reserve`	INT	NOT NULL
);

CREATE TABLE `Account_Managing` (
	`ID`	VARCHAR(30)	NOT NULL,
	`Password`	VARCHAR(50)	NOT NULL,
	`Item`	VARCHAR(50)	NOT NULL,
	`Address`	VARCHAR(255)	NOT NULL,
	`Sorting`	VARCHAR(30)	NOT NULL	COMMENT '자사,해외,기타'
);

CREATE TABLE `Common_Contact_Managing` (
	`Managing_Num`	INT	NOT NULL,
	`Name`	VARCHAR(30)	NOT NULL,
	`Company_Name`	VARCHAR(30)	NOT NULL,
	`E-mail`	VARCHAR(30)	NULL,
	`Contact-Num`	VARCHAR(30)	NULL,
	`Spot/Position`	VARCHAR(30)	NULL
);

CREATE TABLE `File_Managing` (
	`Managing_Num`	INT	NOT NULL,
	`Item`	VARCHAR(50)	NOT NULL,
	`Sorting`	VARCHAR(30)	NOT NULL,
	`File`	VARCHAR(255)	NOT NULL	COMMENT '링크주소'
);

CREATE TABLE `FTP_Check` (
	`No`	INT	NOT NULL,
	`Album_Code`	CHAR(10)	NOT NULL,
	`Album_Num`	INT	NOT NULL,
	`Track_Num`	INT	NOT NULL,
	`Trans_Time`	DATE	NOT NULL,
	`CHECK`	CHAR(1)	NOT NULL	COMMENT ''Y' or 'N'',
	`Error_Cause`	VARCHAR(1000)	NULL
);

CREATE TABLE `Rate` (
	`Platform_Id`	VARCHAR(50)	NOT NULL,
	`Name`	VARCHAR(50)	NOT NULL,
	`Rate`	INT	NOT NULL
);

CREATE TABLE `Monitering` (
	`No`	INT	NOT NULL,
	`Cover_Image`	VARCHAR(255)	NOT NULL	COMMENT '링크주소',
	`UPC`	CHAR(20)	NOT NULL,
	`Artist`	VARCHAR(500)	NOT NULL,
	`Release_Date`	DATE	NOT NULL,
	`Sales_Date`	DATE	NOT NULL,
	`Chaneel`	VARCHAR(30)	NOT NULL,
	`Trans_Status`	VARCHAR(30)	NOT NULL	COMMENT '등록대기,대기',
	`Service_Status`	VARCHAR(30)	NOT NULL	COMMENT 'None,Live,Ongoing',
	`Exception_Country`	VARCHAR(50)	NULL	COMMENT '다중값,{] 로 구별',
	`Link_Address`	VARCHAR(3000)	NOT NULL	COMMENT '다중값,{]로 구별',
	`Distributor`	VARCHAR(30)	NOT NULL,
	`Agency`	VARCHAR(30)	NOT NULL,
	`Remark`	VARCHAR(1000)	NULL,
	`Album_Code`	CHAR(10)	NOT NULL
);

ALTER TABLE `Entertainment` ADD CONSTRAINT `PK_ENTERTAINMENT` PRIMARY KEY (
	`Ent_Num`
);

ALTER TABLE `User_Manage` ADD CONSTRAINT `PK_USER_MANAGE` PRIMARY KEY (
	`User_Id`
);

ALTER TABLE `Album` ADD CONSTRAINT `PK_ALBUM` PRIMARY KEY (
	`Album_Code`
);

ALTER TABLE `Song` ADD CONSTRAINT `PK_SONG` PRIMARY KEY (
	`Track_Code`,
	`Album_Code`
);

ALTER TABLE `Artist` ADD CONSTRAINT `PK_ARTIST` PRIMARY KEY (
	`Artist_Id`
);

ALTER TABLE `Platform` ADD CONSTRAINT `PK_PLATFORM` PRIMARY KEY (
	`Platform_Id`
);

ALTER TABLE `UPC_Manage` ADD CONSTRAINT `PK_UPC_MANAGE` PRIMARY KEY (
	`UPC`
);

ALTER TABLE `ISCR_Manage` ADD CONSTRAINT `PK_ISCR_MANAGE` PRIMARY KEY (
	`ISRC`
);

ALTER TABLE `Banned_Word_Mange` ADD CONSTRAINT `PK_BANNED_WORD_MANGE` PRIMARY KEY (
	`Banned`
);

ALTER TABLE `Sales_Management` ADD CONSTRAINT `PK_SALES_MANAGEMENT` PRIMARY KEY (
	`Ent_Num`
);

ALTER TABLE `Account_Managing` ADD CONSTRAINT `PK_ACCOUNT_MANAGING` PRIMARY KEY (
	`ID`
);

ALTER TABLE `Common_Contact_Managing` ADD CONSTRAINT `PK_COMMON_CONTACT_MANAGING` PRIMARY KEY (
	`Managing_Num`
);

ALTER TABLE `File_Managing` ADD CONSTRAINT `PK_FILE_MANAGING` PRIMARY KEY (
	`Managing_Num`
);

ALTER TABLE `FTP_Check` ADD CONSTRAINT `PK_FTP_CHECK` PRIMARY KEY (
	`No`
);

ALTER TABLE `Rate` ADD CONSTRAINT `PK_RATE` PRIMARY KEY (
	`Platform_Id`
);

ALTER TABLE `Monitering` ADD CONSTRAINT `PK_MONITERING` PRIMARY KEY (
	`No`
);

ALTER TABLE `Song` ADD CONSTRAINT `FK_Album_TO_Song_1` FOREIGN KEY (
	`Album_Code`
)
REFERENCES `Album` (
	`Album_Code`
);

ALTER TABLE `Sales_Management` ADD CONSTRAINT `FK_Entertainment_TO_Sales_Management_1` FOREIGN KEY (
	`Ent_Num`
)
REFERENCES `Entertainment` (
	`Ent_Num`
);

ALTER TABLE `Rate` ADD CONSTRAINT `FK_Platform_TO_Rate_1` FOREIGN KEY (
	`Platform_Id`
)
REFERENCES `Platform` (
	`Platform_Id`
);

