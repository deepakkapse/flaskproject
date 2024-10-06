#!/bin/bash

# Check if environment variables are set
if [ -z "$DB_HOST" ] || [ -z "$DB_USER" ] || [ -z "$DB_PASSWORD" ] || [ -z "$DB_NAME" ]; then
  echo "Missing database environment variables"
  exit 1
fi

# Create database tables
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" < schema.sql
``'


Assuming you have a `schema.sql` file containing the SQL commands to create the tables:


```sql
-- schema.sql
CREATE TABLE employees (
  employee_id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  position VARCHAR(255) NOT NULL
);
