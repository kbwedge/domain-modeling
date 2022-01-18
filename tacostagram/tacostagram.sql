
CREATE TABLE post (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  file_name TEXT,
  user_id INTEGER,
  time TEXT,
  caption TEXT
);

CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_name TEXT,
    first_name TEXT,
    last_name TEXT,
    location TEXT
);

CREATE TABLE comment (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    body TEXT,
    post_id INTEGER,
    user_id INTEGER
);

CREATE TABLE like (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    post_id INTEGER,
    user_id INTEGER
);

CREATE TABLE follow_relationship (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    follower_id INTEGER,
    followee_id INTEGER
);

