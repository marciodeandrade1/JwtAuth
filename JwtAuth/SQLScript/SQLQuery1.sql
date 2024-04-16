USE [JWTAuthentication]

CREATE TABLE [dbo].[UserInfo](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [varchar](60) NOT NULL,
	[UserName] [varchar](30) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED
	(
		[UserId] ASC
	)
)
INSERT [dbo].[UserInfo] VALUES ('Marcio Andrade', 'Admin', 'admin@abc.com', '$admin@2022', GETDATE())


CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] NOT NULL,
	[NationalIDNumber] [nvarchar](50) NOT NULL,
	[EmployeeName] [nvarchar](150) NULL,
	[LoginID] [nvarchar](256) NOT NULL,
	[JobTitle] [nvarchar](150) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[MaritalStatus] [nchar](1) NOT NULL,
	[Gender] [nchar](1) NOT NULL,
	[HireDate] [date] NOT NULL,
	[VacationHours] [smallint] NOT NULL,
	[SickLeaveHours] [smallint] NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED
	(
		[EmployeeID] ASC
	)
)
INSERT [dbo].[Employee] VALUES (1, '295847284', 'Giovanna Rufini', 'adventure-works\ken0', 'Vice President of Sales', CAST('1969-01-29' AS Date), 'S', 'M', CAST('2009-01-14' AS Date), 99, 69, 'f01251e5-96a3-448d-981e-0f99d789110d', CAST('2014-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] VALUES (2, '245797967', 'Ranan Santos', 'adventure-works\terri0', 'Vice President of Engineering', CAST('1971-08-01' AS Date), 'S', 'F', CAST('2008-01-31' AS Date), 1, 20, '45e8f437-670d-4409-93cb-f9424a40d6ee', CAST('2014-30-10 00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] VALUES (3, '509647174', 'Pamela Silva', 'adventure-works\roberto0', 'Engineering Manager', CAST(N'1974-11-12' AS Date), 'M', 'M', CAST('2007-11-11' AS Date), 2, 21, '9bbbfb2c-efbb-4217-9ab7-f97689328841', CAST('2014-30-03 00:00:00.000' AS DateTime))


