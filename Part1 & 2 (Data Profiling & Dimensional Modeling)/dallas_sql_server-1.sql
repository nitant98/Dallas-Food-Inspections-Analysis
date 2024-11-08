/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      Dim_model_Dallas.DM1
 *
 * Date Created : Sunday, February 26, 2023 16:38:15
 * Target DBMS : Microsoft Azure SQL DB
 */

CREATE DATABASE Dallas
go
/* 
 * TABLE: Dim_Address 
 */

CREATE TABLE Dim_Address(
    AddressSK               int              NOT NULL,
    [Street Address]        nvarchar(254)    NULL,
    [Street Direction]      nvarchar(254)    NULL,
    [Street Name]           nvarchar(254)    NULL,
    [Street Number]         nvarchar(254)    NULL,
    [Street Type]           nvarchar(254)    NULL,
    [Street Unit]           nvarchar(254)    NULL,
    [Zip Code]              nvarchar(254)    NULL,
    Latitude                float            NULL,
    Longitude               float            NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowFileName     nvarchar(254)    NULL,
    DI_WorkflowDirectory    nvarchar(254)    NULL,
    CONSTRAINT PK_Restaurant_SK_1 PRIMARY KEY NONCLUSTERED (AddressSK)
)

go


IF OBJECT_ID('Dim_Address') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Address >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Address >>>'
go

/* 
 * TABLE: Dim_Date 
 */

CREATE TABLE Dim_Date(
    DateSK                  int              NOT NULL,
    FullDateAK              date             NOT NULL,
    DayNumberOfWeek         int              NOT NULL,
    DayNameOfWeek           nvarchar(10)     NOT NULL,
    DayNumberOfMonth        int              NOT NULL,
    DayNumberOfYear         int              NOT NULL,
    WeekNumberOfYear        int              NOT NULL,
    MonthName               nvarchar(10)     NOT NULL,
    MonthNumberOfYear       int              NOT NULL,
    CalendarQuarter         int              NOT NULL,
    CalendarYear            smallint         NOT NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowFileName     nvarchar(254)    NULL,
    DI_WorkflowDirectory    nvarchar(254)    NULL,
    CONSTRAINT PK__Dim_Date__A4262D750061DAF4 PRIMARY KEY NONCLUSTERED (DateSK)
)

go


IF OBJECT_ID('Dim_Date') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Date >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Date >>>'
go

/* 
 * TABLE: Dim_Inspection_Type 
 */

CREATE TABLE Dim_Inspection_Type(
    InspectionSK            int              NOT NULL,
    [Inspection Type]       varchar(255)     NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowFileName     nvarchar(254)    NULL,
    DI_WorkFlowDirectory    nvarchar(254)    NULL,
    CONSTRAINT PK_INSPECTION_SK PRIMARY KEY NONCLUSTERED (InspectionSK)
)

go


IF OBJECT_ID('Dim_Inspection_Type') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Inspection_Type >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Inspection_Type >>>'
go

/* 
 * TABLE: Dim_Restaurant 
 */

CREATE TABLE Dim_Restaurant(
    Restaurant_SK           int              NOT NULL,
    [Restaurant Name]       nvarchar(254)    NULL,
    DI_CreateDate           datetime         NULL,
    DI_WorkflowFileName     nvarchar(254)    NULL,
    DI_WorkflowDirectory    nvarchar(254)    NULL,
    CONSTRAINT PK_Restaurant_SK PRIMARY KEY NONCLUSTERED (Restaurant_SK)
)

go


IF OBJECT_ID('Dim_Restaurant') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Restaurant >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Restaurant >>>'
go

/* 
 * TABLE: Dim_Violation 
 */

CREATE TABLE Dim_Violation(
    ViolationSK              int              NOT NULL,
    [VIOLATION ID]           int              NULL,
    [VIOLATION DESCRIPTION]  varchar(255)     NULL,
    [VIOLATION DETAIL]       varchar(255)     NULL,
    [VIOLATION MEMO]         varchar(255)     NULL,
    DI_CreateDate            datetime         NULL,
    DI_WorkflowFileName      nvarchar(254)    NULL,
    DI_WorkflowDirectory     nvarchar(254)    NULL,
    CONSTRAINT PK_VIOLATION_SK PRIMARY KEY NONCLUSTERED (ViolationSK)
)

go


IF OBJECT_ID('Dim_Violation') IS NOT NULL
    PRINT '<<< CREATED TABLE Dim_Violation >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Dim_Violation >>>'
go

/* 
 * TABLE: Fact_Inspection_Violation_SK 
 */

CREATE TABLE Fact_Inspection_Violation_SK(
    InspectionViolationSK    char(10)         NOT NULL,
    [Violation Points]       int              NULL,
    [Inspection Date]        date             NULL,
    Restaurant_SK            int              NOT NULL,
    AddressSK                int              NOT NULL,
    ViolationSK              int              NOT NULL,
    InspectionSK             int              NOT NULL,
    InspectionDateSk         int              NOT NULL,
    [Inspection Score]       int              NULL,
    DI_CreateDate            datetime         NULL,
    DI_WorkflowFileName      nvarchar(254)    NULL,
    DI_WorkflowDirectory     nvarchar(254)    NULL,
    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (InspectionViolationSK)
)

go


IF OBJECT_ID('Fact_Inspection_Violation_SK') IS NOT NULL
    PRINT '<<< CREATED TABLE Fact_Inspection_Violation_SK >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Fact_Inspection_Violation_SK >>>'
go

/* 
 * TABLE: Fact_Inspection_Violation_SK 
 */

ALTER TABLE Fact_Inspection_Violation_SK ADD CONSTRAINT RefDim_Restaurant1 
    FOREIGN KEY (Restaurant_SK)
    REFERENCES Dim_Restaurant(Restaurant_SK)
go

ALTER TABLE Fact_Inspection_Violation_SK ADD CONSTRAINT RefDim_Address2 
    FOREIGN KEY (AddressSK)
    REFERENCES Dim_Address(AddressSK)
go

ALTER TABLE Fact_Inspection_Violation_SK ADD CONSTRAINT RefDim_Violation3 
    FOREIGN KEY (ViolationSK)
    REFERENCES Dim_Violation(ViolationSK)
go

ALTER TABLE Fact_Inspection_Violation_SK ADD CONSTRAINT RefDim_Inspection_Type4 
    FOREIGN KEY (InspectionSK)
    REFERENCES Dim_Inspection_Type(InspectionSK)
go

ALTER TABLE Fact_Inspection_Violation_SK ADD CONSTRAINT RefDim_Date10 
    FOREIGN KEY (InspectionDateSk)
    REFERENCES Dim_Date(DateSK)
go


