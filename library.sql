CREATE TABLE author (
    id_author NUMBER NOT NULL,
    name      VARCHAR2(128) NOT NULL,
    surname   VARCHAR2(128) NOT NULL
);

ALTER TABLE author ADD CONSTRAINT author_pk PRIMARY KEY ( id_author );

CREATE TABLE books (
    id_book          NUMBER NOT NULL,
    title            VARCHAR2(4000) NOT NULL,
    pages            NUMBER,
    author_id_author NUMBER NOT NULL,
    genre_id_genre   NUMBER NOT NULL
);

ALTER TABLE books ADD CONSTRAINT books_pk PRIMARY KEY ( id_book );

CREATE TABLE borrowed_books (
    id_borrowed_book NUMBER NOT NULL,
    date_of_borrow   DATE NOT NULL,
    date_to_return   DATE NOT NULL,
    books_id_book    NUMBER NOT NULL,
    users_id_user    NUMBER NOT NULL
);

ALTER TABLE borrowed_books ADD CONSTRAINT borrowed_books_pk PRIMARY KEY ( id_borrowed_book );

CREATE TABLE genre (
    id_genre  NUMBER NOT NULL,
    "Genre-1" VARCHAR2(128) NOT NULL,
    "Genre-2" VARCHAR2(128)
);

ALTER TABLE genre ADD CONSTRAINT genre_pk PRIMARY KEY ( id_genre );

CREATE TABLE id_user_type (
    id_type      NUMBER NOT NULL,
    type_of_user VARCHAR2(32) NOT NULL,
    started      DATE NOT NULL,
    ended        DATE NOT NULL
);

ALTER TABLE id_user_type ADD CONSTRAINT id_user_type_pk PRIMARY KEY ( id_type );

CREATE TABLE users (
    id_user              NUMBER NOT NULL,
    login                VARCHAR2(32) NOT NULL,
    password             VARCHAR2(32) NOT NULL,
    id_user_type_id_type NUMBER NOT NULL
);

ALTER TABLE users ADD CONSTRAINT users_pk PRIMARY KEY ( id_user );

ALTER TABLE books
    ADD CONSTRAINT books_author_fk FOREIGN KEY ( author_id_author )
        REFERENCES author ( id_author );

ALTER TABLE books
    ADD CONSTRAINT books_genre_fk FOREIGN KEY ( genre_id_genre )
        REFERENCES genre ( id_genre );

ALTER TABLE borrowed_books
    ADD CONSTRAINT borrowed_books_books_fk FOREIGN KEY ( books_id_book )
        REFERENCES books ( id_book );

ALTER TABLE borrowed_books
    ADD CONSTRAINT borrowed_books_users_fk FOREIGN KEY ( users_id_user )
        REFERENCES users ( id_user );

ALTER TABLE users
    ADD CONSTRAINT users_id_user_type_fk FOREIGN KEY ( id_user_type_id_type )
        REFERENCES id_user_type ( id_type );
