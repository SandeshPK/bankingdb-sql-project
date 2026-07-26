use bankingdb;

create table Accounts (
	AccountId int,
    AccountType varchar(20),
    Balance decimal(10,2)
);

select * from accounts;

create table Transactions (
	TransactionId int,
    TransactionDate date,
    Amount decimal(10,2),
    TransactionType varchar(20)
);

select * from transactions;

create table Branches (
	BranchID int,
    BranchName varchar(100),
    BranchAddress varchar(200),
    BranchPhone varchar(15)
);

select * from branches;

create table AccountBranches (
	AssignmentDate date
);

select * from accountbranches;

create table Loans (
	LoanID int,
    LoanAmount decimal(10,2),
    InterestRate decimal(5,2),
    StartDate date,
    EndDate date
);

select * from loans;

ALTER TABLE Customers
ADD DateOfBirth DATE;

ALTER TABLE Customers
MODIFY Phone VARCHAR(20);

ALTER TABLE Accounts
ADD CONSTRAINT chk_MinBalance
CHECK (Balance >= 1000);

DROP TABLE AccountBranches;

ALTER TABLE Customers
ADD PRIMARY KEY (CustomerID);

ALTER TABLE Accounts
ADD CustomerID INT;

ALTER TABLE Accounts
ADD CONSTRAINT FK_Accounts_Customers
FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID);

ALTER TABLE Customers
MODIFY FirstName VARCHAR(50) NOT NULL;

ALTER TABLE Customers
ADD CONSTRAINT uq_Email UNIQUE (Email);

alter table accounts
add primary key(accountid);
alter table branches
add primary key (branchid);
alter table loans
add primary key(loanid);
alter table transactions
add primary key(transactionid);

alter table accounts
add BranchID int;

alter table accounts
add constraint FK_Accounts_Branches
foreign key (BranchID)
references Branches(BranchID);

alter table loans
add CustomerID int;

alter table loans
add constraint FK_Loans_Customers
foreign key (CustomerID)
references Customers(CustomerID);

alter table transactions
add AccountID int;

alter table transactions
add constraint FK_Transactions_Accounts
foreign key (AccountID)
references Accounts(AccountID);