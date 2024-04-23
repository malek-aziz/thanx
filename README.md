# Thanx Take Home Assessment

# Getting Started with Rails App

## Dependencies
  * Ruby 3.2.2
  * Rails 7.1

## Installing Project in your Local Machine

  To get started with the app, first unzip the file and cd into the directory:
  ### Unzip the application
  ```
  $ cd thanx/thanx_api
  ```

  Then install the needed gems:
  ```
  $ bundle install
  ```

  Next, setup the database:
  ```
  $ rails db:setup
  ```

  You'll be ready to run the app in a local server:
  ```
  $ rails server
  ```

  Remember I have used MySQL for this, so make sure you have configured database.yml according to your
  database username and password. As this project is just a small assignment, so I haven't used secrets or ENV
  variables for database or other configurations. You can edit them directly.

## Assumptions and Decisions

1. Implemented basic signup and logic functionality. Haven't used token or cookies for authentication and session management respectively.
2. Handled session on client side using local storage.
3. User gets 500 points by default on creation. Ideally there should be an admin account to assign points and create rewards etc but
as this was not a requirement so I decided to stay in the scope of the assignment.
4. Used a basic frontend UI owing to scope of project.
5. Frontend runs on 5000 and backend runs on 3000.
6. That's all I believe :)
