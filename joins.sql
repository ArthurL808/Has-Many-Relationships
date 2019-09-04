SELECT *
FROM users;

SELECT *
FROM posts
WHERE user_id = 100;

SELECT posts.*, users.first_name, users.last_name
FROM posts INNER JOIN users ON users.id = 200;

SELECT posts.*, users.username
FROM posts INNER JOIN users ON user_id = users.id
WHERE users.first_name = 'Norene' AND users.last_name = 'Schmitt';

SELECT username
FROM users
WHERE created_at > DATE
'2015-01-01';

SELECT title, content, users.username
FROM posts INNER JOIN users ON user_id = users.id
WHERE posts.created_at < DATE
'2015-01-01';

SELECT comments.*, posts.title AS post_title
FROM comments INNER JOIN posts ON post_id = posts.id;

SELECT comments.*, posts.title AS post_title, posts.url AS post_url, comments.body AS comment_body
FROM comments INNER JOIN posts ON post_id = posts.id
WHERE posts.created_at < DATE
'2015-01-01';

SELECT comments.*, posts.title AS post_title, posts.url AS post_url, comments.body AS comment_body
FROM comments INNER JOIN posts ON post_id = posts.id
WHERE posts.created_at > DATE
'2015-01-01';


SELECT comments.*, posts.title AS post_title, posts.url AS post_url, comments.body AS comment_body
FROM comments INNER JOIN posts ON post_id = posts.id
WHERE comments.body
~ 'USB';

SELECT title AS post_title, users.first_name, users.last_name, comments.body AS comment_body
FROM comments INNER JOIN posts ON post_id = posts.id INNER JOIN users ON posts.user_id = users.id
WHERE comments.body ~ 'matrix';

SELECT first_name, last_name, comments.body AS comment_body
FROM users INNER JOIN comments ON comments.user_id = users.id INNER JOIN posts ON comments.post_id = posts.id
WHERE comments.body ~ 'SSL' AND posts.content ~ 'dolorum';

SELECT users.first_name AS post_author_first_name, users.last_name AS post_author_last_name, posts.title AS post_title, users.username AS comment_author_username, body AS comment_body
FROM comments INNER JOIN posts on post_id = posts.id INNER JOIN users ON posts.user_id = users.id
WHERE body ~ 'SSL' OR body ~ 'firewall' AND posts.content ~ 'nemo';