USE [master]
GO
/****** Object:  Database [fpt5]    Script Date: 04/01/2017 13:50:32 ******/
CREATE DATABASE [fpt5] ON  PRIMARY 
( NAME = N'fpt5', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\fpt5.mdf' , SIZE = 3328KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'fpt5_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\fpt5_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [fpt5] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [fpt5].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [fpt5] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [fpt5] SET ANSI_NULLS OFF
GO
ALTER DATABASE [fpt5] SET ANSI_PADDING OFF
GO
ALTER DATABASE [fpt5] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [fpt5] SET ARITHABORT OFF
GO
ALTER DATABASE [fpt5] SET AUTO_CLOSE ON
GO
ALTER DATABASE [fpt5] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [fpt5] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [fpt5] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [fpt5] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [fpt5] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [fpt5] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [fpt5] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [fpt5] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [fpt5] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [fpt5] SET  ENABLE_BROKER
GO
ALTER DATABASE [fpt5] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [fpt5] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [fpt5] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [fpt5] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [fpt5] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [fpt5] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [fpt5] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [fpt5] SET  READ_WRITE
GO
ALTER DATABASE [fpt5] SET RECOVERY SIMPLE
GO
ALTER DATABASE [fpt5] SET  MULTI_USER
GO
ALTER DATABASE [fpt5] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [fpt5] SET DB_CHAINING OFF
GO
USE [fpt5]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 04/01/2017 13:50:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[statusId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[subId] [int] NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[statusId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Status] ON
INSERT [dbo].[Status] ([statusId], [userId], [subId], [status]) VALUES (238, 1, 2, 1)
INSERT [dbo].[Status] ([statusId], [userId], [subId], [status]) VALUES (239, 1, 2, 1)
INSERT [dbo].[Status] ([statusId], [userId], [subId], [status]) VALUES (240, 1, 2, 1)
INSERT [dbo].[Status] ([statusId], [userId], [subId], [status]) VALUES (241, 1, 2, 1)
INSERT [dbo].[Status] ([statusId], [userId], [subId], [status]) VALUES (242, 6, 2, 1)
INSERT [dbo].[Status] ([statusId], [userId], [subId], [status]) VALUES (243, 6, 2, 1)
INSERT [dbo].[Status] ([statusId], [userId], [subId], [status]) VALUES (244, 6, 2, 1)
INSERT [dbo].[Status] ([statusId], [userId], [subId], [status]) VALUES (245, 6, 2, 1)
INSERT [dbo].[Status] ([statusId], [userId], [subId], [status]) VALUES (246, 6, 2, 1)
INSERT [dbo].[Status] ([statusId], [userId], [subId], [status]) VALUES (247, 6, 2, 1)
INSERT [dbo].[Status] ([statusId], [userId], [subId], [status]) VALUES (248, 6, 2, 1)
INSERT [dbo].[Status] ([statusId], [userId], [subId], [status]) VALUES (249, 6, 2, 1)
INSERT [dbo].[Status] ([statusId], [userId], [subId], [status]) VALUES (250, 6, 2, 1)
INSERT [dbo].[Status] ([statusId], [userId], [subId], [status]) VALUES (251, 6, 2, 1)
SET IDENTITY_INSERT [dbo].[Status] OFF
/****** Object:  Table [dbo].[Problem]    Script Date: 04/01/2017 13:50:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Problem](
	[proId] [int] IDENTITY(1,1) NOT NULL,
	[subId] [int] NULL,
	[description] [text] NULL,
	[constrain] [text] NULL,
	[inputRequire] [text] NULL,
	[outputRequire] [text] NULL,
	[inputTestcase] [text] NULL,
	[outputTestcase] [text] NULL,
	[explain] [text] NULL,
	[inputUser] [text] NULL,
 CONSTRAINT [PK_Problem] PRIMARY KEY CLUSTERED 
(
	[proId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Problem] ON
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (1, 2, N'<p>You are given an array of integers of size&nbsp;. You need to print the sum of the elements in the array, keeping in mind that some of those integers may be quite large</p>
', NULL, N'<p>The first line of the input consists of an integer&nbsp;. The next line contains&nbsp;&nbsp;space-separated integers contained in the array.</p>
', N'<p>Print a single value equal to the sum of the elements in the array.</p>
', N'5 1000000001 1000000002 1000000003 1000000004 1000000005', N'5000000015', N'<p>The range of the 32-bit integer is&nbsp;.&nbsp;[-2147483548,2147483547]</p>

<p>When we add several integer values, the resulting sum might exceed the above range. You might need to use long long int in C/C++ or long data type in Java to store such sums.</p>
', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (2, 3, N'<p>Give 2 number is your mission add two the number&nbsp;</p>
', NULL, N'<p>The first line of input contains two integers a and b (1&lt;a,b&lt;1000000000).</p>
', N'<p>Print the first time result of add two number</p>
', N'1 5', N'6', N'<p>In the first sample testcase, with input 1 5. the result add two number 1+5=6.</p>

<p>Print 6 in one line.</p>
', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (3, 4, N'ALT is a planet in a galaxy called "Encore". Humans rule this planet but for some reason theres no dog in their planet, so the people there are sad and depressed. Rick and Morty are universal philanthropists and they want to make people in ALT happy. ALT has n cities numbered from 1 to n and n?-?1 bidirectional roads numbered from 1 to n?-?1. One can go from any city to any other city using these roads.ALT is a planet in a galaxy called "Encore". Humans rule this planet but for some reason theres no dog in their planet, so the people there are sad and depressed. Rick and Morty are universal philanthropists and they want to make people in ALT happy. ALT has n cities numbered from 1 to n and n?-?1 bidirectional roads numbered from 1 to n?-?1. One can go from any city to any other city using these roads.', N'ALT', N'The first line of input contains two integers n and m (2?=?n?=?2?×?104, 1?=?m?=?104) — number of cities and number of citizens respectively.', N'In the second line print an integer q, the number of puppies to give to citizens, followed by q distinct integers a1,?a2,?...,?aq, index of citizens to give puppy to (0?=?q?=?min(m,?k), 1?=?ai?=?m).', N'4 7 3 4', N'3 1 6 ', N' Citizen number i lives in city number xi and works in city number yi.Every day each citizen will go through all roads along the shortest path from his home to his work. A citizen will be happy if and only if either he himself has a puppy himself or all of guardians along his path to his work has a puppy (he sees the guardians puppy in each road and will be happy).', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (4, 5, N'Unity loves rap, so it decided that they have to compete in a rap game (battle) in order to choose the best. Rick is too nerds, so instead hes gonna make his verse with running his original algorithm on lyrics "Rap God" song.', N'Rap God', N'The first line of input contain two integers n and q (2?=?n?=?20000, 1?=?q?=?20000) — number of vertices in tree and number of queries respectively.', N'Print the answer for each query in one line.', N'4 7 3 4', N'3 1 6 ', N'In order to make the best verse he can, he needs to answer some queries, but hes not a computer scientist and is not able to answer those queries, so he asked you to help him. Each query is characterized by two vertices x and y (x???y). Answer to this query is the number of vertices like z such that z???x,?z???y and str(x,?y) is lexicographically larger than str(x,?z).', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (5, 6, N'Rick and his co-workers have made a new radioactive formula and a lot of bad guys are after them. So Rick wants to give his legacy to Morty before bad guys catch them.', N'Legacy', N'The first line of input contains three integers n, q and s (1?=?n,?q?=?105, 1?=?s?=?n) — number of planets, number of plans and index of earth respectively.', N'In the first and only line of output print n integers separated by spaces. i-th of them should be minimum money to get from earth to i-th planet, or ?-?1 if its impossible to get to that planet.', N'4 7 3 4', N'3 1 6 ', N'In the first sample testcase, Rick can purchase 4th plan once and then 2nd plan in order to get to get to planet number 2.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (6, 7, N'Rick and Morty are playing their own version of Berzerk (which has nothing in common with the famous Berzerk game). This game needs a huge space, so they play it with a computer.', N'Berzerk', N'The first line of input contains a single integer n (2?=?n?=?7000) — number of objects in game.The second line contains integer k1 followed by k1 distinct integers s1,?1,?s1,?2,?...,?s1,?k1 — Ricks set.', N'In the first line print n?-?1 words separated by spaces where i-th word is "Win" (without quotations) if in the scenario that Rick plays first and monster is initially in object number i?+?1 he wins, "Lose" if he loses and "Loop" if the game will never end.', N'4 7 3 4', N'3 1 6 ', N'In this game there are n objects numbered from 1 to n arranged in a circle (in clockwise order). Object number 1 is a black hole and the others are planets.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (7, 8, N'One day Anton got a new permutation and started to play with it. He does the following operation q times: he takes two elements of the permutation and swaps these elements. After each operation he asks his friend Vanya, how many inversions there are in the new permutation. The number of inversions in a permutation is the number of distinct pairs (i,?j) such that 1?=?i?<?j?=?n and ai?>?aj.', N' Anton and Permutation', N'The first line of the input contains two integers n and q (1?=?n?=?200?000,?1?=?q?=?50?000) — the length of the permutation and the number of operations that Anton does.', N'Output q lines. The i-th line of the output is the number of inversions in the Antons permutation after the i-th operation.', N'4 7 3 4', N'3 1 6 ', N'Consider the first sample. After the first Antons operation the permutation will be {1,?2,?3,?5,?4}. There is only one inversion in it: (4,?5).After the second Antons operation the permutation will be {1,?5,?3,?2,?4}. There are four inversions: (2,?3), (2,?4), (2,?5) and (3,?4).', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (8, 9, N'As you probably know, Anton goes to school. One of the school subjects that Anton studies is Bracketology. On the Bracketology lessons students usually learn different sequences that consist of round brackets (characters "(" and ")" (without quotes)).', N'Anton and School - 2', N'The only line of the input contains a string s — the bracket sequence given in Antons homework. The string consists only of characters "(" and ")" (without quotes). Its guaranteed that the string is not empty and its length doesnt exceed 200?000.', N'Output one number — the answer for the task modulo 109?+?7.', N'4 7 3 4', N'3 1 6 ', N' If we delete characters at the positions 1 and 5 (numbering starts with one), we will get the subsequence "(())". If we delete characters at the positions 1, 2, 3 and 4, we will get the subsequence "()". If we delete characters at the positions 1, 2, 4 and 5, we will get the subsequence "()". If we delete characters at the positions 1, 2, 5 and 6, we will get the subsequence "()".', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (9, 10, N'Anton is tired of listening how Danik describes every sparrow that eats grain from the barn. Anton doesnt know when the fairy tale ends, so he asked you to determine, by the end of which day the barn will become empty for the first time. Help Anton and write a program that will determine the number of that day!', N'Anton and Fairy Tale', N'The only line of the input contains two integers n and m (1?=?n,?m?=?1018) — the capacity of the barn and the number of grains that are brought every day.', N'Output one integer — the number of the day when the barn will become empty for the first time. Days are numbered starting with one.', N'4 7 3 4', N'3 1 6 ', N'At the beginning of the first day grain is brought to the barn. Its full, so nothing happens.At the end of the first day one sparrow comes and eats one grain, so 5?-?1?=?4 grains remain.At the beginning of the second day two grains are brought. The barn becomes full and one grain doesnt fit to it.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (10, 11, N'Anton likes to play chess. Also he likes to do programming. No wonder that he decided to attend chess classes and programming classes.Anton has n variants when he will attend chess classes, i-th variant is given by a period of time (l1,?i,?r1,?i). Also he has m variants when he will attend programming classes, i-th variant is given by a period of time (l2,?i,?r2,?i).', N'Anton and Classes', N'The first line of the input contains a single integer n (1?=?n?=?200?000) — the number of time periods when Anton can attend chess classes.Each of the following n lines of the input contains two integers l1,?i and r1,?i (1?=?l1,?i?=?r1,?i?=?109) — the i-th variant of a period of time when Anton can attend chess classes.', N'Output one integer — the maximal possible distance between time periods.', N'4 7 3 4', N'3 1 6 ', N'Note

In the first sample Anton can attend chess classes in the period (2,?3) and attend programming classes in the period (6,?8). Its not hard to see that in this case the distance between the periods will be equal to 3.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (11, 12, N'Antons favourite geometric figures are regular polyhedrons. Note that there are five kinds of regular polyhedrons:
    Tetrahedron. Tetrahedron has 4 triangular faces.Cube. Cube has 6 square faces.Octahedron. Octahedron has 8 triangular faces.Dodecahedron. Dodecahedron has 12 pentagonal faces.Icosahedron. Icosahedron has 20 triangular faces.', N'Anton and Polyhedrons', N'The first line of the input contains a single integer n (1?=?n?=?200?000) — the number of polyhedrons in Antons collection.Each of the following n lines of the input contains a string si — the name of the i-th polyhedron in Antons collection.', N'Output one number — the total number of faces in all the polyhedrons in Antons collection.', N'4 7 3 4', N'3 1 6 ', N'In the first sample Anton has one icosahedron, one cube, one tetrahedron and one dodecahedron. Icosahedron has 20 faces, cube has 6 faces, tetrahedron has 4 faces and dodecahedron has 12 faces. In total, they have 20?+?6?+?4?+?12?=?42 faces.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (12, 13, N'Buses start their movement in the first vertex of the route with equal interval. Suppose that T is the total time for a single bus to travel the whole loop of the route. Then, the bus 1 starts moving at time 0, the bus 2 starts at time T?/?m, the bus 3 starts at time 2T?/?m, and so on; finally, the bus m starts moving at time (m?-?1)T?/?m. Thus, all intervals between pairs of consecutive buses (including the interval between the last and the first bus) are equal.', N'Intranet of Buses', N'Next n lines describe the vertices of the route in the traversing order. Each of these lines contains two integers xi, yi (?-?1000?=?xi,?yi?=?1000) — coordinates of respective vertex.', N'Print one real number — the answer to the problem. Your answer will be accepted if the relative or the absolute error doesnt exceed 10?-?6.', N'4 7 3 4', N'3 1 6 ', N'Suppose that each bus travel 1 distance unit per second.In the first sample case, in 0.5 seconds buses will be at distance 1, hence we can choose D?=?1.In the second sample case, in 0.5 seconds both buses will be at (0.5,?0), hence we can choose D?=?0.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (13, 14, N'Further, there are barriers in some of board rows. There are n barriers in total, and i-th of them occupied the cells li through ri of the row ui. Andryusha recollects well that no two barriers share the same row. Furthermore, no row is completely occupied with a barrier, that is, at least one cell in each row is free.', N'Andryusha and Nervous Barriers', N'The first line contains three integers h, w, and n (1?=?h?=?109, 2?=?w?=?105, 0?=?n?=?105) — the number of rows, columns, and barriers in the machine respectively.', N'Print one integer — the answer to the problem modulo 109?+?7.', N'4 7 3 4', N'3 1 6 ', N'In the first sample case, there is a single barrier: if one throws a marble in the second or the third column, two marbles come out, otherwise there is only one. The total answer is 7.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (14, 15, N'<p>Welcome to HackerRank! The purpose of this challenge is to familiarize you with reading input from&nbsp;<a href="https://www.hackerrank.com/external_redirect?to=https://en.wikipedia.org/wiki/Standard_streams#Standard_input_.28stdin.29" target="_blank">stdin</a>&nbsp;(the standard input stream) and writing output to&nbsp;<a href="https://www.hackerrank.com/external_redirect?to=https://en.wikipedia.org/wiki/Standard_streams#Standard_output_.28stdout.29" target="_blank">stdout</a>&nbsp;(the standard output stream) using our environment.</p>

<p>Review the code provided in the editor below, then complete the&nbsp;<em>solveMeFirst</em>&nbsp;function so that it returns the sum of two integers read from stdin. Take some time to understand this code so you&#39;re prepared to write it yourself in future challenges.</p>

<p>Select a language below, and start coding!</p>
', NULL, N'<p>Code that reads input from stdin is provided for you in the editor. There are&nbsp;&nbsp;lines of input, and each line contains a single integer.</p>
', N'<p>Code that prints the sum calculated and returned by&nbsp;<em>solveMeFirst</em>&nbsp;is provided for you in the editor.</p>
', N'lehongphuong', N'lehongphuong', N'<p>Print string getted</p>
', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (15, 16, N'The evil Bumbershoot corporation produces clones for gruesome experiments in a vast underground lab. On one occasion, the corp cloned a boy Andryusha who was smarter than his comrades. Immediately Andryusha understood that something fishy was going on there. He rallied fellow clones to go on a feud against the evil corp, and they set out to find an exit from the lab. The corp had to reduce to destroy the lab complex.', N'Underground Lab', N'The first line contains three integers n, m, and k (1?=?n?=?2·105, n?-?1?=?m?=?2·105, 1?=?k?=?n) — the number of vertices and edges in the lab, and the number of clones.', N'You should print k lines. i-th of these lines must start with an integer ci () — the number of vertices visited by i-th clone, followed by ci integers — indices of vertices visited by this clone in the order of visiting. You have to print each vertex every time it is visited, regardless if it was visited earlier or not.', N'4 7 3 4', N'3 1 6 ', N'In the first sample case there is only one clone who may visit vertices in order (2, 1, 3), which fits the descriptiont of 6 vertices per clone.In the second sample case the two clones can visited vertices in order (2, 1, 3) and (4, 1, 5), which fits the descriptiont of 5 vertices per clone.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (16, 17, N'Innokenty is a president of a new football league in Byteland. The first task he should do is to assign short names to all clubs to be shown on TV next to the score. Of course, the short names should be distinct, and Innokenty wants that all short names consist of three letters.', N'Innokenty and a Football League', N'The first line contains a single integer n (1?=?n?=?1000) — the number of clubs in the league.Each of the next n lines contains two words — the teams name and the hometowns name for some club. Both teams name and hometowns name consist of uppercase English letters and have length at least 3 and at most 20.', N'Otherwise, in the first line print "YES". Then print n lines, in each line print the chosen short name for the corresponding club. Print the clubs in the same order as they appeared in input.', N'4 7 3 4', N'3 1 6 ', N'In the second example it is not possible to choose short names, because it is not possible that one club has first option, and the other has second option if the first options are equal for both clubs.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (17, 18, N'The park consists of n squares connected with (n?-?1) bidirectional paths in such a way that any square is reachable from any other using these paths. Andryusha decided to hang a colored balloon at each of the squares. The baloons colors are described by positive integers, starting from 1. In order to make the park varicolored, Andryusha wants to choose the colors in a special way.', N'Andryusha and Colored Balloons', N'The first line contains single integer n (3?=?n?=?2·105) — the number of squares in the park.Each of the next (n?-?1) lines contains two integers x and y (1?=?x,?y?=?n) — the indices of two squares directly connected by a path.', N'In the second line print n integers, the i-th of them should be equal to the balloon color on the i-th square. Each of these numbers should be within range from 1 to k.', N'4 7 3 4', N'3 1 6 ', N'More precisely, he wants to use such colors that if a, b and c are distinct squares that a and b have a direct path between them, and b and c have a direct path between them, then balloon colors on these three squares are distinct.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (18, 19, N'At some points on the road there are n friends, and i-th of them is standing at the point xi meters and can move with any speed no greater than vi meters per second in any of the two directions along the road: south or north.', N'The Meeting Place Cannot Be Changed', N'The second line contains n integers x1,?x2,?...,?xn (1?=?xi?=?109) — the current coordinates of the friends, in meters.', N'Your answer will be considered correct, if its absolute or relative error isnt greater than 10?-?6. Formally, let your answer be a, while jurys answer be b. Your answer will be considered correct if holds.', N'4 7 3 4', N'3 1 6 ', N'In the first sample, all friends can gather at the point 5 within 2 seconds. In order to achieve this, the first friend should go south all the time at his maximum speed, while the second and the third friends should go north at their maximum speeds.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (19, 20, N'Today he faced a problem to put his socks in the wardrobe. He has n distinct pairs of socks which are initially in a bag. The pairs are numbered from 1 to n. Andryusha wants to put paired socks together and put them in the wardrobe.', N'Andryusha and Socks', N'The second line contains 2n integers x1,?x2,?...,?x2n (1?=?xi?=?n), which describe the order in which Andryusha took the socks from the bag. More precisely, xi means that the i-th sock Andryusha took out was from pair xi.', N'Print single integer — the maximum number of socks that were on the table at the same time.', N'4 7 3 4', N'3 1 6 ', N'In the first example Andryusha took a sock from the first pair and put it on the table. Then he took the next sock which is from the first pair as well, so he immediately puts both socks to the wardrobe. Thus, at most one sock was on the table at the same time.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (20, 21, N'Igor found out discounts in a shop and decided to buy n items. Discounts at the store will last for a week and Igor knows about each item that its price now is ai, and after a week of discounts its price will be bi.', N'Dishonest Sellers', N'In the first line there are two positive integer numbers n and k (1?=?n?=?2·105, 0?=?k?=?n) — total number of items to buy and minimal number of items Igor wants to by right now.', N'Print the minimal amount of money Igor will spend to buy all n items. Remember, he should buy at least k items right now.', N'4 7 3 4', N'3 1 6 ', N'Print the minimal amount of money Igor will spend to buy all n items. Remember, he should buy at least k items right now.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (21, 22, N'In the given number of n Polycarp wants to remove the least number of digits to get a number that is divisible by 10k. For example, if k?=?3, in the number 30020 it is enough to delete a single digit (2). In this case, the result is 3000 that is divisible by 103?=?1000.', N'Weird Rounding', N'The only line of the input contains two integer numbers n and k (0?=?n?=?2?000?000?000, 1?=?k?=?9).', N'Print w — the required minimal number of digits to erase. After removing the appropriate w digits from the number n, the result should have a value that is divisible by 10k. The result can start with digit 0 in the single case (the result is zero and written by exactly the only digit 0).', N'4 7 3 4', N'3 1 6 ', N'In the example 2 you can remove two digits: 1 and any 0. The result is number 0 which is divisible by any number.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (22, 23, N'In high school 0xFF there are two groups of pupils: the group A and the group B. Each group consists of exactly n students. An academic performance of each student is known — integer value between 1 and 5.', N'Pupils Redistribution', N'The second line contains sequence of integer numbers a1,?a2,?...,?an (1?=?ai?=?5), where ai is academic performance of the i-th student of the group A.', N'Print the required minimum number of exchanges or -1, if the desired distribution of students can not be obtained.', N'4 7 3 4', N'3 1 6 ', N'To achieve this, there is a plan to produce a series of exchanges of students between groups. During the single exchange the director selects one student from the class A and one student of class B. After that, they both change their groups.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (23, 24, N'Boris really likes numbers and even owns a small shop selling interesting numbers. He has n decimal numbers Bi. Cost of the number in his shop is equal to the sum of costs of its digits. You are given the values cd, where cd is the cost of the digit d. Of course, Boris is interested in that numbers he owns have the maximum cost possible.', N'Selling Numbers', N'First line contains artifact A, consisting of digits 0–9 and ? symbols (1?=?|A|?=?1000). Next line contains n — the amount of numbers in Boris collection (1?=?n?=?1000). Next n lines contain integers Bi (1?=?Bi?<?101000). A doesnt start with 0.', N'Output one integer — the maximum possible cost of the collection after using the artifact.', N'4 7 3 4', N'3 1 6 ', N'In the second sample input, the optimal way is to compose the number 453. After adding this number, Boris will have numbers 2656, 5682, 729 and 6696. The total cost of all digits in them is equal to 18?+?15?+?11?+?18?=?62. ', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (24, 25, N'Peter decided to lay a parquet in the room of size n?×?m, the parquet consists of tiles of size 1?×?2. When the workers laid the parquet, it became clear that the tiles pattern looks not like Peter likes, and workers will have to re-lay it.', N'Parquet Re-laying', N'The following n lines contain m characters each, the constrain of the current configuration of the parquet tiles. Each character represents the position of the half-tile. Characters L, R, U and D correspond to the left, right, upper and lower halves, respectively.', N'In the first line output integer k, the number of operations. In the next k lines output constrain of operations. The operation is specified by coordinates (row and column) of the left upper half-tile on which the operation is performed.', N'4 7 3 4', N'3 1 6 ', N'In the first sample test first operation is to rotate two rightmost tiles, after this all tiles lie vertically. Second operation is to rotate two leftmost tiles, after this we will get desired configuration.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (25, 26, N'Peterson makes new language every morning. It is difficult task to store the whole language, so Peterson have invented new data structure for storing his languages which is called broom. Broom is rooted tree with edges marked with letters. Initially broom is represented by the only vertex — the root of the broom.', N'Peterson Polyglot', N'The first line of input contains integer n (2?=?n?=?3·105) — the size of the broom.Next n?-?1 lines describe the broom: i-th of them contains integers ui, vi and letter xi — describing the edge from ui to vi marked with letter xi.', N'The first line of output should contain the minimum possible size of the broom after its simplification. The second line of output should contain integer p to choose. If there are several suitable p values, print the smallest one.', N'4 7 3 4', N'3 1 6 ', N'Broom from the second sample test can be built using language "piece", "of", "pie", "pretty", "prefix". Its simplification with p?=?2 obtains the language of words "pece", "o", "pe", "petty", "pefix". This language gives us the broom with minimum possible size.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (26, 27, N'Initially, Bob chooses integer m, bit depth of the game, which means that all numbers in the game will consist of m bits. Then he asks Peter to choose some m-bit number. After that, Bob computes the values of n variables', N'Bitwise Formula', N'The first line contains two integers n and m, the number of variables and bit depth, respectively (1?=?n?=?5000; 1?=?m?=?1000).The following n lines contain constrains of the variables. Each line describes exactly one variable. constrain has the following format: name of a new variable, space, sign ":=", space, followed by one of:', N'In the first line output the minimum number that should be chosen by Peter, to make the sum of all variable values minimum possible, in the second line output the minimum number that should be chosen by Peter, to make the sum of all variable values maximum possible. Both numbers should be printed as m-bit binary numbers', N'4 7 3 4', N'3 1 6 ', N'In the first sample if Peter chooses a number 0112, then a?=?1012,?b?=?0112,?c?=?0002, the sum of their values is 8. If he chooses the number 1002, then a?=?1012,?b?=?0112,?c?=?1112, the sum of their values is 15.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (27, 28, N'Little Nastya has a hobby, she likes to remove some letters from word, to obtain another word. But it turns out to be pretty hard for her, because she is too young. Therefore, her brother Sergey always helps her.', N'String Game', N'The first and second lines of the input contain the words t and p, respectively. Words are composed of lowercase letters of the Latin alphabet (1?=?|p|?<?|t|?=?200?000). It is guaranteed that the word p can be obtained by removing the letters from word t.', N'Print a single integer number, the maximum number of letters that Nastya can remove.', N'4 7 3 4', N'3 1 6 ', N'In the first sample test sequence of removing made by Nastya looks like this: "ababcba" "ababcba" "ababcba" "ababcba" Nastya can not continue, because it is impossible to get word "abb" from word "ababcba".', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (28, 29, N'Of course you have heard the famous task about Hanoi Towers, but did you know that there is a special factory producing the rings for this wonderful game? Once upon a time, the ruler of the ancient Egypt ordered the workers of Hanoi Factory to create as high tower as possible. They were not ready to serve such a strange order so they had to create this new tower using already produced rings.', N'Hanoi Factory', N'The i-th of the next n lines contains three integers ai, bi and hi (1?=?ai,?bi,?hi?=?109, bi?>?ai) — inner radius, outer radius and the height of the i-th ring respectively.', N'Print one integer — the maximum height of the tower that can be obtained.', N'4 7 3 4', N'3 1 6 ', N'In the second sample, one can put the ring 3 on the ring 4 and get the tower of height 3, or put the ring 1 on the ring 2 and get the tower of height 4.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (29, 30, N'Vasya is an administrator of a public page of organization "Mouse and keyboard" and his everyday duty is to publish news from the world of competitive programming. For each news he also creates a list of hashtags to make searching for a particular topic more comfortable. For the purpose of this problem we define hashtag as a string consisting of lowercase English letters and exactly one symbol # located at the beginning of the string', N'Cloud of Hashtags', N'The first line of the input contains a single integer n (1?=?n?=?500?000) — the number of hashtags being edited now.', N'Print the resulting hashtags in any of the optimal solutions.', N'4 7 3 4', N'3 1 6 ', N'According to the above definition, if a hashtag consisting of one character # it is lexicographically not greater than any other valid hashtag. Thats why in the third sample we cant keep first two hashtags unchanged and shorten the other two.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (30, 31, N'Now she has a table filled with integers. The table consists of n rows and m columns. By ai,?j we will denote the integer located at the i-th row and the j-th column. We say that the table is sorted in non-decreasing order in the column j if ai,?j?=?ai?+?1,?j for all i from 1 to n?-?1.', N'Alyona and Spreadsheet', N'The first line of the input contains two positive integers n and m (1?=?n·m?=?100?000) — the number of rows and the number of columns in the table respectively. Note that your are given a descriptiont that bound the product of these two integers, i.e. the number of elements in the table.', N'Print "Yes" to the i-th line of the output if the table consisting of rows from li to ri inclusive is sorted in non-decreasing order in at least one column. Otherwise, print "No".', N'4 7 3 4', N'3 1 6 ', N'In the sample, the whole table is not sorted in any column. However, rows 1–3 are sorted in column 1, while rows 4–5 are sorted in column 3.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (31, 32, N'Rules of this game are simple: each player bring his favourite n-digit credit card. Then both players name the digits written on their cards one by one. If two digits are not equal, then the player, whose digit is smaller gets a flick (knock in the forehead usually made with a forefinger) from the other player. For example, if n?=?3, Sherlocks card is 123 and Moriartys card has number 321, first Sherlock names 1 and Moriarty names 3 so Sherlock gets a flick. Then they both digit 2 so no one gets a flick. Finally, Sherlock names 3, while Moriarty names 1 and gets a flick', N'Game of Credit Cards', N'The first line of the input contains a single integer n (1?=?n?=?1000) — the number of digits in the cards Sherlock and Moriarty are going to use.', N'First print the minimum possible number of flicks Moriarty will get. Then print the maximum possible number of flicks that Sherlock can get from Moriarty.', N'4 7 3 4', N'3 1 6 ', N'First sample is elaborated in the problem statement. In the second sample, there is no way Moriarty can avoid getting two flicks.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (32, 33, N'Bomboslav likes to look out of the window in his room and watch lads outside playing famous shell game. The game is played by two persons: operator and player. Operator takes three similar opaque shells and places a ball beneath one of them. Then he shuffles the shells by swapping some pairs and the player has to guess the current position of the ball.', N'Shell Game', N'The first line of the input contains an integer n (1?=?n?=?2·109) — the number of movements made by the operator.', N'Print one integer from 0 to 2 — the index of the shell where the ball was initially placed.', N'4 7 3 4', N'3 1 6 ', N'In the first sample, the ball was initially placed beneath the middle shell and the operator completed four movements. During the first move operator swapped the left shell and the middle shell. The ball is now under the left shell. ', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (33, 34, N'Sherlock found a piece of encrypted data which he thinks will be useful to catch Moriarty. The encrypted data consists of two integer l and r. He noticed that these integers were in hexadecimal form.', N'Sherlock and the Encrypted Data', N'First line contains the integer q (1?=?q?=?10000).Each of the next q lines contain two hexadecimal integers l and r (0?=?l?=?r?<?1615).', N'Output q lines, i-th line contains answer to the i-th query (in decimal notation).', N'4 7 3 4', N'3 1 6 ', N'One more example: for integer 1e the sum is sum?=?21?+?214. Letters a, b, c, d, e, f denote hexadecimal digits 10, 11, 12, 13, 14, 15, respertively.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (34, 35, N'Sherlock met Moriarty for a final battle of wits. He gave him a regular n sided convex polygon. In addition to it, he gave him certain diagonals to form regions on the polygon. It was guaranteed that the diagonals did not intersect in interior points.', N'Sherlocks bet to Moriarty', N'First line contains two integers n and m (3?=?n?=?100000, 0?=?m?=?n?-?3), the number of vertices in the polygon and the number of diagonals added.', N'Output k space-separated integers, each between 1 and 20, representing the colors of the regions in the order of increasing importance.', N'4 7 3 4', N'3 1 6 ', N'In 2nd input, regions formed in order after sorting will be (1,?2,?3), (1,?3,?4), (1,?4,?5), (1,?5,?6), i.e, region (1,?2,?3) is first region followed by region (1,?3,?4) and so on.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (35, 36, N'Mycroft asked Sherlock and Eurus to find value of f(n), where f(1)?=?1 and for n?=?2, f(n) is the number of distinct ordered positive integer pairs (x,?y) that satisfy x?+?y?=?n and gcd(x,?y)?=?1. The integer gcd(a,?b) is the greatest common divisor of a and b.', N'The Holmes Children', N'A single line of input contains two space separated integers n (1?=?n?=?1012) and k (1?=?k?=?1012) indicating that Eurus asks Sherlock and Mycroft to find the value of Fk(n) modulo 1000000007.', N'Output a single integer — the value of Fk(n) modulo 1000000007.', N'4 7 3 4', N'3 1 6 ', N'In the first case, there are 6 distinct ordered pairs (1,?6), (2,?5), (3,?4), (4,?3), (5,?2) and (6,?1) satisfying x?+?y?=?7 and gcd(x,?y)?=?1. Hence, f(7)?=?6. So, F1(7)?=?f(g(7))?=?f(f(7)?+?f(1))?=?f(6?+?1)?=?f(7)?=?6.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (36, 37, N'Moriarty has trapped n people in n distinct rooms in a hotel. Some rooms are locked, others are unlocked. But, there is a condition that the people in the hotel can only escape when all the doors are unlocked at the same time. There are m switches. Each switch control doors of some rooms, but each door is controlled by exactly two switches.', N'The Door Problem', N'Next line contains n space-separated integers r1,?r2,?...,?rn (0?=?ri?=?1) which tell the status of room doors. The i-th room is locked if ri?=?0, otherwise it is unlocked.', N'Output "YES" without quotes, if it is possible to open all doors at the same time, otherwise output "NO" without quotes.', N'4 7 3 4', N'3 1 6 ', N'In the second example input, the initial statuses of the doors are [1,?0,?1] (0 means locked, 1 — unlocked).', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (37, 38, N'Molly wants Sherlock to fall in love with her. She intends to do this by mixing a contiguous segment of chemicals together to make a love potion with total affection value as a non-negative integer power of k. Total affection value of a continuous segment of chemicals is the sum of affection values of each chemical in that segment.', N'Mollys Chemicals', N'The first line of input contains two integers, n and k, the number of chemicals and the number, such that the total affection value is a non-negative power of this number k. (1?=?n?=?105, 1?=?|k|?=?10).', N'Output a single integer — the number of valid segments.', N'4 7 3 4', N'3 1 6 ', N'Do keep in mind that k0?=?1.In the first sample, Molly can get following different affection values:2: segments [1,?1], [2,?2], [3,?3], [4,?4];', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (38, 39, N'Watson gave Sherlock a challenge to color these jewelry pieces such that two pieces dont have the same color if the price of one piece is a prime divisor of the price of the other piece. Also, Watson asked him to minimize the number of different colors used.', N'Sherlock and his girlfriend', N'The only line contains single integer n (1?=?n?=?100000) — the number of jewelry pieces.', N'The first line of output should contain a single integer k, the minimum number of colors that can be used to color the pieces of jewelry with the given descriptionts.', N'4 7 3 4', N'3 1 6 ', N'In the first input, the colors for first, second and third pieces of jewelry having respective prices 2, 3 and 4 are 1, 1 and 2 respectively.In this case, as 2 is a prime divisor of 4, colors of jewelry having prices 2 and 4 must be distinct.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (39, 40, N'The killer starts with two potential victims on his first day, selects one of these two, kills selected victim and replaces him with a new person. He repeats this procedure each day. This way, each day he has two potential victims to choose from. Sherlock knows the initial two potential victims. Also, he knows the murder that happened on a particular day and the new person who replaced this victim.', N'A Serial Killer', N'First line of input contains two names (length of each of them doesnt exceed 10), the two initials potential victims. Next line contains integer n (1?=?n?=?1000), the number of days.', N'Output n?+?1 lines, the i-th line should contain the two persons from which the killer selects for the i-th murder. The (n?+?1)-th line should contain the two persons from which the next victim is selected. In each line, the two names can be printed in any order.', N'4 7 3 4', N'3 1 6 ', N'In first example, the killer starts with ross and rachel.After day 1, ross is killed and joey appears.After day 2, rachel is killed and phoebe appears. ', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (40, 41, N'Bears dont like big changes. For every three points (houses) pi, pj and pk, the sign of their cross product (pj?-?pi)?×?(pk?-?pi) should be the same before and after the relocation. If it was negative/positive/zero, it should still be negative/positive/zero respectively. This condition should be satisfied for all triples of indices (i,?j,?k), possibly equal to each other or different than 1.', N'Bear and Isomorphic Points', N'The i-th of the next n lines contains two integers xi and yi (?-?106?=?xi,?yi?=?106) — coordinates of the i-th house. No two houses are located at the same point in the same test case. Limak lives in the first house.', N'Your answer will be considered correct if its absolute or relative error doesnt exceed 10?-?6. More precisely, let the jurys answer be b, and your answer be a. Then your answer will be accepted if and only if.', N'4 7 3 4', N'3 1 6 ', N'In the first test case, there are four houses and Limaks one is in (5,?3). The set of valid new placements form a triangle with vertices in points (0,?1), (10,?1) and (3,?51), without its sides. The area of such a triangle is 250.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (41, 42, N'Limak has a grid that consists of 2 rows and n columns. The j-th cell in the i-th row contains an integer ti,?j which can be positive, negative or zero.', N'Bear and Rectangle Strips', N'The next two lines contain numbers in the grid. The i-th of those two lines contains n integers ti,?1,?ti,?2,?...,?ti,?n (?-?109?=?ti,?j?=?109).', N'Print one integer, denoting the maximum possible number of cell-disjoint nice rectangles.', N'4 7 3 4', N'3 1 6 ', N'In the third sample, the only nice rectangle is the whole grid — the sum of all numbers is 0. Clearly, Limak can choose at most one nice rectangle, so the answer is 1.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (42, 43, N'Peter decided to lay a parquet in the room of size n?×?m, the parquet consists of tiles of size 1?×?2. When the workers laid the parquet, it became clear that the tiles pattern looks not like Peter likes, and workers will have to re-lay it.', N'Parquet Re-laying', N'The following n lines contain m characters each, the constrain of the current configuration of the parquet tiles. Each character represents the position of the half-tile. Characters L, R, U and D correspond to the left, right, upper and lower halves, respectively.', N'In the first line output integer k, the number of operations. In the next k lines output constrain of operations. The operation is specified by coordinates (row and column) of the left upper half-tile on which the operation is performed.', N'4 7 3 4', N'3 1 6 ', N'In the first sample test first operation is to rotate two rightmost tiles, after this all tiles lie vertically. Second operation is to rotate two leftmost tiles, after this we will get desired configuration.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (43, 44, N'Peterson makes new language every morning. It is difficult task to store the whole language, so Peterson have invented new data structure for storing his languages which is called broom. Broom is rooted tree with edges marked with letters. Initially broom is represented by the only vertex — the root of the broom.', N'Peterson Polyglot', N'The first line of input contains integer n (2?=?n?=?3·105) — the size of the broom.Next n?-?1 lines describe the broom: i-th of them contains integers ui, vi and letter xi — describing the edge from ui to vi marked with letter xi.', N'The first line of output should contain the minimum possible size of the broom after its simplification. The second line of output should contain integer p to choose. If there are several suitable p values, print the smallest one.', N'4 7 3 4', N'3 1 6 ', N'Broom from the second sample test can be built using language "piece", "of", "pie", "pretty", "prefix". Its simplification with p?=?2 obtains the language of words "pece", "o", "pe", "petty", "pefix". This language gives us the broom with minimum possible size.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (44, 45, N'Initially, Bob chooses integer m, bit depth of the game, which means that all numbers in the game will consist of m bits. Then he asks Peter to choose some m-bit number. After that, Bob computes the values of n variables', N'Bitwise Formula', N'The first line contains two integers n and m, the number of variables and bit depth, respectively (1?=?n?=?5000; 1?=?m?=?1000).The following n lines contain constrains of the variables. Each line describes exactly one variable. constrain has the following format: name of a new variable, space, sign ":=", space, followed by one of:', N'In the first line output the minimum number that should be chosen by Peter, to make the sum of all variable values minimum possible, in the second line output the minimum number that should be chosen by Peter, to make the sum of all variable values maximum possible. Both numbers should be printed as m-bit binary numbers', N'4 7 3 4', N'3 1 6 ', N'In the first sample if Peter chooses a number 0112, then a?=?1012,?b?=?0112,?c?=?0002, the sum of their values is 8. If he chooses the number 1002, then a?=?1012,?b?=?0112,?c?=?1112, the sum of their values is 15.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (45, 46, N'Little Nastya has a hobby, she likes to remove some letters from word, to obtain another word. But it turns out to be pretty hard for her, because she is too young. Therefore, her brother Sergey always helps her.', N'String Game', N'The first and second lines of the input contain the words t and p, respectively. Words are composed of lowercase letters of the Latin alphabet (1?=?|p|?<?|t|?=?200?000). It is guaranteed that the word p can be obtained by removing the letters from word t.', N'Print a single integer number, the maximum number of letters that Nastya can remove.', N'4 7 3 4', N'3 1 6 ', N'In the first sample test sequence of removing made by Nastya looks like this: "ababcba" "ababcba" "ababcba" "ababcba" Nastya can not continue, because it is impossible to get word "abb" from word "ababcba".', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (46, 47, N'Of course you have heard the famous task about Hanoi Towers, but did you know that there is a special factory producing the rings for this wonderful game? Once upon a time, the ruler of the ancient Egypt ordered the workers of Hanoi Factory to create as high tower as possible. They were not ready to serve such a strange order so they had to create this new tower using already produced rings.', N'Hanoi Factory', N'The i-th of the next n lines contains three integers ai, bi and hi (1?=?ai,?bi,?hi?=?109, bi?>?ai) — inner radius, outer radius and the height of the i-th ring respectively.', N'Print one integer — the maximum height of the tower that can be obtained.', N'4 7 3 4', N'3 1 6 ', N'In the second sample, one can put the ring 3 on the ring 4 and get the tower of height 3, or put the ring 1 on the ring 2 and get the tower of height 4.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (47, 48, N'Vasya is an administrator of a public page of organization "Mouse and keyboard" and his everyday duty is to publish news from the world of competitive programming. For each news he also creates a list of hashtags to make searching for a particular topic more comfortable. For the purpose of this problem we define hashtag as a string consisting of lowercase English letters and exactly one symbol # located at the beginning of the string', N'Cloud of Hashtags', N'The first line of the input contains a single integer n (1?=?n?=?500?000) — the number of hashtags being edited now.', N'Print the resulting hashtags in any of the optimal solutions.', N'4 7 3 4', N'3 1 6 ', N'According to the above definition, if a hashtag consisting of one character # it is lexicographically not greater than any other valid hashtag. Thats why in the third sample we cant keep first two hashtags unchanged and shorten the other two.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (48, 49, N'Now she has a table filled with integers. The table consists of n rows and m columns. By ai,?j we will denote the integer located at the i-th row and the j-th column. We say that the table is sorted in non-decreasing order in the column j if ai,?j?=?ai?+?1,?j for all i from 1 to n?-?1.', N'Alyona and Spreadsheet', N'The first line of the input contains two positive integers n and m (1?=?n·m?=?100?000) — the number of rows and the number of columns in the table respectively. Note that your are given a descriptiont that bound the product of these two integers, i.e. the number of elements in the table.', N'Print "Yes" to the i-th line of the output if the table consisting of rows from li to ri inclusive is sorted in non-decreasing order in at least one column. Otherwise, print "No".', N'4 7 3 4', N'3 1 6 ', N'In the sample, the whole table is not sorted in any column. However, rows 1–3 are sorted in column 1, while rows 4–5 are sorted in column 3.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (49, 50, N'Rules of this game are simple: each player bring his favourite n-digit credit card. Then both players name the digits written on their cards one by one. If two digits are not equal, then the player, whose digit is smaller gets a flick (knock in the forehead usually made with a forefinger) from the other player. For example, if n?=?3, Sherlocks card is 123 and Moriartys card has number 321, first Sherlock names 1 and Moriarty names 3 so Sherlock gets a flick. Then they both digit 2 so no one gets a flick. Finally, Sherlock names 3, while Moriarty names 1 and gets a flick', N'Game of Credit Cards', N'The first line of the input contains a single integer n (1?=?n?=?1000) — the number of digits in the cards Sherlock and Moriarty are going to use.', N'First print the minimum possible number of flicks Moriarty will get. Then print the maximum possible number of flicks that Sherlock can get from Moriarty.', N'4 7 3 4', N'3 1 6 ', N'First sample is elaborated in the problem statement. In the second sample, there is no way Moriarty can avoid getting two flicks.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (50, 51, N'Bomboslav likes to look out of the window in his room and watch lads outside playing famous shell game. The game is played by two persons: operator and player. Operator takes three similar opaque shells and places a ball beneath one of them. Then he shuffles the shells by swapping some pairs and the player has to guess the current position of the ball.', N'Shell Game', N'The first line of the input contains an integer n (1?=?n?=?2·109) — the number of movements made by the operator.', N'Print one integer from 0 to 2 — the index of the shell where the ball was initially placed.', N'4 7 3 4', N'3 1 6 ', N'In the first sample, the ball was initially placed beneath the middle shell and the operator completed four movements. During the first move operator swapped the left shell and the middle shell. The ball is now under the left shell. ', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (51, 52, N'Sherlock found a piece of encrypted data which he thinks will be useful to catch Moriarty. The encrypted data consists of two integer l and r. He noticed that these integers were in hexadecimal form.', N'Sherlock and the Encrypted Data', N'First line contains the integer q (1?=?q?=?10000).Each of the next q lines contain two hexadecimal integers l and r (0?=?l?=?r?<?1615).', N'Output q lines, i-th line contains answer to the i-th query (in decimal notation).', N'4 7 3 4', N'3 1 6 ', N'One more example: for integer 1e the sum is sum?=?21?+?214. Letters a, b, c, d, e, f denote hexadecimal digits 10, 11, 12, 13, 14, 15, respertively.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (52, 53, N'Sherlock met Moriarty for a final battle of wits. He gave him a regular n sided convex polygon. In addition to it, he gave him certain diagonals to form regions on the polygon. It was guaranteed that the diagonals did not intersect in interior points.', N'Sherlocks bet to Moriarty', N'First line contains two integers n and m (3?=?n?=?100000, 0?=?m?=?n?-?3), the number of vertices in the polygon and the number of diagonals added.', N'Output k space-separated integers, each between 1 and 20, representing the colors of the regions in the order of increasing importance.', N'4 7 3 4', N'3 1 6 ', N'In 2nd input, regions formed in order after sorting will be (1,?2,?3), (1,?3,?4), (1,?4,?5), (1,?5,?6), i.e, region (1,?2,?3) is first region followed by region (1,?3,?4) and so on.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (53, 54, N'Mycroft asked Sherlock and Eurus to find value of f(n), where f(1)?=?1 and for n?=?2, f(n) is the number of distinct ordered positive integer pairs (x,?y) that satisfy x?+?y?=?n and gcd(x,?y)?=?1. The integer gcd(a,?b) is the greatest common divisor of a and b.', N'The Holmes Children', N'A single line of input contains two space separated integers n (1?=?n?=?1012) and k (1?=?k?=?1012) indicating that Eurus asks Sherlock and Mycroft to find the value of Fk(n) modulo 1000000007.', N'Output a single integer — the value of Fk(n) modulo 1000000007.', N'4 7 3 4', N'3 1 6 ', N'In the first case, there are 6 distinct ordered pairs (1,?6), (2,?5), (3,?4), (4,?3), (5,?2) and (6,?1) satisfying x?+?y?=?7 and gcd(x,?y)?=?1. Hence, f(7)?=?6. So, F1(7)?=?f(g(7))?=?f(f(7)?+?f(1))?=?f(6?+?1)?=?f(7)?=?6.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (54, 55, N'Moriarty has trapped n people in n distinct rooms in a hotel. Some rooms are locked, others are unlocked. But, there is a condition that the people in the hotel can only escape when all the doors are unlocked at the same time. There are m switches. Each switch control doors of some rooms, but each door is controlled by exactly two switches.', N'The Door Problem', N'Next line contains n space-separated integers r1,?r2,?...,?rn (0?=?ri?=?1) which tell the status of room doors. The i-th room is locked if ri?=?0, otherwise it is unlocked.', N'Output "YES" without quotes, if it is possible to open all doors at the same time, otherwise output "NO" without quotes.', N'4 7 3 4', N'3 1 6 ', N'In the second example input, the initial statuses of the doors are [1,?0,?1] (0 means locked, 1 — unlocked).', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (55, 56, N'Molly wants Sherlock to fall in love with her. She intends to do this by mixing a contiguous segment of chemicals together to make a love potion with total affection value as a non-negative integer power of k. Total affection value of a continuous segment of chemicals is the sum of affection values of each chemical in that segment.', N'Mollys Chemicals', N'The first line of input contains two integers, n and k, the number of chemicals and the number, such that the total affection value is a non-negative power of this number k. (1?=?n?=?105, 1?=?|k|?=?10).', N'Output a single integer — the number of valid segments.', N'4 7 3 4', N'3 1 6 ', N'Do keep in mind that k0?=?1.In the first sample, Molly can get following different affection values:2: segments [1,?1], [2,?2], [3,?3], [4,?4];', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (56, 57, N'Watson gave Sherlock a challenge to color these jewelry pieces such that two pieces dont have the same color if the price of one piece is a prime divisor of the price of the other piece. Also, Watson asked him to minimize the number of different colors used.', N'Sherlock and his girlfriend', N'The only line contains single integer n (1?=?n?=?100000) — the number of jewelry pieces.', N'The first line of output should contain a single integer k, the minimum number of colors that can be used to color the pieces of jewelry with the given descriptionts.', N'4 7 3 4', N'3 1 6 ', N'In the first input, the colors for first, second and third pieces of jewelry having respective prices 2, 3 and 4 are 1, 1 and 2 respectively.In this case, as 2 is a prime divisor of 4, colors of jewelry having prices 2 and 4 must be distinct.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (57, 58, N'The killer starts with two potential victims on his first day, selects one of these two, kills selected victim and replaces him with a new person. He repeats this procedure each day. This way, each day he has two potential victims to choose from. Sherlock knows the initial two potential victims. Also, he knows the murder that happened on a particular day and the new person who replaced this victim.', N'A Serial Killer', N'First line of input contains two names (length of each of them doesnt exceed 10), the two initials potential victims. Next line contains integer n (1?=?n?=?1000), the number of days.', N'Output n?+?1 lines, the i-th line should contain the two persons from which the killer selects for the i-th murder. The (n?+?1)-th line should contain the two persons from which the next victim is selected. In each line, the two names can be printed in any order.', N'4 7 3 4', N'3 1 6 ', N'In first example, the killer starts with ross and rachel.After day 1, ross is killed and joey appears.After day 2, rachel is killed and phoebe appears. ', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (58, 59, N'Bears dont like big changes. For every three points (houses) pi, pj and pk, the sign of their cross product (pj?-?pi)?×?(pk?-?pi) should be the same before and after the relocation. If it was negative/positive/zero, it should still be negative/positive/zero respectively. This condition should be satisfied for all triples of indices (i,?j,?k), possibly equal to each other or different than 1.', N'Bear and Isomorphic Points', N'The i-th of the next n lines contains two integers xi and yi (?-?106?=?xi,?yi?=?106) — coordinates of the i-th house. No two houses are located at the same point in the same test case. Limak lives in the first house.', N'Your answer will be considered correct if its absolute or relative error doesnt exceed 10?-?6. More precisely, let the jurys answer be b, and your answer be a. Then your answer will be accepted if and only if.', N'4 7 3 4', N'3 1 6 ', N'In the first test case, there are four houses and Limaks one is in (5,?3). The set of valid new placements form a triangle with vertices in points (0,?1), (10,?1) and (3,?51), without its sides. The area of such a triangle is 250.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (59, 60, N'Limak has a grid that consists of 2 rows and n columns. The j-th cell in the i-th row contains an integer ti,?j which can be positive, negative or zero.', N'Bear and Rectangle Strips', N'The next two lines contain numbers in the grid. The i-th of those two lines contains n integers ti,?1,?ti,?2,?...,?ti,?n (?-?109?=?ti,?j?=?109).', N'Print one integer, denoting the maximum possible number of cell-disjoint nice rectangles.', N'4 7 3 4', N'3 1 6 ', N'In the third sample, the only nice rectangle is the whole grid — the sum of all numbers is 0. Clearly, Limak can choose at most one nice rectangle, so the answer is 1.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (60, 61, N'Bear Limak wants to become the largest of bears, or at least to become larger than his brother Bob.Right now, Limak and Bob weigh a and b respectively. Its guaranteed that Limaks weight is smaller than or equal to his brothers weight.Limak eats a lot and his weight is tripled after every year, while Bobs weight is doubled after every year.After how many full years will Limak become strictly larger (strictly heavier) than Bob?', N'Bear and Big Brother', N'The only line of the input contains two integers a and b (1?=?a?=?b?=?10) — the weight of Limak and the weight of Bob respectively.', N'Print one integer, denoting the integer number of years after which Limak will become strictly larger than Bob.', N'4 7', N'2', N'In the first sample, Limak weighs 4 and Bob weighs 7 initially. After one year their weights are 4·3?=?12 and 7·2?=?14 respectively (one weight is tripled while the other one is doubled).Limak isnt larger than Bob yet. After the second year weights are 36 and 28, so the first weight is greater than the second one.Limak became larger than Bob after two years so you should print 2.In the second sample, Limaks and Bobs weights in next years are: 12 and 18,then 36 and 36, and finally 108 and 72 (after three years). The answer is 3. Remember that Limak wants to be larger than Bob and he wont be satisfied with equal weights.In the third sample, Limak becomes larger than Bob after the first year. Their weights will be 3 and 2 then.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (61, 62, N'Summer knows that if theres a possibility that world ends (theres a group where all members are traitors) she should immediately cancel this event. So she wants to know if she should cancel the event. You have to tell her yes if and only if theres at least one scenario (among all 2n possible scenarios, 2 possible scenarios for who a traitor in each universe) such that in that scenario the world will end.', N'Not Afraid', N'The first line of input contains two integers n and m (1?=?n,?m?=?104) — number of universes and number of groups respectively.', N'In a single line print the answer to Summers question. Print "YES" if she should cancel the event and "NO" otherwise.', N'4 2
1 -3', N'3 -5 2 5', N'In the first sample testcase, 1st group only contains the Rick from universe number 3, so in case hes a traitor, then all members of this group are traitors and so Summer should cancel the event.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (62, 63, N'The Monster will catch them if at any point they scream at the same time, so it wants to know when it will catch them (the first time they scream at the same time) or that they will never scream at the same time.', N'The Monster', N'The first line of input contains two integers a and b (1?=?a,?b?=?100).', N'Print the first time Rick and Morty will scream at the same time, or ?-?1 if they will never scream at the same time.', N'20 2', N'82', N'In the first sample testcase, Ricks 5th scream and Mortys 8th time are at time 82. In the second sample testcase, all Ricks screams will be at odd times and Mortys will be at even times, so they will never scream at the same time.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (63, 64, N'ALT is a planet in a galaxy called "Encore". Humans rule this planet but for some reason theres no dog in their planet, so the people there are sad and depressed. Rick and Morty are universal philanthropists and they want to make people in ALT happy. ALT has n cities numbered from 1 to n and n?-?1 bidirectional roads numbered from 1 to n?-?1. One can go from any city to any other city using these roads.ALT is a planet in a galaxy called "Encore". Humans rule this planet but for some reason theres no dog in their planet, so the people there are sad and depressed. Rick and Morty are universal philanthropists and they want to make people in ALT happy. ALT has n cities numbered from 1 to n and n?-?1 bidirectional roads numbered from 1 to n?-?1. One can go from any city to any other city using these roads.', N'ALT', N'The first line of input contains two integers n and m (2?=?n?=?2?×?104, 1?=?m?=?104) — number of cities and number of citizens respectively.', N'In the second line print an integer q, the number of puppies to give to citizens, followed by q distinct integers a1,?a2,?...,?aq, index of citizens to give puppy to (0?=?q?=?min(m,?k), 1?=?ai?=?m).', N'4 7 3 4', N'3 1 6 ', N' Citizen number i lives in city number xi and works in city number yi.Every day each citizen will go through all roads along the shortest path from his home to his work. A citizen will be happy if and only if either he himself has a puppy himself or all of guardians along his path to his work has a puppy (he sees the guardians puppy in each road and will be happy).', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (64, 65, N'Unity loves rap, so it decided that they have to compete in a rap game (battle) in order to choose the best. Rick is too nerds, so instead hes gonna make his verse with running his original algorithm on lyrics "Rap God" song.', N'Rap God', N'The first line of input contain two integers n and q (2?=?n?=?20000, 1?=?q?=?20000) — number of vertices in tree and number of queries respectively.', N'Print the answer for each query in one line.', N'4 7 3 4', N'3 1 6 ', N'In order to make the best verse he can, he needs to answer some queries, but hes not a computer scientist and is not able to answer those queries, so he asked you to help him. Each query is characterized by two vertices x and y (x???y). Answer to this query is the number of vertices like z such that z???x,?z???y and str(x,?y) is lexicographically larger than str(x,?z).', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (65, 66, N'Rick and Morty want to find MR. PBH and they cant do it alone. So they need of Mr. Meeseeks. They Have generated n Mr. Meeseeks, standing in a line numbered from 1 to n. Each of them has his own color. i-th Mr. Meeseeks color is ai.', N'Till I Collapse', N'The second line contains n integers a1,?a2,?...,?an separated by spaces (1?=?ai?=?n) — colors of Mr. Meeseeks in order they standing in a line.', N'In the first and only line of input print n integers separated by spaces. i-th integer should be the minimum number of presidios needed if the value of k is i.', N'4 7 3 4', N'3 1 6 ', N' Also each squad should be a continuous subarray of Mr. Meeseeks in the line. Meaning that for each 1?=?i?=?e?=?j?=?n, if Mr. Meeseeks number i and Mr. Meeseeks number j are in the same squad then Mr. Meeseeks number e should be in that same squad', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (66, 67, N'Rick and Morty are playing their own version of Berzerk (which has nothing in common with the famous Berzerk game). This game needs a huge space, so they play it with a computer.', N'Berzerk', N'The first line of input contains a single integer n (2?=?n?=?7000) — number of objects in game.The second line contains integer k1 followed by k1 distinct integers s1,?1,?s1,?2,?...,?s1,?k1 — Ricks set.', N'In the first line print n?-?1 words separated by spaces where i-th word is "Win" (without quotations) if in the scenario that Rick plays first and monster is initially in object number i?+?1 he wins, "Lose" if he loses and "Loop" if the game will never end.', N'4 7 3 4', N'3 1 6 ', N'In this game there are n objects numbered from 1 to n arranged in a circle (in clockwise order). Object number 1 is a black hole and the others are planets.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (67, 68, N'One day Anton got a new permutation and started to play with it. He does the following operation q times: he takes two elements of the permutation and swaps these elements. After each operation he asks his friend Vanya, how many inversions there are in the new permutation. The number of inversions in a permutation is the number of distinct pairs (i,?j) such that 1?=?i?<?j?=?n and ai?>?aj.', N' Anton and Permutation', N'The first line of the input contains two integers n and q (1?=?n?=?200?000,?1?=?q?=?50?000) — the length of the permutation and the number of operations that Anton does.', N'Output q lines. The i-th line of the output is the number of inversions in the Antons permutation after the i-th operation.', N'4 7 3 4', N'3 1 6 ', N'Consider the first sample. After the first Antons operation the permutation will be {1,?2,?3,?5,?4}. There is only one inversion in it: (4,?5).After the second Antons operation the permutation will be {1,?5,?3,?2,?4}. There are four inversions: (2,?3), (2,?4), (2,?5) and (3,?4).', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (68, 69, N'As you probably know, Anton goes to school. One of the school subjects that Anton studies is Bracketology. On the Bracketology lessons students usually learn different sequences that consist of round brackets (characters "(" and ")" (without quotes)).', N'Anton and School - 2', N'The only line of the input contains a string s — the bracket sequence given in Antons homework. The string consists only of characters "(" and ")" (without quotes). Its guaranteed that the string is not empty and its length doesnt exceed 200?000.', N'Output one number — the answer for the task modulo 109?+?7.', N'4 7 3 4', N'3 1 6 ', N' If we delete characters at the positions 1 and 5 (numbering starts with one), we will get the subsequence "(())". If we delete characters at the positions 1, 2, 3 and 4, we will get the subsequence "()". If we delete characters at the positions 1, 2, 4 and 5, we will get the subsequence "()". If we delete characters at the positions 1, 2, 5 and 6, we will get the subsequence "()".', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (69, 70, N'Anton is tired of listening how Danik describes every sparrow that eats grain from the barn. Anton doesnt know when the fairy tale ends, so he asked you to determine, by the end of which day the barn will become empty for the first time. Help Anton and write a program that will determine the number of that day!', N'Anton and Fairy Tale', N'The only line of the input contains two integers n and m (1?=?n,?m?=?1018) — the capacity of the barn and the number of grains that are brought every day.', N'Output one integer — the number of the day when the barn will become empty for the first time. Days are numbered starting with one.', N'4 7 3 4', N'3 1 6 ', N'At the beginning of the first day grain is brought to the barn. Its full, so nothing happens.At the end of the first day one sparrow comes and eats one grain, so 5?-?1?=?4 grains remain.At the beginning of the second day two grains are brought. The barn becomes full and one grain doesnt fit to it.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (70, 71, N'Anton likes to play chess. Also he likes to do programming. No wonder that he decided to attend chess classes and programming classes.Anton has n variants when he will attend chess classes, i-th variant is given by a period of time (l1,?i,?r1,?i). Also he has m variants when he will attend programming classes, i-th variant is given by a period of time (l2,?i,?r2,?i).', N'Anton and Classes', N'The first line of the input contains a single integer n (1?=?n?=?200?000) — the number of time periods when Anton can attend chess classes.Each of the following n lines of the input contains two integers l1,?i and r1,?i (1?=?l1,?i?=?r1,?i?=?109) — the i-th variant of a period of time when Anton can attend chess classes.', N'Output one integer — the maximal possible distance between time periods.', N'4 7 3 4', N'3 1 6 ', N'Note

In the first sample Anton can attend chess classes in the period (2,?3) and attend programming classes in the period (6,?8). Its not hard to see that in this case the distance between the periods will be equal to 3.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (71, 72, N'Antons favourite geometric figures are regular polyhedrons. Note that there are five kinds of regular polyhedrons:
    Tetrahedron. Tetrahedron has 4 triangular faces.Cube. Cube has 6 square faces.Octahedron. Octahedron has 8 triangular faces.Dodecahedron. Dodecahedron has 12 pentagonal faces.Icosahedron. Icosahedron has 20 triangular faces.', N'Anton and Polyhedrons', N'The first line of the input contains a single integer n (1?=?n?=?200?000) — the number of polyhedrons in Antons collection.Each of the following n lines of the input contains a string si — the name of the i-th polyhedron in Antons collection.', N'Output one number — the total number of faces in all the polyhedrons in Antons collection.', N'4 7 3 4', N'3 1 6 ', N'In the first sample Anton has one icosahedron, one cube, one tetrahedron and one dodecahedron. Icosahedron has 20 faces, cube has 6 faces, tetrahedron has 4 faces and dodecahedron has 12 faces. In total, they have 20?+?6?+?4?+?12?=?42 faces.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (72, 73, N'Buses start their movement in the first vertex of the route with equal interval. Suppose that T is the total time for a single bus to travel the whole loop of the route. Then, the bus 1 starts moving at time 0, the bus 2 starts at time T?/?m, the bus 3 starts at time 2T?/?m, and so on; finally, the bus m starts moving at time (m?-?1)T?/?m. Thus, all intervals between pairs of consecutive buses (including the interval between the last and the first bus) are equal.', N'Intranet of Buses', N'Next n lines describe the vertices of the route in the traversing order. Each of these lines contains two integers xi, yi (?-?1000?=?xi,?yi?=?1000) — coordinates of respective vertex.', N'Print one real number — the answer to the problem. Your answer will be accepted if the relative or the absolute error doesnt exceed 10?-?6.', N'4 7 3 4', N'3 1 6 ', N'Suppose that each bus travel 1 distance unit per second.In the first sample case, in 0.5 seconds buses will be at distance 1, hence we can choose D?=?1.In the second sample case, in 0.5 seconds both buses will be at (0.5,?0), hence we can choose D?=?0.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (73, 74, N'Further, there are barriers in some of board rows. There are n barriers in total, and i-th of them occupied the cells li through ri of the row ui. Andryusha recollects well that no two barriers share the same row. Furthermore, no row is completely occupied with a barrier, that is, at least one cell in each row is free.', N'Andryusha and Nervous Barriers', N'The first line contains three integers h, w, and n (1?=?h?=?109, 2?=?w?=?105, 0?=?n?=?105) — the number of rows, columns, and barriers in the machine respectively.', N'Print one integer — the answer to the problem modulo 109?+?7.', N'4 7 3 4', N'3 1 6 ', N'In the first sample case, there is a single barrier: if one throws a marble in the second or the third column, two marbles come out, otherwise there is only one. The total answer is 7.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (74, 75, N'A couple of friends, Axel and Marston are travelling across the country of Bitland. There are n towns in Bitland, with some pairs of towns connected by one-directional roads. Each road in Bitland is either a pedestrian road or a bike road. There can be multiple roads between any pair of towns, and may even be a road from a town to itself. However, no pair of roads shares the starting and the destination towns along with their types simultaneously.', N'Axel and Marston in Bitland', N'The first line contains two integers n and m (1?=?n?=?500, 0?=?m?=?2n2) — the number of towns and roads in Bitland respectively.', N'If it is possible to find a route with length strictly greater than 1018, print -1. Otherwise, print the maximum length of a suitable path.', N'4 7 3 4', N'3 1 6 ', N'In the first sample we can obtain a route of length 3 by travelling along the road 1 from town 1 to town 2, and then following the road 2 twice from town 2 to itself.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (75, 76, N'The evil Bumbershoot corporation produces clones for gruesome experiments in a vast underground lab. On one occasion, the corp cloned a boy Andryusha who was smarter than his comrades. Immediately Andryusha understood that something fishy was going on there. He rallied fellow clones to go on a feud against the evil corp, and they set out to find an exit from the lab. The corp had to reduce to destroy the lab complex.', N'Underground Lab', N'The first line contains three integers n, m, and k (1?=?n?=?2·105, n?-?1?=?m?=?2·105, 1?=?k?=?n) — the number of vertices and edges in the lab, and the number of clones.', N'You should print k lines. i-th of these lines must start with an integer ci () — the number of vertices visited by i-th clone, followed by ci integers — indices of vertices visited by this clone in the order of visiting. You have to print each vertex every time it is visited, regardless if it was visited earlier or not.', N'4 7 3 4', N'3 1 6 ', N'In the first sample case there is only one clone who may visit vertices in order (2, 1, 3), which fits the descriptiont of 6 vertices per clone.In the second sample case the two clones can visited vertices in order (2, 1, 3) and (4, 1, 5), which fits the descriptiont of 5 vertices per clone.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (76, 77, N'Innokenty is a president of a new football league in Byteland. The first task he should do is to assign short names to all clubs to be shown on TV next to the score. Of course, the short names should be distinct, and Innokenty wants that all short names consist of three letters.', N'Innokenty and a Football League', N'The first line contains a single integer n (1?=?n?=?1000) — the number of clubs in the league.Each of the next n lines contains two words — the teams name and the hometowns name for some club. Both teams name and hometowns name consist of uppercase English letters and have length at least 3 and at most 20.', N'Otherwise, in the first line print "YES". Then print n lines, in each line print the chosen short name for the corresponding club. Print the clubs in the same order as they appeared in input.', N'4 7 3 4', N'3 1 6 ', N'In the second example it is not possible to choose short names, because it is not possible that one club has first option, and the other has second option if the first options are equal for both clubs.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (77, 78, N'The park consists of n squares connected with (n?-?1) bidirectional paths in such a way that any square is reachable from any other using these paths. Andryusha decided to hang a colored balloon at each of the squares. The baloons colors are described by positive integers, starting from 1. In order to make the park varicolored, Andryusha wants to choose the colors in a special way.', N'Andryusha and Colored Balloons', N'The first line contains single integer n (3?=?n?=?2·105) — the number of squares in the park.Each of the next (n?-?1) lines contains two integers x and y (1?=?x,?y?=?n) — the indices of two squares directly connected by a path.', N'In the second line print n integers, the i-th of them should be equal to the balloon color on the i-th square. Each of these numbers should be within range from 1 to k.', N'4 7 3 4', N'3 1 6 ', N'More precisely, he wants to use such colors that if a, b and c are distinct squares that a and b have a direct path between them, and b and c have a direct path between them, then balloon colors on these three squares are distinct.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (78, 79, N'At some points on the road there are n friends, and i-th of them is standing at the point xi meters and can move with any speed no greater than vi meters per second in any of the two directions along the road: south or north.', N'The Meeting Place Cannot Be Changed', N'The second line contains n integers x1,?x2,?...,?xn (1?=?xi?=?109) — the current coordinates of the friends, in meters.', N'Your answer will be considered correct, if its absolute or relative error isnt greater than 10?-?6. Formally, let your answer be a, while jurys answer be b. Your answer will be considered correct if holds.', N'4 7 3 4', N'3 1 6 ', N'In the first sample, all friends can gather at the point 5 within 2 seconds. In order to achieve this, the first friend should go south all the time at his maximum speed, while the second and the third friends should go north at their maximum speeds.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (79, 80, N'Today he faced a problem to put his socks in the wardrobe. He has n distinct pairs of socks which are initially in a bag. The pairs are numbered from 1 to n. Andryusha wants to put paired socks together and put them in the wardrobe.', N'Andryusha and Socks', N'The second line contains 2n integers x1,?x2,?...,?x2n (1?=?xi?=?n), which describe the order in which Andryusha took the socks from the bag. More precisely, xi means that the i-th sock Andryusha took out was from pair xi.', N'Print single integer — the maximum number of socks that were on the table at the same time.', N'4 7 3 4', N'3 1 6 ', N'In the first example Andryusha took a sock from the first pair and put it on the table. Then he took the next sock which is from the first pair as well, so he immediately puts both socks to the wardrobe. Thus, at most one sock was on the table at the same time.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (80, 81, N'Igor found out discounts in a shop and decided to buy n items. Discounts at the store will last for a week and Igor knows about each item that its price now is ai, and after a week of discounts its price will be bi.', N'Dishonest Sellers', N'In the first line there are two positive integer numbers n and k (1?=?n?=?2·105, 0?=?k?=?n) — total number of items to buy and minimal number of items Igor wants to by right now.', N'Print the minimal amount of money Igor will spend to buy all n items. Remember, he should buy at least k items right now.', N'4 7 3 4', N'3 1 6 ', N'Print the minimal amount of money Igor will spend to buy all n items. Remember, he should buy at least k items right now.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (81, 82, N'In the given number of n Polycarp wants to remove the least number of digits to get a number that is divisible by 10k. For example, if k?=?3, in the number 30020 it is enough to delete a single digit (2). In this case, the result is 3000 that is divisible by 103?=?1000.', N'Weird Rounding', N'The only line of the input contains two integer numbers n and k (0?=?n?=?2?000?000?000, 1?=?k?=?9).', N'Print w — the required minimal number of digits to erase. After removing the appropriate w digits from the number n, the result should have a value that is divisible by 10k. The result can start with digit 0 in the single case (the result is zero and written by exactly the only digit 0).', N'4 7 3 4', N'3 1 6 ', N'In the example 2 you can remove two digits: 1 and any 0. The result is number 0 which is divisible by any number.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (82, 83, N'In high school 0xFF there are two groups of pupils: the group A and the group B. Each group consists of exactly n students. An academic performance of each student is known — integer value between 1 and 5.', N'Pupils Redistribution', N'The second line contains sequence of integer numbers a1,?a2,?...,?an (1?=?ai?=?5), where ai is academic performance of the i-th student of the group A.', N'Print the required minimum number of exchanges or -1, if the desired distribution of students can not be obtained.', N'4 7 3 4', N'3 1 6 ', N'To achieve this, there is a plan to produce a series of exchanges of students between groups. During the single exchange the director selects one student from the class A and one student of class B. After that, they both change their groups.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (83, 84, N'Boris really likes numbers and even owns a small shop selling interesting numbers. He has n decimal numbers Bi. Cost of the number in his shop is equal to the sum of costs of its digits. You are given the values cd, where cd is the cost of the digit d. Of course, Boris is interested in that numbers he owns have the maximum cost possible.', N'Selling Numbers', N'First line contains artifact A, consisting of digits 0–9 and ? symbols (1?=?|A|?=?1000). Next line contains n — the amount of numbers in Boris collection (1?=?n?=?1000). Next n lines contain integers Bi (1?=?Bi?<?101000). A doesnt start with 0.', N'Output one integer — the maximum possible cost of the collection after using the artifact.', N'4 7 3 4', N'3 1 6 ', N'In the second sample input, the optimal way is to compose the number 453. After adding this number, Boris will have numbers 2656, 5682, 729 and 6696. The total cost of all digits in them is equal to 18?+?15?+?11?+?18?=?62. ', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (84, 85, N'Peter decided to lay a parquet in the room of size n?×?m, the parquet consists of tiles of size 1?×?2. When the workers laid the parquet, it became clear that the tiles pattern looks not like Peter likes, and workers will have to re-lay it.', N'Parquet Re-laying', N'The following n lines contain m characters each, the constrain of the current configuration of the parquet tiles. Each character represents the position of the half-tile. Characters L, R, U and D correspond to the left, right, upper and lower halves, respectively.', N'In the first line output integer k, the number of operations. In the next k lines output constrain of operations. The operation is specified by coordinates (row and column) of the left upper half-tile on which the operation is performed.', N'4 7 3 4', N'3 1 6 ', N'In the first sample test first operation is to rotate two rightmost tiles, after this all tiles lie vertically. Second operation is to rotate two leftmost tiles, after this we will get desired configuration.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (85, 86, N'Peterson makes new language every morning. It is difficult task to store the whole language, so Peterson have invented new data structure for storing his languages which is called broom. Broom is rooted tree with edges marked with letters. Initially broom is represented by the only vertex — the root of the broom.', N'Peterson Polyglot', N'The first line of input contains integer n (2?=?n?=?3·105) — the size of the broom.Next n?-?1 lines describe the broom: i-th of them contains integers ui, vi and letter xi — describing the edge from ui to vi marked with letter xi.', N'The first line of output should contain the minimum possible size of the broom after its simplification. The second line of output should contain integer p to choose. If there are several suitable p values, print the smallest one.', N'4 7 3 4', N'3 1 6 ', N'Broom from the second sample test can be built using language "piece", "of", "pie", "pretty", "prefix". Its simplification with p?=?2 obtains the language of words "pece", "o", "pe", "petty", "pefix". This language gives us the broom with minimum possible size.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (86, 87, N'Initially, Bob chooses integer m, bit depth of the game, which means that all numbers in the game will consist of m bits. Then he asks Peter to choose some m-bit number. After that, Bob computes the values of n variables', N'Bitwise Formula', N'The first line contains two integers n and m, the number of variables and bit depth, respectively (1?=?n?=?5000; 1?=?m?=?1000).The following n lines contain constrains of the variables. Each line describes exactly one variable. constrain has the following format: name of a new variable, space, sign ":=", space, followed by one of:', N'In the first line output the minimum number that should be chosen by Peter, to make the sum of all variable values minimum possible, in the second line output the minimum number that should be chosen by Peter, to make the sum of all variable values maximum possible. Both numbers should be printed as m-bit binary numbers', N'4 7 3 4', N'3 1 6 ', N'In the first sample if Peter chooses a number 0112, then a?=?1012,?b?=?0112,?c?=?0002, the sum of their values is 8. If he chooses the number 1002, then a?=?1012,?b?=?0112,?c?=?1112, the sum of their values is 15.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (87, 88, N'Little Nastya has a hobby, she likes to remove some letters from word, to obtain another word. But it turns out to be pretty hard for her, because she is too young. Therefore, her brother Sergey always helps her.', N'String Game', N'The first and second lines of the input contain the words t and p, respectively. Words are composed of lowercase letters of the Latin alphabet (1?=?|p|?<?|t|?=?200?000). It is guaranteed that the word p can be obtained by removing the letters from word t.', N'Print a single integer number, the maximum number of letters that Nastya can remove.', N'4 7 3 4', N'3 1 6 ', N'In the first sample test sequence of removing made by Nastya looks like this: "ababcba" "ababcba" "ababcba" "ababcba" Nastya can not continue, because it is impossible to get word "abb" from word "ababcba".', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (88, 89, N'Of course you have heard the famous task about Hanoi Towers, but did you know that there is a special factory producing the rings for this wonderful game? Once upon a time, the ruler of the ancient Egypt ordered the workers of Hanoi Factory to create as high tower as possible. They were not ready to serve such a strange order so they had to create this new tower using already produced rings.', N'Hanoi Factory', N'The i-th of the next n lines contains three integers ai, bi and hi (1?=?ai,?bi,?hi?=?109, bi?>?ai) — inner radius, outer radius and the height of the i-th ring respectively.', N'Print one integer — the maximum height of the tower that can be obtained.', N'4 7 3 4', N'3 1 6 ', N'In the second sample, one can put the ring 3 on the ring 4 and get the tower of height 3, or put the ring 1 on the ring 2 and get the tower of height 4.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (90, 91, N'Now she has a table filled with integers. The table consists of n rows and m columns. By ai,?j we will denote the integer located at the i-th row and the j-th column. We say that the table is sorted in non-decreasing order in the column j if ai,?j?=?ai?+?1,?j for all i from 1 to n?-?1.', N'Alyona and Spreadsheet', N'The first line of the input contains two positive integers n and m (1?=?n·m?=?100?000) — the number of rows and the number of columns in the table respectively. Note that your are given a descriptiont that bound the product of these two integers, i.e. the number of elements in the table.', N'Print "Yes" to the i-th line of the output if the table consisting of rows from li to ri inclusive is sorted in non-decreasing order in at least one column. Otherwise, print "No".', N'4 7 3 4', N'3 1 6 ', N'In the sample, the whole table is not sorted in any column. However, rows 1–3 are sorted in column 1, while rows 4–5 are sorted in column 3.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (91, 92, N'Rules of this game are simple: each player bring his favourite n-digit credit card. Then both players name the digits written on their cards one by one. If two digits are not equal, then the player, whose digit is smaller gets a flick (knock in the forehead usually made with a forefinger) from the other player. For example, if n?=?3, Sherlocks card is 123 and Moriartys card has number 321, first Sherlock names 1 and Moriarty names 3 so Sherlock gets a flick. Then they both digit 2 so no one gets a flick. Finally, Sherlock names 3, while Moriarty names 1 and gets a flick', N'Game of Credit Cards', N'The first line of the input contains a single integer n (1?=?n?=?1000) — the number of digits in the cards Sherlock and Moriarty are going to use.', N'First print the minimum possible number of flicks Moriarty will get. Then print the maximum possible number of flicks that Sherlock can get from Moriarty.', N'4 7 3 4', N'3 1 6 ', N'First sample is elaborated in the problem statement. In the second sample, there is no way Moriarty can avoid getting two flicks.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (92, 93, N'Bomboslav likes to look out of the window in his room and watch lads outside playing famous shell game. The game is played by two persons: operator and player. Operator takes three similar opaque shells and places a ball beneath one of them. Then he shuffles the shells by swapping some pairs and the player has to guess the current position of the ball.', N'Shell Game', N'The first line of the input contains an integer n (1?=?n?=?2·109) — the number of movements made by the operator.', N'Print one integer from 0 to 2 — the index of the shell where the ball was initially placed.', N'4 7 3 4', N'3 1 6 ', N'In the first sample, the ball was initially placed beneath the middle shell and the operator completed four movements. During the first move operator swapped the left shell and the middle shell. The ball is now under the left shell. ', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (93, 94, N'Sherlock found a piece of encrypted data which he thinks will be useful to catch Moriarty. The encrypted data consists of two integer l and r. He noticed that these integers were in hexadecimal form.', N'Sherlock and the Encrypted Data', N'First line contains the integer q (1?=?q?=?10000).Each of the next q lines contain two hexadecimal integers l and r (0?=?l?=?r?<?1615).', N'Output q lines, i-th line contains answer to the i-th query (in decimal notation).', N'4 7 3 4', N'3 1 6 ', N'One more example: for integer 1e the sum is sum?=?21?+?214. Letters a, b, c, d, e, f denote hexadecimal digits 10, 11, 12, 13, 14, 15, respertively.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (94, 95, N'Sherlock met Moriarty for a final battle of wits. He gave him a regular n sided convex polygon. In addition to it, he gave him certain diagonals to form regions on the polygon. It was guaranteed that the diagonals did not intersect in interior points.', N'Sherlocks bet to Moriarty', N'First line contains two integers n and m (3?=?n?=?100000, 0?=?m?=?n?-?3), the number of vertices in the polygon and the number of diagonals added.', N'Output k space-separated integers, each between 1 and 20, representing the colors of the regions in the order of increasing importance.', N'4 7 3 4', N'3 1 6 ', N'In 2nd input, regions formed in order after sorting will be (1,?2,?3), (1,?3,?4), (1,?4,?5), (1,?5,?6), i.e, region (1,?2,?3) is first region followed by region (1,?3,?4) and so on.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (95, 96, N'Mycroft asked Sherlock and Eurus to find value of f(n), where f(1)?=?1 and for n?=?2, f(n) is the number of distinct ordered positive integer pairs (x,?y) that satisfy x?+?y?=?n and gcd(x,?y)?=?1. The integer gcd(a,?b) is the greatest common divisor of a and b.', N'The Holmes Children', N'A single line of input contains two space separated integers n (1?=?n?=?1012) and k (1?=?k?=?1012) indicating that Eurus asks Sherlock and Mycroft to find the value of Fk(n) modulo 1000000007.', N'Output a single integer — the value of Fk(n) modulo 1000000007.', N'4 7 3 4', N'3 1 6 ', N'In the first case, there are 6 distinct ordered pairs (1,?6), (2,?5), (3,?4), (4,?3), (5,?2) and (6,?1) satisfying x?+?y?=?7 and gcd(x,?y)?=?1. Hence, f(7)?=?6. So, F1(7)?=?f(g(7))?=?f(f(7)?+?f(1))?=?f(6?+?1)?=?f(7)?=?6.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (96, 97, N'Moriarty has trapped n people in n distinct rooms in a hotel. Some rooms are locked, others are unlocked. But, there is a condition that the people in the hotel can only escape when all the doors are unlocked at the same time. There are m switches. Each switch control doors of some rooms, but each door is controlled by exactly two switches.', N'The Door Problem', N'Next line contains n space-separated integers r1,?r2,?...,?rn (0?=?ri?=?1) which tell the status of room doors. The i-th room is locked if ri?=?0, otherwise it is unlocked.', N'Output "YES" without quotes, if it is possible to open all doors at the same time, otherwise output "NO" without quotes.', N'4 7 3 4', N'3 1 6 ', N'In the second example input, the initial statuses of the doors are [1,?0,?1] (0 means locked, 1 — unlocked).', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (97, 98, N'Molly wants Sherlock to fall in love with her. She intends to do this by mixing a contiguous segment of chemicals together to make a love potion with total affection value as a non-negative integer power of k. Total affection value of a continuous segment of chemicals is the sum of affection values of each chemical in that segment.', N'Mollys Chemicals', N'The first line of input contains two integers, n and k, the number of chemicals and the number, such that the total affection value is a non-negative power of this number k. (1?=?n?=?105, 1?=?|k|?=?10).', N'Output a single integer — the number of valid segments.', N'4 7 3 4', N'3 1 6 ', N'Do keep in mind that k0?=?1.In the first sample, Molly can get following different affection values:2: segments [1,?1], [2,?2], [3,?3], [4,?4];', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (98, 99, N'Watson gave Sherlock a challenge to color these jewelry pieces such that two pieces dont have the same color if the price of one piece is a prime divisor of the price of the other piece. Also, Watson asked him to minimize the number of different colors used.', N'Sherlock and his girlfriend', N'The only line contains single integer n (1?=?n?=?100000) — the number of jewelry pieces.', N'The first line of output should contain a single integer k, the minimum number of colors that can be used to color the pieces of jewelry with the given descriptionts.', N'4 7 3 4', N'3 1 6 ', N'In the first input, the colors for first, second and third pieces of jewelry having respective prices 2, 3 and 4 are 1, 1 and 2 respectively.In this case, as 2 is a prime divisor of 4, colors of jewelry having prices 2 and 4 must be distinct.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (99, 100, N'The killer starts with two potential victims on his first day, selects one of these two, kills selected victim and replaces him with a new person. He repeats this procedure each day. This way, each day he has two potential victims to choose from. Sherlock knows the initial two potential victims. Also, he knows the murder that happened on a particular day and the new person who replaced this victim.', N'A Serial Killer', N'First line of input contains two names (length of each of them doesnt exceed 10), the two initials potential victims. Next line contains integer n (1?=?n?=?1000), the number of days.', N'Output n?+?1 lines, the i-th line should contain the two persons from which the killer selects for the i-th murder. The (n?+?1)-th line should contain the two persons from which the next victim is selected. In each line, the two names can be printed in any order.', N'4 7 3 4', N'3 1 6 ', N'In first example, the killer starts with ross and rachel.After day 1, ross is killed and joey appears.After day 2, rachel is killed and phoebe appears. ', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (100, 101, N'Bears dont like big changes. For every three points (houses) pi, pj and pk, the sign of their cross product (pj?-?pi)?×?(pk?-?pi) should be the same before and after the relocation. If it was negative/positive/zero, it should still be negative/positive/zero respectively. This condition should be satisfied for all triples of indices (i,?j,?k), possibly equal to each other or different than 1.', N'Bear and Isomorphic Points', N'The i-th of the next n lines contains two integers xi and yi (?-?106?=?xi,?yi?=?106) — coordinates of the i-th house. No two houses are located at the same point in the same test case. Limak lives in the first house.', N'Your answer will be considered correct if its absolute or relative error doesnt exceed 10?-?6. More precisely, let the jurys answer be b, and your answer be a. Then your answer will be accepted if and only if.', N'4 7 3 4', N'3 1 6 ', N'In the first test case, there are four houses and Limaks one is in (5,?3). The set of valid new placements form a triangle with vertices in points (0,?1), (10,?1) and (3,?51), without its sides. The area of such a triangle is 250.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (101, 102, N'Limak has a grid that consists of 2 rows and n columns. The j-th cell in the i-th row contains an integer ti,?j which can be positive, negative or zero.', N'Bear and Rectangle Strips', N'The next two lines contain numbers in the grid. The i-th of those two lines contains n integers ti,?1,?ti,?2,?...,?ti,?n (?-?109?=?ti,?j?=?109).', N'Print one integer, denoting the maximum possible number of cell-disjoint nice rectangles.', N'4 7 3 4', N'3 1 6 ', N'In the third sample, the only nice rectangle is the whole grid — the sum of all numbers is 0. Clearly, Limak can choose at most one nice rectangle, so the answer is 1.', N'')
GO
print 'Processed 100 total records'
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (102, 103, N'Peter decided to lay a parquet in the room of size n?×?m, the parquet consists of tiles of size 1?×?2. When the workers laid the parquet, it became clear that the tiles pattern looks not like Peter likes, and workers will have to re-lay it.', N'Parquet Re-laying', N'The following n lines contain m characters each, the constrain of the current configuration of the parquet tiles. Each character represents the position of the half-tile. Characters L, R, U and D correspond to the left, right, upper and lower halves, respectively.', N'In the first line output integer k, the number of operations. In the next k lines output constrain of operations. The operation is specified by coordinates (row and column) of the left upper half-tile on which the operation is performed.', N'4 7 3 4', N'3 1 6 ', N'In the first sample test first operation is to rotate two rightmost tiles, after this all tiles lie vertically. Second operation is to rotate two leftmost tiles, after this we will get desired configuration.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (103, 104, N'Peterson makes new language every morning. It is difficult task to store the whole language, so Peterson have invented new data structure for storing his languages which is called broom. Broom is rooted tree with edges marked with letters. Initially broom is represented by the only vertex — the root of the broom.', N'Peterson Polyglot', N'The first line of input contains integer n (2?=?n?=?3·105) — the size of the broom.Next n?-?1 lines describe the broom: i-th of them contains integers ui, vi and letter xi — describing the edge from ui to vi marked with letter xi.', N'The first line of output should contain the minimum possible size of the broom after its simplification. The second line of output should contain integer p to choose. If there are several suitable p values, print the smallest one.', N'4 7 3 4', N'3 1 6 ', N'Broom from the second sample test can be built using language "piece", "of", "pie", "pretty", "prefix". Its simplification with p?=?2 obtains the language of words "pece", "o", "pe", "petty", "pefix". This language gives us the broom with minimum possible size.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (104, 105, N'Initially, Bob chooses integer m, bit depth of the game, which means that all numbers in the game will consist of m bits. Then he asks Peter to choose some m-bit number. After that, Bob computes the values of n variables', N'Bitwise Formula', N'The first line contains two integers n and m, the number of variables and bit depth, respectively (1?=?n?=?5000; 1?=?m?=?1000).The following n lines contain constrains of the variables. Each line describes exactly one variable. constrain has the following format: name of a new variable, space, sign ":=", space, followed by one of:', N'In the first line output the minimum number that should be chosen by Peter, to make the sum of all variable values minimum possible, in the second line output the minimum number that should be chosen by Peter, to make the sum of all variable values maximum possible. Both numbers should be printed as m-bit binary numbers', N'4 7 3 4', N'3 1 6 ', N'In the first sample if Peter chooses a number 0112, then a?=?1012,?b?=?0112,?c?=?0002, the sum of their values is 8. If he chooses the number 1002, then a?=?1012,?b?=?0112,?c?=?1112, the sum of their values is 15.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (105, 106, N'Little Nastya has a hobby, she likes to remove some letters from word, to obtain another word. But it turns out to be pretty hard for her, because she is too young. Therefore, her brother Sergey always helps her.', N'String Game', N'The first and second lines of the input contain the words t and p, respectively. Words are composed of lowercase letters of the Latin alphabet (1?=?|p|?<?|t|?=?200?000). It is guaranteed that the word p can be obtained by removing the letters from word t.', N'Print a single integer number, the maximum number of letters that Nastya can remove.', N'4 7 3 4', N'3 1 6 ', N'In the first sample test sequence of removing made by Nastya looks like this: "ababcba" "ababcba" "ababcba" "ababcba" Nastya can not continue, because it is impossible to get word "abb" from word "ababcba".', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (106, 107, N'Of course you have heard the famous task about Hanoi Towers, but did you know that there is a special factory producing the rings for this wonderful game? Once upon a time, the ruler of the ancient Egypt ordered the workers of Hanoi Factory to create as high tower as possible. They were not ready to serve such a strange order so they had to create this new tower using already produced rings.', N'Hanoi Factory', N'The i-th of the next n lines contains three integers ai, bi and hi (1?=?ai,?bi,?hi?=?109, bi?>?ai) — inner radius, outer radius and the height of the i-th ring respectively.', N'Print one integer — the maximum height of the tower that can be obtained.', N'4 7 3 4', N'3 1 6 ', N'In the second sample, one can put the ring 3 on the ring 4 and get the tower of height 3, or put the ring 1 on the ring 2 and get the tower of height 4.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (107, 108, N'Vasya is an administrator of a public page of organization "Mouse and keyboard" and his everyday duty is to publish news from the world of competitive programming. For each news he also creates a list of hashtags to make searching for a particular topic more comfortable. For the purpose of this problem we define hashtag as a string consisting of lowercase English letters and exactly one symbol # located at the beginning of the string', N'Cloud of Hashtags', N'The first line of the input contains a single integer n (1?=?n?=?500?000) — the number of hashtags being edited now.', N'Print the resulting hashtags in any of the optimal solutions.', N'4 7 3 4', N'3 1 6 ', N'According to the above definition, if a hashtag consisting of one character # it is lexicographically not greater than any other valid hashtag. Thats why in the third sample we cant keep first two hashtags unchanged and shorten the other two.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (108, 109, N'Now she has a table filled with integers. The table consists of n rows and m columns. By ai,?j we will denote the integer located at the i-th row and the j-th column. We say that the table is sorted in non-decreasing order in the column j if ai,?j?=?ai?+?1,?j for all i from 1 to n?-?1.', N'Alyona and Spreadsheet', N'The first line of the input contains two positive integers n and m (1?=?n·m?=?100?000) — the number of rows and the number of columns in the table respectively. Note that your are given a descriptiont that bound the product of these two integers, i.e. the number of elements in the table.', N'Print "Yes" to the i-th line of the output if the table consisting of rows from li to ri inclusive is sorted in non-decreasing order in at least one column. Otherwise, print "No".', N'4 7 3 4', N'3 1 6 ', N'In the sample, the whole table is not sorted in any column. However, rows 1–3 are sorted in column 1, while rows 4–5 are sorted in column 3.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (109, 110, N'Rules of this game are simple: each player bring his favourite n-digit credit card. Then both players name the digits written on their cards one by one. If two digits are not equal, then the player, whose digit is smaller gets a flick (knock in the forehead usually made with a forefinger) from the other player. For example, if n?=?3, Sherlocks card is 123 and Moriartys card has number 321, first Sherlock names 1 and Moriarty names 3 so Sherlock gets a flick. Then they both digit 2 so no one gets a flick. Finally, Sherlock names 3, while Moriarty names 1 and gets a flick', N'Game of Credit Cards', N'The first line of the input contains a single integer n (1?=?n?=?1000) — the number of digits in the cards Sherlock and Moriarty are going to use.', N'First print the minimum possible number of flicks Moriarty will get. Then print the maximum possible number of flicks that Sherlock can get from Moriarty.', N'4 7 3 4', N'3 1 6 ', N'First sample is elaborated in the problem statement. In the second sample, there is no way Moriarty can avoid getting two flicks.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (110, 111, N'Bomboslav likes to look out of the window in his room and watch lads outside playing famous shell game. The game is played by two persons: operator and player. Operator takes three similar opaque shells and places a ball beneath one of them. Then he shuffles the shells by swapping some pairs and the player has to guess the current position of the ball.', N'Shell Game', N'The first line of the input contains an integer n (1?=?n?=?2·109) — the number of movements made by the operator.', N'Print one integer from 0 to 2 — the index of the shell where the ball was initially placed.', N'4 7 3 4', N'3 1 6 ', N'In the first sample, the ball was initially placed beneath the middle shell and the operator completed four movements. During the first move operator swapped the left shell and the middle shell. The ball is now under the left shell. ', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (111, 112, N'Sherlock found a piece of encrypted data which he thinks will be useful to catch Moriarty. The encrypted data consists of two integer l and r. He noticed that these integers were in hexadecimal form.', N'Sherlock and the Encrypted Data', N'First line contains the integer q (1?=?q?=?10000).Each of the next q lines contain two hexadecimal integers l and r (0?=?l?=?r?<?1615).', N'Output q lines, i-th line contains answer to the i-th query (in decimal notation).', N'4 7 3 4', N'3 1 6 ', N'One more example: for integer 1e the sum is sum?=?21?+?214. Letters a, b, c, d, e, f denote hexadecimal digits 10, 11, 12, 13, 14, 15, respertively.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (112, 113, N'Sherlock met Moriarty for a final battle of wits. He gave him a regular n sided convex polygon. In addition to it, he gave him certain diagonals to form regions on the polygon. It was guaranteed that the diagonals did not intersect in interior points.', N'Sherlocks bet to Moriarty', N'First line contains two integers n and m (3?=?n?=?100000, 0?=?m?=?n?-?3), the number of vertices in the polygon and the number of diagonals added.', N'Output k space-separated integers, each between 1 and 20, representing the colors of the regions in the order of increasing importance.', N'4 7 3 4', N'3 1 6 ', N'In 2nd input, regions formed in order after sorting will be (1,?2,?3), (1,?3,?4), (1,?4,?5), (1,?5,?6), i.e, region (1,?2,?3) is first region followed by region (1,?3,?4) and so on.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (113, 114, N'Mycroft asked Sherlock and Eurus to find value of f(n), where f(1)?=?1 and for n?=?2, f(n) is the number of distinct ordered positive integer pairs (x,?y) that satisfy x?+?y?=?n and gcd(x,?y)?=?1. The integer gcd(a,?b) is the greatest common divisor of a and b.', N'The Holmes Children', N'A single line of input contains two space separated integers n (1?=?n?=?1012) and k (1?=?k?=?1012) indicating that Eurus asks Sherlock and Mycroft to find the value of Fk(n) modulo 1000000007.', N'Output a single integer — the value of Fk(n) modulo 1000000007.', N'4 7 3 4', N'3 1 6 ', N'In the first case, there are 6 distinct ordered pairs (1,?6), (2,?5), (3,?4), (4,?3), (5,?2) and (6,?1) satisfying x?+?y?=?7 and gcd(x,?y)?=?1. Hence, f(7)?=?6. So, F1(7)?=?f(g(7))?=?f(f(7)?+?f(1))?=?f(6?+?1)?=?f(7)?=?6.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (114, 115, N'Moriarty has trapped n people in n distinct rooms in a hotel. Some rooms are locked, others are unlocked. But, there is a condition that the people in the hotel can only escape when all the doors are unlocked at the same time. There are m switches. Each switch control doors of some rooms, but each door is controlled by exactly two switches.', N'The Door Problem', N'Next line contains n space-separated integers r1,?r2,?...,?rn (0?=?ri?=?1) which tell the status of room doors. The i-th room is locked if ri?=?0, otherwise it is unlocked.', N'Output "YES" without quotes, if it is possible to open all doors at the same time, otherwise output "NO" without quotes.', N'4 7 3 4', N'3 1 6 ', N'In the second example input, the initial statuses of the doors are [1,?0,?1] (0 means locked, 1 — unlocked).', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (115, 116, N'Molly wants Sherlock to fall in love with her. She intends to do this by mixing a contiguous segment of chemicals together to make a love potion with total affection value as a non-negative integer power of k. Total affection value of a continuous segment of chemicals is the sum of affection values of each chemical in that segment.', N'Mollys Chemicals', N'The first line of input contains two integers, n and k, the number of chemicals and the number, such that the total affection value is a non-negative power of this number k. (1?=?n?=?105, 1?=?|k|?=?10).', N'Output a single integer — the number of valid segments.', N'4 7 3 4', N'3 1 6 ', N'Do keep in mind that k0?=?1.In the first sample, Molly can get following different affection values:2: segments [1,?1], [2,?2], [3,?3], [4,?4];', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (116, 117, N'Watson gave Sherlock a challenge to color these jewelry pieces such that two pieces dont have the same color if the price of one piece is a prime divisor of the price of the other piece. Also, Watson asked him to minimize the number of different colors used.', N'Sherlock and his girlfriend', N'The only line contains single integer n (1?=?n?=?100000) — the number of jewelry pieces.', N'The first line of output should contain a single integer k, the minimum number of colors that can be used to color the pieces of jewelry with the given descriptionts.', N'4 7 3 4', N'3 1 6 ', N'In the first input, the colors for first, second and third pieces of jewelry having respective prices 2, 3 and 4 are 1, 1 and 2 respectively.In this case, as 2 is a prime divisor of 4, colors of jewelry having prices 2 and 4 must be distinct.', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (117, 118, N'The killer starts with two potential victims on his first day, selects one of these two, kills selected victim and replaces him with a new person. He repeats this procedure each day. This way, each day he has two potential victims to choose from. Sherlock knows the initial two potential victims. Also, he knows the murder that happened on a particular day and the new person who replaced this victim.', N'A Serial Killer', N'First line of input contains two names (length of each of them doesnt exceed 10), the two initials potential victims. Next line contains integer n (1?=?n?=?1000), the number of days.', N'Output n?+?1 lines, the i-th line should contain the two persons from which the killer selects for the i-th murder. The (n?+?1)-th line should contain the two persons from which the next victim is selected. In each line, the two names can be printed in any order.', N'4 7 3 4', N'3 1 6 ', N'In first example, the killer starts with ross and rachel.After day 1, ross is killed and joey appears.After day 2, rachel is killed and phoebe appears. ', N'')
INSERT [dbo].[Problem] ([proId], [subId], [description], [constrain], [inputRequire], [outputRequire], [inputTestcase], [outputTestcase], [explain], [inputUser]) VALUES (118, 119, N'Bears dont like big changes. For every three points (houses) pi, pj and pk, the sign of their cross product (pj?-?pi)?×?(pk?-?pi) should be the same before and after the relocation. If it was negative/positive/zero, it should still be negative/positive/zero respectively. This condition should be satisfied for all triples of indices (i,?j,?k), possibly equal to each other or different than 1.', N'Bear and Isomorphic Points', N'The i-th of the next n lines contains two integers xi and yi (?-?106?=?xi,?yi?=?106) — coordinates of the i-th house. No two houses are located at the same point in the same test case. Limak lives in the first house.', N'Your answer will be considered correct if its absolute or relative error doesnt exceed 10?-?6. More precisely, let the jurys answer be b, and your answer be a. Then your answer will be accepted if and only if.', N'4 7 3 4', N'3 1 6 ', N'In the first test case, there are four houses and Limaks one is in (5,?3). The set of valid new placements form a triangle with vertices in points (0,?1), (10,?1) and (3,?51), without its sides. The area of such a triangle is 250.', N'')
SET IDENTITY_INSERT [dbo].[Problem] OFF
/****** Object:  Table [dbo].[menu]    Script Date: 04/01/2017 13:50:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[menuId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[positive] [int] NULL,
 CONSTRAINT [PK_menu] PRIMARY KEY CLUSTERED 
(
	[menuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[menu] ON
INSERT [dbo].[menu] ([menuId], [name], [positive]) VALUES (1, N'tutorials', 1)
INSERT [dbo].[menu] ([menuId], [name], [positive]) VALUES (2, N'Practics', 2)
SET IDENTITY_INSERT [dbo].[menu] OFF
/****** Object:  Table [dbo].[Leaderboard]    Script Date: 04/01/2017 13:50:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leaderboard](
	[leadId] [int] IDENTITY(1,1) NOT NULL,
	[subId] [int] NULL,
	[userId] [int] NULL,
	[submitId] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Leaderboard] ON
INSERT [dbo].[Leaderboard] ([leadId], [subId], [userId], [submitId]) VALUES (15, 2, 1, 40)
INSERT [dbo].[Leaderboard] ([leadId], [subId], [userId], [submitId]) VALUES (16, 2, 6, 46)
SET IDENTITY_INSERT [dbo].[Leaderboard] OFF
/****** Object:  Table [dbo].[Editorial]    Script Date: 04/01/2017 13:50:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Editorial](
	[editId] [int] IDENTITY(1,1) NOT NULL,
	[subId] [int] NULL,
	[explain] [text] NULL,
	[code] [text] NULL,
	[language] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Editorial] ON
INSERT [dbo].[Editorial] ([editId], [subId], [explain], [code], [language]) VALUES (1, 15, N'<p>Sum two number</p>
', N'#include <iostream>
using namespace std;

int main() {
    int a,b;
    cin>>a>>b;
    cout<<a+b;
    return 0;
}', NULL)
INSERT [dbo].[Editorial] ([editId], [subId], [explain], [code], [language]) VALUES (2, 2, N'<p>We can calculate the sum of the elements in the array by traversing the array once, summing each element as we go. Because this sum can be quite large, we must use a&nbsp;<em>long</em>&nbsp;data type to hold the value of our sum. A signed&nbsp;&minus;bit integer uses the first bit to represent the sign of the number and the remaining&nbsp;&nbsp;bits to represent the magnitude. The range of a 32&minus;bit integer is&nbsp;&nbsp;to&nbsp;, or&nbsp;. When we add several integer values, the resulting sum might exceed this range. Use&nbsp;<em>long long</em>&nbsp;in C/C++ and&nbsp;<em>long</em>&nbsp;in Java.</p>

<p><strong>Featured Solutions</strong></p>
', N'#include<iostream>
#include<vector>

using namespace std;

int main() {
    int number_of_elements;
    cin >> number_of_elements;
    vector <int> array(number_of_elements);
    for (int i = 0; i < number_of_elements; i++) {
        cin >> array[i];
    }
        
    long long int sum_of_numbers = 0;
    for (int i = 0; i < number_of_elements; i++) {
        sum_of_numbers += array[i];
    }
    cout << sum_of_numbers << endl;
    return 0;
}', NULL)
INSERT [dbo].[Editorial] ([editId], [subId], [explain], [code], [language]) VALUES (3, 3, N'<p>Sum two number</p>
', N'arr=map(int,raw_input().split('' ''))
print arr[0]+arr[1]', NULL)
INSERT [dbo].[Editorial] ([editId], [subId], [explain], [code], [language]) VALUES (4, 3, N'<p>PYTHON LANGUAGE CODE</p>
', N'arr=map(int,raw_input().split('' ''))
print arr[0]+arr[1]', NULL)
SET IDENTITY_INSERT [dbo].[Editorial] OFF
/****** Object:  Table [dbo].[Code]    Script Date: 04/01/2017 13:50:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Code](
	[codeId] [int] IDENTITY(1,1) NOT NULL,
	[submitId] [int] NULL,
	[code] [text] NULL,
 CONSTRAINT [PK_Code] PRIMARY KEY CLUSTERED 
(
	[codeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testcase]    Script Date: 04/01/2017 13:50:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testcase](
	[testId] [int] IDENTITY(1,1) NOT NULL,
	[subId] [int] NULL,
	[input] [text] NULL,
	[output] [text] NULL,
	[timeAsk] [float] NULL,
 CONSTRAINT [PK_Testcase] PRIMARY KEY CLUSTERED 
(
	[testId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Testcase] ON
INSERT [dbo].[Testcase] ([testId], [subId], [input], [output], [timeAsk]) VALUES (124, 2, N'5 1000000001 1000000002 1000000003 1000000004 1000000005 ', N'5000000015 ', 5)
INSERT [dbo].[Testcase] ([testId], [subId], [input], [output], [timeAsk]) VALUES (125, 2, N'2 1 3', N'4', 5)
INSERT [dbo].[Testcase] ([testId], [subId], [input], [output], [timeAsk]) VALUES (126, 2, N'4 1 2 3 4', N'10', 5)
INSERT [dbo].[Testcase] ([testId], [subId], [input], [output], [timeAsk]) VALUES (127, 3, N'1 2', N'3', 5)
INSERT [dbo].[Testcase] ([testId], [subId], [input], [output], [timeAsk]) VALUES (128, 3, N'100000 200000', N'300000', 1)
INSERT [dbo].[Testcase] ([testId], [subId], [input], [output], [timeAsk]) VALUES (129, 3, N'1000 2000', N'3000', 1)
INSERT [dbo].[Testcase] ([testId], [subId], [input], [output], [timeAsk]) VALUES (130, 15, N'lehongphuong', N'lehongphuong', 5)
INSERT [dbo].[Testcase] ([testId], [subId], [input], [output], [timeAsk]) VALUES (131, 15, N'abc', N'abc', 5)
SET IDENTITY_INSERT [dbo].[Testcase] OFF
/****** Object:  Table [dbo].[Submit]    Script Date: 04/01/2017 13:50:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Submit](
	[submitId] [int] IDENTITY(1,1) NOT NULL,
	[subId] [int] NULL,
	[userId] [int] NULL,
	[time] [date] NULL,
	[point] [float] NULL,
	[code] [text] NULL,
	[language] [nvarchar](50) NULL,
 CONSTRAINT [PK_Submit] PRIMARY KEY CLUSTERED 
(
	[submitId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Submit] ON
INSERT [dbo].[Submit] ([submitId], [subId], [userId], [time], [point], [code], [language]) VALUES (40, 2, 1, CAST(0x9E3C0B00 AS Date), 20, N'#include<iostream>
#include<vector>

using namespace std;

int main() {
    int number_of_elements;
    cin >> number_of_elements;
    vector <int> array(number_of_elements);
    for (int i = 0; i < number_of_elements; i++) {
        cin >> array[i];
    }
        
    long long int sum_of_numbers = 0;
    for (int i = 0; i < number_of_elements; i++) {
        sum_of_numbers += array[i];
    }
    cout << sum_of_numbers << endl;
    return 0;
}', N'cpp')
INSERT [dbo].[Submit] ([submitId], [subId], [userId], [time], [point], [code], [language]) VALUES (41, 2, 1, CAST(0x9C3C0B00 AS Date), 20, N'#include<iostream>', NULL)
INSERT [dbo].[Submit] ([submitId], [subId], [userId], [time], [point], [code], [language]) VALUES (42, 2, 1, CAST(0x9E3C0B00 AS Date), 20, N'#include<iostream>', NULL)
INSERT [dbo].[Submit] ([submitId], [subId], [userId], [time], [point], [code], [language]) VALUES (43, 2, 1, CAST(0x9F3C0B00 AS Date), 20, N'#include<iostream>', NULL)
INSERT [dbo].[Submit] ([submitId], [subId], [userId], [time], [point], [code], [language]) VALUES (44, 2, 1, CAST(0x9F3C0B00 AS Date), 20, N'#include<iostream>', NULL)
INSERT [dbo].[Submit] ([submitId], [subId], [userId], [time], [point], [code], [language]) VALUES (45, 2, 1, CAST(0x9F3C0B00 AS Date), 20, N'#include<iostream>', NULL)
INSERT [dbo].[Submit] ([submitId], [subId], [userId], [time], [point], [code], [language]) VALUES (46, 2, 6, CAST(0xA13C0B00 AS Date), 20, N'#include<iostream>
#include<vector>

using namespace std;

int main() {
    int number_of_elements;
    cin >> number_of_elements;
    vector <int> array(number_of_elements);
    for (int i = 0; i < number_of_elements; i++) {
        cin >> array[i];
    }
        
    long long int sum_of_numbers = 0;
    for (int i = 0; i < number_of_elements; i++) {
        sum_of_numbers += array[i];
    }
    cout << sum_of_numbers << endl;
    return 0;
}
	', N'cpp')
SET IDENTITY_INSERT [dbo].[Submit] OFF
/****** Object:  Table [dbo].[User1]    Script Date: 04/01/2017 13:50:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User1](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[avatar] [nvarchar](50) NULL,
	[university] [nvarchar](50) NULL,
	[point] [float] NULL,
	[typeUser] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[User1] ON
INSERT [dbo].[User1] ([userId], [username], [password], [avatar], [university], [point], [typeUser]) VALUES (1, N'admin', N'admin', N'', N'Hard Vart a', 20, 1)
INSERT [dbo].[User1] ([userId], [username], [password], [avatar], [university], [point], [typeUser]) VALUES (2, N'phuongnt', N'abc', N'img/custom/phuong.jpg', N'PDU', 0, 1)
INSERT [dbo].[User1] ([userId], [username], [password], [avatar], [university], [point], [typeUser]) VALUES (3, N'hienvtn', N'abc', N'', N'FPT University', 0, 2)
INSERT [dbo].[User1] ([userId], [username], [password], [avatar], [university], [point], [typeUser]) VALUES (4, N'thucnd', N'abc', N'', N'Quang nam', 37, 1)
INSERT [dbo].[User1] ([userId], [username], [password], [avatar], [university], [point], [typeUser]) VALUES (5, N'hoavv', N'hoa', N'', N'Quang nam', 46, 1)
INSERT [dbo].[User1] ([userId], [username], [password], [avatar], [university], [point], [typeUser]) VALUES (6, N'phuonglh', N'abc', N'img/custom/phuong.jpg', N'PDU', 20, 1)
INSERT [dbo].[User1] ([userId], [username], [password], [avatar], [university], [point], [typeUser]) VALUES (7, N'nuongnt', N'abc', N'	img/custom/nuong.jpg', N'PDU', 47, 1)
SET IDENTITY_INSERT [dbo].[User1] OFF
/****** Object:  Table [dbo].[type]    Script Date: 04/01/2017 13:50:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type](
	[typeId] [int] NOT NULL,
	[type] [nvarchar](50) NULL,
 CONSTRAINT [PK_type] PRIMARY KEY CLUSTERED 
(
	[typeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[type] ([typeId], [type]) VALUES (1, N'admin')
INSERT [dbo].[type] ([typeId], [type]) VALUES (2, N'user')
/****** Object:  Table [dbo].[TutorialCode]    Script Date: 04/01/2017 13:50:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TutorialCode](
	[tuCoId] [int] IDENTITY(1,1) NOT NULL,
	[tuId] [int] NULL,
	[title] [text] NULL,
	[description] [text] NULL,
	[code] [text] NULL,
	[positive] [int] NULL,
 CONSTRAINT [PK_TutorialCode1] PRIMARY KEY CLUSTERED 
(
	[tuCoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TutorialCode] ON
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (0, 1, N'What is HTML?
', N'HTML is the standard markup language for creating Web pages.

HTML stands for Hyper Text Markup Language
HTML describes the structure of Web pages using markup
HTML elements are the building blocks of HTML pages
HTML elements are represented by tags
HTML tags label pieces of content such as "heading", "paragraph", "table", and so on
Browsers do not display the HTML tags, but use them to render the content of the page
', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (1, 1, N'HTML Tags', N'HTML tags are element names surrounded by angle brackets:', N'<tagname>content goes here...</tagname>', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (2, 1, N'A Simple HTML Document
', N'', N'<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>
<body>

<h1>My First Heading</h1>
<p>My first paragraph.</p>

</body>
</html>', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (3, 1, N'The <!DOCTYPE> Declaration', N'The <!DOCTYPE> declaration represents the document type, and helps browsers to display web pages correctly.

It must only appear once, at the top of the page (before any HTML tags).

The <!DOCTYPE> declaration is not case sensitive.

The <!DOCTYPE> declaration for HTML is:', N'<!DOCTYPE html>', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (4, 2, N'Write HTML Using Notepad or TextEdit', N'Web pages can be created and modified by using professional HTML editors.

However, for learning HTML we recommend a simple text editor like Notepad (PC) or TextEdit (Mac).

We believe using a simple text editor is a good way to learn HTML.

Follow the four steps below to create your first web page with Notepad or TextEdit.', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (5, 2, N'Step 1: Open Notepad (PC)', N'Windows 8 or later:

Open the Start Screen (the window symbol at the bottom left on your screen). Type Notepad.

Windows 7 or earlier:

Open Start > Programs > Accessories > Notepad

', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (6, 2, N'Step 1: Open TextEdit (Mac)', N'Open Finder > Applications > TextEdit

Also change some preferences to get the application to save files correctly. In Preferences > Format > choose "Plain Text"

Then under "Open and Save", check the box that says "Ignore rich text commands in HTML files".

Then open a new document to place the code.', N'<!DOCTYPE html>
<html>
<body>

<h1>My First Heading</h1>

<p>My first paragraph.</p>

</body>
</html>', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (7, 2, N'Step 2: Write Some HTML', N'Write or copy some HTML into Notepad.', N'', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (8, 2, N'Step 3: Save the HTML Page', N'Save the file on your computer. Select File > Save as in the Notepad menu.

Name the file "index.htm" and set the encoding to UTF-8 (which is the preferred encoding for HTML files).', N'', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (9, 3, N'HTML Documents', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>My First Heading</h1>
<p>My first paragraph.</p>

</body>
</html>', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (10, 3, N'HTML Headings', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>This is heading 1</h1>
<h2>This is heading 2</h2>
<h3>This is heading 3</h3>
<h4>This is heading 4</h4>
<h5>This is heading 5</h5>
<h6>This is heading 6</h6>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (11, 3, N'HTML Paragraphs', N'', N'<!DOCTYPE html>
<html>
<body>

<p>This is a paragraph.</p>
<p>This is a paragraph.</p>
<p>This is a paragraph.</p>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (12, 3, N'HTML Links', N'', N'<!DOCTYPE html>
<html>
<body>

<a href="https://www.w3schools.com">This is a link</a>

</body>
</html>
', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (13, 3, N'HTML Images', N'', N'<!DOCTYPE html>
<html>
<body>

<img src="w3schools.jpg" alt="W3Schools.com" width="104" height="142">

</body>
</html>
', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (14, 4, N'Nested HTML Elements', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>My First Heading</h1>
<p>My first paragraph.</p>

</body>
</html>', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (15, 4, N'Do Not Forget the End Tag', N'', N'<!DOCTYPE html>
<html>
<body> 

<p>This is a paragraph.
<p>This is a paragraph.

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (16, 15, N'Nested HTML Elements', N'<p>With our &quot;Try it Yourself&quot; editor, you can change all examples and view the results.</p>
', N'<!DOCTYPE html>
<html>
<body>

<h1>My First JavaScript</h1>

<button type="button"
onclick="document.getElementById(''demo'').innerHTML = Date()">
Click me to display Date and Time.</button>

<p id="demo"></p>

</body>
</html> 
', 0)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (17, 4, N'Empty HTML Elements', N'', N'', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (18, 4, N'Use Lowercase Tags', N'', N'', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (19, 5, N'The lang Attribute', N'', N'<!DOCTYPE html>
<html lang="en-US">
<body>

...

</body>
</html>', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (20, 5, N'The title Attribute', N'', N'<!DOCTYPE html>
<html>
<body>

<h2>The title attribute</h2>

<p title="Im a tooltip">
Mouse over this paragraph, to display the title attribute as a tooltip.
</p>

</body>
</html>', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (21, 5, N'The href Attribute', N'', N'<!DOCTYPE html>
<html>
<body>

<a href="https://www.w3schools.com">This is a link</a>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (22, 5, N'Size Attributes', N'', N'<!DOCTYPE html>
<html>
<body>

<img src="w3schools.jpg" width="104" height="142">

</body>
</html>
', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (23, 5, N'The alt Attribute', N'', N'<!DOCTYPE html>
<html>
<body>

<img src="w3schools.jpg" alt="W3Schools.com" width="104" height="142">

</body>
</html>
', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (24, 6, N'HTML Headings', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>This is heading 1</h1>
<h2>This is heading 2</h2>
<h3>This is heading 3</h3>
<h4>This is heading 4</h4>
<h5>This is heading 5</h5>
<h6>This is heading 6</h6>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (25, 6, N'Headings Are Important', N'', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (26, 6, N'HTML Horizontal Rules', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>This is heading 1</h1>
<p>This is some text.</p>
<hr>

<h2>This is heading 2</h2>
<p>This is some other text.</p>
<hr>

<h2>This is heading 2</h2>
<p>This is some other text.</p>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (27, 6, N'The HTML <head> Element', N'', N'<!DOCTYPE html>
<html>
<head>
  <title>My First HTML</title>
  <meta charset="UTF-8">
</head>
<body>

<p>The HTML head element contains meta data.</p>
<p>Meta data is data about the HTML document.</p>

</body>
</html>
', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (28, 6, N'HTML Tip - How to View HTML Source', N'', N'', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (29, 7, N'HTML Paragraphs', N'', N'<!DOCTYPE html>
<html>
<body>

<p>This is a paragraph.</p>
<p>This is a paragraph.</p>
<p>This is a paragraph.</p>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (30, 30, N'HTML Display', N'<p>This CSS tutorial contains hundreds of CSS examples.</p>

<p>With our online editor, you can edit the CSS, and click on a button to view the result.</p>
', N'<!DOCTYPE html>
<html>
<head>
<style>
body {
    background-color: lightblue;
}

h1 {
    color: white;
    text-align: center;
}

p {
    font-family: verdana;
    font-size: 20px;
}
</style>
</head>
<body>

<h1>My First CSS Example</h1>
<p>This is a paragraph.</p>

</body>
</html>
', 0)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (31, 7, N'Do not Forget the End Tag', N'', N'<!DOCTYPE html>
<html>
<body>

<p>This is a paragraph.
<p>This is a paragraph.
<p>This is a paragraph.

<p>Do not forget to close your HTML tags!</p>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (32, 7, N'HTML Line Breaks', N'', N'<!DOCTYPE html>
<html>
<body>

<p>This is<br>a paragraph<br>with line breaks</p>

</body>
</html>
', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (33, 7, N'The Poem Problem', N'', N'<!DOCTYPE html>
<html>
<body>

<p>In HTML, spaces and new lines are ignored:</p>

<p>

  My Bonnie lies over the ocean.

  My Bonnie lies over the sea.

  My Bonnie lies over the ocean.
  
  Oh, bring back my Bonnie to me.

</p>

</body>
</html>
', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (34, 8, N'HTML Styles', N'', N'<!DOCTYPE html>
<html>
<body>

<p>I am normal</p>
<p style="color:red;">I am red</p>
<p style="color:blue;">I am blue</p>
<p style="font-size:36px;">I am big</p>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (35, 8, N'HTML Background Color', N'', N'<!DOCTYPE html>
<html>
<body style="background-color:powderblue;">

<h1>This is a heading</h1>
<p>This is a paragraph.</p>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (36, 8, N'HTML Text Color', N'', N'<!DOCTYPE html>
<html>
<body>

<h1 style="color:blue;">This is a heading</h1>
<p style="color:red;">This is a paragraph.</p>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (37, 8, N'HTML Fonts', N'', N'<!DOCTYPE html>
<html>
<body>

<h1 style="font-family:verdana;">This is a heading</h1>
<p style="font-family:courier;">This is a paragraph.</p>

</body>
</html>
', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (38, 8, N'HTML Text Size', N'', N'<!DOCTYPE html>
<html>
<body>

<h1 style="font-size:300%;">This is a heading</h1>
<p style="font-size:160%;">This is a paragraph.</p>

</body>
</html>
', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (39, 9, N'HTML Text Formatting', N'', N'<!DOCTYPE html>
<html>
<body>

<p><b>This text is bold</b></p>
<p><i>This text is italic</i></p>
<p>This is<sub> subscript</sub> and <sup>superscript</sup></p>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (40, 9, N'HTML Formatting Elements', N'', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (41, 9, N'HTML <b> and <strong> Elements', N'', N'<!DOCTYPE html>
<html>
<body>

<p>This text is normal.</p>

<p><b>This text is bold.</b></p>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (42, 9, N'HTML <i> and <em> Elements', N'', N'<!DOCTYPE html>
<html>
<body>

<p>This text is normal.</p>

<p><i>This text is italic.</i></p>

</body>
</html>
', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (43, 9, N'HTML <small> Element', N'', N'<!DOCTYPE html>
<html>
<body>

<h2>HTML <small>Small</small> Formatting</h2>

</body>
</html>
', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (44, 10, N'HTML Quotation and Citation Elements', N'', N'<!DOCTYPE html>
<html>
<body>

<p>Here is a quote from WWF is website:</p>
<blockquote cite="http://www.worldwildlife.org/who/index.html">
For 50 years, WWF has been protecting the future of nature.
The world is leading conservation organization,
WWF works in 100 countries and is supported by
1.2 million members in the United States and
close to 5 million globally.
</blockquote>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (46, 10, N'HTML <abbr> for Abbreviations', N'', N'<!DOCTYPE html>
<html>
<body>

<p>The <abbr title="World Health Organization">WHO</abbr> was founded in 1948.</p>

<p>Marking up abbreviations can give useful information to browsers, translation systems and search-engines.</p>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (47, 10, N'HTML <address> for Contact Information', N'', N'<!DOCTYPE html>
<html>
<body>

<p>The HTML address element defines contact information (author/owner) of a document or article.</p>

<address>
Written by John Doe.<br> 
Visit us at:<br>
Example.com<br>
Box 564, Disneyland<br>
USA
</address>

</body>
</html>
', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (48, 10, N'HTML <cite> for Work Title', N'', N'<!DOCTYPE html>
<html>
<body>

<p>The HTML cite element defines the title of a work.</p>
<p>Browsers usually display cite elements in italic.</p>

<img src="img_the_scream.jpg" width="220" height="277" alt="The Scream">
<p><cite>The Scream</cite> by Edvard Munch. Painted in 1893.</p>

</body>
</html>
', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (49, 17, N'JavaScript Can Change HTML Content', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>What Can JavaScript Do?</h1>

<p id="demo">JavaScript can change HTML content.</p>

<button type="button" onclick="document.getElementById("demo").innerHTML = "Hello JavaScript!"">Click Me!</button>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (50, 17, N'JavaScript Can Change HTML Attributes', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>What Can JavaScript Do?</h1>

<p>JavaScript can change HTML attributes.</p>

<p>In this case JavaScript changes the src (source) attribute of an image.</p>

<button onclick="document.getElementById("myImage").src="pic_bulbon.gif"">Turn on the light</button>

<img id="myImage" src="pic_bulboff.gif" style="width:100px">

<button onclick="document.getElementById("myImage").src="pic_bulboff.gif"">Turn off the light</button>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (51, 17, N'JavaScript Can Change HTML Styles (CSS)', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>What Can JavaScript Do?</h1>

<p id="demo">JavaScript can change the style of an HTML element.</p>

<button type="button" onclick="document.getElementById("demo").style.fontSize="35px"">Click Me!</button>


</body>
</html> 
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (52, 17, N'JavaScript Can Hide HTML Elements', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>What Can JavaScript Do?</h1>

<p id="demo">JavaScript can hide HTML elements.</p>

<button type="button" onclick="document.getElementById("demo").style.display="none"">Click Me!</button>


</body>
</html> 
', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (53, 17, N'JavaScript Can Show HTML Elements', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>What Can JavaScript Do?</h1>

<p>JavaScript can show hidden HTML elements.</p>

<p id="demo" style="display:none">Hello JavaScript!</p>

<button type="button" onclick="document.getElementById("demo").style.display="block"">Click Me!</button>

</body>
</html> 
', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (54, 18, N'The <script> Tag', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>JavaScript in Body</h1>

<p id="demo"></p>

<script>
document.getElementById("demo").innerHTML = "My First JavaScript";
</script>

</body>
</html> 
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (55, 18, N'JavaScript Functions and Events', N'', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (56, 18, N'JavaScript in <head> or <body>', N'', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (57, 18, N'JavaScript in <head>', N'', N'<!DOCTYPE html>
<html>
<head>
<script>
function myFunction() {
    document.getElementById("demo").innerHTML = "Paragraph changed.";
}
</script>
</head>

<body>

<h1>A Web Page</h1>
<p id="demo">A Paragraph</p>
<button type="button" onclick="myFunction()">Try it</button>

</body>
</html>', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (58, 18, N'JavaScript in <body>', N'', N'<!DOCTYPE html>
<html>
<body> 

<h1>A Web Page</h1>
<p id="demo">A Paragraph</p>
<button type="button" onclick="myFunction()">Try it</button>

<script>
function myFunction() {
   document.getElementById("demo").innerHTML = "Paragraph changed.";
}
</script>

</body>
</html>', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (59, 19, N'Using innerHTML', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>My First Web Page</h1>
<p>My First Paragraph</p>

<p id="demo"></p>

<script>
document.getElementById("demo").innerHTML = 5 + 6;
</script>

</body>
</html>', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (60, 19, N'Using document.write()', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>My First Web Page</h1>
<p>My first paragraph.</p>

<script>
document.write(5 + 6);
</script>

</body>
</html>
Try it Yourself »
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (61, 19, N'Using window.alert()', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>My First Web Page</h1>
<p>My first paragraph.</p>

<script>
window.alert(5 + 6);
</script>

</body>
</html>', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (62, 19, N'Using console.log()', N'', N'<!DOCTYPE html>
<html>
<body>

<script>
console.log(5 + 6);
</script>

</body>
</html>', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (63, 20, N'JavaScript Programs', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>JavaScript Statements</h1>

<p>Statements are separated by semicolons.</p>

<p>The variables x, y, and z are assigned the values 5, 6, and 11.</p>

<p>Then the value of z is displayed in the paragraph below:</p>

<p id="demo"></p>

<script>
var x, y, z;
x = 5;
y = 6;
z = x + y;
document.getElementById("demo").innerHTML = z;
</script>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (64, 20, N'JavaScript Statements', N'', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (65, 20, N'JavaScript Values', N'', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (66, 20, N'JavaScript Literals', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>JavaScript Numbers</h1>

<p>Number can be written with or without decimals.</p>

<p id="demo"></p>

<script>
document.getElementById("demo").innerHTML = 10.50;
</script>

</body>
</html>
', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (67, 20, N'JavaScript Variables', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>JavaScript Variables</h1>

<p>In this example, x is defined as a variable.
Then, x is assigned the value of 6:</p>

<p id="demo"></p>

<script>
var x;
x = 6;
document.getElementById("demo").innerHTML = x;
</script>

</body>
</html>
', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (68, 21, N'JavaScript Statements', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>JavaScript Statements</h1>

<p>In HTML, JavaScript statements are executed by the browser.</p>

<p id="demo"></p>

<script>
document.getElementById("demo").innerHTML = "Hello Dolly.";
</script>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (69, 21, N'JavaScript Programs', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>JavaScript Statements</h1>

<p>JavaScript code (or just JavaScript) is a sequence of JavaScript statements.</p>

<p id="demo"></p>

<script>
var x, y, z;
x = 5;
y = 6;
z = x + y;
document.getElementById("demo").innerHTML = z;
</script>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (70, 21, N'Semicolons ;', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>JavaScript Statements</h1>

<p>JavaScript statements are separated by semicolons.</p>

<p id="demo1"></p>

<script>
var a, b, c;
a = 1;
b = 2;
c = a + b;
document.getElementById("demo1").innerHTML = c;
</script>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (71, 21, N'JavaScript White Space', N'', N'', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (72, 21, N'JavaScript Line Length and Line Breaks', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>JavaScript Statements</h1>

<p>
The best place to break a code line is after an operator or a comma.
</p>

<p id="demo"></p>

<script>
document.getElementById("demo").innerHTML =
"Hello Dolly.";
</script>

</body>
</html>
', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (73, 22, N'Single Line Comments', N'', N'<!DOCTYPE html>
<html>
<body>

<h1 id="myH"></h1>
<p id="myP"></p>

<script>
// Change heading:
document.getElementById("myH").innerHTML = "My First Page";
// Change paragraph:
document.getElementById("myP").innerHTML = "My first paragraph.";
</script>

<p><strong>Note:</strong> The comments are not executed.</p>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (74, 22, N'Multi-line Comments', N'', N'<!DOCTYPE html>
<html>
<body>

<h1 id="myH"></h1>
<p id="myP"></p>

<script>
/*
The code below will change
the heading with id = "myH"
and the paragraph with id = "myp"
in my web page:
*/
document.getElementById("myH").innerHTML = "My First Page";
document.getElementById("myP").innerHTML = "My first paragraph.";
</script>

<p><strong>Note:</strong> The comment block is not executed.</p>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (75, 22, N'Using Comments to Prevent Execution', N'', N'<!DOCTYPE html>
<html>
<body>

<h1 id="myH"></h1>

<p id="myP"></p>

<script>
//document.getElementById("myH").innerHTML = "My First Page";
document.getElementById("myP").innerHTML = "My first paragraph.";
</script>

<p><strong>Note:</strong> The comment is not executed.</p>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (76, 23, N'JavaScript Variables', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>JavaScript Variables</h1>

<p>In this example, x, y, and z are variables</p>

<p id="demo"></p>

<script>
var x = 5;
var y = 6;
var z = x + y;
document.getElementById("demo").innerHTML = z;
</script>

</body>
</html>


', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (77, 23, N'Much Like Algebra', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>JavaScript Variables</h1>

<p id="demo"></p>

<script>
var price1 = 5;
var price2 = 6;
var total = price1 + price2;
document.getElementById("demo").innerHTML =
"The total is: " + total;
</script>

</body>
</html>


', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (78, 23, N'JavaScript Identifiers', N'', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (79, 23, N'The Assignment Operator', N'', N'', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (80, 23, N'JavaScript Data Types', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>JavaScript Variables</h1>

<p>Strings are written with quotes.</p>
<p>Numbers are written without quotes.</p>
<p>Try to experiment by removing the // comments.</p>

<p id="demo"></p>

<script>
var pi = 3.14;
var person = "John Doe";
var answer = "Yes I am!";

document.getElementById("demo").innerHTML = pi;
//document.getElementById("demo").innerHTML = person;
//document.getElementById("demo").innerHTML = answer;
</script>

</body>
</html>


', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (81, 24, N'JavaScript Operators', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>JavaScript Operators</h1>

<p>x = 5, y = 2, calculate z = x + y, and display z:</p>

<p id="demo"></p>

<script>
var x = 5;
var y = 2;
var z = x + y;
document.getElementById("demo").innerHTML = z;
</script>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (82, 24, N'JavaScript Arithmetic Operators', N'', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (83, 24, N'JavaScript Assignment Operators', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>The += Operator</h1>

<p id="demo"></p>

<script>
var x = 10;
x += 5;
document.getElementById("demo").innerHTML = x;
</script>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (84, 24, N'JavaScript String Operators', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>JavaScript Operators</h1>

<p>The + operator concatenates (adds) strings.</p>

<p id="demo"></p>

<script>
var txt1 = "John";
var txt2 = "Doe";
document.getElementById("demo").innerHTML = txt1 + " " + txt2;
</script>

</body>
</html>
', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (85, 24, N'Adding Strings and Numbers', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>JavaScript Operators</h1>

<p>Adding a number and a string, returns a string.</p>

<p id="demo"></p>

<script>
var x = 5 + 5;
var y = "5" + 5;
var z = "Hello" + 5;
document.getElementById("demo").innerHTML =
x + "<br>" + y + "<br>" + z;
</script>

</body>
</html>
', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (86, 25, N'Arithmetic Operations', N'', N'<!DOCTYPE html>
<html>
<body>

<p>A typical arithmetic operation takes two numbers and produces a new number.</p>

<p id="demo"></p>

<script>
var x = 100 + 50;
document.getElementById("demo").innerHTML = x;
</script>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (87, 25, N'Operators and Operands', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>The + Operator</h1>

<p id="demo"></p>

<script>
var x = 5;
var y = 2;
var z = x + y;
document.getElementById("demo").innerHTML = z;
</script>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (88, 25, N'Operator Precedence', N'', N'<!DOCTYPE html>
<html>
<body>

<p>Multiplication has precedence over addition.</p>

<p id="demo"></p>

<script>
document.getElementById("demo").innerHTML = 100 + 50 * 3;
</script>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (89, 26, N'Assignment Examples', N'', N'<!DOCTYPE html>
<html>
<body>

<h1>The = Operator</h1>

<p id="demo"></p>

<script>
var x = 10;
document.getElementById("demo").innerHTML = x;
</script>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (90, 26, N'', N'The += assignment operator adds a value to a variable.', N'<!DOCTYPE html>
<html>
<body>

<h1>The += Operator</h1>

<p id="demo"></p>

<script>
var x = 10;
x += 5;
document.getElementById("demo").innerHTML = x;
</script>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (91, 26, N'', N'The -= assignment operator subtracts a value from a variable.', N'<!DOCTYPE html>
<html>
<body>

<h1>The -= Operator</h1>

<p id="demo"></p>

<script>
var x = 10;
x -= 5;
document.getElementById("demo").innerHTML = x;
</script>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (92, 32, N'What is CSS?', N'CSS stands for Cascading Style Sheets
CSS describes how HTML elements are to be displayed on screen, paper, or in other media
CSS saves a lot of work. It can control the layout of multiple web pages all at once
External stylesheets are stored in CSS files', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (93, 32, N'CSS Demo - One HTML Page - Multiple Styles!', N'Here we will show one HTML page displayed with four different stylesheets. Click on the "Stylesheet 1", "Stylesheet 2", "Stylesheet 3", "Stylesheet 4" links below to see the different styles', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (94, 32, N'Why Use CSS?', N'CSS is used to define styles for your web pages, including the design, layout and variations in display for different devices and screen sizes. ', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (95, 32, N'CSS Solved a Big Problem', N'HTML was NEVER intended to contain tags for formatting a web page!

HTML was created to describe the content of a web page, like:

<h1>This is a heading</h1>

<p>This is a paragraph.</p>

When tags like <font>, and color attributes were added to the HTML 3.2 specification, it started a nightmare for web developers. Development of large websites, where fonts and color information were added to every single page, became a long and expensive process.

To solve this problem, the World Wide Web Consortium (W3C) created CSS.

CSS removed the style formatting from the HTML page!

', N'', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (96, 32, N'CSS Saves a Lot of Work!', N'The style definitions are normally saved in external .css files.

With an external stylesheet file, you can change the look of an entire website by changing just one file!', N'', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (97, 33, N'CSS Syntax', N'A CSS rule-set consists of a selector and a declaration block:', N'<!DOCTYPE html>
<html>
<head>
<style>
p {
    color: red;
    text-align: center;
} 
</style>
</head>
<body>

<p>Hello World!</p>
<p>These paragraphs are styled with CSS.</p>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (98, 33, N'CSS Selectors', N'CSS selectors are used to "find" (or select) HTML elements based on their element name, id, class, attribute, and more', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (99, 33, N'The element Selector', N'The element selector selects elements based on the element name.

You can select all <p> elements on a page like this (in this case, all <p> elements will be center-aligned, with a red text color):', N'<!DOCTYPE html>
<html>
<head>
<style>
p {
    text-align: center;
    color: red;
} 
</style>
</head>
<body>

<p>Every paragraph will be affected by the style.</p>
<p id="para1">Me too!</p>
<p>And me!</p>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (100, 33, N'The id Selector', N'', N'<!DOCTYPE html>
<html>
<head>
<style>
#para1 {
    text-align: center;
    color: red;
}
</style>
</head>
<body>

<p id="para1">Hello World!</p>
<p>This paragraph is not affected by the style.</p>

</body>
</html>
', 4)
GO
print 'Processed 100 total records'
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (101, 33, N'The class Selector', N'', N'<!DOCTYPE html>
<html>
<head>
<style>
.center {
    text-align: center;
    color: red;
}
</style>
</head>
<body>

<h1 class="center">Red and center-aligned heading</h1>
<p class="center">Red and center-aligned paragraph.</p> 

</body>
</html>
', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (102, 34, N'External Style Sheet', N'With an external style sheet, you can change the look of an entire website by changing just one file!

Each page must include a reference to the external style sheet file inside the <link> element. The <link> element goes inside the <head> section:', N'<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
<body>

<h1>This is a heading</h1>
<p>This is a paragraph.</p>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (103, 34, N'Internal Style Sheet', N'', N'<!DOCTYPE html>
<html>
<head>
<style>
body {
    background-color: linen;
}
h1 {
    color: maroon;
    margin-left: 40px;
} 
</style>
</head>
<body>

<h1>This is a heading</h1>
<p>This is a paragraph.</p>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (104, 34, N'Inline Styles', N'An inline style may be used to apply a unique style for a single element.

To use inline styles, add the style attribute to the relevant element. The style attribute can contain any CSS property.

The example below shows how to change the color and the left margin of a <h1> element:', N'<!DOCTYPE html>
<html>
<body>

<h1 style="color:blue;margin-left:30px;">This is a heading</h1>
<p>This is a paragraph.</p>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (105, 34, N'Multiple Style Sheets', N'If some properties have been defined for the same selector (element) in different style sheets, the value from the last read style sheet will be used. ', N'<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="mystyle.css">
<style>
h1 {
    color: orange;
}
</style>
</head>
<body>

<h1>This is a heading</h1>
<p>The style of this document is a combination of an external stylesheet, and internal style</p>

</body>
</html>
', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (106, 34, N'Cascading Order', N'What style will be used when there is more than one style specified for an HTML element?

Generally speaking we can say that all the styles will "cascade" into a new "virtual" style sheet by the following rules, where number one has the highest priority:

Inline style (inside an HTML element)
External and internal style sheets (in the head section)
Browser default
So, an inline style (inside a specific HTML element) has the highest priority, which means that it will override a style defined inside the <head> tag, or in an external style sheet, or a browser default value.', N'<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="mystyle.css">
<style>
body {background-color: linen;}
</style>
</head>
<body style="background-color: lightcyan">

<h1>Multiple Styles Will Cascade into One</h1>
<p>In this example, the background color is set inline, in an internal stylesheet, and in an external stylesheet.</p>
<p>Try experimenting by removing styles to see how the cascading stylesheets work. (try removing the inline first, then the internal, then the external)</p>

</body>
</html>
', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (107, 35, N'Color Names', N'Colors set by using color names:', N'<!DOCTYPE html>
<html>
<body>

<h2>Color Names Examples</h2>
<p>Note: You will learn more about the background-color and the color property later in our tutorial.</p>

<h2 style="background-color:red">
Red background-color
</h2>

<h2 style="background-color:green">
Green background-color
</h2>

<h2 style="background-color:blue;color:white">
Blue background-color and white text color
</h2>

<h2 style="background-color:orange">
Orange background-color
</h2>

<h2 style="background-color:yellow">
Yellow background-color
</h2>

<h2 style="background-color:cyan">
Cyan background-color
</h2>

<h2 style="background-color:black;color:white">
Black background-color and white text color
</h2>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (108, 35, N'RGB (Red, Green, Blue)', N'RGB color values can be specified using this formula: rgb(red, green, blue).

Each parameter (red, green, blue) defines the intensity of the color between 0 and 255.

For example, rgb(255,0,0) is displayed as red, because red is set to its highest value (255) and the others are set to 0. Experiment by mixing the RGB values below:', N'<!DOCTYPE html>
<html>
<body>

<h2>RGB Color Examples</h2>

<h2 style="background-color:rgb(255, 0, 0)">
Background-color set by using rgb(255, 0, 0)
</h2>

<h2 style="background-color:rgb(0, 255, 0)">
Background-color set by using rgb(0, 255, 0)
</h2>

<h2 style="background-color:rgb(0, 0, 255)">
Background-color set by using rgb(0, 0, 255)
</h2>

<h2 style="background-color:rgb(255, 165, 0)">
Background-color set by using rgb(255, 165, 0)
</h2>

<h2 style="background-color:rgb(255, 255, 0)">
Background-color set by using rgb(255, 255, 0)
</h2>

<h2 style="background-color:rgb(0, 255, 255)">
Background-color set by using rgb(0, 255, 255)
</h2>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (109, 35, N'Hexadecimal Colors', N'', N'<!DOCTYPE html>
<html>
<body>

<h2>HEX Color Examples</h2>

<h2 style="background-color:#FF0000">
Background-color set by using #FF0000
</h2>

<h2 style="background-color:#00FF00">
Background-color set by using #00FF00
</h2>

<h2 style="background-color:#0000FF">
Background-color set by using #0000FF
</h2>

<h2 style="background-color:#FFA500">
Background-color set by using #FFA500
</h2>

<h2 style="background-color:#FFFF00">
Background-color set by using #FFFF00
</h2>

<h2 style="background-color:#00FFFF">
Background-color set by using #00FFFF
</h2>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (110, 36, N'Background Color', N'The background-color property specifies the background color of an element.

The background color of a page is set like this:', N'<!DOCTYPE html>
<html>
<head>
<style>
body {
    background-color: lightblue;
}
</style>
</head>
<body>

<h1>Hello World!</h1>

<p>This page has a light blue background color!</p>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (111, 36, N'Background Image', N'The background-image property specifies an image to use as the background of an element.

By default, the image is repeated so it covers the entire element.

The background image for a page can be set like this:', N'<!DOCTYPE html>
<html>
<head>
<style>
body {
    background-image: url("paper.gif");
}
</style>
</head>
<body>

<h1>Hello World!</h1>

<p>This page has an image as the background!</p>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (112, 36, N'Background Image - Repeat Horizontally or Vertically', N'By default, the background-image property repeats an image both horizontally and vertically.

Some images should be repeated only horizontally or vertically, or they will look strange, like this:', N'<!DOCTYPE html>
<html>
<head>
<style>
body {
    background-image: url("gradient_bg.png");
}
</style>
</head>
<body>

<h1>Hello World!</h1>
<p>Strange background image...</p>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (113, 36, N'Background Image - Set position and no-repeat', N'Showing the background image only once is also specified by the background-repeat property:', N'<!DOCTYPE html>
<html>
<head>
<style>
body {
    background-image: url("img_tree.png");
    background-repeat: no-repeat;
}
</style>
</head>
<body>

<h1>Hello World!</h1>
<p>W3Schools background image example.</p>
<p>The background image is only showing once, but it is disturbing the reader!</p>

</body>
</html>
', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (114, 36, N'Background Image - Fixed position', N'To specify that the background image should be fixed (will not scroll with the rest of the page), use the background-attachment property:', N'<!DOCTYPE html>
<html>
<head>
<style>
body {
    background-image: url("img_tree.png");
    background-repeat: no-repeat;
    background-position: right top;
    margin-right: 200px;
    background-attachment: fixed;
}
</style>
</head>
<body>

<h1>Hello World!</h1>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>The background-image is fixed. Try to scroll down the page.</p>
<p>If you do not see any scrollbars, try to resize the browser window.</p>

</body>
</html>
', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (115, 37, N'CSS Border Properties', N'The CSS border properties allow you to specify the style, width, and color of an element is border.', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (116, 37, N'Border Style', N'', N'<!DOCTYPE html>
<html>
<head>
<style>
p.dotted {border-style: dotted;}
p.dashed {border-style: dashed;}
p.solid {border-style: solid;}
p.double {border-style: double;}
p.groove {border-style: groove;}
p.ridge {border-style: ridge;}
p.inset {border-style: inset;}
p.outset {border-style: outset;}
p.none {border-style: none;}
p.hidden {border-style: hidden;}
p.mix {border-style: dotted dashed solid double;}
</style>
</head>
<body>

<h2>The border-style Property</h2>
<p>This property specifies what kind of border to display:</p>

<p class="dotted">A dotted border.</p>
<p class="dashed">A dashed border.</p>
<p class="solid">A solid border.</p>
<p class="double">A double border.</p>
<p class="groove">A groove border.</p>
<p class="ridge">A ridge border.</p>
<p class="inset">An inset border.</p>
<p class="outset">An outset border.</p>
<p class="none">No border.</p>
<p class="hidden">A hidden border.</p>
<p class="mix">A mixed border.</p>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (117, 37, N'Border Width', N'', N'<!DOCTYPE html>
<html>
<head>
<style>
p.one {
    border-style: solid;
    border-width: 5px;
}

p.two {
    border-style: solid;
    border-width: medium;
}

p.three {
    border-style: dotted;
    border-width: 2px;
}

p.four {
    border-style: dotted;
    border-width: thick;
}

p.five {
    border-style: double;
    border-width: 15px;
}

p.six {
    border-style: double;
    border-width: thick;
}

p.seven {
    border-style: solid;
    border-width: 2px 10px 4px 20px;
}
</style>
</head>
<body>

<h2>The border-width Property</h2>
<p>This property specifies the width of the four borders:</p>

<p class="one">Some text.</p>
<p class="two">Some text.</p>
<p class="three">Some text.</p>
<p class="four">Some text.</p>
<p class="five">Some text.</p>
<p class="six">Some text.</p>
<p class="seven">Some text.</p>

<p><b>Note:</b> The "border-width" property does not work if it is used alone. 
Always specify the "border-style" property to set the borders first.</p>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (118, 37, N'Border Color', N'', N'<!DOCTYPE html>
<html>
<head>
<style>
p.one {
    border-style: solid;
    border-color: red;
}

p.two {
    border-style: solid;
    border-color: green;
} 

p.three {
    border-style: solid;
    border-color: red green blue yellow;
} 
</style>
</head>
<body>

<h2>The border-color Property</h2>
<p>This property specifies the color of the four borders:</p>

<p class="one">A solid red border</p>
<p class="two">A solid green border</p>
<p class="three">A solid multicolor border</p>
<p><b>Note:</b> The "border-color" property does not work if it is used alone. Use the "border-style" property to set the borders first.</p>

</body>
</html>
', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (119, 37, N'Border - Individual Sides', N'', N'<!DOCTYPE html>
<html>
<head>
<style>
p {
    border-top-style: dotted;
    border-right-style: solid;
    border-bottom-style: dotted;
    border-left-style: solid;
}
</style>
</head>
<body>

<p>2 different border styles.</p>

</body>
</html>
', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (120, 38, N'CSS Margins', N'The CSS margin properties are used to generate space around elements.

The margin properties set the size of the white space outside the border.

With CSS, you have full control over the margins. There are CSS properties for setting the margin for each side of an element (top, right, bottom, and left).', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (121, 38, N'Margin - Individual Sides', N'', N'<!DOCTYPE html>
<html>
<head>
<style>
div {
    border: 1px solid black;
    margin-top: 100px;
    margin-bottom: 100px;
    margin-right: 150px;
    margin-left: 80px;
    background-color: lightblue;
}
</style>
</head>
<body>

<h2>Using individual margin properties</h2>

<div>This div element has a top margin of 100px, a right margin of 150px, a bottom margin of 100px, and a left margin of 80px.</div>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (122, 38, N'Margin - Shorthand Property', N'', N'<!DOCTYPE html>
<html>
<head>
<style>
div {
    border: 1px solid black;
    margin: 100px 150px 100px 80px;
    background-color: lightblue;
}
</style>
</head>
<body>

<h2>Using the margin shorthand property</h2>

<div>This div element has a top margin of 100px, a right margin of 150px, a bottom margin of 100px, and a left margin of 80px.</div>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (123, 38, N'The auto Value', N'', N'<!DOCTYPE html>
<html>
<head>
<style>
div {
    width:300px;
    margin: auto;
    border: 1px solid red;
}
</style>
</head>
<body>

<h2>Use of the auto Value</h2>
<p>You can set the margin property to auto to horizontally center the element within its container.
The element will then take up the specified width, and the remaining space will be split equally between the left and right margins:</p>

<div>
This div will be centered because it has margin: auto;
</div>

</body>
</html>
', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (124, 38, N'The inherit Value', N'', N'<!DOCTYPE html>
<html>
<head>
<style>
div.container {
    border: 1px solid red;
    margin-left: 100px;
}

p.one {
    margin-left: inherit;
}
</style>
</head>
<body>

<h2>Use of the inherit value</h2>
<p>Let the left margin be inherited from the parent element:</p>

<div class="container">
<p class="one">This is a paragraph with an inherited left margin (from the div element).</p>
</div>

</body>
</html>
', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (125, 39, N'CSS Padding', N'The CSS padding properties are used to generate space around content.

The padding clears an area around the content (inside the border) of an element.

With CSS, you have full control over the padding. There are CSS properties for setting the padding for each side of an element (top, right, bottom, and left).

', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (126, 39, N'Padding - Individual Sides', N'', N'<!DOCTYPE html>
<html>
<head>
<style>
div {
    border: 1px solid black;
    background-color: lightblue;
    padding-top: 50px;
    padding-right: 30px;
    padding-bottom: 50px;
    padding-left: 80px;
}
</style>
</head>
<body>

<h2>Using individual padding properties</h2>

<div>This div element has a top padding of 50px, a right padding of 30px, a bottom padding of 50px, and a left padding of 80px.</div>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (127, 39, N'Padding - Shorthand Property', N'', N'<!DOCTYPE html>
<html>
<head>
<style>
div {
    border: 1px solid black;
    background-color: lightblue;
    padding: 50px 30px 50px 80px;
}
</style>
</head>
<body>

<h2>Using the padding shorthand property</h2>

<div>This div element has a top padding of 50px, a right padding of 30px, a bottom padding of 50px, and a left padding of 80px.</div>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (128, 40, N'Setting height and width', N'', N'<!DOCTYPE html>
<html>
<head>
<style>
div {
    height: 200px;
    width: 50%;
    background-color: powderblue;
}
</style>
</head>
<body>

<h2>Set the height and width of an element</h2>

<p>This div element has a height of 200px and a width of 50%:</p>

<div></div>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (129, 40, N'Setting max-width', N'', N'<!DOCTYPE html>
<html>
<head>
<style>
div {
    max-width: 500px;
    height: 100px;
    background-color: powderblue;
}
</style>
</head>
<body>

<h2>Set the max-width of an element</h2>
<p>This div element has a height of 100px and a max-width of 500px:</p>

<div></div>

<p>Resize the browser window to see the effect.</p>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (130, 41, N'The CSS Box Model', N'', N'<!DOCTYPE html>
<html>
<head>
<style>
div {
    background-color: lightgrey;
    width: 300px;
    border: 25px solid green;
    padding: 25px;
    margin: 25px;
}
</style>
</head>
<body>

<h2>Demonstrating the Box Model</h2>

<p>The CSS box model is essentially a box that wraps around every HTML element. It consists of: borders, padding, margins, and the actual content.</p>

<div>This text is the actual content of the box. We have added a 25px padding, 25px margin and a 25px green border. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (131, 41, N'Width and Height of an Element', N'', N'<!DOCTYPE html>
<html>
<head>
<style>
div {
    width: 320px;
    padding: 10px;
    border: 5px solid gray;
    margin: 0;
}
</style>
</head>
<body>

<h2>Calculate the total width:</h2>

<img src="klematis4_big.jpg" width="350" height="263" alt="Klematis">
<div>The picture above is 350px wide. The total width of this element is also 350px.</div>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (132, 47, N'Grid Classes', N'<p>This Bootstrap tutorial contains hundreds of Bootstrap examples.</p>

<p>With our online editor, you can edit the code, and click on a button to view the result.</p>
', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="jumbotron text-center">
  <h1>My First Bootstrap Page</h1>
  <p>Resize this responsive page to see the effect!</p> 
</div>
  
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h3>Column 1</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
    <div class="col-sm-4">
      <h3>Column 2</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
    <div class="col-sm-4">
      <h3>Column 3</h3>        
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p>
    </div>
  </div>
</div>

</body>
</html>
', 0)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (133, 47, N'Three Equal Columns', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container-fluid">
  <h1>Hello World!</h1>
  <p>Resize the browser window to see the effect.</p>
  <div class="row">
    <div class="col-sm-4" style="background-color:lavender;">.col-sm-4</div>
    <div class="col-sm-4" style="background-color:lavenderblush;">.col-sm-4</div>
    <div class="col-sm-4" style="background-color:lavender;">.col-sm-4</div>
  </div>
</div>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (134, 47, N'Two Unequal Columns', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container-fluid">
  <h1>Hello World!</h1>
  <p>Resize the browser window to see the effect.</p>
  <div class="row">
    <div class="col-sm-4" style="background-color:lavender;">.col-sm-4</div>
    <div class="col-sm-8" style="background-color:lavenderblush;">.col-sm-8</div>
  </div>
</div>
    
</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (135, 48, N'Bootstrap is Default Settings', N'Bootstrap is global default font-size is 14px, with a line-height of 1.428.

This is applied to the <body> and all paragraphs.

In addition, all <p> elements have a bottom margin that equals half their computed line-height (10px by default).', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (136, 48, N'Bootstrap vs. Browser Defaults', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h1>h1 Bootstrap heading (36px)</h1>
  <h2>h2 Bootstrap heading (30px)</h2>
  <h3>h3 Bootstrap heading (24px)</h3>
  <h4>h4 Bootstrap heading (18px)</h4>
  <h5>h5 Bootstrap heading (14px)</h5>
  <h6>h6 Bootstrap heading (12px)</h6>
</div>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (137, 48, N'Contextual Colors and Backgrounds', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Contextual Colors</h2>
  <p>Use the contextual classes to provide "meaning through colors":</p>
  <p class="text-muted">This text is muted.</p>
  <p class="text-primary">This text is important.</p>
  <p class="text-success">This text indicates success.</p>
  <p class="text-info">This text represents some information.</p>
  <p class="text-warning">This text represents a warning.</p>
  <p class="text-danger">This text represents danger.</p>
</div>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (138, 49, N'Bootstrap Basic Table', N'A basic Bootstrap table has a light padding and only horizontal dividers.

The .table class adds basic styling to a table:', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Basic Table</h2>
  <p>The .table class adds basic styling (light padding and only horizontal dividers) to a table:</p>            
  <table class="table">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table>
</div>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (139, 49, N'Striped Rows', N'The .table-striped class adds zebra-stripes to a table:', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Striped Rows</h2>
  <p>The .table-striped class adds zebra-stripes to a table:</p>            
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table>
</div>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (140, 49, N'Bordered Table', N'The .table-bordered class adds borders on all sides of the table and cells:', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Bordered Table</h2>
  <p>The .table-bordered class adds borders to a table:</p>            
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table>
</div>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (141, 49, N'Hover Rows', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Hover Rows</h2>
  <p>The .table-hover class enables a hover state on table rows:</p>            
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table>
</div>

</body>
</html>
', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (142, 49, N'Condensed Table', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Condensed Table</h2>
  <p>The .table-condensed class makes a table more compact by cutting cell padding in half:</p>            
  <table class="table table-condensed">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table>
</div>

</body>
</html>
', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (143, 50, N'Rounded Corners', N'The .img-rounded class adds rounded corners to an image (IE8 does not support rounded corners):', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Rounded Corners</h2>
  <p>The .img-rounded class adds rounded corners to an image (not available in IE8):</p>            
  <img src="cinqueterre.jpg" class="img-rounded" alt="Cinque Terre" width="304" height="236"> 
</div>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (144, 50, N'Circle', N'The .img-circle class shapes the image to a circle (IE8 does not support rounded corners):', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Circle</h2>
  <p>The .img-circle class shapes the image to a circle (not available in IE8):</p>            
  <img src="cinqueterre.jpg" class="img-circle" alt="Cinque Terre" width="304" height="236"> 
</div>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (145, 50, N'Thumbnail', N'The .img-thumbnail class shapes the image to a thumbnail:', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Thumbnail</h2>
  <p>The .img-thumbnail class creates a thumbnail of the image:</p>            
  <img src="cinqueterre.jpg" class="img-thumbnail" alt="Cinque Terre" width="304" height="236"> 
</div>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (146, 50, N'Responsive Images', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Image</h2>
  <p>The .img-responsive class makes the image scale nicely to the parent element (resize the browser window to see the effect):</p>
  <img class="img-responsive" src="img_chania.jpg" alt="Chania" width="460" height="345"> 
</div>

</body>
</html>
', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (147, 50, N'Image Gallery', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Image Gallery</h2>
  <p>The .thumbnail class can be used to display an image gallery.</p>
  <p>The .caption class adds proper padding and a dark grey color to text inside thumbnails.</p>
  <p>Click on the images to enlarge them.</p>
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="/w3images/lights.jpg" target="_blank">
          <img src="/w3images/lights.jpg" alt="Lights" style="width:100%">
          <div class="caption">
            <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="/w3images/nature.jpg" target="_blank">
          <img src="/w3images/nature.jpg" alt="Nature" style="width:100%">
          <div class="caption">
            <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="/w3images/fjords.jpg" target="_blank">
          <img src="/w3images/fjords.jpg" alt="Fjords" style="width:100%">
          <div class="caption">
            <p>Lorem ipsum donec id elit non mi porta gravida at eget metus.</p>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>

</body>
</html>


', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (148, 51, N'Creating a Jumbotron', N'A jumbotron indicates a big box for calling extra attention to some special content or information.

A jumbotron is displayed as a grey box with rounded corners. It also enlarges the font sizes of the text inside it.

Tip: Inside a jumbotron you can put nearly any valid HTML, including other Bootstrap elements/classes.

Use a <div> element with class .jumbotron to create a jumbotron:', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (149, 51, N'Jumbotron Inside Containe', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <div class="jumbotron">
    <h1>Bootstrap Tutorial</h1>      
    <p>Bootstrap is the most popular HTML, CSS, and JS framework for developing responsive, mobile-first projects on the web.</p>
  </div>
  <p>This is some text.</p>      
  <p>This is another text.</p>      
</div>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (150, 51, N'Jumbotron Outside Container', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="jumbotron">
  <h1>Bootstrap Tutorial</h1>      
  <p>Bootstrap is the most popular HTML, CSS, and JS framework for developing responsive, mobile-first projects on the web.</p>
</div>

<div class="container">
  <p>This is some text.</p>      
  <p>This is another text.</p>      
</div>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (151, 51, N'Creating a Page Header', N'A page header is like a section divider.

The .page-header class adds a horizontal line under the heading (+ adds some extra space around the element):', N'', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (152, 51, N'Example Page Header', N'Use a <div> element with class .page-header to create a page header:', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <div class="page-header">
    <h1>Example Page Header</h1>      
  </div>
  <p>This is some text.</p>      
  <p>This is another text.</p>      
</div>

</body>
</html>
', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (153, 52, N'Wells', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body> 

<div class="container">
  <h2>Well</h2>
  <div class="well">Basic Well</div>
</div>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (154, 52, N'Well Size', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body> 

<div class="container">
  <h2>Well Size</h2>
  <div class="well well-sm">Small Well</div>
  <div class="well">Normal Well</div>
  <div class="well well-lg">Large Well</div>
</div>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (155, 53, N'Alerts', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Alerts</h2>
  <div class="alert alert-success">
    <strong>Success!</strong> This alert box could indicate a successful or positive action.
  </div>
  <div class="alert alert-info">
    <strong>Info!</strong> This alert box could indicate a neutral informative change or action.
  </div>
  <div class="alert alert-warning">
    <strong>Warning!</strong> This alert box could indicate a warning that might need attention.
  </div>
  <div class="alert alert-danger">
    <strong>Danger!</strong> This alert box could indicate a dangerous or potentially negative action.
  </div>
</div>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (156, 53, N'Alert Links', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Alert Links</h2>
  <p>Add the alert-link class to any links inside the alert box to create "matching colored links".</p>
  <div class="alert alert-success">
    <strong>Success!</strong> You should <a href="#" class="alert-link">read this message</a>.
  </div>
  <div class="alert alert-info">
    <strong>Info!</strong> You should <a href="#" class="alert-link">read this message</a>.
  </div>
  <div class="alert alert-warning">
    <strong>Warning!</strong> You should <a href="#" class="alert-link">read this message</a>.
  </div>
  <div class="alert alert-danger">
    <strong>Danger!</strong> You should <a href="#" class="alert-link">read this message</a>.
  </div>
</div>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (157, 53, N'Closing Alerts', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Alerts</h2>
  <p>The a element with class="close" and data-dismiss="alert" is used to close the alert box.</p>
  <p>The alert-dismissible class adds some extra padding to the close button.</p>
  <div class="alert alert-success alert-dismissable">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
    <strong>Success!</strong> This alert box could indicate a successful or positive action.
  </div>
  <div class="alert alert-info alert-dismissable">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
    <strong>Info!</strong> This alert box could indicate a neutral informative change or action.
  </div>
  <div class="alert alert-warning alert-dismissable">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
    <strong>Warning!</strong> This alert box could indicate a warning that might need attention.
  </div>
  <div class="alert alert-danger alert-dismissable">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
    <strong>Danger!</strong> This alert box could indicate a dangerous or potentially negative action.
  </div>
</div>

</body>
</html>

', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (158, 53, N'Animated Alerts', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Animated Alerts</h2>
  <p>The .fade and .in classes adds a fading effect when closing the alert message.</p>
  <div class="alert alert-success alert-dismissable fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Success!</strong> This alert box could indicate a successful or positive action.
  </div>
  <div class="alert alert-info alert-dismissable fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Info!</strong> This alert box could indicate a neutral informative change or action.
  </div>
  <div class="alert alert-warning alert-dismissable fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Warning!</strong> This alert box could indicate a warning that might need attention.
  </div>
  <div class="alert alert-danger alert-dismissable fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Danger!</strong> This alert box could indicate a dangerous or potentially negative action.
  </div>
</div>

</body>
</html>
', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (159, 54, N'Button Styles', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Button Styles</h2>
  <button type="button" class="btn">Basic</button>
  <button type="button" class="btn btn-default">Default</button>
  <button type="button" class="btn btn-primary">Primary</button>
  <button type="button" class="btn btn-success">Success</button>
  <button type="button" class="btn btn-info">Info</button>
  <button type="button" class="btn btn-warning">Warning</button>
  <button type="button" class="btn btn-danger">Danger</button>
  <button type="button" class="btn btn-link">Link</button>      
</div>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (160, 54, N'Button Sizes', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Button Sizes</h2>
  <button type="button" class="btn btn-primary btn-lg">Large</button>
  <button type="button" class="btn btn-primary btn-md">Medium</button>    
  <button type="button" class="btn btn-primary btn-sm">Small</button>
  <button type="button" class="btn btn-primary btn-xs">XSmall</button>
</div>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (161, 54, N'Block Level Buttons', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Block Level Buttons</h2>
  <button type="button" class="btn btn-primary btn-block">Button 1</button>
  <button type="button" class="btn btn-default btn-block">Button 2</button>

  <h2>Large Block Level Buttons</h2>
  <button type="button" class="btn btn-primary btn-lg btn-block">Button 1</button>
  <button type="button" class="btn btn-default btn-lg btn-block">Button 2</button>

  <h2>Small Block Level Buttons</h2>
  <button type="button" class="btn btn-primary btn-sm btn-block">Button 1</button>
  <button type="button" class="btn btn-default btn-sm btn-block">Button 2</button>
</div>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (162, 54, N'Active/Disabled Buttons', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Button States</h2>
  <button type="button" class="btn btn-primary">Primary Button</button>
  <button type="button" class="btn btn-primary active">Active Primary</button>
  <button type="button" class="btn btn-primary disabled">Disabled Primary</button>
</div>

</body>
</html>
', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (163, 55, N'Button Groups', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Button Group</h2>
  <p>The .btn-group class creates a button group:</p>
  <div class="btn-group">
    <button type="button" class="btn btn-primary">Apple</button>
    <button type="button" class="btn btn-primary">Samsung</button>
    <button type="button" class="btn btn-primary">Sony</button>
  </div>
</div>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (164, 55, N'Vertical Button Groups', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Vertical Button Group</h2>
  <p>Use the .btn-group-vertical class to create a vertical button group:</p>
  <div class="btn-group-vertical">
    <button type="button" class="btn btn-primary">Apple</button>
    <button type="button" class="btn btn-primary">Samsung</button>
    <button type="button" class="btn btn-primary">Sony</button>
  </div>
</div>

</body>
</html>
', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (165, 55, N'Justified Button Groups', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Justified Button Groups</h2>
  <p>To span the entire width of the screen, use the .btn-group-justified class:</p>
  <div class="btn-group btn-group-justified">
    <a href="#" class="btn btn-primary">Apple</a>
    <a href="#" class="btn btn-primary">Samsung</a>
    <a href="#" class="btn btn-primary">Sony</a>
  </div>
</div>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (166, 55, N'Nesting Button Groups & Dropdown Menus', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Nesting Button Groups</h2>
  <p>Nest button groups to create drop down menus:</p>
  <div class="btn-group">
    <button type="button" class="btn btn-primary">Apple</button>
    <button type="button" class="btn btn-primary">Samsung</button>
    <div class="btn-group">
      <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
      Sony <span class="caret"></span></button>
      <ul class="dropdown-menu" role="menu">
        <li><a href="#">Tablet</a></li>
        <li><a href="#">Smartphone</a></li>
      </ul>
    </div>
  </div>
</div>

</body>
</html>
', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (167, 55, N'Split Button Dropdowns', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Split Buttons</h2>
  <div class="btn-group">
    <button type="button" class="btn btn-primary">Sony</button>
    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
      <span class="caret"></span>
    </button>
    <ul class="dropdown-menu" role="menu">
      <li><a href="#">Tablet</a></li>
      <li><a href="#">Smartphone</a></li>
    </ul>
  </div>
</div>

</body>
</html>
', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (168, 56, N'Glyphicon Example', N'', N'<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Glyphicon Examples</h2>
  <p>Envelope icon: <span class="glyphicon glyphicon-envelope"></span></p>    
  <p>Envelope icon as a link:
    <a href="#"><span class="glyphicon glyphicon-envelope"></span></a>
  </p>
  <p>Search icon: <span class="glyphicon glyphicon-search"></span></p>
  <p>Search icon on a button:
    <button type="button" class="btn btn-default">
      <span class="glyphicon glyphicon-search"></span> Search
    </button>
  </p>
  <p>Search icon on a styled button:
    <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-search"></span> Search
    </button>
  </p>
  <p>Print icon: <span class="glyphicon glyphicon-print"></span></p>      
  <p>Print icon on a styled link button:
    <a href="#" class="btn btn-success btn-lg">
      <span class="glyphicon glyphicon-print"></span> Print 
    </a>
  </p> 
</div>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (169, 56, N'Glyphicon Syntax', N'A glyphicon is inserted with the following syntax:', N'<span class="glyphicon glyphicon-name"></span>', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (170, 61, N'jQuery Tutorial', N'"Try it Yourself" Examples in Each Chapter
With our online editor, you can edit the code, and click on a button to view the result.', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("p").click(function(){
        $(this).hide();
    });
});
</script>
</head>
<body>

<p>If you click on me, I will disappear.</p>
<p>Click me away!</p>
<p>Click me too!</p>

</body>
</html>
', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (171, 61, N'jQuery Examples', N'Learn by examples! At W3Schools you will find a lot of jQuery examples to edit and test yourself.', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (172, 61, N'jQuery Quiz Test', N'Test your jQuery skills at W3Schools!', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (173, 61, N'jQuery References', N'At W3Schools you will find a complete reference of all jQuery objects and methods.', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (174, 61, N'', N'', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (175, 62, N'jQuery Introduction', N'The purpose of jQuery is to make it much easier to use JavaScript on your website.', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (176, 62, N'What You Should Already Know', N'Before you start studying jQuery, you should have a basic knowledge of:

HTML
CSS
JavaScript
If you want to study these subjects first, find the tutorials on our Home page.', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (177, 62, N'What is jQuery?', N'jQuery is a lightweight, "write less, do more", JavaScript library.

The purpose of jQuery is to make it much easier to use JavaScript on your website.

jQuery takes a lot of common tasks that require many lines of JavaScript code to accomplish, and wraps them into methods that you can call with a single line of code.

jQuery also simplifies a lot of the complicated things from JavaScript, like AJAX calls and DOM manipulation.

The jQuery library contains the following features:

HTML/DOM manipulation
CSS manipulation
HTML event methods
Effects and animations
AJAX
Utilities
Tip: In addition, jQuery has plugins for almost any task out there.', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (178, 62, N'Why jQuery?', N'There are lots of other JavaScript frameworks out there, but jQuery seems to be the most popular, and also the most extendable.

Many of the biggest companies on the Web use jQuery, such as:

Google
Microsoft
IBM
Netflix', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (179, 63, N'Adding jQuery to Your Web Pages', N'There are several ways to start using jQuery on your web site. You can:

Download the jQuery library from jQuery.com
Include jQuery from a CDN, like Google
.', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (180, 63, N'Downloading jQuery', N'There are two versions of jQuery available for downloading:

Production version - this is for your live website because it has been minified and compressed
Development version - this is for testing and development (uncompressed and readable code)
Both versions can be downloaded from jQuery.com.

The jQuery library is a single JavaScript file, and you reference it with the HTML <script> tag (notice that the <script> tag should be inside the <head> section):', N'<head>
<script src="jquery-3.1.1.min.js"></script>
</head>', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (181, 63, N'jQuery CDN', N'', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("button").click(function(){
        $("p").hide();
    });
});
</script>
</head>
<body>

<h2>This is a heading</h2>

<p>This is a paragraph.</p>
<p>This is another paragraph.</p>

<button>Click me</button>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (182, 63, N'Microsoft CDN:', N'', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js">
</script>
<script>
$(document).ready(function(){
    $("button").click(function(){
        $("p").hide();
    });
});
</script>
</head>
<body>

<h2>This is a heading</h2>

<p>This is a paragraph.</p>
<p>This is another paragraph.</p>

<button>Click me</button>

</body>
</html>
', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (183, 64, N'jQuery Syntax', N'The jQuery syntax is tailor-made for selecting HTML elements and performing some action on the element(s).

Basic syntax is: $(selector).action()

A $ sign to define/access jQuery
A (selector) to "query (or find)" HTML elements
A jQuery action() to be performed on the element(s)
Examples:

$(this).hide() - hides the current element.

$("p").hide() - hides all <p> elements.

$(".test").hide() - hides all elements with class="test".

$("#test").hide() - hides the element with id="test".', N'', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (184, 64, N'The Document Ready Event', N'You might have noticed that all jQuery methods in our examples, are inside a document ready event:

$(document).ready(function(){

   // jQuery methods go here...

});
This is to prevent any jQuery code from running before the document is finished loading (is ready).

It is good practice to wait for the document to be fully loaded and ready before working with it. This also allows you to have your JavaScript code before the body of your document, in the head section.

Here are some examples of actions that can fail if methods are run before the document is fully loaded:

Trying to hide an element that is not created yet
Trying to get the size of an image that is not loaded yet
Tip: The jQuery team has also created an even shorter method for the document ready event:

$(function(){

   // jQuery methods go here...

});
Use the syntax you prefer. We think that the document ready event is easier to understand when reading the code.


? PreviousNext ?
', N'', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (185, 64, N'jQuery Selectors', N'jQuery selectors allow you to select and manipulate HTML element(s).
jQuery selectors are used to "find" (or select) HTML elements based on their name, id, classes, types, attributes, values of attributes and much more. Its based on the existing CSS Selectors, and in addition, it has some own custom selectors.

All selectors in jQuery start with the dollar sign and parentheses: $().', N'', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (186, 65, N'The element Selector', N'', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("button").click(function(){
        $("p").hide();
    });
});
</script>
</head>
<body>

<h2>This is a heading</h2>

<p>This is a paragraph.</p>
<p>This is another paragraph.</p>

<button>Click me to hide paragraphs</button>

</body>
</html>
', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (187, 66, N'What are Events?', N'All the different visitor is actions that a web page can respond to are called events.

An event represents the precise moment when something happens.

Examples:

moving a mouse over an element
selecting a radio button
clicking on an element.', N'', 6)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (188, 66, N'jQuery Syntax For Event Methods', N'In jQuery, most DOM events have an equivalent jQuery method.

To assign a click event to all paragraphs on a page, you can do this:

$("p").click();
The next step is to define what should happen when the event fires. You must pass a function to the event:

$("p").click(function(){
  // action goes here!!
});', N'', 6)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (189, 66, N'Commonly Used jQuery Event Methods', N'click()', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("p").click(function(){
        $(this).hide();
    });
});
</script>
</head>
<body>

<p>If you click on me, I will disappear.</p>
<p>Click me away!</p>
<p>Click me too!</p>

</body>
</html>', 6)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (190, 67, N'', N'dblclick()', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("p").dblclick(function(){
        $(this).hide();
    });
});
</script>
</head>
<body>

<p>If you double-click on me, I will disappear.</p>
<p>Click me away!</p>
<p>Click me too!</p>

</body>
</html>
', 6)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (191, 67, N'', N'mouseenter()', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("#p1").mouseenter(function(){
        alert("You entered p1!");
    });
});
</script>
</head>
<body>

<p id="p1">Enter this paragraph.</p>

</body>
</html>
', 6)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (192, 67, N'', N'mouseleave()', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("#p1").mouseleave(function(){
        alert("Bye! You now leave p1!");
    });
});
</script>
</head>
<body>

<p id="p1">This is a paragraph.</p>

</body>
</html>
', 6)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (193, 67, N'', N'mousedown()', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("#p1").mousedown(function(){
        alert("Mouse down over p1!");
    });
});
</script>
</head>
<body>

<p id="p1">This is a paragraph.</p>

</body>
</html>
', 6)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (194, 68, N'jQuery Fading Methods', N'With jQuery you can fade an element in and out of visibility.

jQuery has the following fade methods:

fadeIn()
fadeOut()
fadeToggle()
fadeTo()', N'', 7)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (195, 68, N'jQuery fadeIn() Method', N'', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("button").click(function(){
        $("#div1").fadeIn();
        $("#div2").fadeIn("slow");
        $("#div3").fadeIn(3000);
    });
});
</script>
</head>
<body>

<p>Demonstrate fadeIn() with different parameters.</p>

<button>Click to fade in boxes</button><br><br>

<div id="div1" style="width:80px;height:80px;display:none;background-color:red;"></div><br>
<div id="div2" style="width:80px;height:80px;display:none;background-color:green;"></div><br>
<div id="div3" style="width:80px;height:80px;display:none;background-color:blue;"></div>

</body>
</html>
', 7)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (196, 68, N'jQuery fadeOut() Method', N'', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("button").click(function(){
        $("#div1").fadeOut();
        $("#div2").fadeOut("slow");
        $("#div3").fadeOut(3000);
    });
});
</script>
</head>
<body>

<p>Demonstrate fadeOut() with different parameters.</p>

<button>Click to fade out boxes</button><br><br>

<div id="div1" style="width:80px;height:80px;background-color:red;"></div><br>
<div id="div2" style="width:80px;height:80px;background-color:green;"></div><br>
<div id="div3" style="width:80px;height:80px;background-color:blue;"></div>

</body>
</html>
', 7)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (197, 68, N'jQuery fadeToggle() Method', N'', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("button").click(function(){
        $("#div1").fadeToggle();
        $("#div2").fadeToggle("slow");
        $("#div3").fadeToggle(3000);
    });
});
</script>
</head>
<body>

<p>Demonstrate fadeToggle() with different speed parameters.</p>

<button>Click to fade in/out boxes</button><br><br>

<div id="div1" style="width:80px;height:80px;background-color:red;"></div>
<br>
<div id="div2" style="width:80px;height:80px;background-color:green;"></div>
<br>
<div id="div3" style="width:80px;height:80px;background-color:blue;"></div>

</body>
</html>
', 7)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (198, 68, N'jQuery fadeTo() Method', N'', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("button").click(function(){
        $("#div1").fadeTo("slow", 0.15);
        $("#div2").fadeTo("slow", 0.4);
        $("#div3").fadeTo("slow", 0.7);
    });
});
</script>
</head>
<body>

<p>Demonstrate fadeTo() with different parameters.</p>

<button>Click to fade boxes</button><br><br>

<div id="div1" style="width:80px;height:80px;background-color:red;"></div><br>
<div id="div2" style="width:80px;height:80px;background-color:green;"></div><br>
<div id="div3" style="width:80px;height:80px;background-color:blue;"></div>

</body>
</html>
', 7)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (199, 69, N'jQuery Sliding Methods', N'With jQuery you can create a sliding effect on elements.

jQuery has the following slide methods:

slideDown()
slideUp()
slideToggle()', N'', 8)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (200, 69, N'jQuery slideDown() Method', N'', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script> 
$(document).ready(function(){
    $("#flip").click(function(){
        $("#panel").slideDown("slow");
    });
});
</script>
 
<style> 
#panel, #flip {
    padding: 5px;
    text-align: center;
    background-color: #e5eecc;
    border: solid 1px #c3c3c3;
}

#panel {
    padding: 50px;
    display: none;
}
</style>
</head>
<body>
 
<div id="flip">Click to slide down panel</div>
<div id="panel">Hello world!</div>

</body>
</html>
', 8)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (201, 69, N'jQuery slideUp() Method', N'', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script> 
$(document).ready(function(){
    $("#flip").click(function(){
        $("#panel").slideUp("slow");
    });
});
</script>
 
<style> 
#panel, #flip {
    padding: 5px;
    text-align: center;
    background-color: #e5eecc;
    border: solid 1px #c3c3c3;
}

#panel {
    padding: 50px;
}
</style>
</head>
<body>
 
<div id="flip">Click to slide up panel</div>
<div id="panel">Hello world!</div>

</body>
</html>
', 8)
GO
print 'Processed 200 total records'
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (202, 69, N'jQuery slideToggle() Method', N'', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script> 
$(document).ready(function(){
    $("#flip").click(function(){
        $("#panel").slideToggle("slow");
    });
});
</script>

<style> 
#panel, #flip {
    padding: 5px;
    text-align: center;
    background-color: #e5eecc;
    border: solid 1px #c3c3c3;
}

#panel {
    padding: 50px;
    display: none;
}
</style>
</head>
<body>
 
<div id="flip">Click to slide the panel down or up</div>
<div id="panel">Hello world!</div>

</body>
</html>
', 8)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (203, 70, N'jQuery Animations - The animate() Method', N'The jQuery animate() method is used to create custom animations.', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script> 
$(document).ready(function(){
    $("button").click(function(){
        $("div").animate({left: 250px});
    });
});
</script> 
</head>
<body>

<button>Start Animation</button>

<p>By default, all HTML elements have a static position, and cannot be moved. To manipulate the position, remember to first set the CSS position property of the element to relative, fixed, or absolute!</p>

<div style="background:#98bf21;height:100px;width:100px;position:absolute;"></div>

</body>
</html>
', 9)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (204, 70, N'jQuery animate() - Manipulate Multiple Properties', N'', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script> 
$(document).ready(function(){
    $("button").click(function(){
        $("div").animate({
            left: 250px,
            opacity: 0.5,
            height: 150px,
            width: 150px
        });
    });
});
</script> 
</head>
<body>

<button>Start Animation</button>

<p>By default, all HTML elements have a static position, and cannot be moved. To manipulate the position, remember to first set the CSS position property of the element to relative, fixed, or absolute!</p>

<div style="background:#98bf21;height:100px;width:100px;position:absolute;"></div>

</body>
</html>
', 9)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (205, 70, N'jQuery animate() - Using Relative Values', N'', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script> 
$(document).ready(function(){
    $("button").click(function(){
        $("div").animate({
            left: 250px,
            height: +=150px,
            width: +=150px
        });
    });
});
</script> 
</head>
<body>

<button>Start Animation</button>

<p>By default, all HTML elements have a static position, and cannot be moved. To manipulate the position, remember to first set the CSS position property of the element to relative, fixed, or absolute!</p>

<div style="background:#98bf21;height:100px;width:100px;position:absolute;"></div>

</body>
</html>
', 9)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (206, 70, N'jQuery animate() - Using Pre-defined Values', N'', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script> 
$(document).ready(function(){
    $("button").click(function(){
        $("div").animate({
            height: toggle
        });
    });
});
</script> 
</head>
<body>

<p>Click the button multiple times to toggle the animation.</p>

<button>Start Animation</button>

<p>By default, all HTML elements have a static position, and cannot be moved. To manipulate the position, remember to first set the CSS position property of the element to relative, fixed, or absolute!</p>

<div style="background:#98bf21;height:100px;width:100px;position:absolute;"></div>

</body>
</html>
', 9)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (207, 70, N'jQuery animate() - Uses Queue Functionality', N'', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script> 
$(document).ready(function(){
    $("button").click(function(){
        var div = $("div");
        div.animate({height: 300px, opacity: 0.4}, "slow");
        div.animate({width: 300px, opacity: 0.8}, "slow");
        div.animate({height: 100px, opacity: 0.4}, "slow");
        div.animate({width: 100px, opacity: 0.8}, "slow");
    });
});
</script> 
</head>
<body>

<button>Start Animation</button>

<p>By default, all HTML elements have a static position, and cannot be moved. To manipulate the position, remember to first set the CSS position property of the element to relative, fixed, or absolute!</p>

<div style="background:#98bf21;height:100px;width:100px;position:absolute;"></div>

</body>
</html>
', 9)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (208, 71, N'jQuery stop() Method', N'', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script> 
$(document).ready(function(){
    $("#flip").click(function(){
        $("#panel").slideDown(5000);
    });
    $("#stop").click(function(){
        $("#panel").stop();
    });
});
</script>
 
<style> 
#panel, #flip {
    padding: 5px;
    font-size: 18px;
    text-align: center;
    background-color: #555;
    color: white;
    border: solid 1px #666;
    border-radius: 3px;
}

#panel {
    padding: 50px;
    display: none;
}
</style>
</head>
<body>
 
<button id="stop">Stop sliding</button>

<div id="flip">Click to slide down panel</div>
<div id="panel">Hello world!</div>

</body>
</html>
', 10)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (209, 71, N'jQuery Effects Reference', N'For a complete overview of all jQuery effects, please go to our jQuery Effect Reference.', N'', 10)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (210, 71, N'jQuery Callback Functions', N'', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("button").click(function(){
        $("p").hide("slow", function(){
            alert("The paragraph is now hidden");
        });
    });
});
</script>
</head>
<body>

