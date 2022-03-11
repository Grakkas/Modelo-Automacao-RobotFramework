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

    Execute SQL String          DELETE from public.geeks;
    Execute SQL String          DELETE from public.users;
    Disconnect From Database

Insert user in database
    [Arguments]    ${user}
    ${query}       Set Variable    INSERT INTO public.users (name, email, password_hash, is_geek) values ('${user}[first_name] ${user}[last_name]', '${user}[email]', '${user}[password]', false);

    Connect to postgres database
    Execute SQL String              ${query}
    Disconnect From Database