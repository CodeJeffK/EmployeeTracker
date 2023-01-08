USE employees_db;

INSERT INTO department
    (name)
VALUES
    ('Engineering'),
    ('Finance'),
    ('Legal'),
    ('Sales'),
INSERT INTO role
    (title, salary, department_id)

VALUES
    ('Sales Lead', 100000, 4),
    ('Salesperson', 80000, 4),
    ('Lead Engineer', 150000, 1),
    ('Software Engineer', 120000, 1),
    ('Account Manager', 160000, 2),
    ('Accountant', 125000, 2),
    ('Legal Team Lead', 250000, 3),
    ('Lawyer', 190000, 3);

INSERT INTO employee
    (first_name, last_name, role_id, manager_id)

VALUES
    ('Jeff', 'Kasahara', 1, NULL),
    ('Steph', 'Curry', 2, NULL),
    ('Michael', 'Jordan', 3, 1),
    ('LeBron', 'James', 4, NULL),
    ('Derek', 'Jeter', 5, 4),
    ('Robin', 'Hood', 6, NULL),
    ('Ash', 'Ketchum', 7, NULL),
    ('Bruce', 'Wayne', 8, 7);

SELECT role.id, role.title, role.salary FROM role ORDER BY role.id;

SELECT * FROM employee;

SELECT department.id, department.name FROM department ORDER BY department.id;

  SELECT employee.id, employee.first_name, employee.last_name, role.title, department.name AS department, role.salary, CONCAT(manager.first_name, ' ', manager.last_name) AS manager
  FROM employee
  LEFT JOIN employee manager on manager.id = employee.manager_id
  INNER JOIN role ON (role.id = employee.role_id)
  INNER JOIN department ON (department.id = role.department_id)
  ORDER BY employee.id;
  
SELECT first_name, last_name, role_id FROM employee WHERE employee.id = 4;