<button>Hide</button>

<p>This is a paragraph with little content.</p>

</body>
</html>
', 11)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (211, 71, N'Example without Callback', N'', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("button").click(function(){
        $("p").hide(1000);
        alert("The paragraph is now hidden");
    });
});
</script>
</head>
<body>

<button>Hide</button>

<p>This is a paragraph with little content.</p>

</body>
</html>
', 11)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (212, 71, N'jQuery Method Chaining', N'', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("button").click(function(){
        $("#p1").css("color", "red").slideUp(2000).slideDown(2000);
    });
});
</script>
</head>
<body>

<p id="p1">jQuery is fun!!</p>

<button>Click me</button>

</body>
</html>
', 12)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (213, 71, N'Example', N'', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("button").click(function(){
        $("#p1").css("color", "red")
            .slideUp(2000)
            .slideDown(2000);
    });
});
</script>
</head>
<body>

<p id="p1">jQuery is fun!!</p>

<button>Click me</button>

</body>
</html>
', 12)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (214, 76, N'XML Tutorial', N'XML Example 1', N'<?xml version="1.0" encoding="UTF-8"?>
<note>
  <to>Tove</to>
  <from>Jani</from>
  <heading>Reminder</heading>
  <body>Do not forget me this weekend!</body>
</note>', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (215, 76, N'', N'XML Example 2', N'<?xml version="1.0" encoding="UTF-8"?>
<breakfast_menu>
<food>
    <name>Belgian Waffles</name>
    <price>$5.95</price>
    <description>
   Two of our famous Belgian Waffles with plenty of real maple syrup
   </description>
    <calories>650</calories>
