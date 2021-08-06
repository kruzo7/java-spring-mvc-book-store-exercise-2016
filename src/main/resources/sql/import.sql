-- Postgresql DataBase data init script

-- AUTHOR INIT
INSERT INTO AUTHOR (ID, FIRST_NAME, LAST_NAME) VALUES(1, 'Lisa', 'Langdon');
INSERT INTO AUTHOR (ID, FIRST_NAME, LAST_NAME) VALUES(2, 'Hanna', 'Tribe');
INSERT INTO AUTHOR (ID, FIRST_NAME, LAST_NAME) VALUES(3, 'Matt', 'Gray');

-- BORROWER INIT
INSERT INTO BORROWER (ID, FIRST_NAME, LAST_NAME) VALUES(1, 'Brian', 'Edmunds'); 
INSERT INTO BORROWER (ID, FIRST_NAME, LAST_NAME) VALUES(2, 'Julian', 'Terry');
INSERT INTO BORROWER (ID, FIRST_NAME, LAST_NAME) VALUES(3, 'Dylan', 'Gray');

-- BOOK, NEWSPAPER INIT
INSERT INTO LIBRARY_ITEM (ID, DISCRIMINATOR_TYPE, ISBN, TITLE, AUTHOR_ID) VALUES(1, 'BOOK', '978-0307473431', 'Negroland: A Memoir', 1);
INSERT INTO BOOK (ID, COVER_TYPE, NUMBER_OF_PAGES, PUBLISH_DATE) VALUES(1, 'HARD', 466, '1985-09-11');
INSERT INTO BOOK_CATEGORY (BOOK_ID, CATEGORY) VALUES(1, 'PHOTOGRAPHY');
INSERT INTO BOOK_CATEGORY (BOOK_ID, CATEGORY) VALUES(1, 'BUSINESS');

INSERT INTO LIBRARY_ITEM (ID, DISCRIMINATOR_TYPE, ISBN, TITLE, AUTHOR_ID) VALUES(2, 'BOOK', '978-1594486005', 'A Brief History of Seven Killings: A Novel', 2);
INSERT INTO BOOK (ID, COVER_TYPE, NUMBER_OF_PAGES, PUBLISH_DATE) VALUES(2, 'SOFT', 255, '1990-08-20');
INSERT INTO BOOK_CATEGORY (BOOK_ID, CATEGORY) VALUES(2, 'HISTORY');
INSERT INTO BOOK_CATEGORY (BOOK_ID, CATEGORY) VALUES(2, 'HUMOR');

INSERT INTO NEWSPAPER_ATTACHMENT (ID, TYPE, NAME) VALUES(1, 'DVD', 'Last Cool Concert');
INSERT INTO LIBRARY_ITEM (ID, DISCRIMINATOR_TYPE, ISBN, TITLE, AUTHOR_ID) VALUES(3, 'NEWSPAPER', '978-0-9795261-0-7', 'Rolling Stone Magazine February 11', 3);
INSERT INTO NEWSPAPER (ID, CONTROLLED_CIRCULATION, ATTACHMENT_ID) VALUES(3, 110000, 1);