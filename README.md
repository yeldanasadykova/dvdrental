# SQL Project - DVD Rental Database Analysis

## Introduction

Welcome to my SQL project where I analyze the DVD Rental database using PostgreSQL. In this project, I have performed various SQL queries and tasks to explore the database and gain insights into the DVD rental business. The database contains information about customers, rentals, films, and other relevant entities related to a DVD rental store.

## Files in the Project

- **dvdrental.tar**: This file contains the PostgreSQL database dump (`.tar` format) that you can use to restore the DVD Rental database on your local PostgreSQL server.

- **sql-challenge.sql**: This file contains the SQL queries and tasks that I performed as part of the analysis. You can run this script on the restored DVD Rental database to see the results of the queries and tasks.

- **lecture-notes.pdf**: This document includes my notes and observations while studying SQL. It may contain explanations of certain concepts, queries, or other useful information related to the project.

## Database Setup

To get started with the project, follow these steps to download and set up the DVD Rental database:

1. Download the database dump file `dvdrental.tar` from the following link: [Download DVD Rental Database](https://drive.google.com/file/d/1oBxiJkST9-7IjOMY-8aMXEMbrL6XcX49/view).

2. Install PostgreSQL on your computer if you haven't already. You can download PostgreSQL from the official website: [Download PostgreSQL](https://www.postgresql.org/download/).

3. Once PostgreSQL is installed, open a terminal or command prompt and navigate to the directory where you downloaded the `dvdrental.tar` file.

4. Use the following command to restore the DVD Rental database:

   ```bash
   pg_restore -U <your_postgres_username> -d <destination_database_name> dvdrental.tar
   ```

   Replace `<your_postgres_username>` with your PostgreSQL username, and `<destination_database_name>` with the desired name for your database.

5. The database should now be set up, and you can start running SQL queries against it.

## Running the SQL Queries

To see the results of the SQL queries and tasks, follow these steps:

1. Open your favorite SQL client or connect to the PostgreSQL database using the command-line interface.

2. Load and execute the `sql-challenge.sql` file in your SQL client or interface. This will run all the queries and tasks, and you will see the output displaying various insights from the DVD Rental database.

Happy SQL querying!
