1.Вывести список сотрудников, получающих максимальную заработную плату в своем отделе
	SELECT name FROM employee AS emps
	WHERE emps.salary = (SELECT MAX(salary) FROM eployee AS max
	WHERE max.department_id = emps.department_id);
  
2.Вывести список ID отделов, количество сотрудников в которых не превышает 3 человек
	SELECT department_id FROM employee
	GROUP BY department_id
	HAVING COUNT(*) <= 3; 
 
4.Добавить в БД новый отдел
	INSERT INTO department 
	VALUES (7, NEW DEPARTMENT);

5.Добавить в новый отдел троих новых сотрудников и одного руководителя (с учетом заполнения всех полей)
	INSERT INTO employee
	(ID, DEPARTMENT_ID, NAME, CHIEF_ID, SALARY)
	VALUES (10, 7, "Иванов А.С.", NULL, 999);
	
	INSERT INTO employee
	(ID, DEPARTMENT_ID, NAME, CHIEF_ID, SALARY)
	VALUES (11, 7, "Смирнов Б.Ю.", 10, 666);
	
	INSERT INTO employee
	(ID, DEPARTMENT_ID, NAME, CHIEF_ID, SALARY)
	VALUES (12, 7, "Петров Е.К.", 10, 666);
	
	INSERT INTO employee
	(ID, DEPARTMENT_ID, NAME, CHIEF_ID, SALARY)
	VALUES (13, 7, "Путин В.В.", 10, 666);  
  
6.Удалить отдел и всех сотрудников, привязанных к этому отделу
	DELETE FROM employee
	WHERE department_id = 7;
    
	DELETE FROM department
	WHERE department_id = 7;
7.Обновить ID любого отдела так, чтобы “не потерять” работающих в нем сотрудников
	UPDATE employee 
	SET department_id = 7
	WHERE department_id = 1;	