</food>
<food>
    <name>Strawberry Belgian Waffles</name>
    <price>$7.95</price>
    <description>
    Light Belgian waffles covered with strawberries and whipped cream
    </description>
    <calories>900</calories>
</food>
<food>
    <name>Berry-Berry Belgian Waffles</name>
    <price>$8.95</price>
    <description>
    Belgian waffles covered with assorted fresh berries and whipped cream
    </description>
    <calories>900</calories>
</food>
<food>
    <name>French Toast</name>
    <price>$4.50</price>
    <description>
    Thick slices made from our homemade sourdough bread
    </description>
    <calories>600</calories>
</food>
<food>
    <name>Homestyle Breakfast</name>
    <price>$6.95</price>
    <description>
    Two eggs, bacon or sausage, toast, and our ever-popular hash browns
    </description>
    <calories>950</calories>
</food>
</breakfast_menu>', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (216, 76, N'Why Study XML?', N'XML plays an important role in many different IT systems.

XML is often used for distributing data over the Internet.

It is important (for all types of software developers!) to have a good understanding of XML.', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (217, 76, N'What You Will Learn', N'This tutorial will give you a solid understanding of XML:

What is XML?
How does XML work?
How can I use XML?
What can I use XML for?', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (218, 77, N'What is XML?', N'XML Does Not DO Anything
Maybe it is a little hard to understand, but XML does not DO anything.', N'<note>
  <to>Tove</to>
  <from>Jani</from>
  <heading>Reminder</heading>
  <body>Do not forget me this weekend!</body>
