CREATE TABLE users
(
  userID integer NOT NULL,
  email varchar(255) NOT NULL,
  name varchar(255) NOT NULL,
  age integer NOT NULL,
  CONSTRAINT pkey_users PRIMARY KEY (userID)
);

CREATE TABLE pictures
(
  pictureID integer NOT NULL,
  title varchar(500),
  filename varchar(50),
  timestamp timestamp NOT NULL,
  userID integer NOT NULL,
  location varchar(255) NOT NULL,
  CONSTRAINT pkey_pictures PRIMARY KEY (pictureID),
  CONSTRAINT fkey_users_userID FOREIGN KEY (userID)  
    REFERENCES users (userID)
);

CREATE TABLE comments
(
  commentID integer NOT NULL,
  pictureID integer NOT NULL,
  userID integer NOT NULL,
  timestamp timestamp NOT NULL,
  text varchar(5000) NOT NULL,
  CONSTRAINT pkey_comments PRIMARY KEY (commentID),
  CONSTRAINT fkey_pictures_pictureID FOREIGN KEY (pictureID) 
    REFERENCES pictures(pictureID),
  CONSTRAINT fkey_users_userID FOREIGN KEY (userID) 
    REFERENCES users(userID)
);

INSERT INTO users (userID, email, name, age) VALUES (3, 'test-email@dbis.rwth-aachen.de', 'Test User', 21);
INSERT INTO users (userID, email, name, age) VALUES (2314, 'not-a-valid-email@gmail.com', 'Max Mustermann', 43);
INSERT INTO users (userID, email, name, age) VALUES (6238, 'maxima@musterfrau.de', 'Maxima Musterfrau', 19);

INSERT INTO pictures(pictureID, title, filename, timestamp, userID, location) VALUES (5, 'Mona Lisa', '_SAM52.jpg', 'May, 18 2017 07:33:40', 3, 'Paris');
INSERT INTO pictures(pictureID, title, filename, timestamp, userID, location) VALUES (6, 'Selfie', 'DSC142.jpg', 'May, 18 2017 12:13:40', 2314, 'Aachen');
INSERT INTO pictures(pictureID, title, filename, timestamp, userID, location) VALUES (123, 'Siegessauele', 'IMG1645.jpg', 'May, 10 2017 12:34:41', 6238, 'Berlin');

INSERT INTO comments (commentID, pictureID, userID, timestamp, text) VALUES (2, 6, 3, 'May, 18 2017 07:33:40', 'Test Kommentar');
