CREATE TABLE Monarch (
	mid int PRIMARY KEY, 
	name CHAR(20), 
	begin_reign int, 
	end_reign int, 
	predecessor int REFERENCES Monarch(mid)
);

CREATE TABLE Battle ( 
	bid int PRIMARY KEY, 
	name CHAR(20), 
	year int
);

CREATE TABLE FoughtIn ( 
	mid int REFERENCES Monarch(mid), 
	bid int REFERENCES Battle(bid), 
	PRIMARY KEY(mid, bid)
);

INSERT INTO Monarch VALUES
(0, 'George IV', 1820, 1830, NULL),
(1, 'William IV', 1830, 1837, 0),
(2, 'Victoria', 1837, 1901, 1),
(3, 'Edward VII', 1901, 1910,2),
(4, 'George V', 1910, 1936, 3),
(5, 'Edward VIII', 1936, 1936, 4),
(6, 'George VI', 1936, 1952, 5),
(7, 'Elizabeth II', 1952, 2020, 6);

INSERT INTO Battle VALUES
(1, 'Battle of London', 1835),
(2, 'Battle of Paris', 1836),
(3, 'Battle of Konstanz', 1837),
(4, 'Battle of St. Gallen', 1865),
(5, 'Battle of Berlin', 1867),
(6, 'Battle of Bern', 1878),
(7, 'Battle of Vienna', 1889),
(8, 'Battle of Edinburgh', 1895),
(9, 'Battle of Amsterdam', 1901),
(10, 'Battle of Brussels', 1911),
(11, 'Battle of Rome', 1918),
(12, 'Battle of Madrid', 1925),
(13, 'Battle of Andorra', 1936);

INSERT INTO FoughtIn VALUES
(1, 1),
(1, 2),
(1, 3),
(3, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(5,13);