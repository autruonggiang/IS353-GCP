CREATE TABLE articulate-case-139903.stackoverflow.enriched_users AS
SELECT
  u.*,
  COUNT(q.id) AS total_questions
FROM
  articulate-case-139903.stackoverflow.users AS u
LEFT JOIN
  articulate-case-139903.stackoverflow.posts_questions AS q
ON
  u.id = q.owner_user_id
GROUP BY
  u.id, u.display_name, u.about_me, u.age, u.creation_date,
  u.last_access_date, u.location, u.reputation, u.up_votes,
  u.down_votes, u.views, u.profile_image_url, u.website_url;

CREATE TABLE articulate-case-139903.stackoverflow.new_comments AS
SELECT
  id,
  creation_date,
  post_id,
  user_id,
  user_display_name,
  score,
  REGEXP_REPLACE(text, r'[^\p{L}\p{N}\p{P}\p{M}\p{S}\p{Z}]', '') AS text_without_non_unicode
FROM
  articulate-case-139903.stackoverflow.comments;

SELECT
  id,
  REGEXP_REPLACE(text, r'\s+', ' ') AS text_without_extra_spaces
FROM articulate-case-139903.stackoverflow.comments

CREATE TABLE articulate-case-139903.stackoverflow.enriched_users AS
SELECT
  u.*,
  COUNT(q.id) AS total_questions
FROM
  articulate-case-139903.stackoverflow.users AS u
LEFT JOIN
  articulate-case-139903.stackoverflow.posts_questions AS q
ON
  u.id = q.owner_user_id
GROUP BY
  u.id, u.display_name, u.about_me, u.age, u.creation_date,
  u.last_access_date, u.location, u.reputation, u.up_votes,
  u.down_votes, u.views, u.profile_image_url, u.website_url;