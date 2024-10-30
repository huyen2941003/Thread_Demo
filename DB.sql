Create database DB_HCG
use DB_HCG
Drop database DB_HCG

CREATE TABLE Account (
    id INT PRIMARY KEY IDENTITY(1,1),
	name VARCHAR(100) NOT NULL,
    username VARCHAR(50) NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
	role INT
);
select * from Account
insert into Account values (N'Quản lý', 'admin', '123', 0);

--Bảng này lưu trữ thông tin về sở thích của sinh viên.
CREATE TABLE Preferences (
    id VARCHAR(10) NOT NULL PRIMARY KEY, 
    description NVARCHAR(MAX),
	id_majors VARCHAR(10),
	FOREIGN KEY (id_majors) REFERENCES Majors(id),
);

--Bảng này lưu trữ thông tin về chuyên ngành
CREATE TABLE Majors (
    id VARCHAR(10) NOT NULL PRIMARY KEY, 
    name NVARCHAR(255) NOT NULL,
    description NVARCHAR(MAX),
);

--Bảng này lưu trữ các quy tắc tư vấn.
CREATE TABLE Rules (
    id VARCHAR(10) NOT NULL PRIMARY KEY,
    ruleS NVARCHAR(MAX),
	id_majors VARCHAR(10),
	description NVARCHAR(MAX)
	FOREIGN KEY (id_majors) REFERENCES Majors(id),
);


