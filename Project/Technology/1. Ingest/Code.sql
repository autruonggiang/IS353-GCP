1 - Tạo bảng badges:

CREATE TABLE `articulate-case-139903.stackoverflow.badges`
AS SELECT *
FROM `bigquery-public-data.stackoverflow.badges`

2 - Tạo bảng comments:

CREATE TABLE `articulate-case-139903.stackoverflow.comments`
AS SELECT *
FROM `bigquery-public-data.stackoverflow.comments`

3 - Tạo bảng post_history:

CREATE TABLE `articulate-case-139903.stackoverflow.post_history`
AS SELECT *
FROM `bigquery-public-data.stackoverflow.post_history`

4 - Tạo bảng post_links:

CREATE TABLE `articulate-case-139903.stackoverflow.post_links`
AS SELECT *
FROM `bigquery-public-data.stackoverflow.post_links`

5 - Tạo bảng posts_answers:

CREATE TABLE `articulate-case-139903.stackoverflow.posts_answers`
AS SELECT *
FROM `bigquery-public-data.stackoverflow.posts_answers`

6 - Tạo bảng posts_moderator_nomination:

CREATE TABLE `articulate-case-139903.stackoverflow.posts_moderator_nomination`
AS SELECT *
FROM `bigquery-public-data.stackoverflow.posts_moderator_nomination`

7 - Tạo bảng posts_orphaned_tag_wiki:

CREATE TABLE `articulate-case-139903.stackoverflow.posts_orphaned_tag_wiki`
AS SELECT *
FROM `bigquery-public-data.stackoverflow.posts_orphaned_tag_wiki`

8 - Tạo bảng posts_privilege_wiki:

CREATE TABLE `articulate-case-139903.stackoverflow.posts_privilege_wiki`
AS SELECT *
FROM `bigquery-public-data.stackoverflow.posts_privilege_wiki`

9 - Tạo bảng posts_questions:

CREATE TABLE `articulate-case-139903.stackoverflow.posts_questions`
AS SELECT *
FROM `bigquery-public-data.stackoverflow.posts_questions`

10 - Tạo bảng posts_tag_wiki:

CREATE TABLE `articulate-case-139903.stackoverflow.posts_tag_wiki`
AS SELECT *
FROM `bigquery-public-data.stackoverflow.posts_tag_wiki`


11 - Tạo bảng posts_tag_wiki_excerpt:

CREATE TABLE `articulate-case-139903.stackoverflow.posts_tag_wiki_excerpt`
AS SELECT *
FROM `bigquery-public-data.stackoverflow.posts_tag_wiki_excerpt`

12 - Tạo bảng posts_wiki_placeholder:

CREATE TABLE `articulate-case-139903.stackoverflow.posts_wiki_placeholder`
AS SELECT *
FROM `bigquery-public-data.stackoverflow.posts_wiki_placeholder`

13 - Tạo bảng stackoverflow_posts:

CREATE TABLE `articulate-case-139903.stackoverflow.stackoverflow_posts`
AS SELECT *
FROM `bigquery-public-data.stackoverflow.stackoverflow_posts`

14 - Tạo bảng tags:

CREATE TABLE `articulate-case-139903.stackoverflow.tags`
AS SELECT *
FROM `bigquery-public-data.stackoverflow.tags`

15 - Tạo bảng users:

CREATE TABLE `articulate-case-139903.stackoverflow.users`
AS SELECT *
FROM `bigquery-public-data.stackoverflow.users`

14 - Tạo bảng votes:

CREATE TABLE `articulate-case-139903.stackoverflow.votes`
AS SELECT *
FROM `bigquery-public-data.stackoverflow.votes`




Kiểm tra trùng khớp:
VD:
- Bảng có sẵn:
SELECT *
FROM `bigquery-public-data.stackoverflow.votes where id=6874702

- Bảng tự tạo:
SELECT *
FROM `articulate-case-139903.stackoverflow.votes where id=6874702