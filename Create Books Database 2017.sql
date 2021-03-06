USE [master]
GO

CREATE DATABASE [Books]
GO

USE [Books]
GO

CREATE TABLE [dbo].[Author](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[FirstName] [nvarchar](100) NOT NULL,
	[FamilyName] [nvarchar](100) NULL,
	[FullName]  AS ([FirstName]+isnull(' '+[FamilyName],'')),
	[DoB] [datetime] NULL,
	[DoD] [datetime] NULL,
	[Gender] [nvarchar](20) NULL)
GO

CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Title] [nvarchar](255) NOT NULL,
	[AuthorID] [int] NOT NULL,
	[YearPublished] [int] NULL,
	[FilmID] [int] NULL)
GO

SET IDENTITY_INSERT [dbo].[Author] ON 
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (1, N'Andy', N'Weir', CAST(N'1972-06-16T00:00:00.000' AS DateTime), NULL, N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (2, N'Philip K.', N'Dick', CAST(N'1928-12-16T00:00:00.000' AS DateTime), CAST(N'1982-03-02T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (3, N'Isaac', N'Asimov', CAST(N'1920-01-02T00:00:00.000' AS DateTime), CAST(N'1992-04-06T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (4, N'Solomon', N'Northup', CAST(N'1807-07-10T00:00:00.000' AS DateTime), NULL, N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (5, N'Jules', N'Verne', CAST(N'1828-02-08T00:00:00.000' AS DateTime), CAST(N'1905-03-24T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (6, N'Lewis', N'Carroll', CAST(N'1832-01-27T00:00:00.000' AS DateTime), CAST(N'1898-01-14T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (7, N'Dan', N'Brown', CAST(N'1964-06-22T00:00:00.000' AS DateTime), NULL, N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (8, N'Roald', N'Dahl', CAST(N'1916-09-13T00:00:00.000' AS DateTime), CAST(N'1990-11-23T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (9, N'Neil', N'Gaiman', CAST(N'1960-11-10T00:00:00.000' AS DateTime), NULL, N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (10, N'Ian', N'Fleming', CAST(N'1908-05-28T00:00:00.000' AS DateTime), CAST(N'1964-08-12T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (11, N'Hiroshi', N'Sakurazaka', NULL, NULL, N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (12, N'Chuck', N'Palahniuk', CAST(N'1962-02-21T00:00:00.000' AS DateTime), NULL, N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (13, N'J. K.', N'Rowling', CAST(N'1965-07-31T00:00:00.000' AS DateTime), NULL, N'Female')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (14, N'Lee', N'Child', CAST(N'1954-10-29T00:00:00.000' AS DateTime), NULL, N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (15, N'Robert', N'Ludlum', CAST(N'1927-05-25T00:00:00.000' AS DateTime), CAST(N'2001-03-12T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (16, N'Michael', N'Crichton', CAST(N'1942-10-23T00:00:00.000' AS DateTime), NULL, N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (17, N'H. Rider', N' Haggard', CAST(N'1856-06-22T00:00:00.000' AS DateTime), CAST(N'1925-05-14T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (18, N'Agatha', N' Christie', CAST(N'1890-09-15T00:00:00.000' AS DateTime), CAST(N'1976-01-12T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (19, N'J. R. R.', N'Tolkien', CAST(N'1892-01-03T00:00:00.000' AS DateTime), CAST(N'1973-09-02T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (20, N'Giles', N'Foden', NULL, NULL, N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (21, N'Suzanne', N'Collins', CAST(N'1962-08-10T00:00:00.000' AS DateTime), NULL, N'Female')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (22, N'Stieg', N'Larsson', CAST(N'1954-08-15T00:00:00.000' AS DateTime), CAST(N'2004-11-09T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (23, N'Harper', N'Lee', CAST(N'1926-04-28T00:00:00.000' AS DateTime), CAST(N'2016-02-19T00:00:00.000' AS DateTime), N'Female')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (24, N'C. S.', N'Lewis', CAST(N'1898-11-29T00:00:00.000' AS DateTime), CAST(N'1963-11-22T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (25, N'Alan', N'Moore', CAST(N'1953-11-18T00:00:00.000' AS DateTime), NULL, N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (26, N'Stephenie', N'Meyer', CAST(N'1973-12-24T00:00:00.000' AS DateTime), NULL, N'Female')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (27, N'Leo', N'Tolstoy', CAST(N'1828-09-09T00:00:00.000' AS DateTime), CAST(N'1910-11-20T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (28, N'Irvine', N'Welsh', NULL, NULL, N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (29, N'Jordan', N'Belfort', CAST(N'1962-07-09T00:00:00.000' AS DateTime), NULL, N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (30, N'Thomas', N'Harris', CAST(N'1940-04-11T00:00:00.000' AS DateTime), NULL, N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (31, N'Stephen', N'King', CAST(N'1947-09-21T00:00:00.000' AS DateTime), NULL, N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (32, N'William', N'Goldman', CAST(N'1931-08-12T00:00:00.000' AS DateTime), NULL, N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (33, N'John', N'Grisham', CAST(N'1955-02-08T00:00:00.000' AS DateTime), NULL, N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (34, N'James Fenimore', N'Cooper', CAST(N'1789-09-15T00:00:00.000' AS DateTime), CAST(N'1851-09-14T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (35, N'Tom', N' Clancy', CAST(N'1947-04-12T00:00:00.000' AS DateTime), CAST(N'2013-10-01T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (36, N'Arthur Conan', N'Doyle', CAST(N'1859-05-22T00:00:00.000' AS DateTime), CAST(N'1930-07-07T00:00:00.000' AS DateTime), N'Male')
GO
INSERT [dbo].[Author] ([AuthorID], [FirstName], [FamilyName], [DoB], [DoD], [Gender]) VALUES (37, N'Alexandre', N'Dumas', CAST(N'1802-07-24T00:00:00.000' AS DateTime), CAST(N'1870-12-05T00:00:00.000' AS DateTime), N'Male')
GO
SET IDENTITY_INSERT [dbo].[Author] OFF
GO

SET IDENTITY_INSERT [dbo].[Book] ON 
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (1, N'The Martian', 1, 2011, 1129)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (2, N'Do Androids Dream of Electric Sheep?', 2, 1968, 176)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (3, N'We Can Remember It for You Wholesale', 2, 1966, 117)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (4, N'The Minority Report', 2, 1956, 62)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (5, N'Paycheck', 2, 1953, 1236)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (7, N'Adjustment Team', 2, 1954, 1616)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (8, N'I, Robot', 3, 1950, 60)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (9, N'Twelve Years a Slave', 4, 1853, 1601)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (10, N'Twenty Thousand Leagues Under the Sea', 5, 1870, 744)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (11, N'Around the World in Eighty Days', 5, 1873, 54)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (12, N'Alice''s Adventures in Wonderland', 6, 1865, 311)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (13, N'Angels & Demons', 7, 2000, 328)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (14, N'The Da Vinci Code', 7, 2003, 37)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (16, N'Charlie and the Chocolate Factory', 8, 1964, 20)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (17, N'The BFG', 8, 1982, 1394)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (18, N'Stardust', 9, 2001, 1373)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (19, N'Casino Royale', 10, 1953, 61)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (20, N'Live and Let Die', 10, 1954, 241)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (21, N'Moonraker', 10, 1955, 167)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (22, N'Diamonds Are Forever', 10, 1956, 239)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (23, N'From Russia, with Love', 10, 1957, 256)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (24, N'Dr. No', 10, 1958, 258)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (25, N'Goldfinger', 10, 1959, 254)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (26, N'For Your Eyes Only', 10, 1960, 178)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (27, N'Thunderball', 10, 1961, 233)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (28, N'The Spy Who Loved Me', 10, 1962, 222)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (29, N'On Her Majesty''s Secret Service', 10, 1963, 236)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (30, N'You Only Live Twice', 10, 1964, 232)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (31, N'The Man with the Golden Gun', 10, 1965, 242)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (32, N'All You Need Is Kill', 11, 2004, 1615)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (33, N'Fight Club', 12, 1996, 115)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (34, N'Harry Potter and the Philosopher''s Stone', 13, 1997, 38)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (35, N'Harry Potter and the Chamber of Secrets', 13, 1998, 65)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (36, N'Harry Potter and the Prisoner of Azkaban', 13, 1999, 35)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (37, N'Harry Potter and the Goblet of Fire', 13, 2000, 18)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (38, N'Harry Potter and the Order of the Phoenix', 13, 2003, 11)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (39, N'Harry Potter and the Half-Blood Prince', 13, 2005, 321)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (40, N'One Shot', 14, 2005, 1533)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (42, N'Never Go Back', 14, 2013, 1532)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (43, N'The Bourne Identity', 15, 1980, 124)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (44, N'The Bourne Supremacy', 15, 1986, 81)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (45, N'The Bourne Ultimatum', 15, 1990, 34)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (46, N'Jurassic Park', 16, 1990, 1)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (47, N'The Lost World', 16, 1996, 377)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (48, N'King Solomon''s Mines', 17, 1885, 784)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (49, N'Murder on the Orient Express', 18, 1934, 1427)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (50, N'The Fellowship of the Ring', 19, 1954, 59)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (51, N'The Two Towers', 19, 1954, 74)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (52, N'The Return of the King', 19, 1955, 73)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (53, N'The Last King of Scotland', 20, 1998, 1645)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (54, N'The Hunger Games', 21, 2008, 298)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (55, N'Catching Fire', 21, 2009, 284)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (56, N'Mockingjay', 21, 2010, 276)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (57, N'The Girl with the Dragon Tattoo', 22, 2005, 1575)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (58, N'The Girl Who Played with Fire', 22, 2006, 1578)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (59, N'The Girl Who Kicked the Hornets'' Nest', 22, 2007, 1579)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (60, N'To Kill a Mockingbird', 23, 1960, 670)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (61, N'The Lion, the Witch and the Wardrobe', 24, 1950, 346)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (62, N'Prince Caspian', 24, 1951, 339)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (63, N'Watchmen', 25, 1986, 1528)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (64, N'Twilight', 26, 2005, 1574)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (65, N'New Moon', 26, 2006, 326)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (66, N'Eclipse', 26, 2007, 315)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (67, N'Breaking Dawn', 26, 2008, 303)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (68, N'War and Peace', 27, 1869, 726)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (69, N'Anna Karenina', 27, 1877, 1543)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (70, N'Trainspotting', 28, 1993, 221)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (71, N'The Wolf of Wall Street', 29, 2007, 1484)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (72, N'The Silence of the Lambs', 30, 1988, 420)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (73, N'Hannibal', 30, 1999, 360)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (74, N'The Shining', 31, 1977, 1417)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (75, N'The Running Man', 31, 1982, 181)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (76, N'The Princess Bride', 32, 1973, 1451)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (77, N'The Pelican Brief', 33, 1992, 408)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (78, N'The Firm', 33, 1991, 404)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (79, N'The Last of the Mohicans', 34, 1826, 151)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (80, N'The Hunt for Red October', 35, 1984, 172)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (81, N'Patriot Games', 35, 1987, 148)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (82, N'Clear and Present Danger', 35, 1989, 119)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (83, N'The Hound of the Baskervilles', 36, 1902, 1146)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (84, N'The Hobbit', 19, 1937, 293)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (85, N'The Three Musketeers', 37, 1844, 1651)
GO
INSERT [dbo].[Book] ([BookID], [Title], [AuthorID], [YearPublished], [FilmID]) VALUES (86, N'Twenty Years After', 37, 1845, 1652)
GO
SET IDENTITY_INSERT [dbo].[Book] OFF
GO

ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Author] ([AuthorID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Author]
GO
USE [master]
GO
ALTER DATABASE [Books] SET  READ_WRITE 
GO