</note>', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (219, 77, N'The Difference Between XML and HTML', N'XML and HTML were designed with different goals:

XML was designed to carry data - with focus on what data is
HTML was designed to display data - with focus on how data looks
XML tags are not predefined like HTML tags are', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (220, 77, N'XML Does Not Use Predefined Tags', N'The XML language has no predefined tags.

The tags in the example above (like <to> and <from>) are not defined in any XML standard. These tags are "invented" by the author of the XML document.

HTML works with predefined tags like <p>, <h1>, <table>, etc.

With XML, the author must define both the tags and the document structure.', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (221, 77, N'XML Separates Data from Presentation', N'XML does not carry any information about how to be displayed.

The same XML data can be used in many different presentation scenarios.

Because of this, with XML, there is a full separation between data and presentation.

', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (222, 77, N'XML is Often a Complement to HTML', N'In many HTML applications, XML is used to store or transport data, while HTML is used to format and display the same data.', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (223, 78, N'XML Separates Data from HTML', N'', N'<?xml version="1.0" encoding="UTF-8"?>
<bookstore>

  <book category="cooking">
    <title lang="en">Everyday Italian</title>
    <author>Giada De Laurentiis</author>
    <year>2005</year>
    <price>30.00</price>
  </book>

  <book category="children">
    <title lang="en">Harry Potter</title>
    <author>J K. Rowling</author>
    <year>2005</year>
    <price>29.99</price>
  </book>

  <book category="web">
    <title lang="en">XQuery Kick Start</title>
    <author>James McGovern</author>
    <author>Per Bothner</author>
    <author>Kurt Cagle</author>
    <author>James Linn</author>
    <author>Vaidyanathan Nagarajan</author>
    <year>2003</year>
    <price>49.99</price>
  </book>

  <book category="web" cover="paperback">
    <title lang="en">Learning XML</title>
    <author>Erik T. Ray</author>
    <year>2003</year>
    <price>39.95</price>
  </book>

