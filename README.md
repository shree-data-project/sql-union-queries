# 🗄️ SQL UNION Queries — Employee Data Analysis

![SQL](https://img.shields.io/badge/SQL-MySQL-blue?logo=mysql)
![License](https://img.shields.io/badge/License-MIT-green)
![Status](https://img.shields.io/badge/Status-Active-brightgreen)

A beginner-friendly SQL project demonstrating the difference between **`UNION DISTINCT`** and **`UNION ALL`** using two employee tables.

---

## 📋 Table of Contents

- [Overview](#overview)
- [Database Schema](#database-schema)
- [Queries Explained](#queries-explained)
- [Getting Started](#getting-started)
- [Expected Output](#expected-output)
- [Key Differences](#key-differences)
- [Project Structure](#project-structure)
- [License](#license)

---

## Overview

This project uses two tables:

| Table | Description |
|---|---|
| `employee_demographics` | Stores personal info (age, gender, birth date) |
| `employee_salary` | Stores job info (occupation, salary, department) |

Both tables share `first_name` and `last_name` columns, which makes them perfect candidates for `UNION` queries.

---

## Database Schema

```sql
-- employee_demographics
employee_id  INT          PK  AUTO_INCREMENT
first_name   VARCHAR(50)
last_name    VARCHAR(50)
age          INT
gender       VARCHAR(10)
birth_date   DATE

-- employee_salary
employee_id  INT          PK  AUTO_INCREMENT
first_name   VARCHAR(50)
last_name    VARCHAR(50)
occupation   VARCHAR(100)
salary       DECIMAL(10,2)
dept_id      INT
```

---

## Queries Explained

### 1. `UNION DISTINCT`

```sql
SELECT first_name, last_name
FROM employee_demographics
UNION DISTINCT
SELECT first_name, last_name
FROM employee_salary;
```

- Combines rows from **both** tables.
- **Removes duplicate** first_name + last_name pairs.
- Default behaviour of `UNION` (the keyword `DISTINCT` is optional).

---

### 2. `UNION ALL`

```sql
SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary;
```

- Combines rows from **both** tables.
- **Keeps every row**, including duplicates.
- Faster than `UNION DISTINCT` (no duplicate-check overhead).

---

## Getting Started

### Prerequisites

- [MySQL](https://dev.mysql.com/downloads/) 5.7+ or [MariaDB](https://mariadb.org/) 10.3+
- MySQL Workbench, DBeaver, or any SQL client

### Step-by-Step Setup

**1. Clone the repository**

```bash
git clone https://github.com/YOUR-USERNAME/sql-union-queries.git
cd sql-union-queries
```

**2. Create the database and tables**

```bash
mysql -u root -p < schema.sql
```

**3. Insert sample data**

```bash
mysql -u root -p < sample_data.sql
```

**4. Run the UNION queries**

```bash
mysql -u root -p employee_db < union_queries.sql
```

Or open `union_queries.sql` directly in MySQL Workbench and run it.

---

## Expected Output

### UNION DISTINCT — Unique names only

| first_name | last_name    |
|-----------|-------------|
| Leslie    | Knope        |
| Ron       | Swanson      |
| Ann       | Perkins      |
| Ben       | Wyatt        |
| Tom       | Haverford    |
| April     | Ludgate      |
| Andy      | Dwyer        |
| Chris     | Traeger      |
| Donna     | Meagle       |
| Jerry     | Gergich      |
| Mark      | Brendanawicz |
| Craig     | Middlebrooks |

### UNION ALL — All rows including duplicates

Same names as above **plus** repeated rows for employees who appear in both tables (10 duplicate rows).

---

## Key Differences

| Feature | UNION DISTINCT | UNION ALL |
|---|---|---|
| Duplicates | Removed | Kept |
| Speed | Slower (sorts to deduplicate) | Faster |
| Use case | When uniqueness matters | When every record counts |
| Row count | ≤ combined total | = combined total |

---

## Project Structure

```
sql-union-queries/
├── schema.sql         # Creates database and tables
├── sample_data.sql    # Inserts test records
├── union_queries.sql  # Main UNION DISTINCT & UNION ALL queries
├── .gitignore         # Ignores OS/editor temp files
└── README.md          # Project documentation (this file)
```

---

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT) — free to use, modify, and distribute.

---

> 💡 **Tip:** `UNION` without any keyword defaults to `UNION DISTINCT`. Always use `UNION ALL` when you know duplicates are acceptable — it's significantly faster on large datasets.
