# Twitter Redesign
---
In this project, I redesign a popular micro-blogging platform twitter.com also mocking the basic functionalities of the applcation.

## Project Specification
---
1. The user logs in to the app, only by typing the username (a proper authenticated login is not a requirement).

2. The user is presented with the homepage (see the Homepage screenshot above) that includes
	 - Left-side menu (includes only links to pages that are implemented).
	 - Tweets tab in the centre (skip Photos and Videos for this MVP).
	 - Right-side section with Who to follow (skip Trending for this MVP).

3. The *Tweets* section includes:
    - Simple form for creating a tweet.
    - List of all tweets (sorted by most recent) that display tweet text and author details.

4. The *Who to follow* section includes:
    1. List of profiles that are not followed by the logged-in user (ordered by most recently added).

5. When the user opens the profile page (see the *Userpage* screenshot above), they can see:
    i. Left-side menu (includes only links to pages that are implemented).
    ii. Cover picture and *Tweets* tab in the centre (skip other tabs and *Tweet to user* form).
    iii. Right-side section with *Profile detailed info.*
6. The *Profile detailed info* section includes:
         i. User photo.
         ii. Button to follow a user.
         iii. Stats: total number of tweets, number of followers and number of following users.
         iv. List of people who follow this user.
7. At the end extend your MVP app with one simple feature of your choice.

You should follow the guidelines of the given design, including:

## Future features
---
  Add instant messaging functionalty.
  Performing various reactions, such as comments on tweets etc.
#  Built With
     Ruby v2.6.5
     Ruby on Rails v6.0.3
     Gems used for testing: Capybara, Rspec-Rails, Shoulda-matchers and FactoryBot
#  Built With
	Ruby v2.6.5
	Ruby on Rails v5.2.1
	Gems used for testing: Capybara, Rspec-Rails, Shoulda-matchers and FactoryBot


# demo pictures
  - homepage
     ![alt text](homepage.png)


  - userpage
  	 ![alt text](userpage.png)

# live demo
   [live demo](https://shielded-oasis-34342.herokuapp.com/login)

Getting Started

To get a local copy up and running follow these steps:
---

- Prerequisites
-  Ruby: 2.6.5
-   Rails: 5.2.1
-   Postgres: >=9.5
-    Git

Usage
  - Fork/Clone this project to your local machine
  -  Open folder in your local enviroment and run these lines of code to get started:
  -    Install gems with:

    -bundle install
    -Setup database with:
   -rails db:migrate

Setup cloudinary:

	Goto cloudinary.com setup your account and get your cloudinary credentials.
	Add the credentials to the config/application.yml like this :
	CLOUDINARY_NAME: "YOUR_CLOUDINARY_NAME"
	CLOUDINARY_API_KEY: "YOUR_CLOUDINARY_API_KEY"
	CLOUDINARY_API_SECRET: "YOUR_CLOUDINARY_API_SECRET"
- Don't forget to add that file to your .gitignore file. Start server with:
    rails server
- Then open a web page and go to port 3000 on your local machine.

    -Running tests
    -rspec
    -Deployment

The application was deployed on heroku. To deploy your own copy, you can follow the following steps:



## Authors

👤 **Ignatius Sani**

- Github: [ignatius22](https://github.com/ignatius22)
- Twitter: [@Iggy_code](https://twitter.com/iggy_code)
- Linkedin: [ignatiussani](https://www.linkedin.com/in/ignatiussani)

Start by:

- Forking the project
- Cloning the project to your local machine
- cd into the project directory
- Run git checkout -b your-branch-name
- -Make your contributions
- Push your branch up to your forked repository
- Open a Pull Request with a detailed description to the development(or master if not available) branch of the original project for a review
- Show your support
Give a star if you like this project!

Acknowledgments
You can access all the design info (color, typography, layouts) in this link:
(https://www.behance.net/gregoirevella)

Design idea by Gregoire Vella.


