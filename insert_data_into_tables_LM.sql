/* Inserting  data into the designed tables  */

use library;

--  Insert data into customer table
/*NOTE : while imerting data into table carefull with the datatype and size of its subscripts */
insert into Customer            
(Customer_id,Customer_name,Customer_address,Reg_date)
values
('C101', 'Alice Johnson', '123 Main St', '2024-12-28'),
('C102', 'Bob Smith', '456 Elm St', '2025-01-01'),
('C103', 'Carol Davis', '789 Oak St', '2025-01-02'),
('C104', 'Dave Wilson', '567 Pine St', '2025-01-03'),
('C105', 'Eve Brown', '890 Maple St', '2025-01-04'),
('C106', 'Frank Thomas', '234 Cedar St', '2025-01-05'),
('C107', 'Grace Taylor', '345 Walnut St', '2025-01-06'),
('C108', 'Henry Anderson', '456 Birch St', '2025-01-07'),
('C109', 'Ivy Martinez', '567 Oak St', '2025-01-08'),
('C110', 'Jack Wilson', '678 Pine St', '2025-01-09');

select * from customer;

-- Insert data into table "Books"

insert  into  Books
(ISBN,Book_title,category,Rental_Price,Status,Author,Publisher)
values
('978-0-553-29698-2', 'The Catcher in the Rye', 'Classic', 7.00, 'yes', 'J.D. Salinger', 'Little, Brown and Company'),
('978-0-330-25864-8', 'Animal Farm', 'Classic', 5.50, 'yes', 'George Orwell', 'Penguin Books'),
('978-0-14-118776-1', 'One Hundred Years of Solitude', 'Literary Fiction', 6.50, 'yes', 'Gabriel Garcia Marquez', 'Penguin Books'),
('978-0-525-47535-5', 'The Great Gatsby', 'Classic', 8.00, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
('978-0-141-44171-6', 'Jane Eyre', 'Classic', 4.00, 'yes', 'Charlotte Bronte', 'Penguin Classics'),
('978-0-307-37840-1', 'The Alchemist', 'Fiction', 2.50, 'yes', 'Paulo Coelho', 'HarperOne'),
('978-0-679-76489-8', "Harry Potter and the Sorcerer's Stone", 'Fantasy', 7.00, 'yes', 'J.K. Rowling', 'Scholastic'),
('978-0-7432-4722-4', 'The Da Vinci Code', 'Mystery', 8.00, 'yes', 'Dan Brown', 'Doubleday'),
('978-0-09-957807-9', 'A Game of Thrones', 'Fantasy', 7.50, 'yes', 'George R.R. Martin', 'Bantam'),
('978-0-393-05081-8', "A People's History of the United States", 'History', 9.00, 'yes', 'Howard Zinn', 'Harper Perennial'),
('978-0-19-280551-1', 'The Guns of August', 'History', 7.00, 'yes', 'Barbara W. Tuchman', 'Oxford University Press'),
('978-0-307-58837-1', 'Sapiens: A Brief History of Humankind', 'History', 8.00, 'yes', 'Yuval Noah Harari', 'Harper Perennial'),
('978-0-375-41398-8', 'The Diary of a Young Girl', 'History', 6.50, 'yes', 'Anne Frank', 'Bantam'),
('978-0-14-044930-3', 'The Histories', 'History', 5.50, 'yes', 'Herodotus', 'Penguin Classics'),
('978-0-393-91257-8', 'Guns, Germs, and Steel: The Fates of Human Societies', 'History', 7.00, 'yes', 'Jared Diamond', 'W. W. Norton & Company'),
('978-0-7432-7357-1', '1491: New Revelations of the Americas Before Columbus', 'History', 6.50, 'yes', 'Charles C. Mann', 'Vintage Books');


select * from Books;


# Insert data into table "Issuestatus "

insert into Issuestatus
(Issue_id,Issued_customer,Issue_book_name,Issue_date,isbn_book)
values
('IS101', 'C101', 'The Catcher in the Rye', '2025-05-01', '978-0-553-29698-2'),
('IS102', 'C102', 'The Da Vinci Code', '2025-05-02', '978-0-7432-4722-4'),
('IS103', 'C103', '1491: New Revelations of the Americas Before Columbus', '2025-05-03', '978-0-7432-7357-1'),
('IS104', 'C104', 'Sapiens: A Brief History of Humankind', '2025-05-04', '978-0-307-58837-1'),
('IS105', 'C105', 'The Diary of a Young Girl', '2025-05-05', '978-0-375-41398-8');

select * from Issuestatus;

#Insert data into table "Returnstatus"

insert into Returnstatus
(Return_id,Return_customer,Return_book_name,Return_date,isbn_book2)
values
('RS101', 'C101', 'The Catcher in the Rye', '2025-05-10', '978-0-553-29698-2'),
('RS102', 'C102', 'The Da Vinci Code', '2025-05-12', '978-0-7432-4722-4'),
('RS103', 'C105', 'The Diary of a Young Girl', '2025-05-13', '978-0-375-41398-8'),
('RS104', 'C108', 'The Histories', '2025-05-14', '978-0-14-044930-3'),
('RS105', 'C110', 'A Game of Thrones', '2025-05-15', '978-0-09-957807-9');
select * from Returnstatus;

# insert data into table "Employee"

insert into Employee 
(Emp_id,Emp_name,Position,salary)
values
('E101', 'John Doe', 'Manager', 60000.00),
('E102', 'Jane Smith', 'Clerk', 45000.00),
('E103', 'Mike Johnson', 'Librarian', 55000.00),
('E104', 'Emily Davis', 'Assistant', 40000.00),
('E105', 'Sarah Brown', 'Assistant', 42000.00),
('E106', 'Michelle Ramirez', 'Assistant', 43000.00),
('E107', 'Michael Thompson', 'Manager', 62000.00),
('E108', 'Jessica Taylor', 'Clerk', 46000.00),
('E109', 'Daniel Anderson', 'Librarian', 57000.00),
('E110', 'Laura Martinez', 'Assistant', 41000.00),
('E111', 'Christopher Lee', 'Manager', 65000.00);

select *from Employee;

# insert data into table "Branch"
insert into Branch
(Branch_id,Manager_id,Branch_Address,Contact_no)
values
('B001', 'M101', '123 Main St', '+919099988676'),
('B002', 'M102', '456 Elm St', '+919099988677'),
('B003', 'M103', '789 Oak St', '+919099988678'),
('B004', 'M104', '567 Pine St', '+919099988679'),
('B005', 'M105', '890 Maple St', '+919099988680');

select* from Branch;

#END
