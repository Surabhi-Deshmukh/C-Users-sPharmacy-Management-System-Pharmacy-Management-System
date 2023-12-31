/****** Object:  Table [dbo].[addcart]    Script Date: 09/12/2020 12:01:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addcart]') AND type in (N'U'))
DROP TABLE [dbo].[addcart]
GO
/****** Object:  Table [dbo].[addmedicine]    Script Date: 09/12/2020 12:01:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addmedicine]') AND type in (N'U'))
DROP TABLE [dbo].[addmedicine]
GO
/****** Object:  Table [dbo].[category]    Script Date: 09/12/2020 12:01:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category]') AND type in (N'U'))
DROP TABLE [dbo].[category]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 09/12/2020 12:01:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[contact]') AND type in (N'U'))
DROP TABLE [dbo].[contact]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 09/12/2020 12:01:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[feedback]') AND type in (N'U'))
DROP TABLE [dbo].[feedback]
GO
/****** Object:  Table [dbo].[newpayment]    Script Date: 09/12/2020 12:01:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[newpayment]') AND type in (N'U'))
DROP TABLE [dbo].[newpayment]
GO
/****** Object:  Table [dbo].[signup]    Script Date: 09/12/2020 12:01:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[signup]') AND type in (N'U'))
DROP TABLE [dbo].[signup]
GO
/****** Object:  Table [dbo].[subcategory]    Script Date: 09/12/2020 12:01:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[subcategory]') AND type in (N'U'))
DROP TABLE [dbo].[subcategory]
GO
/****** Object:  Table [dbo].[subcategory]    Script Date: 09/12/2020 12:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[subcategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[subcategory](
	[catid] [numeric](18, 0) NOT NULL,
	[subid] [numeric](18, 0) IDENTITY(1000,1) NOT NULL,
	[subname] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[image] [varchar](50) COLLATE Latin1_General_CI_AS NULL
)
END
GO
/****** Object:  Table [dbo].[signup]    Script Date: 09/12/2020 12:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[signup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[signup](
	[name] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[email] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[password] [nchar](10) COLLATE Latin1_General_CI_AS NULL,
	[contact] [numeric](18, 0) NULL,
	[city] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[gender] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[image] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[utype] [varchar](50) COLLATE Latin1_General_CI_AS NULL
)
END
GO
INSERT [dbo].[signup] ([name], [email], [password], [contact], [city], [gender], [image], [utype]) VALUES (N'deepkaur', N'deepkaur@gmail.com', N'12345     ', CAST(1234567890 AS Numeric(18, 0)), N'India', N'Male', N'p1.jpg', N'normal')
INSERT [dbo].[signup] ([name], [email], [password], [contact], [city], [gender], [image], [utype]) VALUES (N'priyadadra', N'priyadadra@gmail.com', N'123       ', CAST(1234567890 AS Numeric(18, 0)), N'India', N'Female', N'p2.jpg', N'normal')
INSERT [dbo].[signup] ([name], [email], [password], [contact], [city], [gender], [image], [utype]) VALUES (N'Amritdadra', N'amrit@yahoo.com', N'123       ', CAST(1234567890 AS Numeric(18, 0)), N'India', N'Male', N'p4.jpg', N'normal')
INSERT [dbo].[signup] ([name], [email], [password], [contact], [city], [gender], [image], [utype]) VALUES (N'sonu', N'sonu@yahoo.com', N'123       ', CAST(1234567890 AS Numeric(18, 0)), N'India', N'Male', N'p4.jpg', N'normal')
INSERT [dbo].[signup] ([name], [email], [password], [contact], [city], [gender], [image], [utype]) VALUES (N'abc', N'abc@gmail.com', N'123       ', CAST(9876543213 AS Numeric(18, 0)), N'India', N'Female', N'Tulips.jpg', N'normal')
INSERT [dbo].[signup] ([name], [email], [password], [contact], [city], [gender], [image], [utype]) VALUES (N'admin', N'admin@gmail.com', N'123       ', CAST(5768678566 AS Numeric(18, 0)), N'India', N'Female', N'bank5.gif', N'admin')
/****** Object:  Table [dbo].[newpayment]    Script Date: 09/12/2020 12:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[newpayment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[newpayment](
	[orderno] [numeric](18, 0) IDENTITY(100,1) NOT NULL,
	[paymentmode] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[creditno] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[companyname] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[holdername] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[expirydate] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[address] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[billamount] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[username] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[orderdate] [datetime] NULL,
	[sessionid] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[status] [varchar](50) COLLATE Latin1_General_CI_AS NULL
)
END
GO
SET IDENTITY_INSERT [dbo].[newpayment] ON
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(100 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Visa', N'', N'', N'sbhjsgj', N'600', N'deepakkumar', CAST(0x0000A74C0078F6B9 AS DateTime), N'ts52iphuq4o3gwmiq5nrrjyy', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(101 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Visa', N'', N'', N'lldfvkdfmlkd', N'1200', N'kanchan', CAST(0x0000A74C008E2472 AS DateTime), N'gi4gw5qtpzi0j1scnncl2oja', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(102 AS Numeric(18, 0)), N'Credit card', N'12345', N'Visa', N'abc', N'15/5/2017', N'snkjsc', N'3000', N'kanchan', CAST(0x0000A74C00CE6906 AS DateTime), N'qmlusbdebs532huauxxornrk', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(103 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Visa', N'', N'', N'dslkfjdkhdfkj', N'600', N'kanchan', CAST(0x0000A74E005E507D AS DateTime), N'a3su1j5ye2tjgluvxug4cp5o', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(104 AS Numeric(18, 0)), N'Credit card', N'12345', N'Visa', N'kanchan', N'12/5/2017', N'houseno.24,krishna colony,jalandhar cantt', N'600', N'kanchan', CAST(0x0000A74F0060D1DE AS DateTime), N'mo4vmebezcfzl4kt2elfjyfy', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(105 AS Numeric(18, 0)), N'Credit card', N'123556', N'Visa', N'kanchan', N'12/3/2015', N'jhjgjhghjhujh', N'1000', N'Amritdadra', CAST(0x0000A75600A98500 AS DateTime), N'mpvqtvgsgaqkwgcm1masz40k', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(106 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Visa', N'', N'', N'jjgjhb', N'500', N'Amritdadra', CAST(0x0000A75A004CEB5D AS DateTime), N'iwazh4atkunnhsxowwg0ydvb', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(107 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Visa', N'', N'', N'jgjhjh', N'900', N'Amritdadra', CAST(0x0000A75A00515CE4 AS DateTime), N'zq2aoctrg3eatmg315hle2ed', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(108 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Visa', N'', N'', N'h.no 16 anup enclave sansarpur', N'200', N'sonu', CAST(0x0000A75A0052FFA1 AS DateTime), N'yu4wfhg5nrlsocjniwxad2vx', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(109 AS Numeric(18, 0)), N'Credit card', N'876756747', N'Master', N'sonu', N'13/2/2017', N'jhkghk', N'500', N'sonu', CAST(0x0000A75A005439C4 AS DateTime), N'2r0dolyegwdctjvpjjcbc4xe', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(110 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Choose Company Name', N'', N'', N'Jalandhar', N'600', N'abc', CAST(0x0000AB5A012F88E6 AS DateTime), N'hkkkw2s5mocq04sdqonmjnke', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(111 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Choose Company Name', N'', N'', N'Jalandhar', N'300', N'abc', CAST(0x0000AB5B011697C7 AS DateTime), N'xxkwl2tv5j0nlhpr2onu4lfg', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(112 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Choose Company Name', N'', N'', N'phase 1 jalandhar', N'300', N'abc', CAST(0x0000AB5D011F9618 AS DateTime), N'gop12u1yjoa1pdsbt4rgpcbw', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(113 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Choose Company Name', N'', N'', N'jal', N'600', N'abc', CAST(0x0000AB600125B75F AS DateTime), N'hyb2y4dwcvjce5hacsztjxox', N'payment recived processing')
INSERT [dbo].[newpayment] ([orderno], [paymentmode], [creditno], [companyname], [holdername], [expirydate], [address], [billamount], [username], [orderdate], [sessionid], [status]) VALUES (CAST(114 AS Numeric(18, 0)), N'Cash on delivery', N'', N'Choose Company Name', N'', N'', N'jal', N'1050', N'abc', CAST(0x0000AB600125E7E7 AS DateTime), N'hyb2y4dwcvjce5hacsztjxox', N'payment recived processing')
SET IDENTITY_INSERT [dbo].[newpayment] OFF
/****** Object:  Table [dbo].[feedback]    Script Date: 09/12/2020 12:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[feedback]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[feedback](
	[name] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[email] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[phone] [numeric](18, 0) NULL,
	[aboutweb] [varchar](50) COLLATE Latin1_General_CI_AS NULL
)
END
GO
INSERT [dbo].[feedback] ([name], [email], [phone], [aboutweb]) VALUES (N'kanchan', N'kanchan@yahoo.com', CAST(1234567890 AS Numeric(18, 0)), N'xjcbjhdgfidshfhdhgfdggfhdiuhfhhfhffhhffh')
INSERT [dbo].[feedback] ([name], [email], [phone], [aboutweb]) VALUES (N'kanchan', N'kanchan@yahoo.com', CAST(1234569870 AS Numeric(18, 0)), N'dkcjdshguhgidfh')
INSERT [dbo].[feedback] ([name], [email], [phone], [aboutweb]) VALUES (N'kanchan', N'kanchan@yahoo.com', CAST(1234567890 AS Numeric(18, 0)), N'dfkjdsfhkjd')
INSERT [dbo].[feedback] ([name], [email], [phone], [aboutweb]) VALUES (N'abc', N'abc@gmail.com', CAST(5689745123 AS Numeric(18, 0)), N'hello')
/****** Object:  Table [dbo].[contact]    Script Date: 09/12/2020 12:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[contact]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[contact](
	[name] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[emial] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[phone] [numeric](18, 0) NULL,
	[query] [varchar](50) COLLATE Latin1_General_CI_AS NULL
)
END
GO
INSERT [dbo].[contact] ([name], [emial], [phone], [query]) VALUES (N'kanchan', N'kanchan@yahoo.com', CAST(3698521470 AS Numeric(18, 0)), N'kjsjjkhdsfhfhfhdjshfhiehefhhfhfh')
INSERT [dbo].[contact] ([name], [emial], [phone], [query]) VALUES (N'abc', N'abc@gmail.com', CAST(9874563216 AS Numeric(18, 0)), N'jalandhar')
INSERT [dbo].[contact] ([name], [emial], [phone], [query]) VALUES (N'abc', N'abc@gmail.com', CAST(9874563216 AS Numeric(18, 0)), N'Jalandhar')
INSERT [dbo].[contact] ([name], [emial], [phone], [query]) VALUES (N'abc', N'abc@gmail.com', CAST(9874563216 AS Numeric(18, 0)), N'Jalandhar')
/****** Object:  Table [dbo].[category]    Script Date: 09/12/2020 12:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[category](
	[catid] [numeric](18, 0) IDENTITY(100,1) NOT NULL,
	[catname] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[image] [varchar](50) COLLATE Latin1_General_CI_AS NULL
)
END
GO
/****** Object:  Table [dbo].[addmedicine]    Script Date: 09/12/2020 12:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addmedicine]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[addmedicine](
	[Bid] [numeric](18, 0) IDENTITY(10,1) NOT NULL,
	[btitle] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[price] [numeric](18, 0) NULL,
	[catid] [numeric](18, 0) NULL,
	[subcatid] [numeric](18, 0) NULL,
	[Aemail] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[Pemail] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[image] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[description] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[stock] [numeric](18, 0) NULL
)
END
GO
/****** Object:  Table [dbo].[addcart]    Script Date: 09/12/2020 12:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addcart]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[addcart](
	[Srno] [numeric](18, 0) IDENTITY(10,1) NOT NULL,
	[Image] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[name] [varchar](50) COLLATE Latin1_General_CI_AS NULL,
	[quantity] [numeric](18, 0) NULL,
	[price] [numeric](18, 0) NULL,
	[totalcost] [numeric](18, 0) NULL,
	[sessionid] [varchar](50) COLLATE Latin1_General_CI_AS NULL
)
END
GO
