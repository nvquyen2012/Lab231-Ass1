USE [photographer]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 3/23/2020 8:06:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[id] [int] NOT NULL,
	[address] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[tel] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[about_me] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 3/23/2020 8:06:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[featuredPicture] [nvarchar](50) NULL,
	[description] [text] NULL,
 CONSTRAINT [PK_Introduction] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gallery_Picture]    Script Date: 3/23/2020 8:06:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery_Picture](
	[galleryId] [int] NOT NULL,
	[pictureId] [int] NOT NULL,
 CONSTRAINT [PK_Gallery_Picture] PRIMARY KEY CLUSTERED 
(
	[galleryId] ASC,
	[pictureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Picture]    Script Date: 3/23/2020 8:06:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Picture](
	[id] [int] NOT NULL,
	[picture] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Contact] ([id], [address], [city], [country], [tel], [email], [about_me]) VALUES (1, N'123', N'LosAngeles', N'USA', N'12345', N'your-email@your-email.com', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim')
INSERT [dbo].[Gallery] ([id], [name], [featuredPicture], [description]) VALUES (1, N'Gallery1', N'i1.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation')
INSERT [dbo].[Gallery] ([id], [name], [featuredPicture], [description]) VALUES (2, N'Gallery2', N'i2.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation')
INSERT [dbo].[Gallery] ([id], [name], [featuredPicture], [description]) VALUES (3, N'Gallery3', N'i3.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation')
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (1, 1)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (1, 2)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (1, 3)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (1, 4)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (1, 5)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (1, 6)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (1, 7)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (1, 8)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (2, 1)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (2, 2)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (2, 3)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (2, 4)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (2, 5)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (2, 6)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (2, 7)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (2, 8)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (3, 1)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (3, 2)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (3, 3)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (3, 4)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (3, 5)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (3, 6)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (3, 7)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (3, 8)
INSERT [dbo].[Picture] ([id], [picture]) VALUES (1, N'i1.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (2, N'i2.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (3, N'i3.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (4, N'i4.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (5, N'i5.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (6, N'i6.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (7, N'i7.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (8, N'i8.jpg')
ALTER TABLE [dbo].[Gallery_Picture]  WITH CHECK ADD FOREIGN KEY([galleryId])
REFERENCES [dbo].[Gallery] ([id])
GO
ALTER TABLE [dbo].[Gallery_Picture]  WITH CHECK ADD FOREIGN KEY([pictureId])
REFERENCES [dbo].[Picture] ([id])
GO
ALTER TABLE [dbo].[Gallery_Picture]  WITH CHECK ADD FOREIGN KEY([pictureId])
REFERENCES [dbo].[Picture] ([id])
GO
ALTER TABLE [dbo].[Gallery_Picture]  WITH CHECK ADD FOREIGN KEY([pictureId])
REFERENCES [dbo].[Picture] ([id])
GO