</bookstore>', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (224, 78, N'Example: XML News', N'', N'<?xml version="1.0" encoding="UTF-8"?>
<nitf>
  <head>
    <title>Colombia Earthquake</title>
  </head>
  <body>
    <headline>
      <hl1>143 Dead in Colombia Earthquake</hl1>
    </headline>
    <byline>
      <bytag>By Jared Kotler, Associated Press Writer</bytag>
    </byline>
    <dateline>
      <location>Bogota, Colombia</location>
      <date>Monday January 25 1999 7:28 ET</date>
    </dateline>
  </body>
</nitf>', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (225, 78, N'Example: XML Weather Service', N'', N'<?xml version="1.0" encoding="UTF-8"?>
<current_observation>

<credit>NOAAs National Weather Service</credit>
<credit_URL>http://weather.gov/</credit_URL>

<image>
  <url>http://weather.gov/images/xml_logo.gif</url>
  <title>NOAAs National Weather Service</title>
  <link>http://weather.gov</link>
</image>

<location>New York/John F. Kennedy Intl Airport, NY</location>
<station_id>KJFK</station_id>
<latitude>40.66</latitude>
<longitude>-73.78</longitude>
<observation_time_rfc822>Mon, 11 Feb 2008 06:51:00 -0500 EST
</observation_time_rfc822>

