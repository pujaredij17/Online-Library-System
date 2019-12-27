-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2019 at 05:34 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `isbn` int(11) NOT NULL,
  `author` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `subject_area` varchar(32) NOT NULL,
  `no_of_copies` int(11) NOT NULL,
  `book_description` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`isbn`, `author`, `title`, `subject_area`, `no_of_copies`, `book_description`, `staff_id`, `p_id`) VALUES
(10000, 'Chetan Bhagat', '5 Point Someone', 'Fiction', 1, 'Five Point Someone: What not to do at IIT is a 2004 novel written by Indian author Chetan Bhagat. The book sold more than a million copies worldwide. The popular Hindi movie 3 Idiots is based on this book.', 100, 0),
(10001, 'J. K. Rowling', 'Harry Potter and Deathly Hallows', 'Fantasy', 100, 'Harry Potter and the Deathly Hallows is a fantasy novel written by British author J. K. Rowling and the seventh and final novel of the Harry Potter series. The book was released on 21 July 2007, ending the series that began in 1997 with the publication of Harry Potter and the Philosopher\'s Stone.', 100, 0),
(10002, 'Paulo Coehlo', 'The Alchemist', 'Drama', 10, 'An inspiring tale of self-discovery, \"The Alchemist\" tells the story of an Andalusian shepherd boy who wants to find worldly treasures.\r\n\r\nHis desire leads him to riches he could have never imagined. A motivational account of how following one\'s dreams can lead to the discovery of great wonders, \"The Alchemist\" is an enchanting read filled with wisdom.', 200, 0),
(10003, 'Linda Sue Park', 'A Long Walk to Water', 'Fiction', 5, 'A New York Times bestseller, \"A Long Walk to Water\" starts with two stories, told in alternating sections, from two 11-year-olds living in Sudan. The girl tells her story in 2008, while the boy tells his in 1985.\r\n\r\nThe tales intersect with one another in a way that leaves readers astonished.', 300, 0),
(10004, 'George R. R. Martin', 'A Song of Ice and Fire', 'Fantasy', 150, 'This box set includes all five of George R.R. Martin\'s epic fantasy novels: \"A Game of Thrones,\" \"A Clash of Kings,\" \"A Storm of Swords,\" \"A Feast for Crows,\" and \"A Dance with Dragons.\"\r\n\r\nThe books that inspired the popular HBO series take you into a world packed with kings, battles, myths, and action.', 400, 0),
(10005, 'Markus Zusak', 'The Book Thief', 'Drama', 20, 'A New York Times bestseller that is also a major motion picture, \"The Book Thief\" is set in 1939 Nazi Germany.\r\n\r\nAs foster child Liesel Meminger steals books to get by, she learns to read and shares them with her neighbors amidst all of the madness that is surrounding them. A remarkable story of how books feed the soul, it\'s a must-read for book lovers.', 500, 0),
(10006, 'F. Scott Fitzgerald', 'The Great Gatsby', 'Fiction', 50, 'F. Scott Fitzgerald\'s third book is an iconic piece of literature that takes readers through the glitz, glamour, and dark side of the Jazz Age.\r\n\r\nAs the incredibly wealthy Jay Gatsby chases his longtime love, Daisy Buchanan, readers are given a look inside a series of lavish Long Island parties.', 400, 0),
(10007, 'Andy Weir', 'The Martian', 'Fiction', 30, 'This New York Times bestseller is a science-fiction novel about fictional astronaut Maut Watney, who becomes one of the first to walk on Mars.\r\n\r\nNow in another planet, the character is thrown into dangerous circumstances he must face on his own. You\'ll find yourself flipping the pages as you wonder what Watney\'s fate will be.', 300, 0),
(10008, 'Harper Lee', 'To Kill a Mockingbird', 'Fiction', 60, 'An instant bestseller when it was first published in 1960, \"To Kill a Mockingbird\" is the story of a sleepy Southern town and a crisis that turns it upside down.\r\n\r\nDiscussing racial injustice, the destruction of innocence, issues of class, and gender roles in the American Deep South, the book takes readers through a literary journey back in time.', 600, 0),
(10009, 'Paula Hawkins', 'The Girl on the Train', 'Fiction', 40, '\"The Girl on the Train\" is a gripping thriller about a girl who takes the same train and encounters the same couple every day. One day, she comes across a shocking sight that changes her experience with them forever.\r\n\r\nFor those who liked Gillian Flynn\'s \"Gone Girl,\" this eerie tale is right up your alley.\r\n\r\nClick here to buy »', 200, 0),
(10010, 'Harper Lee', 'Go Set a Watchman', 'Fiction', 70, 'Harper Lee introduces a new novel two decades after her Pulitzer Prize-winning book \"To Kill a Mockingbird.\"\r\n\r\nSet against the backdrop of the civil rights tensions in the South, the novel tells the tale of a 26-year-old girl who returns home from New York City to visit her aging father, only to learn surprising truths about her family and her town.', 100, 0),
(10011, 'John Green', 'Paper Towns', 'Fiction', 10, 'From the author of \"The Fault in Our Stars\" comes this story about Quentin Jacobsen, who has spent a lifetime in love with the adventurous Margo Roth.\r\n\r\nAlways admiring her from afar, Quentin finally gets the chance to get close as she plots a campaign of revenge. Before long, Quentin realizes there\'s more to Margo than appears.', 400, 0),
(10012, 'Ray Bradbury', 'Fahrenheit 451', 'Fantasy', 25, 'A frighteningly prophetic novel, \"Fahrenheit 451\" is set in a dystopian future where there are no books.\r\n\r\nFor the protagonist, Montag, it all seems normal — until the day he gets a glimpse of the past. With a riveting plot and solid characters, the book draws readers into its imagined world.', 500, 0),
(10056, 'Lewis Carroll', 'Alice\'s Adventures in Wonderland', 'Fantasy', 100, 'In 1862 Charles Lutwidge Dodgson, a shy Oxford mathematician with a stammer, created a story about a little girl tumbling down a rabbit hole.', 200, 0),
(10057, 'Jane Austen', 'Pride and Prejudice', 'Romance', 2, 'The book is narrated in free indirect speech following the main character Elizabeth Bennet as she deals with matters of upbringing, marriage, moral rightness and education in her aristocratic society', 100, 0),
(10058, 'Leo Tolstoy', 'Anna Karenina', 'Romance', 30, 'Anna Karenina tells of the doomed love affair between the sensuous and rebellious Anna and the dashing officer, Count Vronsky.', 400, 0),
(10059, 'Jonathan Swift', 'Gulliver\'s Travels', 'Fantasy', 5, 'From the preeminent prose satirist in the English language, a great classic recounting the four remarkable journeys of ship\'s surgeon Lemuel Gulliver. For children it remains an enchanting fantasy.', 300, 0),
(10060, 'Charles Dickens', 'David Copperfield', 'Drama', 5, 'The story of the abandoned waif who learns to survive through challenging encounters with distress and misfortune.', 100, 0),
(10061, 'Harper Lee', 'To Kill a Mockingbird', 'Drama', 2, 'As a Southern Gothic novel and a Bildungsroman, the primary themes of To Kill a Mockingbird involve racial injustice and the destruction of innocence.', 300, 0),
(10062, 'Homer', 'The Odyssey', 'Epic', 5, 'The Odyssey is one of two major ancient Greek epic poems attributed to Homer. It is, in part, a sequel to the Iliad, the other work traditionally ascribed to Homer. ', 300, 0),
(10064, 'Ralph Ellison', 'Invisible Man', 'History', 10, 'The novel addresses many of the social and intellectual issues facing African-Americans in the early twentieth century, including black nationalism, the relationship between black identity and Marxism.', 100, 0),
(10066, 'JRR Tolkien', 'The Lord of The Rings', 'Fantasy', 100, 'The Lord of the Rings is an epic high fantasy novel.The title of the novel refers to the story\'s main antagonist, the Dark Lord Sauron, who had in an earlier age created the One Ring to rule the other Rings of Power as the ultimate weapon in his campaign to conquer and rule all of Middle-earth. ', 200, 0),
(10067, 'Sophocles', 'Oedipus The King', 'Tragedy', 5, 'Oedipus the King is an Athenian tragedy by Sophocles that was first performed c. 429 BC. It was the second of Sophocles\'s three Theban plays to be produced.', 300, 0),
(10070, 'Geoffrey Chaucer', 'The Canterbury Tales', 'History', 5, 'With their astonishing diversity of tone and subject matter, The Canterbury Tales have become one of the touchstones of medieval literature.', 400, 0),
(10071, 'Voltaire', 'Candide', 'Satire', 10, 'Candide, ou l\'Optimisme is a French satire written in 1759 by Voltaire, a philosopher of the Age of Enlightenment. Candide is characterized by its sarcastic tone and its erratic, fantastical tone.', 200, 0),
(10072, 'William Faulkner', 'As I Lay Dying', 'Drama', 3, 'The book is told in stream of consciousness writing style by 15 different narrators in 59 chapters. It is the story of the death of Addie Bundren and her family\'s quest.', 200, 0),
(10073, 'Salman Rushdie', 'Midnight\'s Children', 'Drama', 5, 'Midnight\'s Children is a loose allegory for events in India both before and, primarily, after the independence and partition of India, which took place at midnight on 15 August 1947.', 300, 0),
(10074, 'Victor Hugo', 'Les Miserables', 'Musical', 10, 'Les Misérables is a novel by French author Victor Hugo and is widely considered one of the greatest novels of the 19th century. It follows the lives and interactions of several French characters. ', 300, 0),
(10075, 'EM Forster', 'A Passage to India', 'History', 10, 'A Passage to India is set against the backdrop of the British Raj and the Indian independence movement in the 1920s.', 300, 0),
(10076, 'George Orwell', 'Animal Farm', 'Dystopian', 5, 'Animal Farm is a dystopian novella by George Orwell. Published in England on 17 August 1945, the book reflects events leading up to and during the Stalin era before World War II. ', 200, 0);

