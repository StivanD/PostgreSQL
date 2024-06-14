CREATE OR REPLACE FUNCTION fn_creator_with_board_games (
	creator_first_name VARCHAR(30)
) RETURNS INT
AS
$$
BEGIN
	RETURN (
		SELECT
			COUNT(*)
		FROM
			creators_board_games
		WHERE
			creator_id = (SELECT id FROM creators WHERE first_name = creator_first_name)
	);
END;
$$
LANGUAGE plpgsql;
