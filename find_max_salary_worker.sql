SELECT name_worker, salary FROM worker  WHERE salary=( SELECT  MAX(salary) FROM worker)