-- --------------------------------------------------------

--
-- Table structure for table `borrows`
--

CREATE TABLE `borrows` (
  `m_ssn` int(11) NOT NULL,
  `b_isbn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issue_status`
--

CREATE TABLE `issue_status` (
  `title` varchar(32) NOT NULL,
  `issue_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `m_ssn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_status`
--

INSERT INTO `issue_status` (`title`, `issue_date`, `expiry_date`, `m_ssn`) VALUES
('3 mistakes of my life', '2019-04-21', '2019-05-12', 70003),
('5 Point Someone', '2019-04-21', '2019-05-12', 70003),
('A Long Walk to Water', '2019-04-22', '2019-05-13', 70003),
('A Long Walk to Water', '2019-04-09', '2019-04-30', 70003),
('5 Point Someone', '2019-04-16', '2019-05-07', 70003),
('A Long Walk to Water', '0000-00-00', '2019-05-13', 70003),
('A Long Walk to Water', '2019-04-21', '2019-05-12', 70003);

--
-- Triggers `issue_status`
--
DELIMITER $$
CREATE TRIGGER `BOOK_OVERDUE` BEFORE INSERT ON `issue_status` FOR EACH ROW BEGIN
if ((SELECT expiry_date from return_status where m_ssn = new.m_ssn and expiry_date < CURRENT_DATE) < CURRENT_DATE) THEN
UPDATE issue_status SET m_ssn = 0000 WHERE m_ssn = new.m_ssn;

end if;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `renew_member1` AFTER INSERT ON `issue_status` FOR EACH ROW BEGIN
if ((SELECT expiry_date from membership where m_ssn = new.m_ssn and expiry_date < CURRENT_DATE) < CURRENT_DATE) THEN
UPDATE issue_status SET m_ssn = 0000 WHERE m_ssn = new.m_ssn;

end if;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `ssn` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `contact_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`ssn`, `type`, `name`, `contact_no`) VALUES
(10009, 'student', 'Pratik', 2147483647),
(70001, 'faculty', 'Jason', 1111111111),
(70002, 'student', 'John', 222222222),
(70003, 'staff', 'Sam', 333333333),
(70004, 'student', 'Tim', 444444444),
(70005, 'student', 'Tom', 55555555),
(70006, 'staff', 'Jessica', 666666666),
(70007, 'faculty', 'Shreyas', 777777777),
(70008, 'student', 'Lily', 888888888),
(70009, 'student', 'yash', 99999999),
(70010, 'student', 'riya', 0);

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `member_id` int(11) NOT NULL,
  `expiry_date` date NOT NULL,
  `issue_date` date NOT NULL,
  `m_ssn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`member_id`, `expiry_date`, `issue_date`, `m_ssn`) VALUES
(1, '2023-04-01', '2019-04-01', 70001),
(2, '2023-04-21', '2019-04-21', 70002),
(3, '2019-04-01', '2015-04-01', 70003);

-- --------------------------------------------------------

--
-- Table structure for table `mem_location`
--

CREATE TABLE `mem_location` (
  `m_location` varchar(32) NOT NULL,
  `m_ssn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `p_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` varchar(32) NOT NULL,
  `contact_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `return_status`
--

CREATE TABLE `return_status` (
  `title` varchar(32) NOT NULL,
  `issue_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `m_ssn` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `return_status`
--

INSERT INTO `return_status` (`title`, `issue_date`, `expiry_date`, `m_ssn`, `staff_id`) VALUES
('A Song of Ice and Fire', '2019-04-01', '2019-04-29', 70001, 100),
('5 Point Someone', '2019-04-21', '2019-05-12', 70001, 0),
('The Martian', '2019-03-01', '2019-03-29', 70001, 200),
('A Long Walk to Water', '2019-04-21', '2019-05-12', 70001, 0);

--
-- Triggers `return_status`
--
DELIMITER $$
CREATE TRIGGER `BOOK_OVERDUE1` BEFORE INSERT ON `return_status` FOR EACH ROW BEGIN
if ((SELECT expiry_date from return_status where m_ssn = new.m_ssn and expiry_date < CURRENT_DATE) < CURRENT_DATE) THEN
UPDATE return_status SET m_ssn = 0000 WHERE m_ssn = new.m_ssn;

end if;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `renew_membership` AFTER INSERT ON `return_status` FOR EACH ROW BEGIN
if ((SELECT expiry_date from membership where m_ssn = new.m_ssn and expiry_date < CURRENT_DATE) < CURRENT_DATE) THEN
UPDATE return_status SET m_ssn = 0000 WHERE m_ssn = new.m_ssn;

end if;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `name` varchar(32) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `address` varchar(32) NOT NULL,
  `contact_no` int(11) NOT NULL,
  `staff_role` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`name`, `staff_id`, `address`, `contact_no`, `staff_role`) VALUES
('sam', 100, 'meadow run', 333333333, 'chief librarian'),
('jessica', 200, 'Arbor Oaks', 666666666, 'departmental associate librarian'),
('Cynthia', 300, 'South campus', 1234567890, 'reference librarians'),
('Harry', 400, '404 Border', 1234567809, 'check-out staff'),
('Micheal', 500, 'Centennial Apt', 111122222, 'library assistants');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`isbn`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`ssn`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
