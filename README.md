# Stream-A-Go
Welcome to the backend of Stream-A-Go, a user review site designed to offer insights into whether a game is a good fit for your streaming demographics.

## Versions
- **Ruby:** 3.2.2
* **Rails:** 7.0.6

## Setup
1. **Clone the repository**
   ```
   git clone https://github.com/JonathanMendler/stream_transmission.git
   cd stream_transmission
   ```
2. **Install dependencies**
   ```
   bundle install
   ```
3. **Database setup**
   ```
   rails db:create
   rails db:migrate
   ```
4. **Start the server**
   ```
   rails server
   ```

Stream-A-Go should now be running at 'http://localhost:3000'.

## Features

- **User Authentication:** Allows users to sign up, log in, and log out securely.
* **Library Management:** Users can create, read, update, and delete games in their "Favorites" list. Favorites can be organized by categories and tagged for easy navigation.
+ **Commenting System** Enables users to leave comments on games. Comments can be moderated by administrators.
- **Category Management:** Administrators can create and manage categories to organize games effectively.
* **Authorization:** Implements role-based authorization to control access to certain parts of the application.
+ **API Support:** Provides a RESTful API from [RAWG](https://rawg.io/) for interacting with the review application programmatically.

## Testing

- **Unit Tests:** Run `rails test` to execute unit tests for models.
* **Controller Tests:** Run `rails test:controllers` to execute controller tests.
+ **Integration Tests:** Run `rails test:integration` to execute integration tests.

## Acknowledgments
- Special thanks to the Ruby on Rails community for their indispensable insight and support

## Contact
jon.mendler@gmail.com
