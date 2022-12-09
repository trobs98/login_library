# Login Library

This library is intended to be used as a login page that can be imported into a project as:  
- A frontend UI for a login page modal
- A backend to deal with authentication and authorization
- A database that stores user information and user audit data

## Schema
The Schema consists of a User table and a UserAudit table
1. User table
    - Conists of the user authentication information including
        - User name
        - User email
        - The hashed user password
        - The salt that is used to hash user password
        - When the user was created
    - There can only be one user record per user
2. UserAudit tabe
    - Consists of audit data and authorization information including
        - The date the user logged in 
        - The IP the user logged in from
        - The hashed cookie that is generated at login
        - The salt that is used to hash the cookie    
    - Each time a user logs in, a new record is created

![image](https://user-images.githubusercontent.com/45018105/206810284-4d3a2b77-7995-4945-8b03-2973579b7d22.png)

### Setup
To setup the database, import the user_schema.sql file into your MySQL server using the following command:

`mysql -u <USER> -p <PASSWORD> < user_schema.sql`

## Client

## Server

