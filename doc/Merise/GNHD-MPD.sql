CREATE TABLE Users (
   UUID_User UUID PRIMARY KEY,
   first_name_user VARCHAR(50) NOT NULL,
   last_name_user VARCHAR(50) NOT NULL,
   image_profil VARCHAR(100),
   mail_user VARCHAR(255) NOT NULL,
   password_user VARCHAR(250) NOT NULL,
   roles_user TEXT NOT NULL
);

CREATE TABLE Publication(
   UUID_publication UUID PRIMARY KEY,
   creation_date DATETIME NOT NULL,
   title_publication VARCHAR(100) NOT NULL,
   description_publication TEXT,
   UUID_User UUID NOT NULL,
   PRIMARY KEY(id_publication),
   FOREIGN KEY(UUID_User) REFERENCES Users(UUID_User)
);

CREATE TABLE ResidentGroup(
   UUID_group UUID PRIMARY KEY,
   name_group VARCHAR(50) NOT NULL,
   image_group VARCHAR(255),
   id_address SERIAL NOT NULL,
   UUID_User UUID NOT NULL,
   PRIMARY KEY(UUID_group),
   FOREIGN KEY(id_address) REFERENCES Address(id_address),
   FOREIGN KEY(UUID_User) REFERENCES Users(UUID_User)
);

CREATE TABLE Message (
   UUID_message UUID PRIMARY KEY,
   message TEXT NOT NULL
);

CREATE TABLE Address(
   id_address SERIAL PRIMARY KEY,
   number_street VARCHAR(50) NOT NULL,
   name_street VARCHAR(50) NOT NULL,
   postal_code VARCHAR(15) NOT NULL,
   city VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_address)
);

CREATE TABLE Comment(
   id_comment SERIAL PRIMARY KEY,
   comment TEXT NOT NULL,
   UUID_User UUID NOT NULL,
   PRIMARY KEY(id_comment),
   FOREIGN KEY(UUID_User) REFERENCES Users(UUID_User)
);

CREATE TABLE Category(
   id_category SERIAL PRIMARY KEY,
   category VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_category)
);

CREATE TABLE DateEvent(
   id_date_event SERIAL,
   start_date DATETIME NOT NULL,
   end_date DATETIME,
   id_publication INT NOT NULL,
   PRIMARY KEY(id_date_event),
   UNIQUE(id_publication),
   FOREIGN KEY(id_publication) REFERENCES Publication(id_publication)
);

CREATE TABLE Price(
   id_price SERIAL,
   price DECIMAL(5,2) NOT NULL,
   id_publication INT NOT NULL,
   PRIMARY KEY(id_price),
   UNIQUE(id_publication),
   FOREIGN KEY(id_publication) REFERENCES Publication(id_publication)
);

CREATE TABLE SubCategory(
   id_sub_category SERIAL,
   sub_category VARCHAR(50) NOT NULL,
   id_category INT NOT NULL,
   PRIMARY KEY(id_sub_category),
   FOREIGN KEY(id_category) REFERENCES Category(id_category)
);

CREATE TABLE Illustration(
   id_illustration SERIAL,
   illustration VARCHAR(255) NOT NULL,
   id_publication SERIAL,
   id_comment SERIAL,
   PRIMARY KEY(id_illustration),
   UNIQUE(id_comment),
   FOREIGN KEY(id_publication) REFERENCES Publication(id_publication),
   FOREIGN KEY(id_comment) REFERENCES Comment(id_comment)
);

CREATE TABLE Recieve(
   UUID_User UUID,
   UUID_message UUID,
   PRIMARY KEY(UUID_User, UUID_message),
   FOREIGN KEY(UUID_User) REFERENCES Users(UUID_User),
   FOREIGN KEY(UUID_message) REFERENCES Message(UUID_message)
);

CREATE TABLE Send(
   UUID_User UUID,
   UUID_message UUID,
   PRIMARY KEY(UUID_User, UUID_message),
   FOREIGN KEY(UUID_User) REFERENCES Users(UUID_User),
   FOREIGN KEY(UUID_message) REFERENCES Message(UUID_message)
);

CREATE TABLE Belong(
   UUID_User VARCHAR(50),
   UUID_group VARCHAR(50),
   PRIMARY KEY(UUID_User, UUID_group),
   FOREIGN KEY(UUID_User) REFERENCES Users(UUID_User),
   FOREIGN KEY(UUID_group) REFERENCES ResidentGroup(UUID_group)
);

CREATE TABLE Link(
   id_publication SERIAL,
   id_category SERIAL,
   PRIMARY KEY(id_publication, id_category),
   FOREIGN KEY(id_publication) REFERENCES Publication(id_publication),
   FOREIGN KEY(id_category) REFERENCES Category(id_category)
);

CREATE TABLE post_comment_publication(
   id_comment SERIAL,
   id_publication SERIAL,
   PRIMARY KEY(id_comment, id_publication),
   FOREIGN KEY(id_comment) REFERENCES Comment(id_comment),
   FOREIGN KEY(id_publication) REFERENCES Publication(id_publication)
);