<weather>A Few Clouds</weather>
<temp_f>11</temp_f>
<temp_c>-12</temp_c>
<relative_humidity>36</relative_humidity>
<wind_dir>West</wind_dir>
<wind_degrees>280</wind_degrees>
<wind_mph>18.4</wind_mph>
<wind_gust_mph>29</wind_gust_mph>
<pressure_mb>1023.6</pressure_mb>
<pressure_in>30.23</pressure_in>
<dewpoint_f>-11</dewpoint_f>
<dewpoint_c>-24</dewpoint_c>
<windchill_f>-7</windchill_f>
<windchill_c>-22</windchill_c>
<visibility_mi>10.00</visibility_mi>

<icon_url_base>http://weather.gov/weather/images/fcicons/</icon_url_base>
<icon_url_name>nfew.jpg</icon_url_name>
<disclaimer_url>http://weather.gov/disclaimer.html</disclaimer_url>
<copyright_url>http://weather.gov/disclaimer.html</copyright_url>

</current_observation>', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (226, 79, N'An Example XML Document', N'', N'<?xml version="1.0" encoding="UTF-8"?>
<bookstore>
  <book category="cooking">
    <title lang="en">Everyday Italian</title>
    <author>Giada De Laurentiis</author>
    <year>2005</year>
    <price>30.00</price>
  </book>
  <book category="children">
    <title lang="en">Harry Potter</title>
    <author>J K. Rowling</author>
    <year>2005</year>
    <price>29.99</price>
  </book>
  <book category="web">
    <title lang="en">Learning XML</title>
    <author>Erik T. Ray</author>
    <year>2003</year>
    <price>39.95</price>
  </book>
