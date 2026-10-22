
# Database Design and Implementation

## About This Repository

This repository contains my practical activities and exercises completed during the **COM4007 – Database Design and Implementation** module as part of my Computing degree.

The purpose of this repository is to document my learning progress, develop my database skills, and demonstrate my understanding of database design and SQL.

I will continue updating this repository as I complete new activities throughout the module.

## Learning Objectives

During this module, I am developing my knowledge and practical skills in:

- Database Management Systems (DBMS)
- Relational databases
- Entity Relationship Diagrams (ERDs)
- Primary Keys and Foreign Keys
- Database relationships and cardinality
- Database normalisation
- SQL queries and database operations
- Data integrity and constraints
- CRUD operations (Create, Read, Update, Delete)

## Technologies and Tools

| Technology | Purpose |
|------------|---------|
| SQL | Writing database queries |
| SQLite | Creating and managing databases |
| DBeaver Community | Database management and SQL execution |
| Visual Studio Code | Editing and organising files |
| Git | Version control |
| GitHub | Repository hosting and project documentation |

## Repository Contents

The repository currently includes the following files:

```text
Database_Designer_and_Implementation/
├── school.db
├── gym.db
├── school_assignment.sql
├── .gitignore
├── .gitattributes
└── README.md
```

### School Database

**File:** `school.db`

A relational database created to practise managing information about students, lecturers, courses and enrolments.

The database includes four main tables:

- Student
- Lecturer
- Course
- Enrolment

### Gym Database

**File:** `gym.db`

A practical database used to explore relationships between gym members, trainers, classes and enrolments.

### SQL Assignment

**File:** `school_assignment.sql`

This file contains SQL exercises covering:

- INNER JOIN and LEFT JOIN
- Filtering with IN, BETWEEN and LIKE
- Aggregate functions: COUNT and AVG
- GROUP BY and HAVING
- Safe UPDATE and DELETE operations
- SELECT previews before modifying data
- CRUD operations

## SQL Examples

### INNER JOIN

The following query retrieves student names, course names and grades.

```sql
SELECT Student.StudentName,
       Course.CourseName,
       Enrolment.Grade
FROM Student
INNER JOIN Enrolment
    ON Student.StudentID = Enrolment.StudentID
INNER JOIN Course
    ON Enrolment.CourseID = Course.CourseID;
```

### GROUP BY and HAVING

This query identifies courses with more than one enrolled student.

```sql
SELECT CourseID,
       COUNT(StudentID) AS TotalStudents
FROM Enrolment
GROUP BY CourseID
HAVING COUNT(StudentID) > 1;
```

## How to Use This Repository

1. Clone or download the repository.
2. Install DBeaver Community or another SQLite-compatible database tool.
3. Open the `.db` files using a SQLite connection.
4. Open the `.sql` files in the SQL editor.
5. Execute individual queries to explore the database.

**Note:** Some SQL statements modify or delete records. Review each query before executing it.

## Learning Progress

This repository is part of my academic learning journey.

As I progress through the module, I aim to improve my ability to:

- Design relational database structures.
- Create and manage tables using SQL.
- Retrieve information using complex queries.
- Understand relationships between tables.
- Apply good database design practices.
- Solve practical database problems.

## Future Updates

I will continue adding new SQL exercises, database projects and practical activities as I progress through the module.

## Author

Gabriela Franciscato | United Kingdom

**Module:** COM4007 – Database Design and Implementation

**Purpose:** Academic learning and practical development.
