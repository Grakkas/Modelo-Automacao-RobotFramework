*** Settings ***
Documentation    Base class for database related keywords

Library    DatabaseLibrary

*Keywords*

Connect to postgres database
    Connect To Database    psycopg2
    ...                    pmryqkke
    ...                    pmryqkke
    ...                    l2LHuNnFsQULo7Ar7_yhSj8-KGkmxiPv
    ...                    jelani.db.elephantsql.com
    ...                    5432

Delete all users from database
    Connect to postgres database

    Execute SQL String    DELETE from public.geeks;
    Execute SQL String    DELETE from public.users;