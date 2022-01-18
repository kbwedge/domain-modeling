-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;
DROP TABLE IF EXISTS salesperson;
DROP TABLE IF EXISTS contact;
DROP TABLE IF EXISTS activity;
DROP TABLE IF EXISTS company;
DROP TABLE IF EXISTS industry;
DROP TABLE IF EXISTS industry_membership;

-- CREATE TABLES
CREATE TABLE salesperson (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);

CREATE TABLE contact (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  title TEXT,
  email TEXT,
  phone_number TEXT,
  company_id INTEGER
);

CREATE TABLE activity (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  activity_type TEXT,
  time TEXT,
  notes TEXT,
  contact_id INTEGER,
  salesperson_id INTEGER
);

CREATE TABLE company (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

CREATE TABLE industry (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

CREATE TABLE industry_membership (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  company_id INTEGER,
  industry_id INTEGER
);