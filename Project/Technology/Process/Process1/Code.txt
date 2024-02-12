1. Xử lý khoảng trống thừa trong comments:
SELECT
	id,
	REGEXP REPLACE(text, r'\s+','') AS text_without_extra_spaces
FROM `articulate-case-139903.stackoverflow.comments`



SELECT
	id,
REGEXP REPLACE(text, r'[^\p{L}\p{N}\p{P}\p{M}\p{S}\p{Z}]', '') AS text_without_non_unicode
FROM `articulate-case-139903.stackoverflow.comments`


+ Lưu vào bảng mới hoặc cập nhật lại bảng cũ:
CREATE TABLE 'articulate-case-139903.stackoverflow.new.comments' AS
SELECT
	1d,
	creation_date,
	post_id,
	user_id.
	user_display_name.
	score.
	REGEXP REPLACE (text, r'[^\p{L}\p{N}\p{P}\p{M}\p{S}\p{Z}]', '') AS text_without_non_unicode
FROM
	`articulate-case-139903 stackoverflow.comments`:

+ Kiểm tra:
SELECT text_without_non_unicode FROM `articulate-case-139903.stackoverflow.hew_comments`
LIMIT 1000

* Ngoài ra, Dataprep cũng hỗ trợ cho việc Process (Hướng dẫn tại link video Youtube)