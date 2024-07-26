CREATE TABLE Users(
   UUID_User VARCHAR(50),
   first_name_user VARCHAR(50) NOT NULL,
   last_name_user VARCHAR(50) NOT NULL,
   image_profil VARCHAR(100),
   mail_user VARCHAR(255) NOT NULL,
   password_user VARCHAR(250) NOT NULL,
   PRIMARY KEY(UUID_User)
);

CREATE TABLE Message(
   UUID_message INT,
   message TEXT NOT NULL,
   PRIMARY KEY(UUID_message)
);

CREATE TABLE Administrator(
   UUID_Administrator VARCHAR(50),
   UUID_User VARCHAR(50) NOT NULL,
   PRIMARY KEY(UUID_Administrator),
   UNIQUE(UUID_User),
   FOREIGN KEY(UUID_User) REFERENCES Users(UUID_User)
);

CREATE TABLE Address(
   id_address INT,
   number_street VARCHAR(50) NOT NULL,
   name_street VARCHAR(50) NOT NULL,
   postal_code VARCHAR(15) NOT NULL,
   city VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_address)
);

CREATE TABLE ResidentGroup(
   UUID_group VARCHAR(50),
   name_group VARCHAR(50) NOT NULL,
   image_group VARCHAR(255),
   id_address INT NOT NULL,
   UUID_User VARCHAR(50) NOT NULL,
   PRIMARY KEY(UUID_group),
   FOREIGN KEY(id_address) REFERENCES Address(id_address),
   FOREIGN KEY(UUID_User) REFERENCES Users(UUID_User)
);

CREATE TABLE Comment(
   id_comment INT,
   comment TEXT NOT NULL,
   UUID_User VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_comment),
   FOREIGN KEY(UUID_User) REFERENCES Users(UUID_User)
);

CREATE TABLE Publication(
   id_publication INT,
   creation_date DATETIME NOT NULL,
   title_publication VARCHAR(100) NOT NULL,
   description_publication TEXT,
   UUID_User VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_publication),
   FOREIGN KEY(UUID_User) REFERENCES Users(UUID_User)
);

CREATE TABLE Category(
   id_category INT,
   category VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_category)
);

CREATE TABLE DateEvent(
   id_date_event INT,
   start_date DATETIME NOT NULL,
   end_date DATETIME,
   id_publication INT NOT NULL,
   PRIMARY KEY(id_date_event),
   UNIQUE(id_publication),
   FOREIGN KEY(id_publication) REFERENCES Publication(id_publication)
);

CREATE TABLE Price(
   id_price INT,
   price DECIMAL(5,2) NOT NULL,
   id_publication INT NOT NULL,
   PRIMARY KEY(id_price),
   UNIQUE(id_publication),
   FOREIGN KEY(id_publication) REFERENCES Publication(id_publication)
);

CREATE TABLE SubCategory(
   id_sub_category INT,
   sub_category VARCHAR(50) NOT NULL,
   id_category INT NOT NULL,
   PRIMARY KEY(id_sub_category),
   FOREIGN KEY(id_category) REFERENCES Category(id_category)
);

CREATE TABLE Illustration(
   id_illustration INT,
   illustration VARCHAR(255) NOT NULL,
   id_publication INT,
   id_comment INT,
   PRIMARY KEY(id_illustration),
   UNIQUE(id_comment),
   FOREIGN KEY(id_publication) REFERENCES Publication(id_publication),
   FOREIGN KEY(id_comment) REFERENCES Comment(id_comment)
);

CREATE TABLE Recieve(
   UUID_User VARCHAR(50),
   UUID_message INT,
   PRIMARY KEY(UUID_User, UUID_message),
   FOREIGN KEY(UUID_User) REFERENCES Users(UUID_User),
   FOREIGN KEY(UUID_message) REFERENCES Message(UUID_message)
);

CREATE TABLE Send(
   UUID_User VARCHAR(50),
   UUID_message INT,
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
   id_publication INT,
   id_category INT,
   PRIMARY KEY(id_publication, id_category),
   FOREIGN KEY(id_publication) REFERENCES Publication(id_publication),
   FOREIGN KEY(id_category) REFERENCES Category(id_category)
);

CREATE TABLE post_comment_publication(
   id_comment INT,
   id_publication INT,
   PRIMARY KEY(id_comment, id_publication),
   FOREIGN KEY(id_comment) REFERENCES Comment(id_comment),
   FOREIGN KEY(id_publication) REFERENCES Publication(id_publication)
);