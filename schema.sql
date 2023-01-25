CREATE TABLE authors (
    id CHAR(36) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
);

CREATE TABLE items (
    id CHAR(36) PRIMARY KEY,
    title VARCHAR(255),
    author_id CHAR(36),
    label_id CHAR(36),
    publish_date DATE,
    archived BOOLEAN,
    FOREIGN KEY (author_id) REFERENCES authors(id),
    FOREIGN KEY (label_id) REFERENCES labels(id)
);

CREATE TABLE books (
    id CHAR(36) PRIMARY KEY,
    publisher VARCHAR(255),
    cover_state VARCHAR(255),
    FOREIGN KEY (id) REFERENCES items(id)
);

CREATE TABLE games (
    id CHAR(36) PRIMARY KEY,
    last_played_at DATE,
    multiplayer BOOLEAN,
    FOREIGN KEY (id) REFERENCES items(id)
);

CREATE TABLE music_albums (
    id CHAR(36) PRIMARY KEY,
    on_spotify BOOLEAN,
    FOREIGN KEY (id) REFERENCES items(id)
);

CREATE TABLE labels (
    id CHAR(36) PRIMARY KEY,
    title VARCHAR(255),
    color VARCHAR(255)
);

CREATE TABLE genres (
    id CHAR(36) PRIMARY KEY,
    name VARCHAR(255)
);

ALTER TABLE items
ADD FOREIGN KEY (genre_id) REFERENCES genres (id);