</bookstore>', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (227, 79, N'XML Tree Structure', N'', N'<root>
  <child>
    <subchild>.....</subchild>
  </child>
</root>', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (228, 80, N'XML Documents Must Have a Root Element', N'XML documents must contain one root element that is the parent of all other elements:', N'<root>
  <child>
    <subchild>.....</subchild>
  </child>
</root>', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (229, 80, N'The XML Prolog', N'This line is called the XML prolog:', N'<?xml version="1.0" encoding="UTF-8"?>', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (230, 80, N'All XML Elements Must Have a Closing Tag', N'In HTML, some elements might work well, even with a missing closing tag:', N'<p>This is a paragraph.
<br>', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (231, 80, N'XML Tags are Case Sensitive', N'XML tags are case sensitive. The tag <Letter> is different from the tag <letter>.

Opening and closing tags must be written with the same case:', N'<Message>This is incorrect</message>
<message>This is correct</message>', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (232, 91, N'C++ Tutorial', N'C++ is a middle-level programming language developed by Bjarne Stroustrup starting in 1979 at Bell Labs. C++ runs on a variety of platforms, such as Windows, Mac OS, and the various versions of UNIX.

This reference will take you through simple and practical approach while learning C++ Programming language.', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (233, 91, N'Audience', N'This reference has been prepared for the beginners to help them understand the basic to advanced concepts related to C++ Programming languages.', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (234, 91, N'Prerequisites', N'Before you start doing practice with various types of examples given in this reference, I am making an assumption that you are already aware about what is a computer program and what is a computer programming language?', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (235, 91, N'Execute C++ Online', N'For most of the examples given in this tutorial you will find Try it option, so just make use of this option to execute your C++ programs at the spot and enjoy your learning.

Try following example using Try it option available at the top right corner of the below sample code box -', N'#include <iostream>
using namespace std;

int main() {
   cout << "Hello World";
   return 0;
}', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (236, 92, N'Object-Oriented Programming', N'C++ fully supports object-oriented programming, including the four pillars of object-oriented development:

Encapsulation

Data hiding

Inheritance

Polymorphism

Standard Libraries
Standard C++ consists of three important parts:

The core language giving all the building blocks including variables, data types and literals, etc.

The C++ Standard Library giving a rich set of functions manipulating files, strings, etc.

The Standard Template Library (STL) giving a rich set of methods manipulating data structures, etc.', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (237, 92, N'The ANSI Standard', N'The ANSI standard is an attempt to ensure that C++ is portable -- that code you write for Microsoft is compiler will compile without errors, using a compiler on a Mac, UNIX, a Windows box, or an Alpha.

The ANSI standard has been stable for a while, and all the major C++ compiler manufacturers support the ANSI standard.', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (238, 92, N'Learning C++', N'The most important thing to do when learning C++ is to focus on concepts and not get lost in language technical details.

The purpose of learning a programming language is to become a better programmer; that is, to become more effective at designing and implementing new systems and at maintaining old ones.

C++ supports a variety of programming styles. You can write in the style of Fortran, C, Smalltalk, etc., in any language. Each style can achieve its aims effectively while maintaining runtime and space efficiency.', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (239, 92, N'Use of C++', N'C++ is used by hundreds of thousands of programmers in essentially every application domain.

C++ is being highly used to write device drivers and other softwares that rely on direct manipulation of hardware under realtime constraints.

C++ is widely used for teaching and research because it is clean enough for successful teaching of basic concepts.

Anyone who has used either an Apple Macintosh or a PC running Windows has indirectly used C++ because the primary user interfaces of these systems are written in C++.

', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (240, 93, N'Try it Option Online', N'You really do not need to set up your own environment to start learning C++ programming language. Reason is very simple, we already have set up C++ Programming environment online, so that you can compile and execute all the available examples online at the same time when you are doing your theory work. This gives you confidence in what you are reading and to check the result with different options. Feel free to modify any example and execute it online.

Try the following example using Try it option available at the top right corner of the below sample code box:', N'#include <iostream>
using namespace std;

int main() {
   cout << "Hello World";
   return 0;
}', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (241, 93, N'Local Environment Setup', N'If you are still willing to set up your environment for C++, you need following two softwares available on your computer.', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (242, 93, N'Text Editor:', N'This will be used to type your program. Examples of few editors include Windows Notepad, OS Edit command, Brief, Epsilon, EMACS, and vim or vi.

Name and version of text editor can vary on different operating systems. For example, Notepad will be used on Windows and vim or vi can be used on windows as well as Linux, or UNIX.

The files you create with your editor are called source files and for C++ they typically are named with the extension .cpp, .cp, or .c.

Before starting your programming, make sure you have one text editor in place and you have enough experience to type your C++ program.', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (243, 93, N'C++ Compiler:', N'This is actual C++ compiler, which will be used to compile your source code into final executable program.

Most C++ compilers dont care what extension you give your source code, but if you dont specify otherwise, many will use .cpp by default

Most frequently used and free available compiler is GNU C/C++ compiler, otherwise you can have compilers either from HP or Solaris if you have respective Operating Systems', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (244, 93, N'Installing GNU C/C++ Compiler:', N'Mac OS X Installation:
If you use Mac OS X, the easiest way to obtain GCC is to download the Xcode development environment from Apple is web site and follow the simple installation instructions.

Xcode is currently available at developer.apple.com/technologies/tools/', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (245, 94, N'C++ Program Structure:', N'Let us look at a simple code that would print the words Hello World.', N'#include <iostream>
using namespace std;

// main() is where program execution begins.

int main() {
   cout << "Hello World"; // prints Hello World
   return 0;
}', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (246, 94, N'Compile & Execute C++ Program', N'Let is look at how to save the file, compile and run the program. Please follow the steps given below:

Open a text editor and add the code as above.

Save the file as: hello.cpp

Open a command prompt and go to the directory where you saved the file.

Type "g++ hello.cpp " and press enter to compile your code. If there are no errors in your code the command prompt will take you to the next line and would generate a.out executable file.

Now, type " a.out" to run your program.

You will be able to see " Hello World " printed on the window.', N'$ g++ hello.cpp
$ ./a.out
Hello World', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (247, 94, N'Semicolons & Blocks in C++', N'In C++, the semicolon is a statement terminator. That is, each individual statement must be ended with a semicolon. It indicates the end of one logical entity.A block is a set of logically connected statements that are surrounded by opening and closing braces. For example:', N'{
   cout << "Hello World"; // prints Hello World
   return 0;
}', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (248, 95, N'', N'Program comments are explanatory statements that you can include in the C++ code that you write and helps anyone reading it is source code. All programming languages allow for some form of comments.

C++ supports single-line and multi-line comments. All characters available inside any comment are ignored by C++ compiler.

C++ comments start with /* and end with */ For example:', N'/* This is a comment */

/* C++ comments can  also
 * span multiple lines
 */', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (249, 95, N'', N'A comment can also start with //, extending to the end of the line. For example:', N'#include <iostream>
using namespace std;

main() {
   cout << "Hello World"; // prints Hello World

   return 0;
}', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (250, 95, N'', N'When the above code is compiled, it will ignore // prints Hello World and final executable will produce the following result:', N'Hello World', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (251, 95, N'', N'Within a /* and */ comment, // characters have no special meaning. Within a // comment, /* and */ have no special meaning. Thus, you can "nest" one kind of comment within the other kind. For example:', N'/* Comment out printing of Hello World:

cout << "Hello World"; // prints Hello World

*/', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (252, 106, N'C++ Tutorial', N'C++ is a middle-level programming language developed by Bjarne Stroustrup starting in 1979 at Bell Labs. C++ runs on a variety of platforms, such as Windows, Mac OS, and the various versions of UNIX.

This reference will take you through simple and practical approach while learning C++ Programming language.', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (253, 106, N'Audience', N'This tutorial has been prepared for the beginners to help them understand the basic to advanced concepts related to Java Programming language.', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (254, 106, N'Prerequisites', N'Before you start practicing various types of examples given in this reference, we assume that you are already aware about computer programs and computer programming languages.', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (255, 106, N'Execute Java Online', N'For most of the examples given in this tutorial, you will find a "Try it" option, which you can use to execute your Java programs at the spot and enjoy your learning.

try the following example using the ‘Try it’ option available at the top right corner of the following sample code box -', N'public class MyFirstJavaProgram {

   public static void main(String []args) {
      System.out.println("Hello World");
   }
} ', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (256, 107, N'History of Java', N'James Gosling initiated Java language project in June 1991 for use in one of his many set-top box projects. The language, initially called "Oak" after an oak tree that stood outside Gosling is office, also went by the name "Green" and ended up later being renamed as Java, from a list of random words.

Sun released the first public implementation as Java 1.0 in 1995. It promised Write Once, Run Anywhere (WORA), providing no-cost run-times on popular platforms.

On 13 November, 2006, Sun released much of Java as free and open source software under the terms of the GNU General Public License (GPL).

On 8 May, 2007, Sun finished the process, making all of Java is core code free and open-source, aside from a small portion of code to which Sun did not hold the copyright.', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (257, 107, N'Tools You Will Need', N'For performing the examples discussed in this tutorial, you will need a Pentium 200-MHz computer with a minimum of 64 MB of RAM (128 MB of RAM recommended).

You will also need the following softwares -

Linux 7.1 or Windows xp/7/8 operating system
Java JDK 8
Microsoft Notepad or any other text editor
This tutorial will provide the necessary skills to create GUI, networking, and web applications using Java.', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (258, 107, N'Try It Option', N'We have provided you with an option to compile and execute available code online. Just click the Try it button avaiable at the top-right corner of the code window to compile and execute the available code. There are certain examples which cannot be executed online, so we have skipped those examples.', N'public class MyFirstJavaProgram {

   public static void main(String []args) {
      System.out.println("Hello World");
   }
} ', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (259, 107, N'Try it Option Online', N'We have set up the Java Programming environment online, so that you can compile and execute all the available examples online. It gives you confidence in what you are reading and enables you to verify the programs with different options. Feel free to modify any example and execute it online.', N'public class MyFirstJavaProgram {

   public static void main(String []args) {
      System.out.println("Hello World");
   }
} ', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (260, 108, N'Local Environment Setup', N'If you are still willing to set up your environment for Java programming language, then this section guides you on how to download and set up Java on your machine. Following are the steps to set up the environment.

Java SE is freely available from the link Download Java. You can download a version based on your operating system.

Follow the instructions to download Java and run the .exe to install Java on your machine. Once you installed Java on your machine, you will need to set environment variables to point to correct installation directories -', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (261, 108, N'Setting Up the Path for Windows', N'Assuming you have installed Java in c:\Program Files\java\jdk directory -

Right-click on "My Computer" and select "Properties".

Click the "Environment variables" button under the "Advanced" tab.

Now, alter the "Path" variable so that it also contains the path to the Java executable. Example, if the path is currently set to "C:\WINDOWS\SYSTEM32", then change your path to read "C:\WINDOWS\SYSTEM32;c:\Program Files\java\jdk\bin".', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (262, 108, N'Setting Up the Path for Linux, UNIX, Solaris, FreeBSD', N'Environment variable PATH should be set to point to where the Java binaries have been installed. Refer to your shell documentation, if you have trouble doing this.

Example, if you use bash as your shell, then you would add the following line to the end of your ".bashrc: export PATH = /path/to/java:$PATH"', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (263, 108, N'Popular Java Editors', N'To write your Java programs, you will need a text editor. There are even more sophisticated IDEs available in the market. But for now, you can consider one of the following -

Notepad - On Windows machine, you can use any simple text editor like Notepad (Recommended for this tutorial), TextPad.

Netbeans - A Java IDE that is open-source and free which can be downloaded from https://www.netbeans.org/index.html.

Eclipse - A Java IDE developed by the eclipse open-source community and can be downloaded from https://www.eclipse.org/. ', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (264, 108, N'What is Next?', N'Next chapter will teach you how to write and run your first Java program and some of the important basic syntaxes in Java needed for developing applications.', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (265, 109, N'First Java Program', N'Let us look at a simple code that will print the words Hello World.

Example', N'public class MyClass {

   /* This is my first java program.
    * This will print "Hello World" as the output
    */

   public static void main(String []args) {
      System.out.println("Hello World"); // prints Hello World
   }
}', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (266, 109, N'Basic Syntax', N'About Java programs, it is very important to keep in mind the following points.

Case Sensitivity - Java is case sensitive, which means identifier Hello and hello would have different meaning in Java.

Class Names - For all class names the first letter should be in Upper Case. If several words are used to form a name of the class, each inner word is first letter should be in Upper Case.

Example: class MyFirstJavaClass

Method Names - All method names should start with a Lower Case letter. If several words are used to form the name of the method, then each inner word is first letter should be in Upper Case.

Example: public void myMethodName()

Program File Name - Name of the program file should exactly match the class name.

When saving the file, you should save it using the class name (Remember Java is case sensitive) and append ".java" to the end of the name (if the file name and the class name do not match, your program will not compile).

Example: Assume "MyClass" is the class name. Then the file should be saved as "MyClass.java"

public static void main(String args[]) - Java program processing starts from the main() method which is a mandatory part of every Java program.', N'', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (267, 109, N'Java Enums', N'Enums were introduced in Java 5.0. Enums restrict a variable to have one of only a few predefined values. The values in this enumerated list are called enums.

With the use of enums it is possible to reduce the number of bugs in your code.

For example, if we consider an application for a fresh juice shop, it would be possible to restrict the glass size to small, medium, and large. This would make sure that it would not allow anyone to order any size other than small, medium, or large.

Example', N'class FreshJuice {
   enum FreshJuiceSize{ SMALL, MEDIUM, LARGE }
   FreshJuiceSize size;
}

public class FreshJuiceTest {

   public static void main(String args[]) {
      FreshJuice juice = new FreshJuice();
      juice.size = FreshJuice.FreshJuiceSize.MEDIUM ;
      System.out.println("Size: " + juice.size);
   }
}', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (268, 109, N'Comments in Java', N'Java supports single-line and multi-line comments very similar to C and C++. All characters available inside any comment are ignored by Java compiler.

Example', N'public class MyClass{

   /* This is my first java program.
    * This will print "Hello World" as the output
    * This is an example of multi-line comments.
    */

   public static void main(String []args) {
      // This is an example of single line comment
      /* This is also an example of single line comment. */
      System.out.println("Hello World");
   }
}', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (269, 109, N'Inheritance', N'In Java, classes can be derived from classes. Basically, if you need to create a new class and here is already a class that has some of the code you require, then it is possible to derive your new class from the already existing code.

This concept allows you to reuse the fields and methods of the existing class without having to rewrite the code in a new class. In this scenario, the existing class is called the superclass and the derived class is called the subclass.', N'', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (270, 109, N'Interfaces', N'In Java language, an interface can be defined as a contract between objects on how to communicate with each other. Interfaces play a vital role when it comes to the concept of inheritance.

An interface defines the methods, a deriving class (subclass) should use. But the implementation of the methods is totally up to the subclass.', N'', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (271, 110, N'Objects in Java', N'Let us now look deep into what are objects. If we consider the real-world, we can find many objects around us, cars, dogs, humans, etc. All these objects have a state and a behavior.

If we consider a dog, then its state is - name, breed, color, and the behavior is - barking, wagging the tail, running.

If you compare the software object with a real-world object, they have very similar characteristics.

Software objects also have a state and a behavior. A software object is state is stored in fields and behavior is shown via methods.

So in software development, methods operate on the internal state of an object and the object-to-object communication is done via methods.', N'', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (272, 110, N'Classes in Java', N'A class is a blueprint from which individual objects are created.

Following is a sample of a class.

Example', N'public class Dog {
   String breed;
   int ageC
   String color;

   void barking() {
   }

   void hungry() {
   }

   void sleeping() {
   }
}', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (273, 110, N'Constructors', N'When discussing about classes, one of the most important sub topic would be constructors. Every class has a constructor. If we do not explicitly write a constructor for a class, the Java compiler builds a default constructor for that class.

Each time a new object is created, at least one constructor will be invoked. The main rule of constructors is that they should have the same name as the class. A class can have more than one constructor.

Following is an example of a constructor -

Example', N'public class Puppy {
   public Puppy() {
   }

   public Puppy(String name) {
      // This constructor has one parameter, name.
   }
}', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (274, 110, N'Creating an Object', N'As mentioned previously, a class provides the blueprints for objects. So basically, an object is created from a class. In Java, the new keyword is used to create new objects.

There are three steps when creating an object from a class -

Declaration - A variable declaration with a variable name with an object type.

Instantiation - The "new" keyword is used to create the object.

Initialization - The "new" keyword is followed by a call to a constructor. This call initializes the new object.

Following is an example of creating an object -

Example', N'public class Puppy {
   public Puppy(String name) {
      // This constructor has one parameter, name.
      System.out.println("Passed Name is :" + name );
   }

   public static void main(String []args) {
      // Following statement would create an object myPuppy
      Puppy myPuppy = new Puppy( "tommy" );
   }
}', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (275, 110, N'Accessing Instance Variables and Methods', N'Example
This example explains how to access instance variables and methods of a class.', N'public class Puppy {
   int puppyAge;

   public Puppy(String name) {
      // This constructor has one parameter, name.
      System.out.println("Name chosen is :" + name );
   }

   public void setAge( int age ) {
      puppyAge = age;
   }

   public int getAge( ) {
      System.out.println("Puppy is age is :" + puppyAge );
      return puppyAge;
   }

   public static void main(String []args) {
      /* Object creation */
      Puppy myPuppy = new Puppy( "tommy" );

      /* Call class method to set puppy is age */
      myPuppy.setAge( 2 );

      /* Call another class method to get puppy is age */
      myPuppy.getAge( );

      /* You can access instance variable as follows as well */
      System.out.println("Variable Value :" + myPuppy.puppyAge );
   }
}', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (276, 110, N'A Simple Case Study', N'For our case study, we will be creating two classes. They are Employee and EmployeeTest.

