# Login Library

This library is intended to be used as an authentication template that can be imported into further projects as:  
- A frontend UI for a login page modal
- A backend to deal with authentication and authorization
- A database that stores user information and user audit data

## Schema
The Schema consists of a User table, a UserAudit table and a ResetPasswordToken table
1. User table
    - Conists of the user authentication information including
        - User first name
        - User last name
        - User email
        - The hashed user password
        - The salt that is used to hash user password
        - When the user was created
    - There can only be one user record per email
2. UserAudit table
    - Consists of audit data and authorization information including
        - The date the user logged in 
        - The IP the user logged in from
        - The JWT cookie that is generated at login
        - The expiry date of the cookie   
    - Each time a user logs in, a new record is created
3. ResetPasswordToken table
    - Conists of the data associated with a reset password token including
        - The hashed token
        - The salt that is used to hash the token
        - The expiration date of the token
    - A token is sent along with a reset password email and is deleted each time a user requests a new one  

![image](https://user-images.githubusercontent.com/45018105/212144874-9a642c87-76ed-4e00-baa9-d6942fd3380f.png)

## Server

The server is a Node JS API that uses the Express framework. It handles the following routes: 
1. /session/login    
2. /session/logout
3. /session/signup
4. /session/forgotpassword
5. /session/resetpassword

Additionally, the server handles:
- Invalid request routes with a 404 response
- Cookie authentication to verify the user has logged in and has a valid cookie

Please see README.md in the server directory for more in depth information https://github.com/trobs98/login_library/tree/main/server 

## Client

