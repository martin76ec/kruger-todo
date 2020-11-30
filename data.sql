-- -----------------------------------------------------
-- Table "USER INSERTION"
-- -----------------------------------------------------
INSERT INTO USERS VALUES (1, 'Carlos Zambrano', 
                            true, 
                            'zcarlitos@gmail.com', 
                            crypt('OAsiWfPjlK', gen_salt('bf')));
INSERT INTO USERS VALUES (2, 'Curtis Alvarez', 
                            true, 
                            'wengutpok@letawwiw.nf', 
                            crypt('DqrFQFzqyV', gen_salt('bf')));
INSERT INTO USERS VALUES (3, 'Roxie Cook', 
                            true, 
                            'wari@teszic.st', 
                            crypt('4o0GJBu3Z9', gen_salt('bf')));

-- -----------------------------------------------------
-- Table "TASK INSERTIONS"
-- -----------------------------------------------------
INSERT INTO TASKS VALUES (1, 'Buy Bread', false, false, 1);
INSERT INTO TASKS VALUES (2, 'Wash Dishes', false, false, 1);
INSERT INTO TASKS VALUES (3, 'Clean The Bathroom', false, false, 2);
INSERT INTO TASKS VALUES (4, 'Delete Useless Files', false, false, 2);
INSERT INTO TASKS VALUES (5, 'Do The Homework', false, false, 3);
INSERT INTO TASKS VALUES (6, 'Play Overwatch', false, false, 3);

-- -----------------------------------------------------
-- Table "CATEGORIES INSERTIONS"
-- -----------------------------------------------------

INSERT INTO CATEGORIES VALUES (1, 'Cleaning', '#AE8AD2');
INSERT INTO CATEGORIES VALUES (2, 'Orgnizing', '#33249B');
INSERT INTO CATEGORIES VALUES (3, 'Studying', '#6949BD');
INSERT INTO CATEGORIES VALUES (4, 'Recreating', '#332C19');
INSERT INTO CATEGORIES VALUES (5, 'Difficult', '#0EB25C');

-- -----------------------------------------------------
-- Table "TABLE M2M INSERTIONS"
-- -----------------------------------------------------
INSERT INTO CATEGORIES_TASKS VALUES (1, 4);
INSERT INTO CATEGORIES_TASKS VALUES (1, 2);
INSERT INTO CATEGORIES_TASKS VALUES (2, 1);
INSERT INTO CATEGORIES_TASKS VALUES (2, 2);
INSERT INTO CATEGORIES_TASKS VALUES (3, 1);
INSERT INTO CATEGORIES_TASKS VALUES (6, 4);
INSERT INTO CATEGORIES_TASKS VALUES (5, 3);
INSERT INTO CATEGORIES_TASKS VALUES (5, 5);