First open notepad and add the following code. Remember this is the Employee class and the class is a public class. Now, save this source file with the name Employee.java.

The Employee class has four instance variables - name, age, designation and salary. The class has one explicitly defined constructor, which takes a parameter.

Example', N'import java.io.*;
public class Employee {

   String name;
   int age;
   String designation;
   double salary;

   // This is the constructor of the class Employee
   public Employee(String name) {
      this.name = name;
   }

   // Assign the age of the Employee  to the variable age.
   public void empAge(int empAge) {
      age = empAge;
   }

   /* Assign the designation to the variable designation.*/
   public void empDesignation(String empDesig) {
      designation = empDesig;
   }

   /* Assign the salary to the variable	salary.*/
   public void empSalary(double empSalary) {
      salary = empSalary;
   }

   /* Print the Employee details */
   public void printEmployee() {
      System.out.println("Name:"+ name );
      System.out.println("Age:" + age );
      System.out.println("Designation:" + designation );
      System.out.println("Salary:" + salary);
   }
}', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (277, 110, N'', N'As mentioned previously in this tutorial, processing starts from the main method. Therefore, in order for us to run this Employee class there should be a main method and objects should be created. We will be creating a separate class for these tasks.

Following is the EmployeeTest class, which creates two instances of the class Employee and invokes the methods for each object to assign values for each variable.

Save the following code in EmployeeTest.java file.', N'import java.io.*;
public class EmployeeTest {

   public static void main(String args[]) {
      /* Create two objects using constructor */
      Employee empOne = new Employee("James Smith");
      Employee empTwo = new Employee("Mary Anne");

      // Invoking methods for each object created
      empOne.empAge(26);
      empOne.empDesignation("Senior Software Engineer");
      empOne.empSalary(1000);
      empOne.printEmployee();

      empTwo.empAge(21);
      empTwo.empDesignation("Software Engineer");
      empTwo.empSalary(500);
      empTwo.printEmployee();
   }
}', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (278, 121, N'Python - Tutorial', N'Python is a general-purpose interpreted, interactive, object-oriented, and high-level programming language. It was created by Guido van Rossum during 1985- 1990. Like Perl, Python source code is also available under the GNU General Public License (GPL). This tutorial gives enough understanding on Python programming language.', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (279, 121, N'Audience', N'This tutorial is designed for software programmers who need to learn Python programming language from scratch.', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (280, 121, N'Prerequisites', N'You should have a basic understanding of Computer Programming terminologies. A basic understanding of any of the programming languages is a plus.', N'', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (281, 121, N'Execute Python Programs', N'For most of the examples given in this tutorial you will find Try it option, so just make use of it and enjoy your learning.

Try following example using Try it option available at the top right corner of the below sample code box -', N'#!/usr/bin/python

print "Hello, Python!"', 1)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (282, 122, N'History of Python', N'Python was developed by Guido van Rossum in the late eighties and early nineties at the National Research Institute for Mathematics and Computer Science in the Netherlands.

Python is derived from many other languages, including ABC, Modula-3, C, C++, Algol-68, SmallTalk, and Unix shell and other scripting languages.

Python is copyrighted. Like Perl, Python source code is now available under the GNU General Public License (GPL).

Python is now maintained by a core development team at the institute, although Guido van Rossum still holds a vital role in directing its progress.', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (283, 122, N'Python Features', N'Python is features include:

Easy-to-learn: Python has few keywords, simple structure, and a clearly defined syntax. This allows the student to pick up the language quickly.

Easy-to-read: Python code is more clearly defined and visible to the eyes.

Easy-to-maintain: Python is source code is fairly easy-to-maintain.

A broad standard library: Python is bulk of the library is very portable and cross-platform compatible on UNIX, Windows, and Macintosh.

Interactive Mode:Python has support for an interactive mode which allows interactive testing and debugging of snippets of code.

Portable: Python can run on a wide variety of hardware platforms and has the same interface on all platforms.

Extendable: You can add low-level modules to the Python interpreter. These modules enable programmers to add to or customize their tools to be more efficient.

Databases: Python provides interfaces to all major commercial databases.

GUI Programming: Python supports GUI applications that can be created and ported to many system calls, libraries and windows systems, such as Windows MFC, Macintosh, and the X Window system of Unix.

Scalable: Python provides a better structure and support for large programs than shell scripting.

Apart from the above-mentioned features, Python has a big list of good features, few are listed below:

It supports functional and structured programming methods as well as OOP.

It can be used as a scripting language or can be compiled to byte-code for building large applications.

It provides very high-level dynamic data types and supports dynamic type checking.

IT supports automatic garbage collection.

It can be easily integrated with C, C++, COM, ActiveX, CORBA, and Java.', N'', 2)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (284, 123, N'Local Environment Setup', N'Open a terminal window and type "python" to find out if it is already installed and which version is installed.

Unix (Solaris, Linux, FreeBSD, AIX, HP/UX, SunOS, IRIX, etc.)
Win 9x/NT/2000
Macintosh (Intel, PPC, 68K)
OS/2
DOS (multiple versions)
PalmOS
Nokia mobile phones
Windows CE
Acorn/RISC OS
BeOS
Amiga
VMS/OpenVMS
QNX
VxWorks
Psion
Python has also been ported to the Java and .NET virtual machines', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (285, 123, N'Getting Python', N'The most up-to-date and current source code, binaries, documentation, news, etc., is available on the official website of Python https://www.python.org/

You can download Python documentation from https://www.python.org/doc/. The documentation is available in HTML, PDF, and PostScript formats.', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (286, 123, N'Installing Python', N'Python distribution is available for a wide variety of platforms. You need to download only the binary code applicable for your platform and install Python.

If the binary code for your platform is not available, you need a C compiler to compile the source code manually. Compiling the source code offers more flexibility in terms of choice of features that you require in your installation.

Here is a quick overview of installing Python on various platforms -', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (287, 123, N'Unix and Linux Installation', N'Here are the simple steps to install Python on Unix/Linux machine.

Open a Web browser and go to https://www.python.org/downloads/.

Follow the link to download zipped source code available for Unix/Linux.

Download and extract files.

Editing the Modules/Setup file if you want to customize some options.

run ./configure script

make

make install

This installs Python at standard location /usr/local/bin and its libraries at /usr/local/lib/pythonXX where XX is the version of Python.', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (288, 123, N'Windows Installation', N'Here are the steps to install Python on Windows machine.

Open a Web browser and go to https://www.python.org/downloads/.

Follow the link for the Windows installer python-XYZ.msi file where XYZ is the version you need to install.

To use this installer python-XYZ.msi, the Windows system must support Microsoft Installer 2.0. Save the installer file to your local machine and then run it to find out if your machine supports MSI.

Run the downloaded file. This brings up the Python install wizard, which is really easy to use. Just accept the default settings, wait until the install is finished, and you are done.', N'', 3)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (289, 124, N'First Python Program', N'Let us execute programs in different modes of programming.

Interactive Mode Programming
Invoking the interpreter without passing a script file as a parameter brings up the following prompt -', N'$ python
Python 2.4.3 (#1, Nov 11 2010, 13:34:43)
[GCC 4.1.2 20080704 (Red Hat 4.1.2-48)] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>>', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (290, 124, N'Script Mode Programming', N'Invoking the interpreter with a script parameter begins execution of the script and continues until the script is finished. When the script is finished, the interpreter is no longer active.

Let us write a simple Python program in a script. Python files have extension .py. Type the following source code in a test.py file: ', N'print "Hello, Python!"', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (291, 124, N'Lines and Indentation', N'Note: Do not try to understand the logic at this point of time. Just make sure you understood various blocks even if they are without braces.', N'#!/usr/bin/python

import sys

try:
  # open file stream
  file = open(file_name, "w")
except IOError:
  print "There was an error writing to", file_name
  sys.exit()
print "Enter ", file_finish,
print " When finished"
while file_text != file_finish:
  file_text = raw_input("Enter text: ")
  if file_text == file_finish:
    # close the file
    file.close
    break
  file.write(file_text)
  file.write("\n")
file.close()
file_name = raw_input("Enter filename: ")
if len(file_name) == 0:
  print "Next time please enter something"
  sys.exit()
try:
  file = open(file_name, "r")
except IOError:
  print "There was an error reading file"
  sys.exit()
file_text = file.read()
file.close()
print file_text', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (292, 124, N'Multi-Line Statements', N'Statements in Python typically end with a new line. Python does, however, allow the use of the line continuation character (\) to denote that the line should continue. For example -

total = item_one +         item_two +         item_three
Statements contained within the [], {}, or () brackets do not need to use the line continuation character. For example -', N'days = ["Monday", "Tuesday", "Wednesday",
        "Thursday", "Friday"]', 4)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (293, 125, N'Assigning Values to Variables', N'Python variables do not need explicit declaration to reserve memory space. The declaration happens automatically when you assign a value to a variable. The equal sign (=) is used to assign values to variables.

The operand to the left of the = operator is the name of the variable and the operand to the right of the = operator is the value stored in the variable. For example -', N'#!/usr/bin/python

counter = 100          # An integer assignment
miles   = 1000.0       # A floating point
name    = "John"       # A string

print counter
print miles
print name', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (294, 125, N'Multiple Assignment', N'Python allows you to assign a single value to several variables simultaneously. For example -', N'', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (295, 125, N'', N'a = b = c = 1
Here, an integer object is created with the value 1, and all three variables are assigned to the same memory location. You can also assign multiple objects to multiple variables. For example -', N'a,b,c = 1,2,"john"', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (296, 125, N'Standard Data Types', N'The data stored in memory can be of many types. For example, a person is age is stored as a numeric value and his or her address is stored as alphanumeric characters. Python has various standard data types that are used to define the operations possible on them and the storage method for each of them.

Python has five standard data types -

Numbers

String

List

Tuple

Dictionary', N'', 5)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (297, 1, N'asdf', N'<p>asdf</p>
', N'asdf', 0)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (298, 60, N'"Try it Yourself" Examples in Each Chapter', N'<p>With our online editor, you can edit the code, and click on a button to view the result.</p>
', N'<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("p").click(function(){
        $(this).hide();
    });
});
</script>
</head>
<body>

<p>If you click on me, I will disappear.</p>
<p>Click me away!</p>
<p>Click me too!</p>

</body>
</html>
', 0)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (299, 75, N'Try it Yourself Examples in Every Chapter', N'<p>In every chapter, you can edit the examples online, and click on a button to view the result.</p>
', N'<!DOCTYPE html>
<html>
<body>

<div id="demo">
<h1>The XMLHttpRequest Object</h1>
<button type="button" onclick="loadDoc()">Change Content</button>
</div>

<script>
function loadDoc() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("demo").innerHTML =
      this.responseText;
    }
  };
  xhttp.open("GET", "ajax_info.txt", true);
  xhttp.send();
}
</script>

</body>
</html>
', 0)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (300, 90, N'Execute C++ Online', N'<p>For most of the examples given in this tutorial you will find Try it option, so just make use of this option to execute your C++ programs at the spot and enjoy your learning.</p>

<p>Try following example using Try it option available at the top right corner of the below sample code box &minus;</p>
', N'#include <iostream>
using namespace std;

int main() {
   cout << "Hello World";
   return 0;
}', 0)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (301, 102, N'The Infinite Loop', N'<p>A loop becomes infinite loop if a condition never becomes false. The&nbsp;<strong>for</strong>&nbsp;loop is traditionally used for this purpose. Since none of the three expressions that form the for loop are required, you can make an endless loop by leaving the conditional expression empty.</p>
', N'#include <iostream>
using namespace std;
 
int main () {
   for(int i=0 ;i<5 ;i++ ) {
      printf("This loop will run 5 time.\n");
   }
   return 0;
}', 0)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (303, 105, N'Execute Java Online', N'<p>For most of the examples given in this tutorial, you will find a &lsquo;Try it&rsquo; option, which you can use to execute your Java programs at the spot and enjoy your learning.</p>

<p>try the following example using the &lsquo;Try it&rsquo; option available at the top right corner of the following sample code box &minus;</p>
', N'import java.io.*;
import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

class myCode
{
    public static void main (String[] args) throws java.lang.Exception
    {
        System.out.println("Hello Java ");
    }
}
', 0)
GO
print 'Processed 300 total records'
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (304, 120, N'Execute Python Programs', N'<p>For most of the examples given in this tutorial you will find&nbsp;<strong>Try it</strong>&nbsp;option, so just make use of it and enjoy your learning.</p>

<p>Try following example using&nbsp;<strong>Try it</strong>&nbsp;option available at the top right corner of the below sample code box &minus;</p>
', N'#!/usr/bin/python

print "Hello, Python!"', 0)
INSERT [dbo].[TutorialCode] ([tuCoId], [tuId], [title], [description], [code], [positive]) VALUES (305, 127, N'Python Loops', N'<p>In general, statements are executed sequentially: The first statement in a function is executed first, followed by the second, and so on. There may be a situation when you need to execute a block of code several number of times.</p>

<p>Programming languages provide various control structures that allow for more complicated execution paths.</p>

<p>A loop statement allows us to execute a statement or group of statements multiple times. The following diagram illustrates a loop statement &minus;</p>
', N'# Prints out the numbers 0,1,2,3,4
for x in range(5):
    print(x)
', 0)
SET IDENTITY_INSERT [dbo].[TutorialCode] OFF
/****** Object:  Table [dbo].[Tutorial]    Script Date: 04/01/2017 13:50:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tutorial](
	[tuId] [int] IDENTITY(1,1) NOT NULL,
	[cateId] [int] NULL,
	[title] [text] NULL,
	[positive] [int] NULL,
	[active] [bit] NULL,
 CONSTRAINT [PK_Tutorial] PRIMARY KEY CLUSTERED 
(
	[tuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tutorial] ON
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (1, 1, N'HTML Introduction', 0, 0)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (2, 1, N'HTML Basic Examples', 3, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (3, 1, N'HTML Elements', 4, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (4, 1, N'HTML Attributes', 5, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (5, 1, N'HTML Links', 0, 0)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (6, 1, N'HTML Paragraphs', 7, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (7, 1, N'HTML Styles', 8, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (8, 1, N'HTML Text Formatting', 9, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (9, 1, N'HTML Quotation', 10, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (10, 1, N'HTML Comments', 11, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (11, 1, N'HTML Colors', 12, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (12, 1, N'HTML Styles - CSS', 13, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (13, 1, N'HTML Links - Hyperlinks', 14, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (14, 1, N'HTML Images', 15, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (15, 2, N'JS Introduction', 1, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (16, 2, N'JS Where To', 2, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (17, 2, N'JS Output', 3, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (18, 2, N'JS Syntax', 4, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (19, 2, N'JS Statements', 5, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (20, 2, N'JS Comments', 6, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (21, 2, N'JS Variables', 7, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (22, 2, N'JS Operators', 8, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (23, 2, N'JS Arithmetic', 9, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (24, 2, N'JS Assignment', 10, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (25, 2, N'JS Data Types', 11, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (26, 2, N'JS Functions', 12, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (27, 2, N'JS Objects', 13, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (28, 2, N'JS Scope', 14, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (29, 2, N'JS Events', 15, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (30, 3, N'CSS Introduction', 1, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (31, 3, N'CSS Syntax and Selectors', 2, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (32, 3, N'CSS How To...', 3, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (33, 3, N'CSS Synctax', 0, 0)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (34, 3, N'CSS Backgrounds', 5, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (35, 3, N'CSS Color', 0, 0)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (36, 3, N'CSS Margins', 7, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (37, 3, N'CSS Padding', 8, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (38, 3, N'CSS Height and Width', 9, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (39, 3, N'CSS Box Model', 10, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (40, 3, N'CSS Outline', 11, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (41, 3, N'CSS Text', 12, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (42, 3, N'CSS Fonts', 13, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (43, 3, N'CSS Icons', 14, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (44, 3, N'CSS Links', 15, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (47, 4, N'BS Home', 0, 0)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (48, 4, N'BS Images', 4, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (49, 4, N'BS Table', 0, 0)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (50, 4, N'BS Wells', 6, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (51, 4, N'BS Alerts', 7, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (52, 4, N'BS Buttons', 8, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (53, 4, N'BS Button Groups', 9, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (54, 4, N'BS Glyphicons', 10, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (55, 4, N'BS Badges/Labels', 11, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (56, 4, N'BS Progress Bars', 12, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (57, 4, N'BS Pagination', 13, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (58, 4, N'BS Pager', 14, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (59, 4, N'BS List Groups', 15, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (60, 5, N'jQuery Home', 1, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (61, 5, N'jQuery Intro', 2, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (62, 5, N'jQuery Get Started', 3, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (63, 5, N'jQuery Syntax', 4, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (64, 5, N'jQuery Selectors', 5, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (65, 5, N'jQuery Events', 6, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (66, 5, N'jQuery Fade', 7, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (67, 5, N'jQuery Slide', 8, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (68, 5, N'jQuery Animate', 9, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (69, 5, N'jQuery Stop()', 10, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (70, 5, N'jQuery Callback ', 11, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (71, 5, N'jQuery Chaining', 12, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (72, 5, N'jQuery Get ', 13, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (73, 5, N'jQuery Set', 14, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (74, 5, N'jQuery Add', 15, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (75, 6, N'AJAX Introduction', 0, 0)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (76, 6, N'Create an XMLHttpRequest Object', 0, 0)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (77, 6, N'AJAX - Server Response', 0, 0)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (78, 6, N'XML Tree', 4, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (79, 6, N'XML Syntax', 5, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (80, 6, N'XML Elements', 6, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (81, 6, N'XML Attributes', 7, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (82, 6, N'XML Namespaces', 8, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (83, 6, N'XML Display', 9, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (84, 6, N'XML HttpRequest', 10, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (85, 6, N'XML Parser ', 11, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (86, 6, N'XML DOM', 12, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (87, 6, N'XML XPath ', 13, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (88, 6, N'XML XSLT', 14, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (89, 6, N'XML XQuery', 15, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (90, 7, N'C++ Home', 1, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (91, 7, N'C++ Overview', 2, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (92, 7, N'C++ Environment Setup', 3, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (93, 7, N'C++ Basic Syntax', 4, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (94, 7, N'C++ Comments', 5, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (95, 7, N'C++ Data Types', 6, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (96, 7, N'C++ Variable Types', 7, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (97, 7, N'C++ Variable Scope', 8, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (98, 7, N'C++ Constants/Literals', 9, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (99, 7, N'C++ Modifier Types', 10, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (100, 7, N'C++ Storage Classes ', 11, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (101, 7, N'C++ Operators', 12, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (102, 7, N'C++ Loop Types ', 13, 1)
GO
print 'Processed 100 total records'
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (103, 7, N'C++ Decision making', 14, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (104, 7, N'C++ Functions', 15, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (105, 8, N'Java Home', 1, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (106, 8, N'Java Overview', 2, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (107, 8, N'Java Environment Setup', 3, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (108, 8, N'Java Basic Syntax', 4, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (109, 8, N'Java Object & Classes', 5, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (110, 8, N'Java Basic Datatypes', 6, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (111, 8, N'Java Variable Types', 7, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (112, 8, N'Java Modifier Types', 8, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (113, 8, N'Java Basic Operators', 9, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (114, 8, N'Java Loop Control', 10, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (115, 8, N'Java Decision Making ', 11, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (116, 8, N'Java Numbers ', 12, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (117, 8, N'Java Character  ', 13, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (118, 8, N'Java Strings ', 14, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (119, 8, N'Java Arrays', 15, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (120, 9, N'Python Home', 1, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (121, 9, N'Python Overview', 2, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (122, 9, N'Python Environment Setup', 3, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (123, 9, N'Python Basic Syntax', 4, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (124, 9, N'Python Variable Types', 5, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (125, 9, N'Python  Basic Operators', 6, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (126, 9, N'Python Decision Making', 7, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (127, 9, N'Python Loops', 8, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (128, 9, N'Python Numbers', 9, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (129, 9, N'Python Strings', 10, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (130, 9, N'Python Lists ', 11, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (131, 9, N'Python Tuples ', 12, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (132, 9, N'Python Dictionary  ', 13, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (133, 9, N'Python Date & Time ', 14, 1)
INSERT [dbo].[Tutorial] ([tuId], [cateId], [title], [positive], [active]) VALUES (134, 9, N'Python Functions', 15, 1)
SET IDENTITY_INSERT [dbo].[Tutorial] OFF
/****** Object:  Table [dbo].[Subject]    Script Date: 04/01/2017 13:50:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[subId] [int] IDENTITY(1,1) NOT NULL,
	[cateId] [int] NOT NULL,
	[title] [nvarchar](50) NULL,
	[successRate] [float] NULL,
	[maxScore] [int] NULL,
	[difficutly] [nvarchar](50) NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[subId] ASC,
	[cateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Subject] ON
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (2, 10, N'A Very Big Sum', 100, 20, N'Easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (3, 10, N'Sum two number', 100, 10, N'Easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (4, 10, N'Rap God', 0, 10, N'easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (5, 10, N'Till I Collapse', 0, 40, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (6, 10, N'Legacy', 0, 60, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (7, 10, N'Berzerk', 0, 90, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (8, 10, N'Anton and Permutation', 0, 95, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (9, 10, N'Anton and School - 2', 0, 50, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (10, 10, N'Anton and Fairy Tale', 0, 90, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (11, 10, N'Anton and Classes', 0, 70, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (12, 10, N'Anton and Polyhedrons', 0, 95, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (13, 10, N'Intranet of Buses', 0, 30, N'easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (14, 10, N'Andryusha and Nervous Barriers', 0, 60, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (15, 11, N'Solve Me First', 0, 10, N'easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (16, 11, N'Underground Lab', 0, 20, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (17, 11, N'Innokenty and a Football League', 0, 70, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (18, 11, N'Andryusha and Colored Balloons', 0, 90, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (19, 11, N'The Meeting Place Cannot Be Changed', 0, 10, N'easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (20, 11, N'Andryusha and Socks', 0, 40, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (21, 11, N'Dishonest Sellers', 0, 60, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (22, 11, N'Weird Rounding', 0, 90, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (23, 11, N'Pupils Redistribution', 0, 95, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (24, 11, N'Selling Numbers', 0, 50, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (25, 11, N'Parquet Re-laying', 0, 90, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (26, 11, N'Peterson Polyglot', 0, 70, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (27, 11, N'Bitwise Formula', 0, 95, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (28, 11, N'String Game', 0, 30, N'easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (29, 11, N'String Game', 0, 60, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (30, 12, N'Hanoi Factory', 0, 10, N'easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (31, 12, N'Cloud of Hashtags', 0, 20, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (32, 12, N'Alyona and Spreadsheet', 0, 70, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (33, 12, N'Game of Credit Cards', 0, 90, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (34, 12, N'Shell Game', 0, 10, N'easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (35, 12, N'Sherlock and the Encrypted Data', 0, 40, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (36, 12, N'Sherlocks bet to Moriarty', 0, 60, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (37, 12, N'The Holmes Children', 0, 90, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (38, 12, N'The Door Problem', 0, 95, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (39, 12, N'Mollys Chemicals', 0, 50, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (40, 12, N'Sherlock and his girlfriend', 0, 90, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (41, 12, N'A Serial Killer', 0, 70, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (42, 12, N'Bear and Isomorphic Points', 0, 95, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (43, 12, N'Bear and Rectangle Strips', 0, 30, N'easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (44, 12, N'Bear and Company', 0, 60, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (45, 13, N'Bear and Tree Jumps', 0, 10, N'easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (46, 13, N'Bear and Different Names', 0, 20, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (47, 13, N'Bear and Friendship Condition', 0, 70, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (48, 13, N'Draw Brackets!', 0, 90, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (49, 13, N'Online Courses In BSU', 0, 10, N'easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (50, 13, N'Maximize Sum of Digit', 0, 40, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (51, 13, N'New Password', 0, 60, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (52, 13, N'k-Interesting Pairs Of Integers', 0, 90, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (53, 13, N'Cycle In Maze', 0, 95, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (54, 13, N'News About Credit', 0, 50, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (55, 13, N'Year of University Entrance', 0, 90, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (56, 13, N'The Winds of Winter', 0, 70, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (57, 13, N'Barrels and boxes', 0, 95, N'hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (58, 13, N'Game of Stones', 0, 30, N'easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (59, 13, N'Jon and Orbs', 0, 60, N'normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (60, 14, N'Ostap and Grasshopper', 0, 10, N'Hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (61, 14, N'Anton and School', 0, 30, N'Easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (62, 14, N'Anton and Tree', 0, 20, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (63, 14, N'Anton and Chess', 0, 20, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (64, 14, N'Anton and Digits', 0, 10, N'Hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (65, 14, N'Anton and Danik', 0, 20, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (66, 14, N'Drivers Dissatisfaction', 0, 30, N'Easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (67, 14, N'Sleep in Class', 0, 30, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (68, 14, N'Kostya the Sculptor', 0, 10, N'Easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (69, 14, N'Epidemic in Monstropolis', 0, 10, N'Easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (70, 14, N'Parade', 0, 20, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (71, 14, N'Grasshopper And the String', 0, 20, N'Easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (72, 14, N'Tourist Reform', 0, 10, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (73, 14, N'Sockets', 0, 30, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (74, 14, N'Exams', 0, 20, N'Hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (75, 15, N'Sanatorium', 0, 10, N'Hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (76, 15, N'Cormen --- The Best Friend Of a Man', 0, 30, N'Easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (77, 15, N'Buy a Shovel', 0, 20, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (78, 15, N'Video Cards', 0, 20, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (79, 15, N'Funny Game', 0, 10, N'Hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (80, 15, N'80-th Level Archeology', 0, 20, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (81, 15, N'Socks', 0, 30, N'Easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (82, 15, N'Coupons and Discounts', 0, 30, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (83, 15, N'Night at the Museum', 0, 10, N'Easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (84, 15, N'Expression Queries', 0, 10, N'Easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (85, 15, N'Roads Orientation Problem', 0, 20, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (86, 15, N'Bottles', 0, 20, N'Easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (87, 15, N'Olympiad in Programming and Sports', 0, 10, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (88, 15, N'Delete Them', 0, 30, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (89, 15, N'Car Repair Shop', 0, 20, N'Hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (105, 17, N'Guess the Array', 0, 10, N'Hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (106, 17, N'Bill Total Value', 0, 30, N'Easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (107, 17, N'Transformation: from A to B', 0, 20, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (108, 17, N'Messages on a Tree', 0, 20, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (109, 17, N'Family Photos', 0, 10, N'Hard')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (110, 17, N'Too Much Money', 0, 20, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (111, 17, N'Contest Balloons', 0, 30, N'Easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (112, 17, N'Hidden Word', 0, 30, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (113, 17, N'Food on the Plane', 0, 10, N'Easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (114, 17, N'Jumping Ball', 0, 10, N'Easy')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (115, 17, N'Xor-matic Number of the Graph', 0, 20, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (116, 17, N'Uniformly Branched Trees', 0, 20, N'Easy')
GO
print 'Processed 100 total records'
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (117, 17, N'Goods transportation', 0, 10, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (118, 17, N'Dense Subsequence', 0, 30, N'Normal')
INSERT [dbo].[Subject] ([subId], [cateId], [title], [successRate], [maxScore], [difficutly]) VALUES (119, 17, N'Ray Tracing', 0, 20, N'Hard')
SET IDENTITY_INSERT [dbo].[Subject] OFF
/****** Object:  Table [dbo].[Categories]    Script Date: 04/01/2017 13:50:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[cateId] [int] IDENTITY(1,1) NOT NULL,
	[menuId] [int] NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[cateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT [dbo].[Categories] ([cateId], [menuId], [name]) VALUES (1, 1, N'HTML')
INSERT [dbo].[Categories] ([cateId], [menuId], [name]) VALUES (2, 1, N'JAVASCRIPT')
INSERT [dbo].[Categories] ([cateId], [menuId], [name]) VALUES (3, 1, N'CSS')
INSERT [dbo].[Categories] ([cateId], [menuId], [name]) VALUES (4, 1, N'BOOTSTRAP')
INSERT [dbo].[Categories] ([cateId], [menuId], [name]) VALUES (5, 1, N'JQUERY')
INSERT [dbo].[Categories] ([cateId], [menuId], [name]) VALUES (6, 1, N'AJAX')
INSERT [dbo].[Categories] ([cateId], [menuId], [name]) VALUES (7, 1, N'C++')
INSERT [dbo].[Categories] ([cateId], [menuId], [name]) VALUES (8, 1, N'JAVA')
INSERT [dbo].[Categories] ([cateId], [menuId], [name]) VALUES (9, 1, N'PYTHON')
INSERT [dbo].[Categories] ([cateId], [menuId], [name]) VALUES (10, 2, N'Argorithm')
INSERT [dbo].[Categories] ([cateId], [menuId], [name]) VALUES (11, 2, N'String')
INSERT [dbo].[Categories] ([cateId], [menuId], [name]) VALUES (12, 2, N'Array')
INSERT [dbo].[Categories] ([cateId], [menuId], [name]) VALUES (13, 2, N'Graph')
INSERT [dbo].[Categories] ([cateId], [menuId], [name]) VALUES (14, 2, N'Greedy')
INSERT [dbo].[Categories] ([cateId], [menuId], [name]) VALUES (15, 2, N'Tree')
INSERT [dbo].[Categories] ([cateId], [menuId], [name]) VALUES (17, 2, N'Bit')
INSERT [dbo].[Categories] ([cateId], [menuId], [name]) VALUES (19, 2, N'DYMAMIC')
SET IDENTITY_INSERT [dbo].[Categories] OFF
