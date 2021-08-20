CREATE TABLE series (
    id INTEGER PRIMARY KEY,
    title text,
    author_id integer,
    subgenre_id integer
);

CREATE TABLE subgenres(
    id INTEGER PRIMARY KEY,
    name text
);

CREATE TABLE authors (
    id INTEGER PRIMARY KEY,
    name text
);

CREATE TABLE books (
    id INTEGER PRIMARY KEY,
    title text,
    year integer,
    series_id integer
);

CREATE TABLE characters (
    id INTEGER PRIMARY KEY,
    name text,
    motto text,
    species text,
    author_id integer
);

CREATE TABLE character_books (
    id INTEGER PRIMARY KEY,
    book_id integer,
    character_id integer
);