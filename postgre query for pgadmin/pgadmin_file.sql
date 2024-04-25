--DATE 12/Mar/2024

-- POSTGRE SQL Query

psql -d database -U  user -W

-- Switch over to the postgres account

garima@garima-Default-string:~$ sudo -i -u postgres
[sudo] password for garima: 

--You can now access the PostgreSQL prompt immediately by typing
--you are free to interact with the database management system as necessary.
postgres@garima-Default-string:~$ psql

--Exit out of the PostgreSQL prompt by typing:
postgres=# \q  
-- QUIT 

postgres=# \l
-- LIST THE DATABASE 


 --psql -d database -dbname  user -postgres

[1]+  Stopped                 psql
postgres@garima-Default-string:~$ psql
psql (16.2 (Ubuntu 16.2-1.pgdg22.04+1), server 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1))
Type "help" for help.

--CONNECT TO POSTGRE DATABASE 
postgres=# \conninfo
You are connected to database "postgres" as user "postgres" via socket in "/var/run/postgresql" at port "5432".


--CONNECT TO PROJECT DATABASE 
postgres=# \c wesee_tasking_
psql (16.2 (Ubuntu 16.2-1.pgdg22.04+1), server 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1))
You are now connected to database "wesee_tasking_portal" as user "postgres".

--LIST ALL THE TABLE 
wesee_tasking_=# \dt
 


-- QUERY FOR TABLES FOR PGADMIN 


SELECT * FROM pg_catalog.pg_tables
WHERE schemaname = 'schema name'
AND schemaname != 'information_schema';


SELECT * FROM information_schema.tables
WHERE table_schema = 'public'
AND table_type != 'BASE TABLE';





--You can create the appropriate database with the createdb command. Creation of new DB

sudo -u postgres createdb newly

sudo adduser newly

sudo -i -u newly

psql



--Creating Table 

    CREATE TABLE playground (
        equip_id serial PRIMARY KEY,
        type varchar (50) NOT NULL,
        color varchar (25) NOT NULL,
        location varchar(25) check (location in ('north', 'south', 'west', 'east', 'northeast', 'southeast', 'southwest', 'northwest')),
        install_date date
    );


--List available schema

--To list all schemas of the currently connected database, you use the \dn command.

\dn


--List available functions

--To list available functions in the current database, you use the \df command.

\df


--List available views

--To list available views in the current database, you use the \dv command.

\dv


--List users and their roles

--To list all users and their assigned roles, you use \du command:

\du


---Execute the previous command

--To retrieve the current version of PostgreSQL server, you use the version() function as follows:

SELECT version();


--Now, if you want to save time typing the previous command again, you can use \g command to execute the previous command:

\g


--psql executes the previous command again, which is the SELECT statement,.

--Command history

--To display command history, you use the \s command.

\s