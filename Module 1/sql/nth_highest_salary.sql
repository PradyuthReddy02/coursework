CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  DECLARE result INT;
  DECLARE offset_val INT;
  
  SET offset_val = N - 1;
  
  SET result = (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET offset_val
  );
  
  RETURN IFNULL(result, NULL);
END;