# Online-Library-System
design and implement a database for keeping track of members, the books, the catalog, and the borrowing activity of an university library.



In this project, you will design and implement a database for keeping track of members, the books, the catalog, and the borrowing activity of an university library. You will first design an ER/EER schema diagram for this database application. Then, you will map the EER schema into a relational database schema and implement it on ORACLE (you can also use MySQL if you have your own version). Finally, you will load some data into your database, and create some queries and update transactions.

Assume that the following requirements were collected for this application:
1.	The University Library has approximately 16,000 members, 100,000 titles, and 250,000 volumes (an average of 2.5 copies per book). About 10% of the volumes are out on loan at any one time. 
2.	The librarians ensure that the books that members want to borrow are available when the members want to borrow them. Also, the librarians must know how many copies of each book are in the library or out on loan at any given time.
3.	A catalog of books is available online that lists books by author, title, and subject area. For each title in the library, a book description is kept in the catalog; the description ranges from one sentence to several pages. The reference librarians want to be able to access this description when members request information about a book. 
4.	Library staff includes chief librarian, departmental associate librarians, reference librarians, check-out staff, and library assistants.
5.	Books can be checked out for 21 days. Members are allowed to have only five books out at a time. Members usually return books within three to four weeks. 
6.	Most members know that they have one week of grace before a notice is sent to them, so they try to return books before the grace period ends. About 5% of the members have to be sent reminders to return books. Most overdue books are returned within a month of the due date. Approximately 5% of the overdue books are either kept or never returned. 
7.	The most active members of the library are defined as those who borrow books at least ten times during the year. The top 1% of membership does 15% of the borrowing, and the top 10% of the membership does 40% of the borrowing. About 20% of the members are totally inactive in that they are members who never borrow. 
8.	To become a member of the library, applicants fill out a form including their SSN, campus and home mailing addresses, and phone numbers. The librarians issue a numbered, machine-readable card with the member’s photo on it. This card is good for four years. A month before a card expires, a notice is sent to a member for renewal. 
9.	Professors at the institute are considered automatic members. When a new faculty member joins the institute, his or her information is pulled from the employee records and a library card is mailed to his or her campus address. Professors are allowed to check out books for three-month intervals and have a two-week grace period. Renewal notices to professors are sent to their campus address.
10.	The library does not lend some books, such as reference books, rare books, and maps. The librarians must differentiate between books that can be lent and those that cannot be lent. In addition, the librarians have a list of some books they are interested in acquiring but cannot obtain, such as rare or out-of-print books and books that were lost or destroyed but have not been replaced. The librarians must have a system that keeps track of books that cannot be lent as well as books that they are interested in acquiring. 
11.	Some books may have the same title; therefore, the title cannot be used as a means of identification. Every book is identified by its International Standard Book Number (ISBN), a unique international code assigned to all books. Two books with the same title can have different ISBNs if they are in different languages or have different bindings (hardcover or softcover). Editions of the same book have different ISBNs.

You will first design an EER schema diagram based upon the LIBRARY database requirements specified above and create an EER schema diagram and documentation report describing your design choices. As part of this assignment, you should identify any missing or incomplete requirements, and explicitly state them in your documentation. You should also explicitly state any assumptions you made that were not part of the requirements listed above.

The second part of the assignment will be to map the EER schema design to a relational database schema, and create the tables corresponding to the relational schema using the ORACLE DBMS (or MySQL). You will add to your report a listing of the CREATE TABLE statements. Specify as many constraints (key, referential integrity) as you can in the relational schema. You should state the choices you made during the EER-to-relational mapping, and the reasons for your choices.

The third part of the project is to load some data into the database, and apply certain update transactions and retrieval queries. You will create your own data. Include at least 10 members, 5 staffs, and at least 30 titles of different types.

The following are the tasks for the third part of the project:
1.	Load some initial data (as discussed above) into the database tables that you created in Part 2 of the assignment. You can either write a loading program, or use SQL/PLUS (insert command), or use SQL/FORMS. Your data should be kept in files so that it can easily be reloaded during debugging. The data format should be designed by you. (Note: You can also use the transactions created by you in item 3 below to load some of the data).
2.	Write queries to retrieve and print all the data you entered. Try to print the data so that it is easy to understand (for example, print appropriate headings, such as: Authors, Book Title, Subject area etc.).
3.	Write a query that will prepare a report for weekly Borrowing activity by Subject area, by Author, number of copies and number of days loaned out.
4.	Write the following database update transactions using either PRO*C or JAVA/JDBC or PHP or some other programming language or scripting language.
4.1	The first transaction is to add information about a new MEMBER.
4.2	The second transaction is to add all the information about a new BOOK.
4.3	The third transaction is to add all the information about a new BORROW (LOAN) (this must find the book from the catalog).
4.4	The fourth transaction is to handle the return of a book. This transaction should print a return receipt with the details of the book and days when it was borrowed and returned etc. 
4.5	The fifth transaction is to renew the membership.
5.	Write following two triggers – 
5.1	To notify a member about the outstanding overdue book.
5.2	To notify a member about his membership renewal.
6.	Each transaction should have a user friendly interface to enter the information needed by the transaction. This can either be a Web-based interface, a command line interface, or a forms interface.
