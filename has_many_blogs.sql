DROP TABLE IF EXISTS users;
CREATE TABLE users
(
    id SERIAL PRIMARY KEY NOT NULL,
    username VARCHAR(90) NOT NULL,
    first_name VARCHAR(90) NULL,
    last_name VARCHAR(90) NULL,
    created_at TIMESTAMPTZ
    now
    () NOT NULL,
updated_at TIMESTAMPTZ now
    () NOT NULL,
);

    DROP TABLE IF EXISTS posts;
    CREATE TABLE posts
    (
        id SERIAL PRIMARY KEY NOT NULL,
        title VARCHAR(180) NULL,
        url VARCHAR(510) NULL,
        content TEXT NULL,
        created_at TIMESTAMPTZ
        now
        () NOT NULL,
updated_at TIMESTAMPTZ now
        () NOT NULL,
user_id INTEGER REFERENCES users);

        DROP TABLE IF EXISTS comments;
        CREATE TABLE comments
        (
            id SERIAL PRIMARY KEY NOT NULL,
            body VARCHAR(510) NULL,
            created_at TIMESTAMPTZ
            now
            () NOT NULL,
updated_at TIMESTAMPTZ now
            () NOT NULL,
post_id INTEGER REFERENCES posts,
user_id INTEGER REFERENCES users);