# Flexiple Assignment

## Tech stack for this app

- RoR
- PostgreSQL
- tailwindcss

## Setup

1. Check if you have ruby installed:
    ```
    ruby --version
    ```
    If not, install [ruby](https://www.ruby-lang.org/en/documentation/installation/).

2. Install rails and all other dependencies:
    ```
    bundle install
    bin/yarn install
    ```

3. Migrate database"
   
    ```
    bin/rails db:migrate
    ```

4. Run following command to create first user after migrating database.

    ```
    rake db:seed
    ```

    Email: `johndoe@example.com`
    Password: `password`


4. Run the rails app"

    ```
    bin/rails server
    ```



