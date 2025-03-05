UPDATE salary SET sal =
CASE sal
    WHEN 'm' THEN 'f'
    ELSE 'm'
END;
