-- -----------------------------------------------------
-- Table "USERS"
-- -----------------------------------------------------
CREATE TABLE USERS (
    "user_id" SERIAL NOT NULL,
    "user_username" VARCHAR(100) NOT NULL,
    "user_active" BOOLEAN NOT NULL,
    "user_email" TEXT NOT NULL, 
    "user_userpassword" TEXT NOT NULL,
    PRIMARY KEY ("user_id")
    );

-- -----------------------------------------------------
-- Table "TASKS"
-- -----------------------------------------------------
CREATE TABLE TASKS (
    "task_id" SERIAL NOT NULL,
    "task_description" VARCHAR(256) NOT NULL,
    "task_completed" BOOLEAN NOT NULL,
    "task_deleted" BOOLEAN NOT NULL,
    "user_id" INT NOT NULL,
    PRIMARY KEY ("task_id"),
    CONSTRAINT "fk_users_tasks"
        FOREIGN KEY ("user_id")
        REFERENCES USERS("user_id")
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
    );


-- -----------------------------------------------------
-- Table "CATEGORIES"
-- -----------------------------------------------------
CREATE TABLE CATEGORIES(
    "category_id" SERIAL NOT NULL,
    "category_description" VARCHAR(50) NOT NULL,
    "category_color" VARCHAR(7) NOT NULL,
    PRIMARY KEY ("category_id")
    );

-- -----------------------------------------------------
-- Table "USERS_TASKS"
-- -----------------------------------------------------
CREATE TABLE CATEGORIES_TASKS(
    "category_id" INT NOT NULL,
    "task_id" INT NOT NULL,
    CONSTRAINT "fk_CATEGORIES_TASKS"
        FOREIGN KEY ("category_id")
        REFERENCES CATEGORIES ("category_id")
        ON DELETE NO ACTION
        ON UPDATE NO ACTION,
    CONSTRAINT "fk_TASKS_CATEGORIES"
        FOREIGN KEY ("task_id")
        REFERENCES TASKS ("task_id")
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
    );

