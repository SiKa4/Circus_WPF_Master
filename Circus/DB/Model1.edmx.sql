
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/12/2024 14:42:03
-- Generated from EDMX file: C:\Users\tinco\OneDrive\Рабочий стол\Circus-master\Circus\DB\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Circus_Sagdieva];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Animal_AnimalType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Animal] DROP CONSTRAINT [FK_Animal_AnimalType];
GO
IF OBJECT_ID(N'[dbo].[FK_Animal_Gender]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Animal] DROP CONSTRAINT [FK_Animal_Gender];
GO
IF OBJECT_ID(N'[dbo].[FK_Application_Worker]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Applicationn] DROP CONSTRAINT [FK_Application_Worker];
GO
IF OBJECT_ID(N'[dbo].[FK_Cabinet_Worker]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Cabinet] DROP CONSTRAINT [FK_Cabinet_Worker];
GO
IF OBJECT_ID(N'[dbo].[FK_Cage_Animal]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Cage] DROP CONSTRAINT [FK_Cage_Animal];
GO
IF OBJECT_ID(N'[dbo].[FK_Perfomance_PerfomanceType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Perfomance] DROP CONSTRAINT [FK_Perfomance_PerfomanceType];
GO
IF OBJECT_ID(N'[Хранилище Circus_SagdievaModelContainer].[FK_Perfomance_Report1_Perfomance]', 'F') IS NOT NULL
    ALTER TABLE [Хранилище Circus_SagdievaModelContainer].[Perfomance_Report1] DROP CONSTRAINT [FK_Perfomance_Report1_Perfomance];
GO
IF OBJECT_ID(N'[Хранилище Circus_SagdievaModelContainer].[FK_Perfomance_Report1_Report11]', 'F') IS NOT NULL
    ALTER TABLE [Хранилище Circus_SagdievaModelContainer].[Perfomance_Report1] DROP CONSTRAINT [FK_Perfomance_Report1_Report11];
GO
IF OBJECT_ID(N'[dbo].[FK_Perfomance_Report2_Perfomance]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Perfomance_Report2] DROP CONSTRAINT [FK_Perfomance_Report2_Perfomance];
GO
IF OBJECT_ID(N'[dbo].[FK_Perfomance_Report2_Report21]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Perfomance_Report2] DROP CONSTRAINT [FK_Perfomance_Report2_Report21];
GO
IF OBJECT_ID(N'[dbo].[FK_Task_Worker]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Taskk] DROP CONSTRAINT [FK_Task_Worker];
GO
IF OBJECT_ID(N'[dbo].[FK_Timetable_Perfomance]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Timetable] DROP CONSTRAINT [FK_Timetable_Perfomance];
GO
IF OBJECT_ID(N'[dbo].[FK_Timetable_Worker]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Timetable] DROP CONSTRAINT [FK_Timetable_Worker];
GO
IF OBJECT_ID(N'[dbo].[FK_Worker_To_Position]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Worker] DROP CONSTRAINT [FK_Worker_To_Position];
GO
IF OBJECT_ID(N'[dbo].[FK_Worker_TypeOfArtist]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Worker] DROP CONSTRAINT [FK_Worker_TypeOfArtist];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Animal]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Animal];
GO
IF OBJECT_ID(N'[dbo].[AnimalType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AnimalType];
GO
IF OBJECT_ID(N'[dbo].[Applicationn]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Applicationn];
GO
IF OBJECT_ID(N'[dbo].[Cabinet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cabinet];
GO
IF OBJECT_ID(N'[dbo].[Cage]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cage];
GO
IF OBJECT_ID(N'[dbo].[DressingRoom]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DressingRoom];
GO
IF OBJECT_ID(N'[dbo].[Gender]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Gender];
GO
IF OBJECT_ID(N'[dbo].[Perfomance]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Perfomance];
GO
IF OBJECT_ID(N'[dbo].[Perfomance_Report2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Perfomance_Report2];
GO
IF OBJECT_ID(N'[dbo].[PerfomanceType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PerfomanceType];
GO
IF OBJECT_ID(N'[dbo].[Position]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Position];
GO
IF OBJECT_ID(N'[dbo].[Report1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Report1];
GO
IF OBJECT_ID(N'[dbo].[Report2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Report2];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[Taskk]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Taskk];
GO
IF OBJECT_ID(N'[dbo].[Timetable]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Timetable];
GO
IF OBJECT_ID(N'[dbo].[TypeOfArtist]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TypeOfArtist];
GO
IF OBJECT_ID(N'[dbo].[Worker]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Worker];
GO
IF OBJECT_ID(N'[Хранилище Circus_SagdievaModelContainer].[CostumeDept]', 'U') IS NOT NULL
    DROP TABLE [Хранилище Circus_SagdievaModelContainer].[CostumeDept];
GO
IF OBJECT_ID(N'[Хранилище Circus_SagdievaModelContainer].[Perfomance_Report1]', 'U') IS NOT NULL
    DROP TABLE [Хранилище Circus_SagdievaModelContainer].[Perfomance_Report1];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Animal'
CREATE TABLE [dbo].[Animal] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NULL,
    [ID_Type] int  NULL,
    [Age] int  NULL,
    [ID_Gender] int  NULL,
    [Weight] int  NULL,
    [FoodPreference] nvarchar(max)  NULL,
    [CareRecommendations] nvarchar(max)  NULL,
    [ID_Trainer] int  NULL
);
GO

-- Creating table 'AnimalType'
CREATE TABLE [dbo].[AnimalType] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Type] nvarchar(50)  NULL
);
GO

-- Creating table 'Applicationn'
CREATE TABLE [dbo].[Applicationn] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [ID_Artist] int  NULL,
    [Comment] nvarchar(max)  NULL,
    [DoneOrNo] bit  NULL
);
GO

-- Creating table 'Cabinet'
CREATE TABLE [dbo].[Cabinet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Type] nvarchar(50)  NULL,
    [ID_Worker] int  NULL
);
GO

-- Creating table 'Cage'
CREATE TABLE [dbo].[Cage] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [ID_Animal] int  NULL
);
GO

-- Creating table 'DressingRoom'
CREATE TABLE [dbo].[DressingRoom] (
    [ID] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Gender'
CREATE TABLE [dbo].[Gender] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(7)  NULL
);
GO

-- Creating table 'Perfomance'
CREATE TABLE [dbo].[Perfomance] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NULL,
    [ID_Type] int  NULL,
    [Date] datetime  NULL
);
GO

-- Creating table 'Perfomance_Report2'
CREATE TABLE [dbo].[Perfomance_Report2] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [ID_Perfomance2] int  NULL,
    [ID_Report2] int  NULL
);
GO

-- Creating table 'PerfomanceType'
CREATE TABLE [dbo].[PerfomanceType] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nchar(10)  NULL,
    [Prepayment] decimal(19,4)  NULL,
    [Company] nvarchar(50)  NULL
);
GO

-- Creating table 'Position'
CREATE TABLE [dbo].[Position] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(50)  NULL
);
GO

-- Creating table 'Report1'
CREATE TABLE [dbo].[Report1] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Profit] decimal(19,4)  NULL,
    [Expenses] decimal(19,4)  NULL,
    [ID_Type] nchar(10)  NULL,
    [Month] nvarchar(50)  NULL,
    [Year] int  NULL
);
GO

-- Creating table 'Report2'
CREATE TABLE [dbo].[Report2] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Month] nvarchar(50)  NULL,
    [Year] int  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'Taskk'
CREATE TABLE [dbo].[Taskk] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [ID_ServiceStaff] int  NULL,
    [Description] nvarchar(max)  NULL,
    [DoneOrNo] bit  NULL,
    [DateTime] datetime  NULL
);
GO

-- Creating table 'Timetable'
CREATE TABLE [dbo].[Timetable] (
    [ID] int  NOT NULL,
    [ID_Perfomance] int  NULL,
    [ID_Artist] int  NULL,
    [time] time  NULL
);
GO

-- Creating table 'TypeOfArtist'
CREATE TABLE [dbo].[TypeOfArtist] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nchar(12)  NULL,
    [AmountOfPerf] int  NULL
);
GO

-- Creating table 'Worker'
CREATE TABLE [dbo].[Worker] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Surname] nvarchar(30)  NOT NULL,
    [Name] nvarchar(30)  NOT NULL,
    [Patronymic] nvarchar(30)  NOT NULL,
    [DateOfBirth] datetime  NULL,
    [ID_Position] int  NOT NULL,
    [Phone] nvarchar(11)  NULL,
    [ID_TypeOfArtist] int  NULL,
    [Login] nvarchar(50)  NOT NULL,
    [Password] nvarchar(50)  NOT NULL,
    [Photo] varbinary(max)  NULL
);
GO

-- Creating table 'CostumeDept'
CREATE TABLE [dbo].[CostumeDept] (
    [ID] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Perfomance_Report1'
CREATE TABLE [dbo].[Perfomance_Report1] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [ID_Perfomance1] int  NULL,
    [ID_Report1] int  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'Animal'
ALTER TABLE [dbo].[Animal]
ADD CONSTRAINT [PK_Animal]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'AnimalType'
ALTER TABLE [dbo].[AnimalType]
ADD CONSTRAINT [PK_AnimalType]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Applicationn'
ALTER TABLE [dbo].[Applicationn]
ADD CONSTRAINT [PK_Applicationn]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Cabinet'
ALTER TABLE [dbo].[Cabinet]
ADD CONSTRAINT [PK_Cabinet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Cage'
ALTER TABLE [dbo].[Cage]
ADD CONSTRAINT [PK_Cage]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'DressingRoom'
ALTER TABLE [dbo].[DressingRoom]
ADD CONSTRAINT [PK_DressingRoom]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Gender'
ALTER TABLE [dbo].[Gender]
ADD CONSTRAINT [PK_Gender]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Perfomance'
ALTER TABLE [dbo].[Perfomance]
ADD CONSTRAINT [PK_Perfomance]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Perfomance_Report2'
ALTER TABLE [dbo].[Perfomance_Report2]
ADD CONSTRAINT [PK_Perfomance_Report2]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'PerfomanceType'
ALTER TABLE [dbo].[PerfomanceType]
ADD CONSTRAINT [PK_PerfomanceType]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Position'
ALTER TABLE [dbo].[Position]
ADD CONSTRAINT [PK_Position]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Report1'
ALTER TABLE [dbo].[Report1]
ADD CONSTRAINT [PK_Report1]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Report2'
ALTER TABLE [dbo].[Report2]
ADD CONSTRAINT [PK_Report2]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [ID] in table 'Taskk'
ALTER TABLE [dbo].[Taskk]
ADD CONSTRAINT [PK_Taskk]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Timetable'
ALTER TABLE [dbo].[Timetable]
ADD CONSTRAINT [PK_Timetable]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TypeOfArtist'
ALTER TABLE [dbo].[TypeOfArtist]
ADD CONSTRAINT [PK_TypeOfArtist]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Worker'
ALTER TABLE [dbo].[Worker]
ADD CONSTRAINT [PK_Worker]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CostumeDept'
ALTER TABLE [dbo].[CostumeDept]
ADD CONSTRAINT [PK_CostumeDept]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Perfomance_Report1'
ALTER TABLE [dbo].[Perfomance_Report1]
ADD CONSTRAINT [PK_Perfomance_Report1]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ID_Type] in table 'Animal'
ALTER TABLE [dbo].[Animal]
ADD CONSTRAINT [FK_Animal_AnimalType]
    FOREIGN KEY ([ID_Type])
    REFERENCES [dbo].[AnimalType]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Animal_AnimalType'
CREATE INDEX [IX_FK_Animal_AnimalType]
ON [dbo].[Animal]
    ([ID_Type]);
GO

-- Creating foreign key on [ID_Gender] in table 'Animal'
ALTER TABLE [dbo].[Animal]
ADD CONSTRAINT [FK_Animal_Gender]
    FOREIGN KEY ([ID_Gender])
    REFERENCES [dbo].[Gender]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Animal_Gender'
CREATE INDEX [IX_FK_Animal_Gender]
ON [dbo].[Animal]
    ([ID_Gender]);
GO

-- Creating foreign key on [ID_Animal] in table 'Cage'
ALTER TABLE [dbo].[Cage]
ADD CONSTRAINT [FK_Cage_Animal]
    FOREIGN KEY ([ID_Animal])
    REFERENCES [dbo].[Animal]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Cage_Animal'
CREATE INDEX [IX_FK_Cage_Animal]
ON [dbo].[Cage]
    ([ID_Animal]);
GO

-- Creating foreign key on [ID_Artist] in table 'Applicationn'
ALTER TABLE [dbo].[Applicationn]
ADD CONSTRAINT [FK_Application_Worker]
    FOREIGN KEY ([ID_Artist])
    REFERENCES [dbo].[Worker]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Application_Worker'
CREATE INDEX [IX_FK_Application_Worker]
ON [dbo].[Applicationn]
    ([ID_Artist]);
GO

-- Creating foreign key on [ID_Worker] in table 'Cabinet'
ALTER TABLE [dbo].[Cabinet]
ADD CONSTRAINT [FK_Cabinet_Worker]
    FOREIGN KEY ([ID_Worker])
    REFERENCES [dbo].[Worker]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Cabinet_Worker'
CREATE INDEX [IX_FK_Cabinet_Worker]
ON [dbo].[Cabinet]
    ([ID_Worker]);
GO

-- Creating foreign key on [ID_Type] in table 'Perfomance'
ALTER TABLE [dbo].[Perfomance]
ADD CONSTRAINT [FK_Perfomance_PerfomanceType]
    FOREIGN KEY ([ID_Type])
    REFERENCES [dbo].[PerfomanceType]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Perfomance_PerfomanceType'
CREATE INDEX [IX_FK_Perfomance_PerfomanceType]
ON [dbo].[Perfomance]
    ([ID_Type]);
GO

-- Creating foreign key on [ID_Perfomance1] in table 'Perfomance_Report1'
ALTER TABLE [dbo].[Perfomance_Report1]
ADD CONSTRAINT [FK_Perfomance_Report1_Perfomance]
    FOREIGN KEY ([ID_Perfomance1])
    REFERENCES [dbo].[Perfomance]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Perfomance_Report1_Perfomance'
CREATE INDEX [IX_FK_Perfomance_Report1_Perfomance]
ON [dbo].[Perfomance_Report1]
    ([ID_Perfomance1]);
GO

-- Creating foreign key on [ID_Perfomance2] in table 'Perfomance_Report2'
ALTER TABLE [dbo].[Perfomance_Report2]
ADD CONSTRAINT [FK_Perfomance_Report2_Perfomance]
    FOREIGN KEY ([ID_Perfomance2])
    REFERENCES [dbo].[Perfomance]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Perfomance_Report2_Perfomance'
CREATE INDEX [IX_FK_Perfomance_Report2_Perfomance]
ON [dbo].[Perfomance_Report2]
    ([ID_Perfomance2]);
GO

-- Creating foreign key on [ID_Perfomance] in table 'Timetable'
ALTER TABLE [dbo].[Timetable]
ADD CONSTRAINT [FK_Timetable_Perfomance]
    FOREIGN KEY ([ID_Perfomance])
    REFERENCES [dbo].[Perfomance]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Timetable_Perfomance'
CREATE INDEX [IX_FK_Timetable_Perfomance]
ON [dbo].[Timetable]
    ([ID_Perfomance]);
GO

-- Creating foreign key on [ID_Report2] in table 'Perfomance_Report2'
ALTER TABLE [dbo].[Perfomance_Report2]
ADD CONSTRAINT [FK_Perfomance_Report2_Report21]
    FOREIGN KEY ([ID_Report2])
    REFERENCES [dbo].[Report2]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Perfomance_Report2_Report21'
CREATE INDEX [IX_FK_Perfomance_Report2_Report21]
ON [dbo].[Perfomance_Report2]
    ([ID_Report2]);
GO

-- Creating foreign key on [ID_Position] in table 'Worker'
ALTER TABLE [dbo].[Worker]
ADD CONSTRAINT [FK_Worker_To_Position]
    FOREIGN KEY ([ID_Position])
    REFERENCES [dbo].[Position]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Worker_To_Position'
CREATE INDEX [IX_FK_Worker_To_Position]
ON [dbo].[Worker]
    ([ID_Position]);
GO

-- Creating foreign key on [ID_Report1] in table 'Perfomance_Report1'
ALTER TABLE [dbo].[Perfomance_Report1]
ADD CONSTRAINT [FK_Perfomance_Report1_Report11]
    FOREIGN KEY ([ID_Report1])
    REFERENCES [dbo].[Report1]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Perfomance_Report1_Report11'
CREATE INDEX [IX_FK_Perfomance_Report1_Report11]
ON [dbo].[Perfomance_Report1]
    ([ID_Report1]);
GO

-- Creating foreign key on [ID_ServiceStaff] in table 'Taskk'
ALTER TABLE [dbo].[Taskk]
ADD CONSTRAINT [FK_Task_Worker]
    FOREIGN KEY ([ID_ServiceStaff])
    REFERENCES [dbo].[Worker]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Task_Worker'
CREATE INDEX [IX_FK_Task_Worker]
ON [dbo].[Taskk]
    ([ID_ServiceStaff]);
GO

-- Creating foreign key on [ID_Artist] in table 'Timetable'
ALTER TABLE [dbo].[Timetable]
ADD CONSTRAINT [FK_Timetable_Worker]
    FOREIGN KEY ([ID_Artist])
    REFERENCES [dbo].[Worker]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Timetable_Worker'
CREATE INDEX [IX_FK_Timetable_Worker]
ON [dbo].[Timetable]
    ([ID_Artist]);
GO

-- Creating foreign key on [ID_TypeOfArtist] in table 'Worker'
ALTER TABLE [dbo].[Worker]
ADD CONSTRAINT [FK_Worker_TypeOfArtist]
    FOREIGN KEY ([ID_TypeOfArtist])
    REFERENCES [dbo].[TypeOfArtist]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Worker_TypeOfArtist'
CREATE INDEX [IX_FK_Worker_TypeOfArtist]
ON [dbo].[Worker]
    ([ID_TypeOfArtist]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------